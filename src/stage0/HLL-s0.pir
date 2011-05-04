
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304523734.668")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2906 = "259_1304523734.668" 
    capture_lex $P2906
    .const 'Sub' $P2477 = "240_1304523734.668" 
    capture_lex $P2477
    .const 'Sub' $P2399 = "233_1304523734.668" 
    capture_lex $P2399
    .const 'Sub' $P1163 = "165_1304523734.668" 
    capture_lex $P1163
    .const 'Sub' $P478 = "119_1304523734.668" 
    capture_lex $P478
    .const 'Sub' $P18 = "11_1304523734.668" 
    capture_lex $P18
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 1760
    new $P16, "Undef"
    .lex "$compiler", $P16
.annotate 'line', 1065
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1064
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P18 = "11_1304523734.668" 
    capture_lex $P18
    $P18()
.annotate 'line', 867
    .const 'Sub' $P478 = "119_1304523734.668" 
    capture_lex $P478
    $P478()
.annotate 'line', 1072
    .const 'Sub' $P1163 = "165_1304523734.668" 
    capture_lex $P1163
    $P1163()
.annotate 'line', 1760
    get_hll_global $P2392, "GLOBAL"
    nqp_get_package_through_who $P2393, $P2392, "HLL"
    get_who $P2394, $P2393
    set $P2395, $P2394["Compiler"]
    $P2396 = $P2395."new"()
    store_lex "$compiler", $P2396
.annotate 'line', 1761
    find_lex $P2397, "$compiler"
    unless_null $P2397, vivify_1024
    new $P2397, "Undef"
  vivify_1024:
    $P2397."language"("parrot")
.annotate 'line', 1854
    .const 'Sub' $P2399 = "233_1304523734.668" 
    capture_lex $P2399
    $P2399()
.annotate 'line', 1887
    .const 'Sub' $P2477 = "240_1304523734.668" 
    capture_lex $P2477
    $P2477()
.annotate 'line', 2065
    .const 'Sub' $P2906 = "259_1304523734.668" 
    capture_lex $P2906
    $P2906()
    find_lex $P3139, "@ARGS"
    if $P3139, if_3138
    set $P3137, $P3139
    goto if_3138_end
  if_3138:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3140, "ModuleLoader"
    getinterp $P3141
    set $P3142, $P3141["context"]
    $P3143 = $P3140."set_mainline_module"($P3142)
    set $P3137, $P3143
  if_3138_end:
.annotate 'line', 1
    .return ($P3137)
.annotate 'line', 1064
    .const 'Sub' $P3145 = "277_1304523734.668" 
.annotate 'line', 1
    .return ($P3145)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post278") :outer("10_1304523734.668")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304523734.668" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3149, "1304523727.177"
    isnull $I3150, $P3149
    if $I3150, if_3148
    .const 'Sub' $P4265 = "10_1304523734.668" 
    $P4266 = $P4265."get_lexinfo"()
    nqp_get_sc_object $P4267, "1304523727.177", 0
    $P4266."set_static_lexpad_value"("GLOBALish", $P4267)
    .const 'Sub' $P4268 = "10_1304523734.668" 
    $P4269 = $P4268."get_lexinfo"()
    $P4269."finish_static_lexpad"()
    .const 'Sub' $P4270 = "10_1304523734.668" 
    $P4271 = $P4270."get_lexinfo"()
    nqp_get_sc_object $P4272, "1304523727.177", 0
    $P4271."set_static_lexpad_value"("$?PACKAGE", $P4272)
    .const 'Sub' $P4273 = "10_1304523734.668" 
    $P4274 = $P4273."get_lexinfo"()
    $P4274."finish_static_lexpad"()
    nqp_get_sc_object $P4275, "1304523727.177", 2
    .const 'Sub' $P4276 = "12_1304523734.668" 
    assign $P4275, $P4276
    nqp_get_sc_object $P4277, "1304523727.177", 3
    .const 'Sub' $P4278 = "13_1304523734.668" 
    assign $P4277, $P4278
    nqp_get_sc_object $P4279, "1304523727.177", 4
    .const 'Sub' $P4280 = "14_1304523734.668" 
    assign $P4279, $P4280
    nqp_get_sc_object $P4281, "1304523727.177", 5
    .const 'Sub' $P4282 = "15_1304523734.668" 
    assign $P4281, $P4282
    nqp_get_sc_object $P4283, "1304523727.177", 6
    .const 'Sub' $P4284 = "16_1304523734.668" 
    assign $P4283, $P4284
    nqp_get_sc_object $P4285, "1304523727.177", 7
    .const 'Sub' $P4286 = "17_1304523734.668" 
    assign $P4285, $P4286
    nqp_get_sc_object $P4287, "1304523727.177", 8
    .const 'Sub' $P4288 = "18_1304523734.668" 
    assign $P4287, $P4288
    nqp_get_sc_object $P4289, "1304523727.177", 9
    .const 'Sub' $P4290 = "19_1304523734.668" 
    assign $P4289, $P4290
    nqp_get_sc_object $P4291, "1304523727.177", 10
    .const 'Sub' $P4292 = "20_1304523734.668" 
    assign $P4291, $P4292
    nqp_get_sc_object $P4293, "1304523727.177", 11
    .const 'Sub' $P4294 = "21_1304523734.668" 
    assign $P4293, $P4294
    nqp_get_sc_object $P4295, "1304523727.177", 12
    .const 'Sub' $P4296 = "22_1304523734.668" 
    assign $P4295, $P4296
    nqp_get_sc_object $P4297, "1304523727.177", 13
    .const 'Sub' $P4298 = "23_1304523734.668" 
    assign $P4297, $P4298
    nqp_get_sc_object $P4299, "1304523727.177", 14
    .const 'Sub' $P4300 = "24_1304523734.668" 
    assign $P4299, $P4300
    nqp_get_sc_object $P4301, "1304523727.177", 15
    .const 'Sub' $P4302 = "25_1304523734.668" 
    assign $P4301, $P4302
    nqp_get_sc_object $P4303, "1304523727.177", 16
    .const 'Sub' $P4304 = "26_1304523734.668" 
    assign $P4303, $P4304
    nqp_get_sc_object $P4305, "1304523727.177", 17
    .const 'Sub' $P4306 = "27_1304523734.668" 
    assign $P4305, $P4306
    nqp_get_sc_object $P4307, "1304523727.177", 18
    .const 'Sub' $P4308 = "28_1304523734.668" 
    assign $P4307, $P4308
    nqp_get_sc_object $P4309, "1304523727.177", 19
    .const 'Sub' $P4310 = "29_1304523734.668" 
    assign $P4309, $P4310
    nqp_get_sc_object $P4311, "1304523727.177", 20
    .const 'Sub' $P4312 = "30_1304523734.668" 
    assign $P4311, $P4312
    nqp_get_sc_object $P4313, "1304523727.177", 21
    .const 'Sub' $P4314 = "31_1304523734.668" 
    assign $P4313, $P4314
    nqp_get_sc_object $P4315, "1304523727.177", 22
    .const 'Sub' $P4316 = "32_1304523734.668" 
    assign $P4315, $P4316
    nqp_get_sc_object $P4317, "1304523727.177", 23
    .const 'Sub' $P4318 = "33_1304523734.668" 
    assign $P4317, $P4318
    nqp_get_sc_object $P4319, "1304523727.177", 24
    .const 'Sub' $P4320 = "34_1304523734.668" 
    assign $P4319, $P4320
    nqp_get_sc_object $P4321, "1304523727.177", 25
    .const 'Sub' $P4322 = "35_1304523734.668" 
    assign $P4321, $P4322
    nqp_get_sc_object $P4323, "1304523727.177", 26
    .const 'Sub' $P4324 = "36_1304523734.668" 
    assign $P4323, $P4324
    nqp_get_sc_object $P4325, "1304523727.177", 27
    .const 'Sub' $P4326 = "37_1304523734.668" 
    assign $P4325, $P4326
    nqp_get_sc_object $P4327, "1304523727.177", 28
    .const 'Sub' $P4328 = "38_1304523734.668" 
    assign $P4327, $P4328
    nqp_get_sc_object $P4329, "1304523727.177", 29
    .const 'Sub' $P4330 = "39_1304523734.668" 
    assign $P4329, $P4330
    nqp_get_sc_object $P4331, "1304523727.177", 30
    .const 'Sub' $P4332 = "40_1304523734.668" 
    assign $P4331, $P4332
    nqp_get_sc_object $P4333, "1304523727.177", 31
    .const 'Sub' $P4334 = "41_1304523734.668" 
    assign $P4333, $P4334
    nqp_get_sc_object $P4335, "1304523727.177", 32
    .const 'Sub' $P4336 = "42_1304523734.668" 
    assign $P4335, $P4336
    nqp_get_sc_object $P4337, "1304523727.177", 33
    .const 'Sub' $P4338 = "43_1304523734.668" 
    assign $P4337, $P4338
    nqp_get_sc_object $P4339, "1304523727.177", 34
    .const 'Sub' $P4340 = "44_1304523734.668" 
    assign $P4339, $P4340
    nqp_get_sc_object $P4341, "1304523727.177", 35
    .const 'Sub' $P4342 = "45_1304523734.668" 
    assign $P4341, $P4342
    nqp_get_sc_object $P4343, "1304523727.177", 36
    .const 'Sub' $P4344 = "46_1304523734.668" 
    assign $P4343, $P4344
    nqp_get_sc_object $P4345, "1304523727.177", 37
    .const 'Sub' $P4346 = "47_1304523734.668" 
    assign $P4345, $P4346
    nqp_get_sc_object $P4347, "1304523727.177", 38
    .const 'Sub' $P4348 = "48_1304523734.668" 
    assign $P4347, $P4348
    nqp_get_sc_object $P4349, "1304523727.177", 39
    .const 'Sub' $P4350 = "49_1304523734.668" 
    assign $P4349, $P4350
    nqp_get_sc_object $P4351, "1304523727.177", 40
    .const 'Sub' $P4352 = "50_1304523734.668" 
    assign $P4351, $P4352
    nqp_get_sc_object $P4353, "1304523727.177", 41
    .const 'Sub' $P4354 = "51_1304523734.668" 
    assign $P4353, $P4354
    nqp_get_sc_object $P4355, "1304523727.177", 42
    .const 'Sub' $P4356 = "52_1304523734.668" 
    assign $P4355, $P4356
    nqp_get_sc_object $P4357, "1304523727.177", 43
    .const 'Sub' $P4358 = "53_1304523734.668" 
    assign $P4357, $P4358
    nqp_get_sc_object $P4359, "1304523727.177", 44
    .const 'Sub' $P4360 = "54_1304523734.668" 
    assign $P4359, $P4360
    nqp_get_sc_object $P4361, "1304523727.177", 45
    .const 'Sub' $P4362 = "55_1304523734.668" 
    assign $P4361, $P4362
    nqp_get_sc_object $P4363, "1304523727.177", 46
    .const 'Sub' $P4364 = "56_1304523734.668" 
    assign $P4363, $P4364
    nqp_get_sc_object $P4365, "1304523727.177", 47
    .const 'Sub' $P4366 = "57_1304523734.668" 
    assign $P4365, $P4366
    nqp_get_sc_object $P4367, "1304523727.177", 48
    .const 'Sub' $P4368 = "58_1304523734.668" 
    assign $P4367, $P4368
    nqp_get_sc_object $P4369, "1304523727.177", 49
    .const 'Sub' $P4370 = "59_1304523734.668" 
    assign $P4369, $P4370
    nqp_get_sc_object $P4371, "1304523727.177", 50
    .const 'Sub' $P4372 = "60_1304523734.668" 
    assign $P4371, $P4372
    nqp_get_sc_object $P4373, "1304523727.177", 51
    .const 'Sub' $P4374 = "61_1304523734.668" 
    assign $P4373, $P4374
    nqp_get_sc_object $P4375, "1304523727.177", 52
    .const 'Sub' $P4376 = "62_1304523734.668" 
    assign $P4375, $P4376
    nqp_get_sc_object $P4377, "1304523727.177", 53
    .const 'Sub' $P4378 = "63_1304523734.668" 
    assign $P4377, $P4378
    nqp_get_sc_object $P4379, "1304523727.177", 54
    .const 'Sub' $P4380 = "64_1304523734.668" 
    assign $P4379, $P4380
    nqp_get_sc_object $P4381, "1304523727.177", 55
    .const 'Sub' $P4382 = "65_1304523734.668" 
    assign $P4381, $P4382
    nqp_get_sc_object $P4383, "1304523727.177", 56
    .const 'Sub' $P4384 = "66_1304523734.668" 
    assign $P4383, $P4384
    nqp_get_sc_object $P4385, "1304523727.177", 57
    .const 'Sub' $P4386 = "67_1304523734.668" 
    assign $P4385, $P4386
    nqp_get_sc_object $P4387, "1304523727.177", 58
    .const 'Sub' $P4388 = "68_1304523734.668" 
    assign $P4387, $P4388
    nqp_get_sc_object $P4389, "1304523727.177", 59
    .const 'Sub' $P4390 = "69_1304523734.668" 
    assign $P4389, $P4390
    nqp_get_sc_object $P4391, "1304523727.177", 60
    .const 'Sub' $P4392 = "70_1304523734.668" 
    assign $P4391, $P4392
    nqp_get_sc_object $P4393, "1304523727.177", 61
    .const 'Sub' $P4394 = "71_1304523734.668" 
    assign $P4393, $P4394
    nqp_get_sc_object $P4395, "1304523727.177", 62
    .const 'Sub' $P4396 = "72_1304523734.668" 
    assign $P4395, $P4396
    nqp_get_sc_object $P4397, "1304523727.177", 63
    .const 'Sub' $P4398 = "73_1304523734.668" 
    assign $P4397, $P4398
    nqp_get_sc_object $P4399, "1304523727.177", 64
    .const 'Sub' $P4400 = "74_1304523734.668" 
    assign $P4399, $P4400
    nqp_get_sc_object $P4401, "1304523727.177", 65
    .const 'Sub' $P4402 = "75_1304523734.668" 
    assign $P4401, $P4402
    nqp_get_sc_object $P4403, "1304523727.177", 66
    .const 'Sub' $P4404 = "76_1304523734.668" 
    assign $P4403, $P4404
    nqp_get_sc_object $P4405, "1304523727.177", 67
    .const 'Sub' $P4406 = "77_1304523734.668" 
    assign $P4405, $P4406
    nqp_get_sc_object $P4407, "1304523727.177", 68
    .const 'Sub' $P4408 = "78_1304523734.668" 
    assign $P4407, $P4408
    nqp_get_sc_object $P4409, "1304523727.177", 69
    .const 'Sub' $P4410 = "79_1304523734.668" 
    assign $P4409, $P4410
    nqp_get_sc_object $P4411, "1304523727.177", 70
    .const 'Sub' $P4412 = "80_1304523734.668" 
    assign $P4411, $P4412
    nqp_get_sc_object $P4413, "1304523727.177", 71
    .const 'Sub' $P4414 = "81_1304523734.668" 
    assign $P4413, $P4414
    nqp_get_sc_object $P4415, "1304523727.177", 72
    .const 'Sub' $P4416 = "82_1304523734.668" 
    assign $P4415, $P4416
    nqp_get_sc_object $P4417, "1304523727.177", 73
    .const 'Sub' $P4418 = "83_1304523734.668" 
    assign $P4417, $P4418
    nqp_get_sc_object $P4419, "1304523727.177", 74
    .const 'Sub' $P4420 = "84_1304523734.668" 
    assign $P4419, $P4420
    nqp_get_sc_object $P4421, "1304523727.177", 75
    .const 'Sub' $P4422 = "85_1304523734.668" 
    assign $P4421, $P4422
    nqp_get_sc_object $P4423, "1304523727.177", 76
    .const 'Sub' $P4424 = "86_1304523734.668" 
    assign $P4423, $P4424
    nqp_get_sc_object $P4425, "1304523727.177", 77
    .const 'Sub' $P4426 = "87_1304523734.668" 
    assign $P4425, $P4426
    nqp_get_sc_object $P4427, "1304523727.177", 78
    .const 'Sub' $P4428 = "88_1304523734.668" 
    assign $P4427, $P4428
    nqp_get_sc_object $P4429, "1304523727.177", 79
    .const 'Sub' $P4430 = "89_1304523734.668" 
    assign $P4429, $P4430
    nqp_get_sc_object $P4431, "1304523727.177", 80
    .const 'Sub' $P4432 = "90_1304523734.668" 
    assign $P4431, $P4432
    nqp_get_sc_object $P4433, "1304523727.177", 81
    .const 'Sub' $P4434 = "91_1304523734.668" 
    assign $P4433, $P4434
    nqp_get_sc_object $P4435, "1304523727.177", 82
    .const 'Sub' $P4436 = "92_1304523734.668" 
    assign $P4435, $P4436
    nqp_get_sc_object $P4437, "1304523727.177", 83
    .const 'Sub' $P4438 = "93_1304523734.668" 
    assign $P4437, $P4438
    nqp_get_sc_object $P4439, "1304523727.177", 84
    .const 'Sub' $P4440 = "97_1304523734.668" 
    assign $P4439, $P4440
    nqp_get_sc_object $P4441, "1304523727.177", 85
    .const 'Sub' $P4442 = "98_1304523734.668" 
    assign $P4441, $P4442
    nqp_get_sc_object $P4443, "1304523727.177", 86
    .const 'Sub' $P4444 = "100_1304523734.668" 
    assign $P4443, $P4444
    nqp_get_sc_object $P4445, "1304523727.177", 87
    .const 'Sub' $P4446 = "101_1304523734.668" 
    assign $P4445, $P4446
    nqp_get_sc_object $P4447, "1304523727.177", 88
    .const 'Sub' $P4448 = "102_1304523734.668" 
    assign $P4447, $P4448
    nqp_get_sc_object $P4449, "1304523727.177", 89
    .const 'Sub' $P4450 = "103_1304523734.668" 
    assign $P4449, $P4450
    nqp_get_sc_object $P4451, "1304523727.177", 90
    .const 'Sub' $P4452 = "104_1304523734.668" 
    assign $P4451, $P4452
    nqp_get_sc_object $P4453, "1304523727.177", 91
    .const 'Sub' $P4454 = "105_1304523734.668" 
    assign $P4453, $P4454
    nqp_get_sc_object $P4455, "1304523727.177", 92
    .const 'Sub' $P4456 = "106_1304523734.668" 
    assign $P4455, $P4456
    nqp_get_sc_object $P4457, "1304523727.177", 93
    .const 'Sub' $P4458 = "107_1304523734.668" 
    assign $P4457, $P4458
    nqp_get_sc_object $P4459, "1304523727.177", 94
    .const 'Sub' $P4460 = "108_1304523734.668" 
    assign $P4459, $P4460
    nqp_get_sc_object $P4461, "1304523727.177", 95
    .const 'Sub' $P4462 = "109_1304523734.668" 
    assign $P4461, $P4462
    .const 'Sub' $P4463 = "109_1304523734.668" 
    nqp_get_sc_object $P4464, "1304523727.177", 1
    get_who $P4465, $P4464
    set $P4465["quotemod_check"], $P4463
    nqp_get_sc_object $P4466, "1304523727.177", 96
    .const 'Sub' $P4467 = "110_1304523734.668" 
    assign $P4466, $P4467
    nqp_get_sc_object $P4468, "1304523727.177", 97
    .const 'Sub' $P4469 = "111_1304523734.668" 
    assign $P4468, $P4469
    nqp_get_sc_object $P4470, "1304523727.177", 98
    .const 'Sub' $P4471 = "112_1304523734.668" 
    assign $P4470, $P4471
    .const 'Sub' $P4472 = "112_1304523734.668" 
    nqp_get_sc_object $P4473, "1304523727.177", 1
    get_who $P4474, $P4473
    set $P4474["split_words"], $P4472
    nqp_get_sc_object $P4475, "1304523727.177", 99
    .const 'Sub' $P4476 = "113_1304523734.668" 
    assign $P4475, $P4476
    nqp_get_sc_object $P4477, "1304523727.177", 100
    .const 'Sub' $P4478 = "114_1304523734.668" 
    assign $P4477, $P4478
    nqp_get_sc_object $P4479, "1304523727.177", 101
    .const 'Sub' $P4480 = "115_1304523734.668" 
    assign $P4479, $P4480
    nqp_get_sc_object $P4481, "1304523727.177", 102
    .const 'Sub' $P4482 = "116_1304523734.668" 
    assign $P4481, $P4482
    nqp_get_sc_object $P4483, "1304523727.177", 103
    .const 'Sub' $P4484 = "117_1304523734.668" 
    assign $P4483, $P4484
    nqp_get_sc_object $P4485, "1304523727.177", 104
    .const 'Sub' $P4486 = "118_1304523734.668" 
    assign $P4485, $P4486
    .const 'Sub' $P4487 = "11_1304523734.668" 
    $P4488 = $P4487."get_lexinfo"()
    nqp_get_sc_object $P4489, "1304523727.177", 1
    $P4488."set_static_lexpad_value"("$?PACKAGE", $P4489)
    .const 'Sub' $P4490 = "11_1304523734.668" 
    $P4491 = $P4490."get_lexinfo"()
    $P4491."finish_static_lexpad"()
    .const 'Sub' $P4492 = "11_1304523734.668" 
    $P4493 = $P4492."get_lexinfo"()
    nqp_get_sc_object $P4494, "1304523727.177", 1
    $P4493."set_static_lexpad_value"("$?CLASS", $P4494)
    .const 'Sub' $P4495 = "11_1304523734.668" 
    $P4496 = $P4495."get_lexinfo"()
    $P4496."finish_static_lexpad"()
    .const 'Sub' $P4497 = "120_1304523734.668" 
    nqp_get_sc_object $P4498, "1304523727.177", 105
    get_who $P4499, $P4498
    set $P4499["string_to_int"], $P4497
    .const 'Sub' $P4500 = "122_1304523734.668" 
    nqp_get_sc_object $P4501, "1304523727.177", 105
    get_who $P4502, $P4501
    set $P4502["ints_to_string"], $P4500
    nqp_get_sc_object $P4503, "1304523727.177", 106
    .const 'Sub' $P4504 = "125_1304523734.668" 
    assign $P4503, $P4504
    nqp_get_sc_object $P4505, "1304523727.177", 107
    .const 'Sub' $P4506 = "126_1304523734.668" 
    assign $P4505, $P4506
    nqp_get_sc_object $P4507, "1304523727.177", 108
    .const 'Sub' $P4508 = "129_1304523734.668" 
    assign $P4507, $P4508
    nqp_get_sc_object $P4509, "1304523727.177", 109
    .const 'Sub' $P4510 = "132_1304523734.668" 
    assign $P4509, $P4510
    nqp_get_sc_object $P4511, "1304523727.177", 110
    .const 'Sub' $P4512 = "133_1304523734.668" 
    assign $P4511, $P4512
    nqp_get_sc_object $P4513, "1304523727.177", 111
    .const 'Sub' $P4514 = "134_1304523734.668" 
    assign $P4513, $P4514
    nqp_get_sc_object $P4515, "1304523727.177", 112
    .const 'Sub' $P4516 = "135_1304523734.668" 
    assign $P4515, $P4516
    nqp_get_sc_object $P4517, "1304523727.177", 113
    .const 'Sub' $P4518 = "136_1304523734.668" 
    assign $P4517, $P4518
    nqp_get_sc_object $P4519, "1304523727.177", 114
    .const 'Sub' $P4520 = "137_1304523734.668" 
    assign $P4519, $P4520
    nqp_get_sc_object $P4521, "1304523727.177", 115
    .const 'Sub' $P4522 = "138_1304523734.668" 
    assign $P4521, $P4522
    nqp_get_sc_object $P4523, "1304523727.177", 116
    .const 'Sub' $P4524 = "139_1304523734.668" 
    assign $P4523, $P4524
    nqp_get_sc_object $P4525, "1304523727.177", 117
    .const 'Sub' $P4526 = "140_1304523734.668" 
    assign $P4525, $P4526
    nqp_get_sc_object $P4527, "1304523727.177", 118
    .const 'Sub' $P4528 = "141_1304523734.668" 
    assign $P4527, $P4528
    nqp_get_sc_object $P4529, "1304523727.177", 119
    .const 'Sub' $P4530 = "142_1304523734.668" 
    assign $P4529, $P4530
    nqp_get_sc_object $P4531, "1304523727.177", 120
    .const 'Sub' $P4532 = "145_1304523734.668" 
    assign $P4531, $P4532
    nqp_get_sc_object $P4533, "1304523727.177", 121
    .const 'Sub' $P4534 = "147_1304523734.668" 
    assign $P4533, $P4534
    nqp_get_sc_object $P4535, "1304523727.177", 122
    .const 'Sub' $P4536 = "148_1304523734.668" 
    assign $P4535, $P4536
    nqp_get_sc_object $P4537, "1304523727.177", 123
    .const 'Sub' $P4538 = "149_1304523734.668" 
    assign $P4537, $P4538
    nqp_get_sc_object $P4539, "1304523727.177", 124
    .const 'Sub' $P4540 = "150_1304523734.668" 
    assign $P4539, $P4540
    nqp_get_sc_object $P4541, "1304523727.177", 125
    .const 'Sub' $P4542 = "151_1304523734.668" 
    assign $P4541, $P4542
    nqp_get_sc_object $P4543, "1304523727.177", 126
    .const 'Sub' $P4544 = "152_1304523734.668" 
    assign $P4543, $P4544
    nqp_get_sc_object $P4545, "1304523727.177", 127
    .const 'Sub' $P4546 = "153_1304523734.668" 
    assign $P4545, $P4546
    nqp_get_sc_object $P4547, "1304523727.177", 128
    .const 'Sub' $P4548 = "154_1304523734.668" 
    assign $P4547, $P4548
    nqp_get_sc_object $P4549, "1304523727.177", 129
    .const 'Sub' $P4550 = "155_1304523734.668" 
    assign $P4549, $P4550
    nqp_get_sc_object $P4551, "1304523727.177", 130
    .const 'Sub' $P4552 = "156_1304523734.668" 
    assign $P4551, $P4552
    nqp_get_sc_object $P4553, "1304523727.177", 131
    .const 'Sub' $P4554 = "157_1304523734.668" 
    assign $P4553, $P4554
    nqp_get_sc_object $P4555, "1304523727.177", 132
    .const 'Sub' $P4556 = "158_1304523734.668" 
    assign $P4555, $P4556
    nqp_get_sc_object $P4557, "1304523727.177", 133
    .const 'Sub' $P4558 = "159_1304523734.668" 
    assign $P4557, $P4558
    nqp_get_sc_object $P4559, "1304523727.177", 134
    .const 'Sub' $P4560 = "160_1304523734.668" 
    assign $P4559, $P4560
    nqp_get_sc_object $P4561, "1304523727.177", 135
    .const 'Sub' $P4562 = "161_1304523734.668" 
    assign $P4561, $P4562
    nqp_get_sc_object $P4563, "1304523727.177", 136
    .const 'Sub' $P4564 = "162_1304523734.668" 
    assign $P4563, $P4564
    nqp_get_sc_object $P4565, "1304523727.177", 137
    .const 'Sub' $P4566 = "164_1304523734.668" 
    assign $P4565, $P4566
    .const 'Sub' $P4567 = "119_1304523734.668" 
    $P4568 = $P4567."get_lexinfo"()
    nqp_get_sc_object $P4569, "1304523727.177", 105
    $P4568."set_static_lexpad_value"("$?PACKAGE", $P4569)
    .const 'Sub' $P4570 = "119_1304523734.668" 
    $P4571 = $P4570."get_lexinfo"()
    $P4571."finish_static_lexpad"()
    .const 'Sub' $P4572 = "119_1304523734.668" 
    $P4573 = $P4572."get_lexinfo"()
    nqp_get_sc_object $P4574, "1304523727.177", 105
    $P4573."set_static_lexpad_value"("$?CLASS", $P4574)
    .const 'Sub' $P4575 = "119_1304523734.668" 
    $P4576 = $P4575."get_lexinfo"()
    $P4576."finish_static_lexpad"()
    nqp_get_sc_object $P4577, "1304523727.177", 139
    .const 'Sub' $P4578 = "168_1304523734.668" 
    assign $P4577, $P4578
    nqp_get_sc_object $P4579, "1304523727.177", 140
    .const 'Sub' $P4580 = "169_1304523734.668" 
    assign $P4579, $P4580
    nqp_get_sc_object $P4581, "1304523727.177", 141
    .const 'Sub' $P4582 = "171_1304523734.668" 
    assign $P4581, $P4582
    nqp_get_sc_object $P4583, "1304523727.177", 142
    .const 'Sub' $P4584 = "174_1304523734.668" 
    assign $P4583, $P4584
    nqp_get_sc_object $P4585, "1304523727.177", 143
    .const 'Sub' $P4586 = "175_1304523734.668" 
    assign $P4585, $P4586
    nqp_get_sc_object $P4587, "1304523727.177", 144
    .const 'Sub' $P4588 = "176_1304523734.668" 
    assign $P4587, $P4588
    nqp_get_sc_object $P4589, "1304523727.177", 145
    .const 'Sub' $P4590 = "178_1304523734.668" 
    assign $P4589, $P4590
    nqp_get_sc_object $P4591, "1304523727.177", 146
    .const 'Sub' $P4592 = "183_1304523734.668" 
    assign $P4591, $P4592
    nqp_get_sc_object $P4593, "1304523727.177", 147
    .const 'Sub' $P4594 = "184_1304523734.668" 
    assign $P4593, $P4594
    nqp_get_sc_object $P4595, "1304523727.177", 148
    .const 'Sub' $P4596 = "191_1304523734.668" 
    assign $P4595, $P4596
    nqp_get_sc_object $P4597, "1304523727.177", 149
    .const 'Sub' $P4598 = "193_1304523734.668" 
    assign $P4597, $P4598
    nqp_get_sc_object $P4599, "1304523727.177", 150
    .const 'Sub' $P4600 = "194_1304523734.668" 
    assign $P4599, $P4600
    nqp_get_sc_object $P4601, "1304523727.177", 151
    .const 'Sub' $P4602 = "195_1304523734.668" 
    assign $P4601, $P4602
    nqp_get_sc_object $P4603, "1304523727.177", 152
    .const 'Sub' $P4604 = "196_1304523734.668" 
    assign $P4603, $P4604
    nqp_get_sc_object $P4605, "1304523727.177", 153
    .const 'Sub' $P4606 = "197_1304523734.668" 
    assign $P4605, $P4606
    nqp_get_sc_object $P4607, "1304523727.177", 154
    .const 'Sub' $P4608 = "198_1304523734.668" 
    assign $P4607, $P4608
    nqp_get_sc_object $P4609, "1304523727.177", 155
    .const 'Sub' $P4610 = "199_1304523734.668" 
    assign $P4609, $P4610
    nqp_get_sc_object $P4611, "1304523727.177", 156
    .const 'Sub' $P4612 = "200_1304523734.668" 
    assign $P4611, $P4612
    nqp_get_sc_object $P4613, "1304523727.177", 157
    .const 'Sub' $P4614 = "201_1304523734.668" 
    assign $P4613, $P4614
    nqp_get_sc_object $P4615, "1304523727.177", 158
    .const 'Sub' $P4616 = "202_1304523734.668" 
    assign $P4615, $P4616
    nqp_get_sc_object $P4617, "1304523727.177", 159
    .const 'Sub' $P4618 = "203_1304523734.668" 
    assign $P4617, $P4618
    nqp_get_sc_object $P4619, "1304523727.177", 160
    .const 'Sub' $P4620 = "205_1304523734.668" 
    assign $P4619, $P4620
    nqp_get_sc_object $P4621, "1304523727.177", 161
    .const 'Sub' $P4622 = "208_1304523734.668" 
    assign $P4621, $P4622
    nqp_get_sc_object $P4623, "1304523727.177", 162
    .const 'Sub' $P4624 = "212_1304523734.668" 
    assign $P4623, $P4624
    nqp_get_sc_object $P4625, "1304523727.177", 163
    .const 'Sub' $P4626 = "214_1304523734.668" 
    assign $P4625, $P4626
    nqp_get_sc_object $P4627, "1304523727.177", 164
    .const 'Sub' $P4628 = "217_1304523734.668" 
    assign $P4627, $P4628
    nqp_get_sc_object $P4629, "1304523727.177", 165
    .const 'Sub' $P4630 = "218_1304523734.668" 
    assign $P4629, $P4630
    nqp_get_sc_object $P4631, "1304523727.177", 166
    .const 'Sub' $P4632 = "219_1304523734.668" 
    assign $P4631, $P4632
    nqp_get_sc_object $P4633, "1304523727.177", 167
    .const 'Sub' $P4634 = "220_1304523734.668" 
    assign $P4633, $P4634
    nqp_get_sc_object $P4635, "1304523727.177", 168
    .const 'Sub' $P4636 = "221_1304523734.668" 
    assign $P4635, $P4636
    nqp_get_sc_object $P4637, "1304523727.177", 169
    .const 'Sub' $P4638 = "223_1304523734.668" 
    assign $P4637, $P4638
    nqp_get_sc_object $P4639, "1304523727.177", 170
    .const 'Sub' $P4640 = "224_1304523734.668" 
    assign $P4639, $P4640
    nqp_get_sc_object $P4641, "1304523727.177", 171
    .const 'Sub' $P4642 = "225_1304523734.668" 
    assign $P4641, $P4642
    nqp_get_sc_object $P4643, "1304523727.177", 172
    .const 'Sub' $P4644 = "227_1304523734.668" 
    assign $P4643, $P4644
    nqp_get_sc_object $P4645, "1304523727.177", 173
    .const 'Sub' $P4646 = "230_1304523734.668" 
    assign $P4645, $P4646
    nqp_get_sc_object $P4647, "1304523727.177", 174
    .const 'Sub' $P4648 = "232_1304523734.668" 
    assign $P4647, $P4648
    .const 'Sub' $P4649 = "165_1304523734.668" 
    $P4650 = $P4649."get_lexinfo"()
    nqp_get_sc_object $P4651, "1304523727.177", 138
    $P4650."set_static_lexpad_value"("$?PACKAGE", $P4651)
    .const 'Sub' $P4652 = "165_1304523734.668" 
    $P4653 = $P4652."get_lexinfo"()
    $P4653."finish_static_lexpad"()
    .const 'Sub' $P4654 = "165_1304523734.668" 
    $P4655 = $P4654."get_lexinfo"()
    nqp_get_sc_object $P4656, "1304523727.177", 138
    $P4655."set_static_lexpad_value"("$?CLASS", $P4656)
    .const 'Sub' $P4657 = "165_1304523734.668" 
    $P4658 = $P4657."get_lexinfo"()
    $P4658."finish_static_lexpad"()
    nqp_get_sc_object $P4659, "1304523727.177", 176
    .const 'Sub' $P4660 = "234_1304523734.668" 
    assign $P4659, $P4660
    nqp_get_sc_object $P4661, "1304523727.177", 177
    .const 'Sub' $P4662 = "235_1304523734.668" 
    assign $P4661, $P4662
    nqp_get_sc_object $P4663, "1304523727.177", 178
    .const 'Sub' $P4664 = "236_1304523734.668" 
    assign $P4663, $P4664
    nqp_get_sc_object $P4665, "1304523727.177", 179
    .const 'Sub' $P4666 = "237_1304523734.668" 
    assign $P4665, $P4666
    nqp_get_sc_object $P4667, "1304523727.177", 180
    .const 'Sub' $P4668 = "238_1304523734.668" 
    assign $P4667, $P4668
    .const 'Sub' $P4669 = "233_1304523734.668" 
    $P4670 = $P4669."get_lexinfo"()
    nqp_get_sc_object $P4671, "1304523727.177", 175
    $P4670."set_static_lexpad_value"("$?PACKAGE", $P4671)
    .const 'Sub' $P4672 = "233_1304523734.668" 
    $P4673 = $P4672."get_lexinfo"()
    $P4673."finish_static_lexpad"()
    .const 'Sub' $P4674 = "233_1304523734.668" 
    $P4675 = $P4674."get_lexinfo"()
    nqp_get_sc_object $P4676, "1304523727.177", 175
    $P4675."set_static_lexpad_value"("$?CLASS", $P4676)
    .const 'Sub' $P4677 = "233_1304523734.668" 
    $P4678 = $P4677."get_lexinfo"()
    $P4678."finish_static_lexpad"()
    nqp_get_sc_object $P4679, "1304523727.177", 182
    .const 'Sub' $P4680 = "241_1304523734.668" 
    assign $P4679, $P4680
    nqp_get_sc_object $P4681, "1304523727.177", 183
    .const 'Sub' $P4682 = "242_1304523734.668" 
    assign $P4681, $P4682
    nqp_get_sc_object $P4683, "1304523727.177", 184
    .const 'Sub' $P4684 = "243_1304523734.668" 
    assign $P4683, $P4684
    nqp_get_sc_object $P4685, "1304523727.177", 185
    .const 'Sub' $P4686 = "245_1304523734.668" 
    assign $P4685, $P4686
    nqp_get_sc_object $P4687, "1304523727.177", 186
    .const 'Sub' $P4688 = "246_1304523734.668" 
    assign $P4687, $P4688
    nqp_get_sc_object $P4689, "1304523727.177", 187
    .const 'Sub' $P4690 = "247_1304523734.668" 
    assign $P4689, $P4690
    nqp_get_sc_object $P4691, "1304523727.177", 188
    .const 'Sub' $P4692 = "249_1304523734.668" 
    assign $P4691, $P4692
    nqp_get_sc_object $P4693, "1304523727.177", 189
    .const 'Sub' $P4694 = "250_1304523734.668" 
    assign $P4693, $P4694
    nqp_get_sc_object $P4695, "1304523727.177", 190
    .const 'Sub' $P4696 = "251_1304523734.668" 
    assign $P4695, $P4696
    .const 'Sub' $P4697 = "240_1304523734.668" 
    $P4698 = $P4697."get_lexinfo"()
    nqp_get_sc_object $P4699, "1304523727.177", 181
    $P4698."set_static_lexpad_value"("$?PACKAGE", $P4699)
    .const 'Sub' $P4700 = "240_1304523734.668" 
    $P4701 = $P4700."get_lexinfo"()
    $P4701."finish_static_lexpad"()
    .const 'Sub' $P4702 = "240_1304523734.668" 
    $P4703 = $P4702."get_lexinfo"()
    nqp_get_sc_object $P4704, "1304523727.177", 181
    $P4703."set_static_lexpad_value"("$?CLASS", $P4704)
    .const 'Sub' $P4705 = "240_1304523734.668" 
    $P4706 = $P4705."get_lexinfo"()
    $P4706."finish_static_lexpad"()
    .const 'Sub' $P4707 = "259_1304523734.668" 
    $P4708 = $P4707."get_lexinfo"()
    nqp_get_sc_object $P4709, "1304523727.177", 192
    $P4708."set_static_lexpad_value"("Event", $P4709)
    .const 'Sub' $P4710 = "259_1304523734.668" 
    $P4711 = $P4710."get_lexinfo"()
    $P4711."finish_static_lexpad"()
    nqp_get_sc_object $P4712, "1304523727.177", 193
    .const 'Sub' $P4713 = "262_1304523734.668" 
    assign $P4712, $P4713
    nqp_get_sc_object $P4714, "1304523727.177", 194
    .const 'Sub' $P4715 = "263_1304523734.668" 
    assign $P4714, $P4715
    .const 'Sub' $P4716 = "261_1304523734.668" 
    $P4717 = $P4716."get_lexinfo"()
    nqp_get_sc_object $P4718, "1304523727.177", 192
    $P4717."set_static_lexpad_value"("$?PACKAGE", $P4718)
    .const 'Sub' $P4719 = "261_1304523734.668" 
    $P4720 = $P4719."get_lexinfo"()
    $P4720."finish_static_lexpad"()
    .const 'Sub' $P4721 = "261_1304523734.668" 
    $P4722 = $P4721."get_lexinfo"()
    nqp_get_sc_object $P4723, "1304523727.177", 192
    $P4722."set_static_lexpad_value"("$?CLASS", $P4723)
    .const 'Sub' $P4724 = "261_1304523734.668" 
    $P4725 = $P4724."get_lexinfo"()
    $P4725."finish_static_lexpad"()
    nqp_get_sc_object $P4726, "1304523727.177", 195
    .const 'Sub' $P4727 = "264_1304523734.668" 
    assign $P4726, $P4727
    nqp_get_sc_object $P4728, "1304523727.177", 196
    .const 'Sub' $P4729 = "265_1304523734.668" 
    assign $P4728, $P4729
    nqp_get_sc_object $P4730, "1304523727.177", 197
    .const 'Sub' $P4731 = "266_1304523734.668" 
    assign $P4730, $P4731
    nqp_get_sc_object $P4732, "1304523727.177", 198
    .const 'Sub' $P4733 = "267_1304523734.668" 
    assign $P4732, $P4733
    nqp_get_sc_object $P4734, "1304523727.177", 199
    .const 'Sub' $P4735 = "268_1304523734.668" 
    assign $P4734, $P4735
    nqp_get_sc_object $P4736, "1304523727.177", 200
    .const 'Sub' $P4737 = "269_1304523734.668" 
    assign $P4736, $P4737
    nqp_get_sc_object $P4738, "1304523727.177", 201
    .const 'Sub' $P4739 = "270_1304523734.668" 
    assign $P4738, $P4739
    nqp_get_sc_object $P4740, "1304523727.177", 202
    .const 'Sub' $P4741 = "271_1304523734.668" 
    assign $P4740, $P4741
    nqp_get_sc_object $P4742, "1304523727.177", 203
    .const 'Sub' $P4743 = "272_1304523734.668" 
    assign $P4742, $P4743
    nqp_get_sc_object $P4744, "1304523727.177", 204
    .const 'Sub' $P4745 = "273_1304523734.668" 
    assign $P4744, $P4745
    nqp_get_sc_object $P4746, "1304523727.177", 205
    .const 'Sub' $P4747 = "274_1304523734.668" 
    assign $P4746, $P4747
    nqp_get_sc_object $P4748, "1304523727.177", 206
    .const 'Sub' $P4749 = "275_1304523734.668" 
    assign $P4748, $P4749
    nqp_get_sc_object $P4750, "1304523727.177", 207
    .const 'Sub' $P4751 = "276_1304523734.668" 
    assign $P4750, $P4751
    .const 'Sub' $P4752 = "259_1304523734.668" 
    $P4753 = $P4752."get_lexinfo"()
    nqp_get_sc_object $P4754, "1304523727.177", 191
    $P4753."set_static_lexpad_value"("$?PACKAGE", $P4754)
    .const 'Sub' $P4755 = "259_1304523734.668" 
    $P4756 = $P4755."get_lexinfo"()
    $P4756."finish_static_lexpad"()
    .const 'Sub' $P4757 = "259_1304523734.668" 
    $P4758 = $P4757."get_lexinfo"()
    nqp_get_sc_object $P4759, "1304523727.177", 191
    $P4758."set_static_lexpad_value"("$?CLASS", $P4759)
    .const 'Sub' $P4760 = "259_1304523734.668" 
    $P4761 = $P4760."get_lexinfo"()
    $P4761."finish_static_lexpad"()
    goto if_3148_end
  if_3148:
    nqp_dynop_setup 
    getinterp $P3151
    get_class $P3152, "LexPad"
    get_class $P3153, "NQPLexPad"
    $P3151."hll_map"($P3152, $P3153)
    nqp_create_sc $P3154, "1304523727.177"
    .local pmc cur_sc
    set cur_sc, $P3154
    nqp_get_sc_object $P3155, "__6MODEL_CORE__", 0
    $P3156 = $P3155."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3156, cur_sc
    nqp_set_sc_object "1304523727.177", 0, $P3156
    .const 'Sub' $P3157 = "10_1304523734.668" 
    $P3158 = $P3157."get_lexinfo"()
    nqp_get_sc_object $P3159, "1304523727.177", 0
    $P3158."set_static_lexpad_value"("GLOBALish", $P3159)
    .const 'Sub' $P3160 = "10_1304523734.668" 
    $P3161 = $P3160."get_lexinfo"()
    $P3161."finish_static_lexpad"()
    .const 'Sub' $P3162 = "10_1304523734.668" 
    $P3163 = $P3162."get_lexinfo"()
    nqp_get_sc_object $P3164, "1304523727.177", 0
    $P3163."set_static_lexpad_value"("$?PACKAGE", $P3164)
    .const 'Sub' $P3165 = "10_1304523734.668" 
    $P3166 = $P3165."get_lexinfo"()
    $P3166."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3167, "ModuleLoader"
    $P3168 = $P3167."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3168)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3169, "ModuleLoader"
    nqp_get_sc_object $P3170, "1304523727.177", 0
    $P3169."load_module"("NQPRegex", $P3170)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3171, "ModuleLoader"
    nqp_get_sc_object $P3172, "1304523727.177", 0
    $P3171."load_module"("NQPRegex", $P3172)
    nqp_get_sc_object $P3173, "1304523719.327", 41
    $P3174 = $P3173."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3174, cur_sc
    nqp_set_sc_object "1304523727.177", 1, $P3174
    nqp_get_sc_object $P3175, "1304523727.177", 1
    nqp_get_sc_object $P3176, "1304523727.177", 0
    nqp_get_package_through_who $P3177, $P3176, "HLL"
    get_who $P3178, $P3177
    set $P3178["Grammar"], $P3175
    nqp_get_sc_object $P3179, "1304523727.177", 1
    get_how $P3180, $P3179
    nqp_get_sc_object $P3181, "1304523727.177", 1
    .const 'Sub' $P3182 = "12_1304523734.668" 
    $P3180."add_method"($P3181, "ws", $P3182)
    nqp_get_sc_object $P3183, "1304523727.177", 1
    get_how $P3184, $P3183
    nqp_get_sc_object $P3185, "1304523727.177", 1
    .const 'Sub' $P3186 = "13_1304523734.668" 
    $P3184."add_method"($P3185, "!PREFIX__ws", $P3186)
    nqp_get_sc_object $P3187, "1304523727.177", 1
    get_how $P3188, $P3187
    nqp_get_sc_object $P3189, "1304523727.177", 1
    .const 'Sub' $P3190 = "14_1304523734.668" 
    $P3188."add_method"($P3189, "termish", $P3190)
    nqp_get_sc_object $P3191, "1304523727.177", 1
    get_how $P3192, $P3191
    nqp_get_sc_object $P3193, "1304523727.177", 1
    .const 'Sub' $P3194 = "15_1304523734.668" 
    $P3192."add_method"($P3193, "!PREFIX__termish", $P3194)
    nqp_get_sc_object $P3195, "1304523727.177", 1
    get_how $P3196, $P3195
    nqp_get_sc_object $P3197, "1304523727.177", 1
    .const 'Sub' $P3198 = "16_1304523734.668" 
    $P3196."add_method"($P3197, "term", $P3198)
    nqp_get_sc_object $P3199, "1304523727.177", 1
    get_how $P3200, $P3199
    nqp_get_sc_object $P3201, "1304523727.177", 1
    .const 'Sub' $P3202 = "17_1304523734.668" 
    $P3200."add_method"($P3201, "!PREFIX__term", $P3202)
    nqp_get_sc_object $P3203, "1304523727.177", 1
    get_how $P3204, $P3203
    nqp_get_sc_object $P3205, "1304523727.177", 1
    .const 'Sub' $P3206 = "18_1304523734.668" 
    $P3204."add_method"($P3205, "infix", $P3206)
    nqp_get_sc_object $P3207, "1304523727.177", 1
    get_how $P3208, $P3207
    nqp_get_sc_object $P3209, "1304523727.177", 1
    .const 'Sub' $P3210 = "19_1304523734.668" 
    $P3208."add_method"($P3209, "!PREFIX__infix", $P3210)
    nqp_get_sc_object $P3211, "1304523727.177", 1
    get_how $P3212, $P3211
    nqp_get_sc_object $P3213, "1304523727.177", 1
    .const 'Sub' $P3214 = "20_1304523734.668" 
    $P3212."add_method"($P3213, "prefix", $P3214)
    nqp_get_sc_object $P3215, "1304523727.177", 1
    get_how $P3216, $P3215
    nqp_get_sc_object $P3217, "1304523727.177", 1
    .const 'Sub' $P3218 = "21_1304523734.668" 
    $P3216."add_method"($P3217, "!PREFIX__prefix", $P3218)
    nqp_get_sc_object $P3219, "1304523727.177", 1
    get_how $P3220, $P3219
    nqp_get_sc_object $P3221, "1304523727.177", 1
    .const 'Sub' $P3222 = "22_1304523734.668" 
    $P3220."add_method"($P3221, "postfix", $P3222)
    nqp_get_sc_object $P3223, "1304523727.177", 1
    get_how $P3224, $P3223
    nqp_get_sc_object $P3225, "1304523727.177", 1
    .const 'Sub' $P3226 = "23_1304523734.668" 
    $P3224."add_method"($P3225, "!PREFIX__postfix", $P3226)
    nqp_get_sc_object $P3227, "1304523727.177", 1
    get_how $P3228, $P3227
    nqp_get_sc_object $P3229, "1304523727.177", 1
    .const 'Sub' $P3230 = "24_1304523734.668" 
    $P3228."add_method"($P3229, "circumfix", $P3230)
    nqp_get_sc_object $P3231, "1304523727.177", 1
    get_how $P3232, $P3231
    nqp_get_sc_object $P3233, "1304523727.177", 1
    .const 'Sub' $P3234 = "25_1304523734.668" 
    $P3232."add_method"($P3233, "!PREFIX__circumfix", $P3234)
    nqp_get_sc_object $P3235, "1304523727.177", 1
    get_how $P3236, $P3235
    nqp_get_sc_object $P3237, "1304523727.177", 1
    .const 'Sub' $P3238 = "26_1304523734.668" 
    $P3236."add_method"($P3237, "postcircumfix", $P3238)
    nqp_get_sc_object $P3239, "1304523727.177", 1
    get_how $P3240, $P3239
    nqp_get_sc_object $P3241, "1304523727.177", 1
    .const 'Sub' $P3242 = "27_1304523734.668" 
    $P3240."add_method"($P3241, "!PREFIX__postcircumfix", $P3242)
    nqp_get_sc_object $P3243, "1304523727.177", 1
    get_how $P3244, $P3243
    nqp_get_sc_object $P3245, "1304523727.177", 1
    .const 'Sub' $P3246 = "28_1304523734.668" 
    $P3244."add_method"($P3245, "term:sym<circumfix>", $P3246)
    nqp_get_sc_object $P3247, "1304523727.177", 1
    get_how $P3248, $P3247
    nqp_get_sc_object $P3249, "1304523727.177", 1
    .const 'Sub' $P3250 = "29_1304523734.668" 
    $P3248."add_method"($P3249, "!PREFIX__term:sym<circumfix>", $P3250)
    nqp_get_sc_object $P3251, "1304523727.177", 1
    get_how $P3252, $P3251
    nqp_get_sc_object $P3253, "1304523727.177", 1
    .const 'Sub' $P3254 = "30_1304523734.668" 
    $P3252."add_method"($P3253, "infixish", $P3254)
    nqp_get_sc_object $P3255, "1304523727.177", 1
    get_how $P3256, $P3255
    nqp_get_sc_object $P3257, "1304523727.177", 1
    .const 'Sub' $P3258 = "31_1304523734.668" 
    $P3256."add_method"($P3257, "!PREFIX__infixish", $P3258)
    nqp_get_sc_object $P3259, "1304523727.177", 1
    get_how $P3260, $P3259
    nqp_get_sc_object $P3261, "1304523727.177", 1
    .const 'Sub' $P3262 = "32_1304523734.668" 
    $P3260."add_method"($P3261, "prefixish", $P3262)
    nqp_get_sc_object $P3263, "1304523727.177", 1
    get_how $P3264, $P3263
    nqp_get_sc_object $P3265, "1304523727.177", 1
    .const 'Sub' $P3266 = "33_1304523734.668" 
    $P3264."add_method"($P3265, "!PREFIX__prefixish", $P3266)
    nqp_get_sc_object $P3267, "1304523727.177", 1
    get_how $P3268, $P3267
    nqp_get_sc_object $P3269, "1304523727.177", 1
    .const 'Sub' $P3270 = "34_1304523734.668" 
    $P3268."add_method"($P3269, "postfixish", $P3270)
    nqp_get_sc_object $P3271, "1304523727.177", 1
    get_how $P3272, $P3271
    nqp_get_sc_object $P3273, "1304523727.177", 1
    .const 'Sub' $P3274 = "35_1304523734.668" 
    $P3272."add_method"($P3273, "!PREFIX__postfixish", $P3274)
    nqp_get_sc_object $P3275, "1304523727.177", 1
    get_how $P3276, $P3275
    nqp_get_sc_object $P3277, "1304523727.177", 1
    .const 'Sub' $P3278 = "36_1304523734.668" 
    $P3276."add_method"($P3277, "nullterm", $P3278)
    nqp_get_sc_object $P3279, "1304523727.177", 1
    get_how $P3280, $P3279
    nqp_get_sc_object $P3281, "1304523727.177", 1
    .const 'Sub' $P3282 = "37_1304523734.668" 
    $P3280."add_method"($P3281, "!PREFIX__nullterm", $P3282)
    nqp_get_sc_object $P3283, "1304523727.177", 1
    get_how $P3284, $P3283
    nqp_get_sc_object $P3285, "1304523727.177", 1
    .const 'Sub' $P3286 = "38_1304523734.668" 
    $P3284."add_method"($P3285, "nullterm_alt", $P3286)
    nqp_get_sc_object $P3287, "1304523727.177", 1
    get_how $P3288, $P3287
    nqp_get_sc_object $P3289, "1304523727.177", 1
    .const 'Sub' $P3290 = "39_1304523734.668" 
    $P3288."add_method"($P3289, "!PREFIX__nullterm_alt", $P3290)
    nqp_get_sc_object $P3291, "1304523727.177", 1
    get_how $P3292, $P3291
    nqp_get_sc_object $P3293, "1304523727.177", 1
    .const 'Sub' $P3294 = "40_1304523734.668" 
    $P3292."add_method"($P3293, "nulltermish", $P3294)
    nqp_get_sc_object $P3295, "1304523727.177", 1
    get_how $P3296, $P3295
    nqp_get_sc_object $P3297, "1304523727.177", 1
    .const 'Sub' $P3298 = "41_1304523734.668" 
    $P3296."add_method"($P3297, "quote_delimited", $P3298)
    nqp_get_sc_object $P3299, "1304523727.177", 1
    get_how $P3300, $P3299
    nqp_get_sc_object $P3301, "1304523727.177", 1
    .const 'Sub' $P3302 = "42_1304523734.668" 
    $P3300."add_method"($P3301, "!PREFIX__quote_delimited", $P3302)
    nqp_get_sc_object $P3303, "1304523727.177", 1
    get_how $P3304, $P3303
    nqp_get_sc_object $P3305, "1304523727.177", 1
    .const 'Sub' $P3306 = "43_1304523734.668" 
    $P3304."add_method"($P3305, "quote_atom", $P3306)
    nqp_get_sc_object $P3307, "1304523727.177", 1
    get_how $P3308, $P3307
    nqp_get_sc_object $P3309, "1304523727.177", 1
    .const 'Sub' $P3310 = "44_1304523734.668" 
    $P3308."add_method"($P3309, "!PREFIX__quote_atom", $P3310)
    nqp_get_sc_object $P3311, "1304523727.177", 1
    get_how $P3312, $P3311
    nqp_get_sc_object $P3313, "1304523727.177", 1
    .const 'Sub' $P3314 = "45_1304523734.668" 
    $P3312."add_method"($P3313, "decint", $P3314)
    nqp_get_sc_object $P3315, "1304523727.177", 1
    get_how $P3316, $P3315
    nqp_get_sc_object $P3317, "1304523727.177", 1
    .const 'Sub' $P3318 = "46_1304523734.668" 
    $P3316."add_method"($P3317, "!PREFIX__decint", $P3318)
    nqp_get_sc_object $P3319, "1304523727.177", 1
    get_how $P3320, $P3319
    nqp_get_sc_object $P3321, "1304523727.177", 1
    .const 'Sub' $P3322 = "47_1304523734.668" 
    $P3320."add_method"($P3321, "decints", $P3322)
    nqp_get_sc_object $P3323, "1304523727.177", 1
    get_how $P3324, $P3323
    nqp_get_sc_object $P3325, "1304523727.177", 1
    .const 'Sub' $P3326 = "48_1304523734.668" 
    $P3324."add_method"($P3325, "!PREFIX__decints", $P3326)
    nqp_get_sc_object $P3327, "1304523727.177", 1
    get_how $P3328, $P3327
    nqp_get_sc_object $P3329, "1304523727.177", 1
    .const 'Sub' $P3330 = "49_1304523734.668" 
    $P3328."add_method"($P3329, "hexint", $P3330)
    nqp_get_sc_object $P3331, "1304523727.177", 1
    get_how $P3332, $P3331
    nqp_get_sc_object $P3333, "1304523727.177", 1
    .const 'Sub' $P3334 = "50_1304523734.668" 
    $P3332."add_method"($P3333, "!PREFIX__hexint", $P3334)
    nqp_get_sc_object $P3335, "1304523727.177", 1
    get_how $P3336, $P3335
    nqp_get_sc_object $P3337, "1304523727.177", 1
    .const 'Sub' $P3338 = "51_1304523734.668" 
    $P3336."add_method"($P3337, "hexints", $P3338)
    nqp_get_sc_object $P3339, "1304523727.177", 1
    get_how $P3340, $P3339
    nqp_get_sc_object $P3341, "1304523727.177", 1
    .const 'Sub' $P3342 = "52_1304523734.668" 
    $P3340."add_method"($P3341, "!PREFIX__hexints", $P3342)
    nqp_get_sc_object $P3343, "1304523727.177", 1
    get_how $P3344, $P3343
    nqp_get_sc_object $P3345, "1304523727.177", 1
    .const 'Sub' $P3346 = "53_1304523734.668" 
    $P3344."add_method"($P3345, "octint", $P3346)
    nqp_get_sc_object $P3347, "1304523727.177", 1
    get_how $P3348, $P3347
    nqp_get_sc_object $P3349, "1304523727.177", 1
    .const 'Sub' $P3350 = "54_1304523734.668" 
    $P3348."add_method"($P3349, "!PREFIX__octint", $P3350)
    nqp_get_sc_object $P3351, "1304523727.177", 1
    get_how $P3352, $P3351
    nqp_get_sc_object $P3353, "1304523727.177", 1
    .const 'Sub' $P3354 = "55_1304523734.668" 
    $P3352."add_method"($P3353, "octints", $P3354)
    nqp_get_sc_object $P3355, "1304523727.177", 1
    get_how $P3356, $P3355
    nqp_get_sc_object $P3357, "1304523727.177", 1
    .const 'Sub' $P3358 = "56_1304523734.668" 
    $P3356."add_method"($P3357, "!PREFIX__octints", $P3358)
    nqp_get_sc_object $P3359, "1304523727.177", 1
    get_how $P3360, $P3359
    nqp_get_sc_object $P3361, "1304523727.177", 1
    .const 'Sub' $P3362 = "57_1304523734.668" 
    $P3360."add_method"($P3361, "binint", $P3362)
    nqp_get_sc_object $P3363, "1304523727.177", 1
    get_how $P3364, $P3363
    nqp_get_sc_object $P3365, "1304523727.177", 1
    .const 'Sub' $P3366 = "58_1304523734.668" 
    $P3364."add_method"($P3365, "!PREFIX__binint", $P3366)
    nqp_get_sc_object $P3367, "1304523727.177", 1
    get_how $P3368, $P3367
    nqp_get_sc_object $P3369, "1304523727.177", 1
    .const 'Sub' $P3370 = "59_1304523734.668" 
    $P3368."add_method"($P3369, "binints", $P3370)
    nqp_get_sc_object $P3371, "1304523727.177", 1
    get_how $P3372, $P3371
    nqp_get_sc_object $P3373, "1304523727.177", 1
    .const 'Sub' $P3374 = "60_1304523734.668" 
    $P3372."add_method"($P3373, "!PREFIX__binints", $P3374)
    nqp_get_sc_object $P3375, "1304523727.177", 1
    get_how $P3376, $P3375
    nqp_get_sc_object $P3377, "1304523727.177", 1
    .const 'Sub' $P3378 = "61_1304523734.668" 
    $P3376."add_method"($P3377, "integer", $P3378)
    nqp_get_sc_object $P3379, "1304523727.177", 1
    get_how $P3380, $P3379
    nqp_get_sc_object $P3381, "1304523727.177", 1
    .const 'Sub' $P3382 = "62_1304523734.668" 
    $P3380."add_method"($P3381, "!PREFIX__integer", $P3382)
    nqp_get_sc_object $P3383, "1304523727.177", 1
    get_how $P3384, $P3383
    nqp_get_sc_object $P3385, "1304523727.177", 1
    .const 'Sub' $P3386 = "63_1304523734.668" 
    $P3384."add_method"($P3385, "dec_number", $P3386)
    nqp_get_sc_object $P3387, "1304523727.177", 1
    get_how $P3388, $P3387
    nqp_get_sc_object $P3389, "1304523727.177", 1
    .const 'Sub' $P3390 = "64_1304523734.668" 
    $P3388."add_method"($P3389, "!PREFIX__dec_number", $P3390)
    nqp_get_sc_object $P3391, "1304523727.177", 1
    get_how $P3392, $P3391
    nqp_get_sc_object $P3393, "1304523727.177", 1
    .const 'Sub' $P3394 = "65_1304523734.668" 
    $P3392."add_method"($P3393, "escale", $P3394)
    nqp_get_sc_object $P3395, "1304523727.177", 1
    get_how $P3396, $P3395
    nqp_get_sc_object $P3397, "1304523727.177", 1
    .const 'Sub' $P3398 = "66_1304523734.668" 
    $P3396."add_method"($P3397, "!PREFIX__escale", $P3398)
    nqp_get_sc_object $P3399, "1304523727.177", 1
    get_how $P3400, $P3399
    nqp_get_sc_object $P3401, "1304523727.177", 1
    .const 'Sub' $P3402 = "67_1304523734.668" 
    $P3400."add_method"($P3401, "quote_escape", $P3402)
    nqp_get_sc_object $P3403, "1304523727.177", 1
    get_how $P3404, $P3403
    nqp_get_sc_object $P3405, "1304523727.177", 1
    .const 'Sub' $P3406 = "68_1304523734.668" 
    $P3404."add_method"($P3405, "!PREFIX__quote_escape", $P3406)
    nqp_get_sc_object $P3407, "1304523727.177", 1
    get_how $P3408, $P3407
    nqp_get_sc_object $P3409, "1304523727.177", 1
    .const 'Sub' $P3410 = "69_1304523734.668" 
    $P3408."add_method"($P3409, "quote_escape:sym<backslash>", $P3410)
    nqp_get_sc_object $P3411, "1304523727.177", 1
    get_how $P3412, $P3411
    nqp_get_sc_object $P3413, "1304523727.177", 1
    .const 'Sub' $P3414 = "70_1304523734.668" 
    $P3412."add_method"($P3413, "!PREFIX__quote_escape:sym<backslash>", $P3414)
    nqp_get_sc_object $P3415, "1304523727.177", 1
    get_how $P3416, $P3415
    nqp_get_sc_object $P3417, "1304523727.177", 1
    .const 'Sub' $P3418 = "71_1304523734.668" 
    $P3416."add_method"($P3417, "quote_escape:sym<stopper>", $P3418)
    nqp_get_sc_object $P3419, "1304523727.177", 1
    get_how $P3420, $P3419
    nqp_get_sc_object $P3421, "1304523727.177", 1
    .const 'Sub' $P3422 = "72_1304523734.668" 
    $P3420."add_method"($P3421, "!PREFIX__quote_escape:sym<stopper>", $P3422)
    nqp_get_sc_object $P3423, "1304523727.177", 1
    get_how $P3424, $P3423
    nqp_get_sc_object $P3425, "1304523727.177", 1
    .const 'Sub' $P3426 = "73_1304523734.668" 
    $P3424."add_method"($P3425, "quote_escape:sym<bs>", $P3426)
    nqp_get_sc_object $P3427, "1304523727.177", 1
    get_how $P3428, $P3427
    nqp_get_sc_object $P3429, "1304523727.177", 1
    .const 'Sub' $P3430 = "74_1304523734.668" 
    $P3428."add_method"($P3429, "!PREFIX__quote_escape:sym<bs>", $P3430)
    nqp_get_sc_object $P3431, "1304523727.177", 1
    get_how $P3432, $P3431
    nqp_get_sc_object $P3433, "1304523727.177", 1
    .const 'Sub' $P3434 = "75_1304523734.668" 
    $P3432."add_method"($P3433, "quote_escape:sym<nl>", $P3434)
    nqp_get_sc_object $P3435, "1304523727.177", 1
    get_how $P3436, $P3435
    nqp_get_sc_object $P3437, "1304523727.177", 1
    .const 'Sub' $P3438 = "76_1304523734.668" 
    $P3436."add_method"($P3437, "!PREFIX__quote_escape:sym<nl>", $P3438)
    nqp_get_sc_object $P3439, "1304523727.177", 1
    get_how $P3440, $P3439
    nqp_get_sc_object $P3441, "1304523727.177", 1
    .const 'Sub' $P3442 = "77_1304523734.668" 
    $P3440."add_method"($P3441, "quote_escape:sym<cr>", $P3442)
    nqp_get_sc_object $P3443, "1304523727.177", 1
    get_how $P3444, $P3443
    nqp_get_sc_object $P3445, "1304523727.177", 1
    .const 'Sub' $P3446 = "78_1304523734.668" 
    $P3444."add_method"($P3445, "!PREFIX__quote_escape:sym<cr>", $P3446)
    nqp_get_sc_object $P3447, "1304523727.177", 1
    get_how $P3448, $P3447
    nqp_get_sc_object $P3449, "1304523727.177", 1
    .const 'Sub' $P3450 = "79_1304523734.668" 
    $P3448."add_method"($P3449, "quote_escape:sym<tab>", $P3450)
    nqp_get_sc_object $P3451, "1304523727.177", 1
    get_how $P3452, $P3451
    nqp_get_sc_object $P3453, "1304523727.177", 1
    .const 'Sub' $P3454 = "80_1304523734.668" 
    $P3452."add_method"($P3453, "!PREFIX__quote_escape:sym<tab>", $P3454)
    nqp_get_sc_object $P3455, "1304523727.177", 1
    get_how $P3456, $P3455
    nqp_get_sc_object $P3457, "1304523727.177", 1
    .const 'Sub' $P3458 = "81_1304523734.668" 
    $P3456."add_method"($P3457, "quote_escape:sym<ff>", $P3458)
    nqp_get_sc_object $P3459, "1304523727.177", 1
    get_how $P3460, $P3459
    nqp_get_sc_object $P3461, "1304523727.177", 1
    .const 'Sub' $P3462 = "82_1304523734.668" 
    $P3460."add_method"($P3461, "!PREFIX__quote_escape:sym<ff>", $P3462)
    nqp_get_sc_object $P3463, "1304523727.177", 1
    get_how $P3464, $P3463
    nqp_get_sc_object $P3465, "1304523727.177", 1
    .const 'Sub' $P3466 = "83_1304523734.668" 
    $P3464."add_method"($P3465, "quote_escape:sym<esc>", $P3466)
    nqp_get_sc_object $P3467, "1304523727.177", 1
    get_how $P3468, $P3467
    nqp_get_sc_object $P3469, "1304523727.177", 1
    .const 'Sub' $P3470 = "84_1304523734.668" 
    $P3468."add_method"($P3469, "!PREFIX__quote_escape:sym<esc>", $P3470)
    nqp_get_sc_object $P3471, "1304523727.177", 1
    get_how $P3472, $P3471
    nqp_get_sc_object $P3473, "1304523727.177", 1
    .const 'Sub' $P3474 = "85_1304523734.668" 
    $P3472."add_method"($P3473, "quote_escape:sym<hex>", $P3474)
    nqp_get_sc_object $P3475, "1304523727.177", 1
    get_how $P3476, $P3475
    nqp_get_sc_object $P3477, "1304523727.177", 1
    .const 'Sub' $P3478 = "86_1304523734.668" 
    $P3476."add_method"($P3477, "!PREFIX__quote_escape:sym<hex>", $P3478)
    nqp_get_sc_object $P3479, "1304523727.177", 1
    get_how $P3480, $P3479
    nqp_get_sc_object $P3481, "1304523727.177", 1
    .const 'Sub' $P3482 = "87_1304523734.668" 
    $P3480."add_method"($P3481, "quote_escape:sym<oct>", $P3482)
    nqp_get_sc_object $P3483, "1304523727.177", 1
    get_how $P3484, $P3483
    nqp_get_sc_object $P3485, "1304523727.177", 1
    .const 'Sub' $P3486 = "88_1304523734.668" 
    $P3484."add_method"($P3485, "!PREFIX__quote_escape:sym<oct>", $P3486)
    nqp_get_sc_object $P3487, "1304523727.177", 1
    get_how $P3488, $P3487
    nqp_get_sc_object $P3489, "1304523727.177", 1
    .const 'Sub' $P3490 = "89_1304523734.668" 
    $P3488."add_method"($P3489, "quote_escape:sym<chr>", $P3490)
    nqp_get_sc_object $P3491, "1304523727.177", 1
    get_how $P3492, $P3491
    nqp_get_sc_object $P3493, "1304523727.177", 1
    .const 'Sub' $P3494 = "90_1304523734.668" 
    $P3492."add_method"($P3493, "!PREFIX__quote_escape:sym<chr>", $P3494)
    nqp_get_sc_object $P3495, "1304523727.177", 1
    get_how $P3496, $P3495
    nqp_get_sc_object $P3497, "1304523727.177", 1
    .const 'Sub' $P3498 = "91_1304523734.668" 
    $P3496."add_method"($P3497, "quote_escape:sym<0>", $P3498)
    nqp_get_sc_object $P3499, "1304523727.177", 1
    get_how $P3500, $P3499
    nqp_get_sc_object $P3501, "1304523727.177", 1
    .const 'Sub' $P3502 = "92_1304523734.668" 
    $P3500."add_method"($P3501, "!PREFIX__quote_escape:sym<0>", $P3502)
    nqp_get_sc_object $P3503, "1304523727.177", 1
    get_how $P3504, $P3503
    nqp_get_sc_object $P3505, "1304523727.177", 1
    .const 'Sub' $P3506 = "93_1304523734.668" 
    $P3504."add_method"($P3505, "quote_escape:sym<misc>", $P3506)
    nqp_get_sc_object $P3507, "1304523727.177", 1
    get_how $P3508, $P3507
    nqp_get_sc_object $P3509, "1304523727.177", 1
    .const 'Sub' $P3510 = "97_1304523734.668" 
    $P3508."add_method"($P3509, "!PREFIX__quote_escape:sym<misc>", $P3510)
    nqp_get_sc_object $P3511, "1304523727.177", 1
    get_how $P3512, $P3511
    nqp_get_sc_object $P3513, "1304523727.177", 1
    .const 'Sub' $P3514 = "98_1304523734.668" 
    $P3512."add_method"($P3513, "charname", $P3514)
    nqp_get_sc_object $P3515, "1304523727.177", 1
    get_how $P3516, $P3515
    nqp_get_sc_object $P3517, "1304523727.177", 1
    .const 'Sub' $P3518 = "100_1304523734.668" 
    $P3516."add_method"($P3517, "!PREFIX__charname", $P3518)
    nqp_get_sc_object $P3519, "1304523727.177", 1
    get_how $P3520, $P3519
    nqp_get_sc_object $P3521, "1304523727.177", 1
    .const 'Sub' $P3522 = "101_1304523734.668" 
    $P3520."add_method"($P3521, "charnames", $P3522)
    nqp_get_sc_object $P3523, "1304523727.177", 1
    get_how $P3524, $P3523
    nqp_get_sc_object $P3525, "1304523727.177", 1
    .const 'Sub' $P3526 = "102_1304523734.668" 
    $P3524."add_method"($P3525, "!PREFIX__charnames", $P3526)
    nqp_get_sc_object $P3527, "1304523727.177", 1
    get_how $P3528, $P3527
    nqp_get_sc_object $P3529, "1304523727.177", 1
    .const 'Sub' $P3530 = "103_1304523734.668" 
    $P3528."add_method"($P3529, "charspec", $P3530)
    nqp_get_sc_object $P3531, "1304523727.177", 1
    get_how $P3532, $P3531
    nqp_get_sc_object $P3533, "1304523727.177", 1
    .const 'Sub' $P3534 = "104_1304523734.668" 
    $P3532."add_method"($P3533, "!PREFIX__charspec", $P3534)
    nqp_get_sc_object $P3535, "1304523727.177", 1
    get_how $P3536, $P3535
    nqp_get_sc_object $P3537, "1304523727.177", 1
    .const 'Sub' $P3538 = "105_1304523734.668" 
    $P3536."add_method"($P3537, "O", $P3538)
    nqp_get_sc_object $P3539, "1304523727.177", 1
    get_how $P3540, $P3539
    nqp_get_sc_object $P3541, "1304523727.177", 1
    .const 'Sub' $P3542 = "106_1304523734.668" 
    $P3540."add_method"($P3541, "panic", $P3542)
    nqp_get_sc_object $P3543, "1304523727.177", 1
    get_how $P3544, $P3543
    nqp_get_sc_object $P3545, "1304523727.177", 1
    .const 'Sub' $P3546 = "107_1304523734.668" 
    $P3544."add_method"($P3545, "peek_delimiters", $P3546)
    nqp_get_sc_object $P3547, "1304523727.177", 1
    get_how $P3548, $P3547
    nqp_get_sc_object $P3549, "1304523727.177", 1
    .const 'Sub' $P3550 = "108_1304523734.668" 
    $P3548."add_method"($P3549, "quote_EXPR", $P3550)
    nqp_get_sc_object $P3551, "1304523727.177", 1
    get_how $P3552, $P3551
    nqp_get_sc_object $P3553, "1304523727.177", 1
    .const 'Sub' $P3554 = "109_1304523734.668" 
    $P3552."add_method"($P3553, "quotemod_check", $P3554)
    .const 'Sub' $P3555 = "109_1304523734.668" 
    nqp_get_sc_object $P3556, "1304523727.177", 1
    get_who $P3557, $P3556
    set $P3557["quotemod_check"], $P3555
    nqp_get_sc_object $P3558, "1304523727.177", 1
    get_how $P3559, $P3558
    nqp_get_sc_object $P3560, "1304523727.177", 1
    .const 'Sub' $P3561 = "110_1304523734.668" 
    $P3559."add_method"($P3560, "starter", $P3561)
    nqp_get_sc_object $P3562, "1304523727.177", 1
    get_how $P3563, $P3562
    nqp_get_sc_object $P3564, "1304523727.177", 1
    .const 'Sub' $P3565 = "111_1304523734.668" 
    $P3563."add_method"($P3564, "stopper", $P3565)
    nqp_get_sc_object $P3566, "1304523727.177", 1
    get_how $P3567, $P3566
    nqp_get_sc_object $P3568, "1304523727.177", 1
    .const 'Sub' $P3569 = "112_1304523734.668" 
    $P3567."add_method"($P3568, "split_words", $P3569)
    .const 'Sub' $P3570 = "112_1304523734.668" 
    nqp_get_sc_object $P3571, "1304523727.177", 1
    get_who $P3572, $P3571
    set $P3572["split_words"], $P3570
    nqp_get_sc_object $P3573, "1304523727.177", 1
    get_how $P3574, $P3573
    nqp_get_sc_object $P3575, "1304523727.177", 1
    .const 'Sub' $P3576 = "113_1304523734.668" 
    $P3574."add_method"($P3575, "EXPR", $P3576)
    nqp_get_sc_object $P3577, "1304523727.177", 1
    get_how $P3578, $P3577
    nqp_get_sc_object $P3579, "1304523727.177", 1
    .const 'Sub' $P3580 = "114_1304523734.668" 
    $P3578."add_method"($P3579, "EXPR_reduce", $P3580)
    nqp_get_sc_object $P3581, "1304523727.177", 1
    get_how $P3582, $P3581
    nqp_get_sc_object $P3583, "1304523727.177", 1
    .const 'Sub' $P3584 = "115_1304523734.668" 
    $P3582."add_method"($P3583, "ternary", $P3584)
    nqp_get_sc_object $P3585, "1304523727.177", 1
    get_how $P3586, $P3585
    nqp_get_sc_object $P3587, "1304523727.177", 1
    .const 'Sub' $P3588 = "116_1304523734.668" 
    $P3586."add_method"($P3587, "MARKER", $P3588)
    nqp_get_sc_object $P3589, "1304523727.177", 1
    get_how $P3590, $P3589
    nqp_get_sc_object $P3591, "1304523727.177", 1
    .const 'Sub' $P3592 = "117_1304523734.668" 
    $P3590."add_method"($P3591, "MARKED", $P3592)
    nqp_get_sc_object $P3593, "1304523727.177", 1
    get_how $P3594, $P3593
    nqp_get_sc_object $P3595, "1304523727.177", 1
    .const 'Sub' $P3596 = "118_1304523734.668" 
    $P3594."add_method"($P3595, "LANG", $P3596)
    .const 'Sub' $P3597 = "11_1304523734.668" 
    $P3598 = $P3597."get_lexinfo"()
    nqp_get_sc_object $P3599, "1304523727.177", 1
    $P3598."set_static_lexpad_value"("$?PACKAGE", $P3599)
    .const 'Sub' $P3600 = "11_1304523734.668" 
    $P3601 = $P3600."get_lexinfo"()
    $P3601."finish_static_lexpad"()
    .const 'Sub' $P3602 = "11_1304523734.668" 
    $P3603 = $P3602."get_lexinfo"()
    nqp_get_sc_object $P3604, "1304523727.177", 1
    $P3603."set_static_lexpad_value"("$?CLASS", $P3604)
    .const 'Sub' $P3605 = "11_1304523734.668" 
    $P3606 = $P3605."get_lexinfo"()
    $P3606."finish_static_lexpad"()
    nqp_get_sc_object $P3607, "1304523727.177", 1
    get_how $P3608, $P3607
    nqp_get_sc_object $P3609, "1304523727.177", 1
    nqp_get_sc_object $P3610, "__REGEX_CORE_SC__", 0
    $P3608."set_default_parent"($P3609, $P3610)
    nqp_get_sc_object $P3611, "1304523727.177", 1
    get_how $P3612, $P3611
    nqp_get_sc_object $P3613, "1304523727.177", 1
    $P3612."compose"($P3613)
    nqp_get_sc_object $P3614, "1304523719.327", 41
    $P3615 = $P3614."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3615, cur_sc
    nqp_set_sc_object "1304523727.177", 105, $P3615
    nqp_get_sc_object $P3616, "1304523727.177", 105
    nqp_get_sc_object $P3617, "1304523727.177", 0
    nqp_get_package_through_who $P3618, $P3617, "HLL"
    get_who $P3619, $P3618
    set $P3619["Actions"], $P3616
    .const 'Sub' $P3620 = "120_1304523734.668" 
    nqp_get_sc_object $P3621, "1304523727.177", 105
    get_who $P3622, $P3621
    set $P3622["string_to_int"], $P3620
    .const 'Sub' $P3623 = "122_1304523734.668" 
    nqp_get_sc_object $P3624, "1304523727.177", 105
    get_who $P3625, $P3624
    set $P3625["ints_to_string"], $P3623
    nqp_get_sc_object $P3626, "1304523727.177", 105
    get_how $P3627, $P3626
    nqp_get_sc_object $P3628, "1304523727.177", 105
    .const 'Sub' $P3629 = "125_1304523734.668" 
    $P3627."add_method"($P3628, "CTXSAVE", $P3629)
    nqp_get_sc_object $P3630, "1304523727.177", 105
    get_how $P3631, $P3630
    nqp_get_sc_object $P3632, "1304523727.177", 105
    .const 'Sub' $P3633 = "126_1304523734.668" 
    $P3631."add_method"($P3632, "SET_BLOCK_OUTER_CTX", $P3633)
    nqp_get_sc_object $P3634, "1304523727.177", 105
    get_how $P3635, $P3634
    nqp_get_sc_object $P3636, "1304523727.177", 105
    .const 'Sub' $P3637 = "129_1304523734.668" 
    $P3635."add_method"($P3636, "EXPR", $P3637)
    nqp_get_sc_object $P3638, "1304523727.177", 105
    get_how $P3639, $P3638
    nqp_get_sc_object $P3640, "1304523727.177", 105
    .const 'Sub' $P3641 = "132_1304523734.668" 
    $P3639."add_method"($P3640, "term:sym<circumfix>", $P3641)
    nqp_get_sc_object $P3642, "1304523727.177", 105
    get_how $P3643, $P3642
    nqp_get_sc_object $P3644, "1304523727.177", 105
    .const 'Sub' $P3645 = "133_1304523734.668" 
    $P3643."add_method"($P3644, "termish", $P3645)
    nqp_get_sc_object $P3646, "1304523727.177", 105
    get_how $P3647, $P3646
    nqp_get_sc_object $P3648, "1304523727.177", 105
    .const 'Sub' $P3649 = "134_1304523734.668" 
    $P3647."add_method"($P3648, "nullterm", $P3649)
    nqp_get_sc_object $P3650, "1304523727.177", 105
    get_how $P3651, $P3650
    nqp_get_sc_object $P3652, "1304523727.177", 105
    .const 'Sub' $P3653 = "135_1304523734.668" 
    $P3651."add_method"($P3652, "nullterm_alt", $P3653)
    nqp_get_sc_object $P3654, "1304523727.177", 105
    get_how $P3655, $P3654
    nqp_get_sc_object $P3656, "1304523727.177", 105
    .const 'Sub' $P3657 = "136_1304523734.668" 
    $P3655."add_method"($P3656, "integer", $P3657)
    nqp_get_sc_object $P3658, "1304523727.177", 105
    get_how $P3659, $P3658
    nqp_get_sc_object $P3660, "1304523727.177", 105
    .const 'Sub' $P3661 = "137_1304523734.668" 
    $P3659."add_method"($P3660, "dec_number", $P3661)
    nqp_get_sc_object $P3662, "1304523727.177", 105
    get_how $P3663, $P3662
    nqp_get_sc_object $P3664, "1304523727.177", 105
    .const 'Sub' $P3665 = "138_1304523734.668" 
    $P3663."add_method"($P3664, "decint", $P3665)
    nqp_get_sc_object $P3666, "1304523727.177", 105
    get_how $P3667, $P3666
    nqp_get_sc_object $P3668, "1304523727.177", 105
    .const 'Sub' $P3669 = "139_1304523734.668" 
    $P3667."add_method"($P3668, "hexint", $P3669)
    nqp_get_sc_object $P3670, "1304523727.177", 105
    get_how $P3671, $P3670
    nqp_get_sc_object $P3672, "1304523727.177", 105
    .const 'Sub' $P3673 = "140_1304523734.668" 
    $P3671."add_method"($P3672, "octint", $P3673)
    nqp_get_sc_object $P3674, "1304523727.177", 105
    get_how $P3675, $P3674
    nqp_get_sc_object $P3676, "1304523727.177", 105
    .const 'Sub' $P3677 = "141_1304523734.668" 
    $P3675."add_method"($P3676, "binint", $P3677)
    nqp_get_sc_object $P3678, "1304523727.177", 105
    get_how $P3679, $P3678
    nqp_get_sc_object $P3680, "1304523727.177", 105
    .const 'Sub' $P3681 = "142_1304523734.668" 
    $P3679."add_method"($P3680, "quote_EXPR", $P3681)
    nqp_get_sc_object $P3682, "1304523727.177", 105
    get_how $P3683, $P3682
    nqp_get_sc_object $P3684, "1304523727.177", 105
    .const 'Sub' $P3685 = "145_1304523734.668" 
    $P3683."add_method"($P3684, "quote_delimited", $P3685)
    nqp_get_sc_object $P3686, "1304523727.177", 105
    get_how $P3687, $P3686
    nqp_get_sc_object $P3688, "1304523727.177", 105
    .const 'Sub' $P3689 = "147_1304523734.668" 
    $P3687."add_method"($P3688, "quote_atom", $P3689)
    nqp_get_sc_object $P3690, "1304523727.177", 105
    get_how $P3691, $P3690
    nqp_get_sc_object $P3692, "1304523727.177", 105
    .const 'Sub' $P3693 = "148_1304523734.668" 
    $P3691."add_method"($P3692, "quote_escape:sym<backslash>", $P3693)
    nqp_get_sc_object $P3694, "1304523727.177", 105
    get_how $P3695, $P3694
    nqp_get_sc_object $P3696, "1304523727.177", 105
    .const 'Sub' $P3697 = "149_1304523734.668" 
    $P3695."add_method"($P3696, "quote_escape:sym<stopper>", $P3697)
    nqp_get_sc_object $P3698, "1304523727.177", 105
    get_how $P3699, $P3698
    nqp_get_sc_object $P3700, "1304523727.177", 105
    .const 'Sub' $P3701 = "150_1304523734.668" 
    $P3699."add_method"($P3700, "quote_escape:sym<bs>", $P3701)
    nqp_get_sc_object $P3702, "1304523727.177", 105
    get_how $P3703, $P3702
    nqp_get_sc_object $P3704, "1304523727.177", 105
    .const 'Sub' $P3705 = "151_1304523734.668" 
    $P3703."add_method"($P3704, "quote_escape:sym<nl>", $P3705)
    nqp_get_sc_object $P3706, "1304523727.177", 105
    get_how $P3707, $P3706
    nqp_get_sc_object $P3708, "1304523727.177", 105
    .const 'Sub' $P3709 = "152_1304523734.668" 
    $P3707."add_method"($P3708, "quote_escape:sym<cr>", $P3709)
    nqp_get_sc_object $P3710, "1304523727.177", 105
    get_how $P3711, $P3710
    nqp_get_sc_object $P3712, "1304523727.177", 105
    .const 'Sub' $P3713 = "153_1304523734.668" 
    $P3711."add_method"($P3712, "quote_escape:sym<tab>", $P3713)
    nqp_get_sc_object $P3714, "1304523727.177", 105
    get_how $P3715, $P3714
    nqp_get_sc_object $P3716, "1304523727.177", 105
    .const 'Sub' $P3717 = "154_1304523734.668" 
    $P3715."add_method"($P3716, "quote_escape:sym<ff>", $P3717)
    nqp_get_sc_object $P3718, "1304523727.177", 105
    get_how $P3719, $P3718
    nqp_get_sc_object $P3720, "1304523727.177", 105
    .const 'Sub' $P3721 = "155_1304523734.668" 
    $P3719."add_method"($P3720, "quote_escape:sym<esc>", $P3721)
    nqp_get_sc_object $P3722, "1304523727.177", 105
    get_how $P3723, $P3722
    nqp_get_sc_object $P3724, "1304523727.177", 105
    .const 'Sub' $P3725 = "156_1304523734.668" 
    $P3723."add_method"($P3724, "quote_escape:sym<hex>", $P3725)
    nqp_get_sc_object $P3726, "1304523727.177", 105
    get_how $P3727, $P3726
    nqp_get_sc_object $P3728, "1304523727.177", 105
    .const 'Sub' $P3729 = "157_1304523734.668" 
    $P3727."add_method"($P3728, "quote_escape:sym<oct>", $P3729)
    nqp_get_sc_object $P3730, "1304523727.177", 105
    get_how $P3731, $P3730
    nqp_get_sc_object $P3732, "1304523727.177", 105
    .const 'Sub' $P3733 = "158_1304523734.668" 
    $P3731."add_method"($P3732, "quote_escape:sym<chr>", $P3733)
    nqp_get_sc_object $P3734, "1304523727.177", 105
    get_how $P3735, $P3734
    nqp_get_sc_object $P3736, "1304523727.177", 105
    .const 'Sub' $P3737 = "159_1304523734.668" 
    $P3735."add_method"($P3736, "quote_escape:sym<0>", $P3737)
    nqp_get_sc_object $P3738, "1304523727.177", 105
    get_how $P3739, $P3738
    nqp_get_sc_object $P3740, "1304523727.177", 105
    .const 'Sub' $P3741 = "160_1304523734.668" 
    $P3739."add_method"($P3740, "quote_escape:sym<misc>", $P3741)
    nqp_get_sc_object $P3742, "1304523727.177", 105
    get_how $P3743, $P3742
    nqp_get_sc_object $P3744, "1304523727.177", 105
    .const 'Sub' $P3745 = "161_1304523734.668" 
    $P3743."add_method"($P3744, "charname", $P3745)
    nqp_get_sc_object $P3746, "1304523727.177", 105
    get_how $P3747, $P3746
    nqp_get_sc_object $P3748, "1304523727.177", 105
    .const 'Sub' $P3749 = "162_1304523734.668" 
    $P3747."add_method"($P3748, "charnames", $P3749)
    nqp_get_sc_object $P3750, "1304523727.177", 105
    get_how $P3751, $P3750
    nqp_get_sc_object $P3752, "1304523727.177", 105
    .const 'Sub' $P3753 = "164_1304523734.668" 
    $P3751."add_method"($P3752, "charspec", $P3753)
    .const 'Sub' $P3754 = "119_1304523734.668" 
    $P3755 = $P3754."get_lexinfo"()
    nqp_get_sc_object $P3756, "1304523727.177", 105
    $P3755."set_static_lexpad_value"("$?PACKAGE", $P3756)
    .const 'Sub' $P3757 = "119_1304523734.668" 
    $P3758 = $P3757."get_lexinfo"()
    $P3758."finish_static_lexpad"()
    .const 'Sub' $P3759 = "119_1304523734.668" 
    $P3760 = $P3759."get_lexinfo"()
    nqp_get_sc_object $P3761, "1304523727.177", 105
    $P3760."set_static_lexpad_value"("$?CLASS", $P3761)
    .const 'Sub' $P3762 = "119_1304523734.668" 
    $P3763 = $P3762."get_lexinfo"()
    $P3763."finish_static_lexpad"()
    nqp_get_sc_object $P3764, "1304523727.177", 105
    get_how $P3765, $P3764
    nqp_get_sc_object $P3766, "1304523727.177", 105
    nqp_get_sc_object $P3767, "1304523725.41", 5
    $P3765."set_default_parent"($P3766, $P3767)
    nqp_get_sc_object $P3768, "1304523727.177", 105
    get_how $P3769, $P3768
    nqp_get_sc_object $P3770, "1304523727.177", 105
    $P3769."compose"($P3770)
    nqp_get_sc_object $P3771, "1304523719.327", 41
    $P3772 = $P3771."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3772, cur_sc
    nqp_set_sc_object "1304523727.177", 138, $P3772
    nqp_get_sc_object $P3773, "1304523727.177", 138
    nqp_get_sc_object $P3774, "1304523727.177", 0
    nqp_get_package_through_who $P3775, $P3774, "HLL"
    get_who $P3776, $P3775
    set $P3776["Compiler"], $P3773
    nqp_get_sc_object $P3777, "1304523727.177", 138
    get_how $P3778, $P3777
    nqp_get_sc_object $P3779, "1304523727.177", 138
    nqp_get_sc_object $P3780, "1304523719.327", 77
    $P3781 = $P3780."new"("@!stages" :named("name"))
    $P3778."add_attribute"($P3779, $P3781)
    nqp_get_sc_object $P3782, "1304523727.177", 138
    get_how $P3783, $P3782
    nqp_get_sc_object $P3784, "1304523727.177", 138
    nqp_get_sc_object $P3785, "1304523719.327", 77
    $P3786 = $P3785."new"("$!parsegrammar" :named("name"))
    $P3783."add_attribute"($P3784, $P3786)
    nqp_get_sc_object $P3787, "1304523727.177", 138
    get_how $P3788, $P3787
    nqp_get_sc_object $P3789, "1304523727.177", 138
    nqp_get_sc_object $P3790, "1304523719.327", 77
    $P3791 = $P3790."new"("$!parseactions" :named("name"))
    $P3788."add_attribute"($P3789, $P3791)
    nqp_get_sc_object $P3792, "1304523727.177", 138
    get_how $P3793, $P3792
    nqp_get_sc_object $P3794, "1304523727.177", 138
    nqp_get_sc_object $P3795, "1304523719.327", 77
    $P3796 = $P3795."new"("$!astgrammar" :named("name"))
    $P3793."add_attribute"($P3794, $P3796)
    nqp_get_sc_object $P3797, "1304523727.177", 138
    get_how $P3798, $P3797
    nqp_get_sc_object $P3799, "1304523727.177", 138
    nqp_get_sc_object $P3800, "1304523719.327", 77
    $P3801 = $P3800."new"("$!commandline_banner" :named("name"))
    $P3798."add_attribute"($P3799, $P3801)
    nqp_get_sc_object $P3802, "1304523727.177", 138
    get_how $P3803, $P3802
    nqp_get_sc_object $P3804, "1304523727.177", 138
    nqp_get_sc_object $P3805, "1304523719.327", 77
    $P3806 = $P3805."new"("$!commandline_prompt" :named("name"))
    $P3803."add_attribute"($P3804, $P3806)
    nqp_get_sc_object $P3807, "1304523727.177", 138
    get_how $P3808, $P3807
    nqp_get_sc_object $P3809, "1304523727.177", 138
    nqp_get_sc_object $P3810, "1304523719.327", 77
    $P3811 = $P3810."new"("@!cmdoptions" :named("name"))
    $P3808."add_attribute"($P3809, $P3811)
    nqp_get_sc_object $P3812, "1304523727.177", 138
    get_how $P3813, $P3812
    nqp_get_sc_object $P3814, "1304523727.177", 138
    nqp_get_sc_object $P3815, "1304523719.327", 77
    $P3816 = $P3815."new"("$!usage" :named("name"))
    $P3813."add_attribute"($P3814, $P3816)
    nqp_get_sc_object $P3817, "1304523727.177", 138
    get_how $P3818, $P3817
    nqp_get_sc_object $P3819, "1304523727.177", 138
    nqp_get_sc_object $P3820, "1304523719.327", 77
    $P3821 = $P3820."new"("$!version" :named("name"))
    $P3818."add_attribute"($P3819, $P3821)
    nqp_get_sc_object $P3822, "1304523727.177", 138
    get_how $P3823, $P3822
    nqp_get_sc_object $P3824, "1304523727.177", 138
    nqp_get_sc_object $P3825, "1304523719.327", 77
    $P3826 = $P3825."new"("$!compiler_progname" :named("name"))
    $P3823."add_attribute"($P3824, $P3826)
    nqp_get_sc_object $P3827, "1304523727.177", 138
    get_how $P3828, $P3827
    nqp_get_sc_object $P3829, "1304523727.177", 138
    nqp_get_sc_object $P3830, "1304523719.327", 77
    $P3831 = $P3830."new"("$!language" :named("name"))
    $P3828."add_attribute"($P3829, $P3831)
    nqp_get_sc_object $P3832, "1304523727.177", 138
    get_how $P3833, $P3832
    nqp_get_sc_object $P3834, "1304523727.177", 138
    .const 'Sub' $P3835 = "168_1304523734.668" 
    $P3833."add_method"($P3834, "new", $P3835)
    nqp_get_sc_object $P3836, "1304523727.177", 138
    get_how $P3837, $P3836
    nqp_get_sc_object $P3838, "1304523727.177", 138
    .const 'Sub' $P3839 = "169_1304523734.668" 
    $P3837."add_method"($P3838, "BUILD", $P3839)
    nqp_get_sc_object $P3840, "1304523727.177", 138
    get_how $P3841, $P3840
    nqp_get_sc_object $P3842, "1304523727.177", 138
    .const 'Sub' $P3843 = "171_1304523734.668" 
    $P3841."add_method"($P3842, "get_exports", $P3843)
    nqp_get_sc_object $P3844, "1304523727.177", 138
    get_how $P3845, $P3844
    nqp_get_sc_object $P3846, "1304523727.177", 138
    .const 'Sub' $P3847 = "174_1304523734.668" 
    $P3845."add_method"($P3846, "get_module", $P3847)
    nqp_get_sc_object $P3848, "1304523727.177", 138
    get_how $P3849, $P3848
    nqp_get_sc_object $P3850, "1304523727.177", 138
    .const 'Sub' $P3851 = "175_1304523734.668" 
    $P3849."add_method"($P3850, "language", $P3851)
    nqp_get_sc_object $P3852, "1304523727.177", 138
    get_how $P3853, $P3852
    nqp_get_sc_object $P3854, "1304523727.177", 138
    .const 'Sub' $P3855 = "176_1304523734.668" 
    $P3853."add_method"($P3854, "load_module", $P3855)
    nqp_get_sc_object $P3856, "1304523727.177", 138
    get_how $P3857, $P3856
    nqp_get_sc_object $P3858, "1304523727.177", 138
    .const 'Sub' $P3859 = "178_1304523734.668" 
    $P3857."add_method"($P3858, "import", $P3859)
    nqp_get_sc_object $P3860, "1304523727.177", 138
    get_how $P3861, $P3860
    nqp_get_sc_object $P3862, "1304523727.177", 138
    .const 'Sub' $P3863 = "183_1304523734.668" 
    $P3861."add_method"($P3862, "autoprint", $P3863)
    nqp_get_sc_object $P3864, "1304523727.177", 138
    get_how $P3865, $P3864
    nqp_get_sc_object $P3866, "1304523727.177", 138
    .const 'Sub' $P3867 = "184_1304523734.668" 
    $P3865."add_method"($P3866, "interactive", $P3867)
    nqp_get_sc_object $P3868, "1304523727.177", 138
    get_how $P3869, $P3868
    nqp_get_sc_object $P3870, "1304523727.177", 138
    .const 'Sub' $P3871 = "191_1304523734.668" 
    $P3869."add_method"($P3870, "eval", $P3871)
    nqp_get_sc_object $P3872, "1304523727.177", 138
    get_how $P3873, $P3872
    nqp_get_sc_object $P3874, "1304523727.177", 138
    .const 'Sub' $P3875 = "193_1304523734.668" 
    $P3873."add_method"($P3874, "ctxsave", $P3875)
    nqp_get_sc_object $P3876, "1304523727.177", 138
    get_how $P3877, $P3876
    nqp_get_sc_object $P3878, "1304523727.177", 138
    .const 'Sub' $P3879 = "194_1304523734.668" 
    $P3877."add_method"($P3878, "panic", $P3879)
    nqp_get_sc_object $P3880, "1304523727.177", 138
    get_how $P3881, $P3880
    nqp_get_sc_object $P3882, "1304523727.177", 138
    .const 'Sub' $P3883 = "195_1304523734.668" 
    $P3881."add_method"($P3882, "stages", $P3883)
    nqp_get_sc_object $P3884, "1304523727.177", 138
    get_how $P3885, $P3884
    nqp_get_sc_object $P3886, "1304523727.177", 138
    .const 'Sub' $P3887 = "196_1304523734.668" 
    $P3885."add_method"($P3886, "parsegrammar", $P3887)
    nqp_get_sc_object $P3888, "1304523727.177", 138
    get_how $P3889, $P3888
    nqp_get_sc_object $P3890, "1304523727.177", 138
    .const 'Sub' $P3891 = "197_1304523734.668" 
    $P3889."add_method"($P3890, "parseactions", $P3891)
    nqp_get_sc_object $P3892, "1304523727.177", 138
    get_how $P3893, $P3892
    nqp_get_sc_object $P3894, "1304523727.177", 138
    .const 'Sub' $P3895 = "198_1304523734.668" 
    $P3893."add_method"($P3894, "astgrammar", $P3895)
    nqp_get_sc_object $P3896, "1304523727.177", 138
    get_how $P3897, $P3896
    nqp_get_sc_object $P3898, "1304523727.177", 138
    .const 'Sub' $P3899 = "199_1304523734.668" 
    $P3897."add_method"($P3898, "commandline_banner", $P3899)
    nqp_get_sc_object $P3900, "1304523727.177", 138
    get_how $P3901, $P3900
    nqp_get_sc_object $P3902, "1304523727.177", 138
    .const 'Sub' $P3903 = "200_1304523734.668" 
    $P3901."add_method"($P3902, "commandline_prompt", $P3903)
    nqp_get_sc_object $P3904, "1304523727.177", 138
    get_how $P3905, $P3904
    nqp_get_sc_object $P3906, "1304523727.177", 138
    .const 'Sub' $P3907 = "201_1304523734.668" 
    $P3905."add_method"($P3906, "compiler_progname", $P3907)
    nqp_get_sc_object $P3908, "1304523727.177", 138
    get_how $P3909, $P3908
    nqp_get_sc_object $P3910, "1304523727.177", 138
    .const 'Sub' $P3911 = "202_1304523734.668" 
    $P3909."add_method"($P3910, "commandline_options", $P3911)
    nqp_get_sc_object $P3912, "1304523727.177", 138
    get_how $P3913, $P3912
    nqp_get_sc_object $P3914, "1304523727.177", 138
    .const 'Sub' $P3915 = "203_1304523734.668" 
    $P3913."add_method"($P3914, "command_line", $P3915)
    nqp_get_sc_object $P3916, "1304523727.177", 138
    get_how $P3917, $P3916
    nqp_get_sc_object $P3918, "1304523727.177", 138
    .const 'Sub' $P3919 = "205_1304523734.668" 
    $P3917."add_method"($P3918, "process_args", $P3919)
    nqp_get_sc_object $P3920, "1304523727.177", 138
    get_how $P3921, $P3920
    nqp_get_sc_object $P3922, "1304523727.177", 138
    .const 'Sub' $P3923 = "208_1304523734.668" 
    $P3921."add_method"($P3922, "evalfiles", $P3923)
    nqp_get_sc_object $P3924, "1304523727.177", 138
    get_how $P3925, $P3924
    nqp_get_sc_object $P3926, "1304523727.177", 138
    .const 'Sub' $P3927 = "212_1304523734.668" 
    $P3925."add_method"($P3926, "compile", $P3927)
    nqp_get_sc_object $P3928, "1304523727.177", 138
    get_how $P3929, $P3928
    nqp_get_sc_object $P3930, "1304523727.177", 138
    .const 'Sub' $P3931 = "214_1304523734.668" 
    $P3929."add_method"($P3930, "parse", $P3931)
    nqp_get_sc_object $P3932, "1304523727.177", 138
    get_how $P3933, $P3932
    nqp_get_sc_object $P3934, "1304523727.177", 138
    .const 'Sub' $P3935 = "217_1304523734.668" 
    $P3933."add_method"($P3934, "past", $P3935)
    nqp_get_sc_object $P3936, "1304523727.177", 138
    get_how $P3937, $P3936
    nqp_get_sc_object $P3938, "1304523727.177", 138
    .const 'Sub' $P3939 = "218_1304523734.668" 
    $P3937."add_method"($P3938, "post", $P3939)
    nqp_get_sc_object $P3940, "1304523727.177", 138
    get_how $P3941, $P3940
    nqp_get_sc_object $P3942, "1304523727.177", 138
    .const 'Sub' $P3943 = "219_1304523734.668" 
    $P3941."add_method"($P3942, "pir", $P3943)
    nqp_get_sc_object $P3944, "1304523727.177", 138
    get_how $P3945, $P3944
    nqp_get_sc_object $P3946, "1304523727.177", 138
    .const 'Sub' $P3947 = "220_1304523734.668" 
    $P3945."add_method"($P3946, "evalpmc", $P3947)
    nqp_get_sc_object $P3948, "1304523727.177", 138
    get_how $P3949, $P3948
    nqp_get_sc_object $P3950, "1304523727.177", 138
    .const 'Sub' $P3951 = "221_1304523734.668" 
    $P3949."add_method"($P3950, "dumper", $P3951)
    nqp_get_sc_object $P3952, "1304523727.177", 138
    get_how $P3953, $P3952
    nqp_get_sc_object $P3954, "1304523727.177", 138
    .const 'Sub' $P3955 = "223_1304523734.668" 
    $P3953."add_method"($P3954, "usage", $P3955)
    nqp_get_sc_object $P3956, "1304523727.177", 138
    get_how $P3957, $P3956
    nqp_get_sc_object $P3958, "1304523727.177", 138
    .const 'Sub' $P3959 = "224_1304523734.668" 
    $P3957."add_method"($P3958, "version", $P3959)
    nqp_get_sc_object $P3960, "1304523727.177", 138
    get_how $P3961, $P3960
    nqp_get_sc_object $P3962, "1304523727.177", 138
    .const 'Sub' $P3963 = "225_1304523734.668" 
    $P3961."add_method"($P3962, "removestage", $P3963)
    nqp_get_sc_object $P3964, "1304523727.177", 138
    get_how $P3965, $P3964
    nqp_get_sc_object $P3966, "1304523727.177", 138
    .const 'Sub' $P3967 = "227_1304523734.668" 
    $P3965."add_method"($P3966, "addstage", $P3967)
    nqp_get_sc_object $P3968, "1304523727.177", 138
    get_how $P3969, $P3968
    nqp_get_sc_object $P3970, "1304523727.177", 138
    .const 'Sub' $P3971 = "230_1304523734.668" 
    $P3969."add_method"($P3970, "parse_name", $P3971)
    nqp_get_sc_object $P3972, "1304523727.177", 138
    get_how $P3973, $P3972
    nqp_get_sc_object $P3974, "1304523727.177", 138
    .const 'Sub' $P3975 = "232_1304523734.668" 
    $P3973."add_method"($P3974, "lineof", $P3975)
    .const 'Sub' $P3976 = "165_1304523734.668" 
    $P3977 = $P3976."get_lexinfo"()
    nqp_get_sc_object $P3978, "1304523727.177", 138
    $P3977."set_static_lexpad_value"("$?PACKAGE", $P3978)
    .const 'Sub' $P3979 = "165_1304523734.668" 
    $P3980 = $P3979."get_lexinfo"()
    $P3980."finish_static_lexpad"()
    .const 'Sub' $P3981 = "165_1304523734.668" 
    $P3982 = $P3981."get_lexinfo"()
    nqp_get_sc_object $P3983, "1304523727.177", 138
    $P3982."set_static_lexpad_value"("$?CLASS", $P3983)
    .const 'Sub' $P3984 = "165_1304523734.668" 
    $P3985 = $P3984."get_lexinfo"()
    $P3985."finish_static_lexpad"()
    nqp_get_sc_object $P3986, "1304523727.177", 138
    get_how $P3987, $P3986
    nqp_get_sc_object $P3988, "1304523727.177", 138
    nqp_get_sc_object $P3989, "1304523725.41", 5
    $P3987."set_default_parent"($P3988, $P3989)
    nqp_get_sc_object $P3990, "1304523727.177", 138
    get_how $P3991, $P3990
    nqp_get_sc_object $P3992, "1304523727.177", 138
    $P3991."compose"($P3992)
    nqp_get_sc_object $P3993, "1304523719.327", 41
    $P3994 = $P3993."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3994, cur_sc
    nqp_set_sc_object "1304523727.177", 175, $P3994
    nqp_get_sc_object $P3995, "1304523727.177", 175
    nqp_get_sc_object $P3996, "1304523727.177", 0
    nqp_get_package_through_who $P3997, $P3996, "HLL"
    nqp_get_package_through_who $P3998, $P3997, "CommandLine"
    get_who $P3999, $P3998
    set $P3999["Result"], $P3995
    nqp_get_sc_object $P4000, "1304523727.177", 175
    get_how $P4001, $P4000
    nqp_get_sc_object $P4002, "1304523727.177", 175
    nqp_get_sc_object $P4003, "1304523719.327", 77
    $P4004 = $P4003."new"("@!arguments" :named("name"))
    $P4001."add_attribute"($P4002, $P4004)
    nqp_get_sc_object $P4005, "1304523727.177", 175
    get_how $P4006, $P4005
    nqp_get_sc_object $P4007, "1304523727.177", 175
    nqp_get_sc_object $P4008, "1304523719.327", 77
    $P4009 = $P4008."new"("%!options" :named("name"))
    $P4006."add_attribute"($P4007, $P4009)
    nqp_get_sc_object $P4010, "1304523727.177", 175
    get_how $P4011, $P4010
    nqp_get_sc_object $P4012, "1304523727.177", 175
    .const 'Sub' $P4013 = "234_1304523734.668" 
    $P4011."add_method"($P4012, "init", $P4013)
    nqp_get_sc_object $P4014, "1304523727.177", 175
    get_how $P4015, $P4014
    nqp_get_sc_object $P4016, "1304523727.177", 175
    .const 'Sub' $P4017 = "235_1304523734.668" 
    $P4015."add_method"($P4016, "arguments", $P4017)
    nqp_get_sc_object $P4018, "1304523727.177", 175
    get_how $P4019, $P4018
    nqp_get_sc_object $P4020, "1304523727.177", 175
    .const 'Sub' $P4021 = "236_1304523734.668" 
    $P4019."add_method"($P4020, "options", $P4021)
    nqp_get_sc_object $P4022, "1304523727.177", 175
    get_how $P4023, $P4022
    nqp_get_sc_object $P4024, "1304523727.177", 175
    .const 'Sub' $P4025 = "237_1304523734.668" 
    $P4023."add_method"($P4024, "add-argument", $P4025)
    nqp_get_sc_object $P4026, "1304523727.177", 175
    get_how $P4027, $P4026
    nqp_get_sc_object $P4028, "1304523727.177", 175
    .const 'Sub' $P4029 = "238_1304523734.668" 
    $P4027."add_method"($P4028, "add-option", $P4029)
    .const 'Sub' $P4030 = "233_1304523734.668" 
    $P4031 = $P4030."get_lexinfo"()
    nqp_get_sc_object $P4032, "1304523727.177", 175
    $P4031."set_static_lexpad_value"("$?PACKAGE", $P4032)
    .const 'Sub' $P4033 = "233_1304523734.668" 
    $P4034 = $P4033."get_lexinfo"()
    $P4034."finish_static_lexpad"()
    .const 'Sub' $P4035 = "233_1304523734.668" 
    $P4036 = $P4035."get_lexinfo"()
    nqp_get_sc_object $P4037, "1304523727.177", 175
    $P4036."set_static_lexpad_value"("$?CLASS", $P4037)
    .const 'Sub' $P4038 = "233_1304523734.668" 
    $P4039 = $P4038."get_lexinfo"()
    $P4039."finish_static_lexpad"()
    nqp_get_sc_object $P4040, "1304523727.177", 175
    get_how $P4041, $P4040
    nqp_get_sc_object $P4042, "1304523727.177", 175
    nqp_get_sc_object $P4043, "1304523725.41", 5
    $P4041."set_default_parent"($P4042, $P4043)
    nqp_get_sc_object $P4044, "1304523727.177", 175
    get_how $P4045, $P4044
    nqp_get_sc_object $P4046, "1304523727.177", 175
    $P4045."compose"($P4046)
    nqp_get_sc_object $P4047, "1304523719.327", 41
    $P4048 = $P4047."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4048, cur_sc
    nqp_set_sc_object "1304523727.177", 181, $P4048
    nqp_get_sc_object $P4049, "1304523727.177", 181
    nqp_get_sc_object $P4050, "1304523727.177", 0
    nqp_get_package_through_who $P4051, $P4050, "HLL"
    nqp_get_package_through_who $P4052, $P4051, "CommandLine"
    get_who $P4053, $P4052
    set $P4053["Parser"], $P4049
    nqp_get_sc_object $P4054, "1304523727.177", 181
    get_how $P4055, $P4054
    nqp_get_sc_object $P4056, "1304523727.177", 181
    nqp_get_sc_object $P4057, "1304523719.327", 77
    $P4058 = $P4057."new"("@!specs" :named("name"))
    $P4055."add_attribute"($P4056, $P4058)
    nqp_get_sc_object $P4059, "1304523727.177", 181
    get_how $P4060, $P4059
    nqp_get_sc_object $P4061, "1304523727.177", 181
    nqp_get_sc_object $P4062, "1304523719.327", 77
    $P4063 = $P4062."new"("%!options" :named("name"))
    $P4060."add_attribute"($P4061, $P4063)
    nqp_get_sc_object $P4064, "1304523727.177", 181
    get_how $P4065, $P4064
    nqp_get_sc_object $P4066, "1304523727.177", 181
    nqp_get_sc_object $P4067, "1304523719.327", 77
    $P4068 = $P4067."new"("%!stopper" :named("name"))
    $P4065."add_attribute"($P4066, $P4068)
    nqp_get_sc_object $P4069, "1304523727.177", 181
    get_how $P4070, $P4069
    nqp_get_sc_object $P4071, "1304523727.177", 181
    nqp_get_sc_object $P4072, "1304523719.327", 77
    $P4073 = $P4072."new"("$!stop-after-first-arg" :named("name"))
    $P4070."add_attribute"($P4071, $P4073)
    nqp_get_sc_object $P4074, "1304523727.177", 181
    get_how $P4075, $P4074
    nqp_get_sc_object $P4076, "1304523727.177", 181
    .const 'Sub' $P4077 = "241_1304523734.668" 
    $P4075."add_method"($P4076, "new", $P4077)
    nqp_get_sc_object $P4078, "1304523727.177", 181
    get_how $P4079, $P4078
    nqp_get_sc_object $P4080, "1304523727.177", 181
    .const 'Sub' $P4081 = "242_1304523734.668" 
    $P4079."add_method"($P4080, "stop-after-first-arg", $P4081)
    nqp_get_sc_object $P4082, "1304523727.177", 181
    get_how $P4083, $P4082
    nqp_get_sc_object $P4084, "1304523727.177", 181
    .const 'Sub' $P4085 = "243_1304523734.668" 
    $P4083."add_method"($P4084, "BUILD", $P4085)
    nqp_get_sc_object $P4086, "1304523727.177", 181
    get_how $P4087, $P4086
    nqp_get_sc_object $P4088, "1304523727.177", 181
    .const 'Sub' $P4089 = "245_1304523734.668" 
    $P4087."add_method"($P4088, "add-stopper", $P4089)
    nqp_get_sc_object $P4090, "1304523727.177", 181
    get_how $P4091, $P4090
    nqp_get_sc_object $P4092, "1304523727.177", 181
    .const 'Sub' $P4093 = "246_1304523734.668" 
    $P4091."add_method"($P4092, "split-option-aliases", $P4093)
    nqp_get_sc_object $P4094, "1304523727.177", 181
    get_how $P4095, $P4094
    nqp_get_sc_object $P4096, "1304523727.177", 181
    .const 'Sub' $P4097 = "247_1304523734.668" 
    $P4095."add_method"($P4096, "add-spec", $P4097)
    nqp_get_sc_object $P4098, "1304523727.177", 181
    get_how $P4099, $P4098
    nqp_get_sc_object $P4100, "1304523727.177", 181
    .const 'Sub' $P4101 = "249_1304523734.668" 
    $P4099."add_method"($P4100, "is-option", $P4101)
    nqp_get_sc_object $P4102, "1304523727.177", 181
    get_how $P4103, $P4102
    nqp_get_sc_object $P4104, "1304523727.177", 181
    .const 'Sub' $P4105 = "250_1304523734.668" 
    $P4103."add_method"($P4104, "wants-value", $P4105)
    nqp_get_sc_object $P4106, "1304523727.177", 181
    get_how $P4107, $P4106
    nqp_get_sc_object $P4108, "1304523727.177", 181
    .const 'Sub' $P4109 = "251_1304523734.668" 
    $P4107."add_method"($P4108, "parse", $P4109)
    .const 'Sub' $P4110 = "240_1304523734.668" 
    $P4111 = $P4110."get_lexinfo"()
    nqp_get_sc_object $P4112, "1304523727.177", 181
    $P4111."set_static_lexpad_value"("$?PACKAGE", $P4112)
    .const 'Sub' $P4113 = "240_1304523734.668" 
    $P4114 = $P4113."get_lexinfo"()
    $P4114."finish_static_lexpad"()
    .const 'Sub' $P4115 = "240_1304523734.668" 
    $P4116 = $P4115."get_lexinfo"()
    nqp_get_sc_object $P4117, "1304523727.177", 181
    $P4116."set_static_lexpad_value"("$?CLASS", $P4117)
    .const 'Sub' $P4118 = "240_1304523734.668" 
    $P4119 = $P4118."get_lexinfo"()
    $P4119."finish_static_lexpad"()
    nqp_get_sc_object $P4120, "1304523727.177", 181
    get_how $P4121, $P4120
    nqp_get_sc_object $P4122, "1304523727.177", 181
    nqp_get_sc_object $P4123, "1304523725.41", 5
    $P4121."set_default_parent"($P4122, $P4123)
    nqp_get_sc_object $P4124, "1304523727.177", 181
    get_how $P4125, $P4124
    nqp_get_sc_object $P4126, "1304523727.177", 181
    $P4125."compose"($P4126)
    nqp_get_sc_object $P4127, "1304523719.327", 41
    $P4128 = $P4127."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4128, cur_sc
    nqp_set_sc_object "1304523727.177", 191, $P4128
    nqp_get_sc_object $P4129, "1304523727.177", 191
    nqp_get_sc_object $P4130, "1304523727.177", 0
    nqp_get_package_through_who $P4131, $P4130, "HLL"
    nqp_get_package_through_who $P4132, $P4131, "Compiler"
    get_who $P4133, $P4132
    set $P4133["SerializationContextBuilder"], $P4129
    nqp_get_sc_object $P4134, "1304523719.327", 41
    $P4135 = $P4134."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4135, cur_sc
    nqp_set_sc_object "1304523727.177", 192, $P4135
    .const 'Sub' $P4136 = "259_1304523734.668" 
    $P4137 = $P4136."get_lexinfo"()
    nqp_get_sc_object $P4138, "1304523727.177", 192
    $P4137."set_static_lexpad_value"("Event", $P4138)
    .const 'Sub' $P4139 = "259_1304523734.668" 
    $P4140 = $P4139."get_lexinfo"()
    $P4140."finish_static_lexpad"()
    nqp_get_sc_object $P4141, "1304523727.177", 192
    get_how $P4142, $P4141
    nqp_get_sc_object $P4143, "1304523727.177", 192
    nqp_get_sc_object $P4144, "1304523719.327", 77
    $P4145 = $P4144."new"("$!deserialize_past" :named("name"))
    $P4142."add_attribute"($P4143, $P4145)
    nqp_get_sc_object $P4146, "1304523727.177", 192
    get_how $P4147, $P4146
    nqp_get_sc_object $P4148, "1304523727.177", 192
    .const 'Sub' $P4149 = "262_1304523734.668" 
    $P4147."add_method"($P4148, "deserialize_past", $P4149)
    nqp_get_sc_object $P4150, "1304523727.177", 192
    get_how $P4151, $P4150
    nqp_get_sc_object $P4152, "1304523727.177", 192
    nqp_get_sc_object $P4153, "1304523719.327", 77
    $P4154 = $P4153."new"("$!fixup_past" :named("name"))
    $P4151."add_attribute"($P4152, $P4154)
    nqp_get_sc_object $P4155, "1304523727.177", 192
    get_how $P4156, $P4155
    nqp_get_sc_object $P4157, "1304523727.177", 192
    .const 'Sub' $P4158 = "263_1304523734.668" 
    $P4156."add_method"($P4157, "fixup_past", $P4158)
    .const 'Sub' $P4159 = "261_1304523734.668" 
    $P4160 = $P4159."get_lexinfo"()
    nqp_get_sc_object $P4161, "1304523727.177", 192
    $P4160."set_static_lexpad_value"("$?PACKAGE", $P4161)
    .const 'Sub' $P4162 = "261_1304523734.668" 
    $P4163 = $P4162."get_lexinfo"()
    $P4163."finish_static_lexpad"()
    .const 'Sub' $P4164 = "261_1304523734.668" 
    $P4165 = $P4164."get_lexinfo"()
    nqp_get_sc_object $P4166, "1304523727.177", 192
    $P4165."set_static_lexpad_value"("$?CLASS", $P4166)
    .const 'Sub' $P4167 = "261_1304523734.668" 
    $P4168 = $P4167."get_lexinfo"()
    $P4168."finish_static_lexpad"()
    nqp_get_sc_object $P4169, "1304523727.177", 192
    get_how $P4170, $P4169
    nqp_get_sc_object $P4171, "1304523727.177", 192
    nqp_get_sc_object $P4172, "1304523725.41", 5
    $P4170."set_default_parent"($P4171, $P4172)
    nqp_get_sc_object $P4173, "1304523727.177", 192
    get_how $P4174, $P4173
    nqp_get_sc_object $P4175, "1304523727.177", 192
    $P4174."compose"($P4175)
    nqp_get_sc_object $P4176, "1304523727.177", 191
    get_how $P4177, $P4176
    nqp_get_sc_object $P4178, "1304523727.177", 191
    nqp_get_sc_object $P4179, "1304523719.327", 77
    $P4180 = $P4179."new"("$!sc" :named("name"))
    $P4177."add_attribute"($P4178, $P4180)
    nqp_get_sc_object $P4181, "1304523727.177", 191
    get_how $P4182, $P4181
    nqp_get_sc_object $P4183, "1304523727.177", 191
    nqp_get_sc_object $P4184, "1304523719.327", 77
    $P4185 = $P4184."new"("$!handle" :named("name"))
    $P4182."add_attribute"($P4183, $P4185)
    nqp_get_sc_object $P4186, "1304523727.177", 191
    get_how $P4187, $P4186
    nqp_get_sc_object $P4188, "1304523727.177", 191
    nqp_get_sc_object $P4189, "1304523719.327", 77
    $P4190 = $P4189."new"("%!addr_to_slot" :named("name"))
    $P4187."add_attribute"($P4188, $P4190)
    nqp_get_sc_object $P4191, "1304523727.177", 191
    get_how $P4192, $P4191
    nqp_get_sc_object $P4193, "1304523727.177", 191
    nqp_get_sc_object $P4194, "1304523719.327", 77
    $P4195 = $P4194."new"("@!event_stream" :named("name"))
    $P4192."add_attribute"($P4193, $P4195)
    nqp_get_sc_object $P4196, "1304523727.177", 191
    get_how $P4197, $P4196
    nqp_get_sc_object $P4198, "1304523727.177", 191
    .const 'Sub' $P4199 = "264_1304523734.668" 
    $P4197."add_method"($P4198, "new", $P4199)
    nqp_get_sc_object $P4200, "1304523727.177", 191
    get_how $P4201, $P4200
    nqp_get_sc_object $P4202, "1304523727.177", 191
    .const 'Sub' $P4203 = "265_1304523734.668" 
    $P4201."add_method"($P4202, "BUILD", $P4203)
    nqp_get_sc_object $P4204, "1304523727.177", 191
    get_how $P4205, $P4204
    nqp_get_sc_object $P4206, "1304523727.177", 191
    .const 'Sub' $P4207 = "266_1304523734.668" 
    $P4205."add_method"($P4206, "slot_for_object", $P4207)
    nqp_get_sc_object $P4208, "1304523727.177", 191
    get_how $P4209, $P4208
    nqp_get_sc_object $P4210, "1304523727.177", 191
    .const 'Sub' $P4211 = "267_1304523734.668" 
    $P4209."add_method"($P4210, "get_slot_past_for_object", $P4211)
    nqp_get_sc_object $P4212, "1304523727.177", 191
    get_how $P4213, $P4212
    nqp_get_sc_object $P4214, "1304523727.177", 191
    .const 'Sub' $P4215 = "268_1304523734.668" 
    $P4213."add_method"($P4214, "set_slot_past", $P4215)
    nqp_get_sc_object $P4216, "1304523727.177", 191
    get_how $P4217, $P4216
    nqp_get_sc_object $P4218, "1304523727.177", 191
    .const 'Sub' $P4219 = "269_1304523734.668" 
    $P4217."add_method"($P4218, "set_cur_sc", $P4219)
    nqp_get_sc_object $P4220, "1304523727.177", 191
    get_how $P4221, $P4220
    nqp_get_sc_object $P4222, "1304523727.177", 191
    .const 'Sub' $P4223 = "270_1304523734.668" 
    $P4221."add_method"($P4222, "add_object", $P4223)
    nqp_get_sc_object $P4224, "1304523727.177", 191
    get_how $P4225, $P4224
    nqp_get_sc_object $P4226, "1304523727.177", 191
    .const 'Sub' $P4227 = "271_1304523734.668" 
    $P4225."add_method"($P4226, "add_code", $P4227)
    nqp_get_sc_object $P4228, "1304523727.177", 191
    get_how $P4229, $P4228
    nqp_get_sc_object $P4230, "1304523727.177", 191
    .const 'Sub' $P4231 = "272_1304523734.668" 
    $P4229."add_method"($P4230, "add_event", $P4231)
    nqp_get_sc_object $P4232, "1304523727.177", 191
    get_how $P4233, $P4232
    nqp_get_sc_object $P4234, "1304523727.177", 191
    .const 'Sub' $P4235 = "273_1304523734.668" 
    $P4233."add_method"($P4234, "get_object_sc_ref_past", $P4235)
    nqp_get_sc_object $P4236, "1304523727.177", 191
    get_how $P4237, $P4236
    nqp_get_sc_object $P4238, "1304523727.177", 191
    .const 'Sub' $P4239 = "274_1304523734.668" 
    $P4237."add_method"($P4238, "sc", $P4239)
    nqp_get_sc_object $P4240, "1304523727.177", 191
    get_how $P4241, $P4240
    nqp_get_sc_object $P4242, "1304523727.177", 191
    .const 'Sub' $P4243 = "275_1304523734.668" 
    $P4241."add_method"($P4242, "handle", $P4243)
    nqp_get_sc_object $P4244, "1304523727.177", 191
    get_how $P4245, $P4244
    nqp_get_sc_object $P4246, "1304523727.177", 191
    .const 'Sub' $P4247 = "276_1304523734.668" 
    $P4245."add_method"($P4246, "event_stream", $P4247)
    .const 'Sub' $P4248 = "259_1304523734.668" 
    $P4249 = $P4248."get_lexinfo"()
    nqp_get_sc_object $P4250, "1304523727.177", 191
    $P4249."set_static_lexpad_value"("$?PACKAGE", $P4250)
    .const 'Sub' $P4251 = "259_1304523734.668" 
    $P4252 = $P4251."get_lexinfo"()
    $P4252."finish_static_lexpad"()
    .const 'Sub' $P4253 = "259_1304523734.668" 
    $P4254 = $P4253."get_lexinfo"()
    nqp_get_sc_object $P4255, "1304523727.177", 191
    $P4254."set_static_lexpad_value"("$?CLASS", $P4255)
    .const 'Sub' $P4256 = "259_1304523734.668" 
    $P4257 = $P4256."get_lexinfo"()
    $P4257."finish_static_lexpad"()
    nqp_get_sc_object $P4258, "1304523727.177", 191
    get_how $P4259, $P4258
    nqp_get_sc_object $P4260, "1304523727.177", 191
    nqp_get_sc_object $P4261, "1304523725.41", 5
    $P4259."set_default_parent"($P4260, $P4261)
    nqp_get_sc_object $P4262, "1304523727.177", 191
    get_how $P4263, $P4262
    nqp_get_sc_object $P4264, "1304523727.177", 191
    $P4263."compose"($P4264)
  if_3148_end:
    nqp_get_sc_object $P4762, "1304523727.177", 0
    set_hll_global "GLOBAL", $P4762
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block17"  :subid("11_1304523734.668") :outer("10_1304523734.668")
.annotate 'line', 9
    .const 'Sub' $P453 = "118_1304523734.668" 
    capture_lex $P453
    .const 'Sub' $P448 = "117_1304523734.668" 
    capture_lex $P448
    .const 'Sub' $P433 = "116_1304523734.668" 
    capture_lex $P433
    .const 'Sub' $P423 = "115_1304523734.668" 
    capture_lex $P423
    .const 'Sub' $P419 = "114_1304523734.668" 
    capture_lex $P419
    .const 'Sub' $P415 = "113_1304523734.668" 
    capture_lex $P415
    .const 'Sub' $P412 = "112_1304523734.668" 
    capture_lex $P412
    .const 'Sub' $P410 = "111_1304523734.668" 
    capture_lex $P410
    .const 'Sub' $P408 = "110_1304523734.668" 
    capture_lex $P408
    .const 'Sub' $P400 = "109_1304523734.668" 
    capture_lex $P400
    .const 'Sub' $P397 = "108_1304523734.668" 
    capture_lex $P397
    .const 'Sub' $P393 = "107_1304523734.668" 
    capture_lex $P393
    .const 'Sub' $P359 = "106_1304523734.668" 
    capture_lex $P359
    .const 'Sub' $P354 = "105_1304523734.668" 
    capture_lex $P354
    .const 'Sub' $P350 = "104_1304523734.668" 
    capture_lex $P350
    .const 'Sub' $P345 = "103_1304523734.668" 
    capture_lex $P345
    .const 'Sub' $P343 = "102_1304523734.668" 
    capture_lex $P343
    .const 'Sub' $P339 = "101_1304523734.668" 
    capture_lex $P339
    .const 'Sub' $P336 = "100_1304523734.668" 
    capture_lex $P336
    .const 'Sub' $P326 = "98_1304523734.668" 
    capture_lex $P326
    .const 'Sub' $P324 = "97_1304523734.668" 
    capture_lex $P324
    .const 'Sub' $P294 = "93_1304523734.668" 
    capture_lex $P294
    .const 'Sub' $P292 = "92_1304523734.668" 
    capture_lex $P292
    .const 'Sub' $P288 = "91_1304523734.668" 
    capture_lex $P288
    .const 'Sub' $P286 = "90_1304523734.668" 
    capture_lex $P286
    .const 'Sub' $P283 = "89_1304523734.668" 
    capture_lex $P283
    .const 'Sub' $P281 = "88_1304523734.668" 
    capture_lex $P281
    .const 'Sub' $P277 = "87_1304523734.668" 
    capture_lex $P277
    .const 'Sub' $P275 = "86_1304523734.668" 
    capture_lex $P275
    .const 'Sub' $P271 = "85_1304523734.668" 
    capture_lex $P271
    .const 'Sub' $P269 = "84_1304523734.668" 
    capture_lex $P269
    .const 'Sub' $P266 = "83_1304523734.668" 
    capture_lex $P266
    .const 'Sub' $P264 = "82_1304523734.668" 
    capture_lex $P264
    .const 'Sub' $P261 = "81_1304523734.668" 
    capture_lex $P261
    .const 'Sub' $P259 = "80_1304523734.668" 
    capture_lex $P259
    .const 'Sub' $P256 = "79_1304523734.668" 
    capture_lex $P256
    .const 'Sub' $P254 = "78_1304523734.668" 
    capture_lex $P254
    .const 'Sub' $P251 = "77_1304523734.668" 
    capture_lex $P251
    .const 'Sub' $P249 = "76_1304523734.668" 
    capture_lex $P249
    .const 'Sub' $P246 = "75_1304523734.668" 
    capture_lex $P246
    .const 'Sub' $P244 = "74_1304523734.668" 
    capture_lex $P244
    .const 'Sub' $P241 = "73_1304523734.668" 
    capture_lex $P241
    .const 'Sub' $P239 = "72_1304523734.668" 
    capture_lex $P239
    .const 'Sub' $P236 = "71_1304523734.668" 
    capture_lex $P236
    .const 'Sub' $P234 = "70_1304523734.668" 
    capture_lex $P234
    .const 'Sub' $P231 = "69_1304523734.668" 
    capture_lex $P231
    .const 'Sub' $P223 = "66_1304523734.668" 
    capture_lex $P223
    .const 'Sub' $P219 = "65_1304523734.668" 
    capture_lex $P219
    .const 'Sub' $P217 = "64_1304523734.668" 
    capture_lex $P217
    .const 'Sub' $P206 = "63_1304523734.668" 
    capture_lex $P206
    .const 'Sub' $P199 = "62_1304523734.668" 
    capture_lex $P199
    .const 'Sub' $P194 = "61_1304523734.668" 
    capture_lex $P194
    .const 'Sub' $P192 = "60_1304523734.668" 
    capture_lex $P192
    .const 'Sub' $P188 = "59_1304523734.668" 
    capture_lex $P188
    .const 'Sub' $P186 = "58_1304523734.668" 
    capture_lex $P186
    .const 'Sub' $P181 = "57_1304523734.668" 
    capture_lex $P181
    .const 'Sub' $P179 = "56_1304523734.668" 
    capture_lex $P179
    .const 'Sub' $P175 = "55_1304523734.668" 
    capture_lex $P175
    .const 'Sub' $P173 = "54_1304523734.668" 
    capture_lex $P173
    .const 'Sub' $P168 = "53_1304523734.668" 
    capture_lex $P168
    .const 'Sub' $P166 = "52_1304523734.668" 
    capture_lex $P166
    .const 'Sub' $P162 = "51_1304523734.668" 
    capture_lex $P162
    .const 'Sub' $P160 = "50_1304523734.668" 
    capture_lex $P160
    .const 'Sub' $P155 = "49_1304523734.668" 
    capture_lex $P155
    .const 'Sub' $P153 = "48_1304523734.668" 
    capture_lex $P153
    .const 'Sub' $P149 = "47_1304523734.668" 
    capture_lex $P149
    .const 'Sub' $P147 = "46_1304523734.668" 
    capture_lex $P147
    .const 'Sub' $P143 = "45_1304523734.668" 
    capture_lex $P143
    .const 'Sub' $P141 = "44_1304523734.668" 
    capture_lex $P141
    .const 'Sub' $P134 = "43_1304523734.668" 
    capture_lex $P134
    .const 'Sub' $P131 = "42_1304523734.668" 
    capture_lex $P131
    .const 'Sub' $P126 = "41_1304523734.668" 
    capture_lex $P126
    .const 'Sub' $P118 = "40_1304523734.668" 
    capture_lex $P118
    .const 'Sub' $P115 = "39_1304523734.668" 
    capture_lex $P115
    .const 'Sub' $P112 = "38_1304523734.668" 
    capture_lex $P112
    .const 'Sub' $P110 = "37_1304523734.668" 
    capture_lex $P110
    .const 'Sub' $P107 = "36_1304523734.668" 
    capture_lex $P107
    .const 'Sub' $P103 = "35_1304523734.668" 
    capture_lex $P103
    .const 'Sub' $P99 = "34_1304523734.668" 
    capture_lex $P99
    .const 'Sub' $P96 = "33_1304523734.668" 
    capture_lex $P96
    .const 'Sub' $P93 = "32_1304523734.668" 
    capture_lex $P93
    .const 'Sub' $P90 = "31_1304523734.668" 
    capture_lex $P90
    .const 'Sub' $P87 = "30_1304523734.668" 
    capture_lex $P87
    .const 'Sub' $P84 = "29_1304523734.668" 
    capture_lex $P84
    .const 'Sub' $P81 = "28_1304523734.668" 
    capture_lex $P81
    .const 'Sub' $P43 = "15_1304523734.668" 
    capture_lex $P43
    .const 'Sub' $P36 = "14_1304523734.668" 
    capture_lex $P36
    .const 'Sub' $P34 = "13_1304523734.668" 
    capture_lex $P34
    .const 'Sub' $P29 = "12_1304523734.668" 
    capture_lex $P29
.annotate 'line', 10
    new $P19, "Undef"
    .lex "$brackets", $P19
.annotate 'line', 12
    new $P20, "Undef"
    .lex "$cursor_class", $P20
    .lex "$?PACKAGE", $P21
    .lex "$?CLASS", $P22
.annotate 'line', 10
    new $P23, "String"
    assign $P23, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P23
.annotate 'line', 12
    find_lex $P24, "GLOBALish"
    get_who $P25, $P24
    set $P26, $P25["Regex"]
    unless_null $P26, vivify_279
    new $P26, "Undef"
  vivify_279:
    get_who $P27, $P26
    set $P28, $P27["Cursor"]
    unless_null $P28, vivify_280
    new $P28, "Undef"
  vivify_280:
    store_lex "$cursor_class", $P28
.annotate 'line', 851
    .const 'Sub' $P453 = "118_1304523734.668" 
    newclosure $P476, $P453
.annotate 'line', 9
    .return ($P476)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx30_debug, debug_281
    rx30_cur."!cursor_debug"("START", "ws")
  debug_281:
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
.annotate 'line', 14
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
    if_null rx30_debug, debug_282
    rx30_cur."!cursor_debug"("PASS", "ws", " at pos=", rx30_pos)
  debug_282:
    .return (rx30_cur)
  rx30_restart:
.annotate 'line', 12
    if_null rx30_debug, debug_283
    rx30_cur."!cursor_debug"("NEXT", "ws")
  debug_283:
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    if_null rx30_debug, debug_284
    rx30_cur."!cursor_debug"("FAIL", "ws")
  debug_284:
    .return (rx30_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    new $P35, "ResizablePMCArray"
    push $P35, ""
    .return ($P35)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx37_debug, debug_285
    rx37_cur."!cursor_debug"("START", "termish")
  debug_285:
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
.annotate 'line', 17
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
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."term"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx37_pos = $P10."pos"()
.annotate 'line', 19
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
.annotate 'line', 16
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "termish")
    if_null rx37_debug, debug_286
    rx37_cur."!cursor_debug"("PASS", "termish", " at pos=", rx37_pos)
  debug_286:
    .return (rx37_cur)
  rx37_restart:
.annotate 'line', 12
    if_null rx37_debug, debug_287
    rx37_cur."!cursor_debug"("NEXT", "termish")
  debug_287:
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    if_null rx37_debug, debug_288
    rx37_cur."!cursor_debug"("FAIL", "termish")
  debug_288:
    .return (rx37_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    new $P44, "ResizablePMCArray"
    push $P44, ""
    .return ($P44)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1304523734.668")
    .param pmc param_46
.annotate 'line', 22
    .lex "self", param_46
    $P47 = param_46."!protoregex"("term")
    .return ($P47)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1304523734.668")
    .param pmc param_49
.annotate 'line', 22
    .lex "self", param_49
    $P50 = param_49."!PREFIX__!protoregex"("term")
    .return ($P50)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1304523734.668")
    .param pmc param_52
.annotate 'line', 23
    .lex "self", param_52
    $P53 = param_52."!protoregex"("infix")
    .return ($P53)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1304523734.668")
    .param pmc param_55
.annotate 'line', 23
    .lex "self", param_55
    $P56 = param_55."!PREFIX__!protoregex"("infix")
    .return ($P56)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1304523734.668")
    .param pmc param_58
.annotate 'line', 24
    .lex "self", param_58
    $P59 = param_58."!protoregex"("prefix")
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1304523734.668")
    .param pmc param_61
.annotate 'line', 24
    .lex "self", param_61
    $P62 = param_61."!PREFIX__!protoregex"("prefix")
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1304523734.668")
    .param pmc param_64
.annotate 'line', 25
    .lex "self", param_64
    $P65 = param_64."!protoregex"("postfix")
    .return ($P65)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1304523734.668")
    .param pmc param_67
.annotate 'line', 25
    .lex "self", param_67
    $P68 = param_67."!PREFIX__!protoregex"("postfix")
    .return ($P68)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1304523734.668")
    .param pmc param_70
.annotate 'line', 26
    .lex "self", param_70
    $P71 = param_70."!protoregex"("circumfix")
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1304523734.668")
    .param pmc param_73
.annotate 'line', 26
    .lex "self", param_73
    $P74 = param_73."!PREFIX__!protoregex"("circumfix")
    .return ($P74)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1304523734.668")
    .param pmc param_76
.annotate 'line', 27
    .lex "self", param_76
    $P77 = param_76."!protoregex"("postcircumfix")
    .return ($P77)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1304523734.668")
    .param pmc param_79
.annotate 'line', 27
    .lex "self", param_79
    $P80 = param_79."!PREFIX__!protoregex"("postcircumfix")
    .return ($P80)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx82_debug, debug_289
    rx82_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_289:
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
.annotate 'line', 29
  # rx subrule "circumfix" subtype=capture negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."circumfix"()
    unless $P10, rx82_fail
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx82_pos = $P10."pos"()
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "term:sym<circumfix>")
    if_null rx82_debug, debug_290
    rx82_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx82_pos)
  debug_290:
    .return (rx82_cur)
  rx82_restart:
.annotate 'line', 12
    if_null rx82_debug, debug_291
    rx82_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_291:
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    if_null rx82_debug, debug_292
    rx82_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_292:
    .return (rx82_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    $P85 = self."!PREFIX__!subrule"("circumfix", "")
    new $P86, "ResizablePMCArray"
    push $P86, $P85
    .return ($P86)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx88_debug, debug_293
    rx88_cur."!cursor_debug"("START", "infixish")
  debug_293:
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
.annotate 'line', 31
  # rx subrule "infix" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."infix"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx88_pos = $P10."pos"()
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "infixish")
    if_null rx88_debug, debug_294
    rx88_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx88_pos)
  debug_294:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 12
    if_null rx88_debug, debug_295
    rx88_cur."!cursor_debug"("NEXT", "infixish")
  debug_295:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_296
    rx88_cur."!cursor_debug"("FAIL", "infixish")
  debug_296:
    .return (rx88_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    $P91 = self."!PREFIX__!subrule"("infix", "")
    new $P92, "ResizablePMCArray"
    push $P92, $P91
    .return ($P92)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx94_debug, debug_297
    rx94_cur."!cursor_debug"("START", "prefixish")
  debug_297:
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
.annotate 'line', 32
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
    if_null rx94_debug, debug_298
    rx94_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx94_pos)
  debug_298:
    .return (rx94_cur)
  rx94_restart:
.annotate 'line', 12
    if_null rx94_debug, debug_299
    rx94_cur."!cursor_debug"("NEXT", "prefixish")
  debug_299:
  rx94_fail:
    (rx94_rep, rx94_pos, $I10, $P10) = rx94_cur."!mark_fail"(0)
    lt rx94_pos, -1, rx94_done
    eq rx94_pos, -1, rx94_fail
    jump $I10
  rx94_done:
    rx94_cur."!cursor_fail"()
    if_null rx94_debug, debug_300
    rx94_cur."!cursor_debug"("FAIL", "prefixish")
  debug_300:
    .return (rx94_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    $P97 = self."!PREFIX__!subrule"("prefix", "")
    new $P98, "ResizablePMCArray"
    push $P98, $P97
    .return ($P98)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx100_debug, debug_301
    rx100_cur."!cursor_debug"("START", "postfixish")
  debug_301:
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
.annotate 'line', 33
    set_addr $I10, alt102_1
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."postfix"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx100_pos = $P10."pos"()
    goto alt102_end
  alt102_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."postcircumfix"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx100_pos = $P10."pos"()
  alt102_end:
.annotate 'line', 33
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "postfixish")
    if_null rx100_debug, debug_302
    rx100_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx100_pos)
  debug_302:
    .return (rx100_cur)
  rx100_restart:
.annotate 'line', 12
    if_null rx100_debug, debug_303
    rx100_cur."!cursor_debug"("NEXT", "postfixish")
  debug_303:
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    if_null rx100_debug, debug_304
    rx100_cur."!cursor_debug"("FAIL", "postfixish")
  debug_304:
    .return (rx100_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    $P104 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P105 = self."!PREFIX__!subrule"("postfix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P104
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx108_debug, debug_305
    rx108_cur."!cursor_debug"("START", "nullterm")
  debug_305:
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
.annotate 'line', 38
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "nullterm")
    if_null rx108_debug, debug_306
    rx108_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx108_pos)
  debug_306:
    .return (rx108_cur)
  rx108_restart:
.annotate 'line', 12
    if_null rx108_debug, debug_307
    rx108_cur."!cursor_debug"("NEXT", "nullterm")
  debug_307:
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    if_null rx108_debug, debug_308
    rx108_cur."!cursor_debug"("FAIL", "nullterm")
  debug_308:
    .return (rx108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    new $P111, "ResizablePMCArray"
    push $P111, ""
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
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
    if_null rx113_debug, debug_309
    rx113_cur."!cursor_debug"("START", "nullterm_alt")
  debug_309:
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
.annotate 'line', 39
  # rx subrule "nullterm" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."nullterm"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx113_pos = $P10."pos"()
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "nullterm_alt")
    if_null rx113_debug, debug_310
    rx113_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx113_pos)
  debug_310:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 12
    if_null rx113_debug, debug_311
    rx113_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_311:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_312
    rx113_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_312:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 12
    $P116 = self."!PREFIX__!subrule"("nullterm", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_119
.annotate 'line', 42
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
.sub "quote_delimited"  :subid("41_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx127_debug, debug_313
    rx127_cur."!cursor_debug"("START", "quote_delimited")
  debug_313:
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
.annotate 'line', 46
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
.annotate 'line', 45
  # rx pass
    rx127_cur."!cursor_pass"(rx127_pos, "quote_delimited")
    if_null rx127_debug, debug_314
    rx127_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx127_pos)
  debug_314:
    .return (rx127_cur)
  rx127_restart:
.annotate 'line', 42
    if_null rx127_debug, debug_315
    rx127_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_315:
  rx127_fail:
    (rx127_rep, rx127_pos, $I10, $P10) = rx127_cur."!mark_fail"(0)
    lt rx127_pos, -1, rx127_done
    eq rx127_pos, -1, rx127_fail
    jump $I10
  rx127_done:
    rx127_cur."!cursor_fail"()
    if_null rx127_debug, debug_316
    rx127_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_316:
    .return (rx127_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    $P132 = self."!PREFIX__!subrule"("starter", "")
    new $P133, "ResizablePMCArray"
    push $P133, $P132
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx135_debug, debug_317
    rx135_cur."!cursor_debug"("START", "quote_atom")
  debug_317:
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
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."stopper"()
    if $P10, rx135_fail
  alt137_0:
.annotate 'line', 51
    set_addr $I10, alt137_1
    rx135_cur."!mark_push"(0, rx135_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx135_cur."!cursor_pos"(rx135_pos)
    $P10 = rx135_cur."quote_escape"()
    unless $P10, rx135_fail
    rx135_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx135_pos = $P10."pos"()
    goto alt137_end
  alt137_1:
.annotate 'line', 53
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
.annotate 'line', 49
  # rx pass
    rx135_cur."!cursor_pass"(rx135_pos, "quote_atom")
    if_null rx135_debug, debug_318
    rx135_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx135_pos)
  debug_318:
    .return (rx135_cur)
  rx135_restart:
.annotate 'line', 42
    if_null rx135_debug, debug_319
    rx135_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_319:
  rx135_fail:
    (rx135_rep, rx135_pos, $I10, $P10) = rx135_cur."!mark_fail"(0)
    lt rx135_pos, -1, rx135_done
    eq rx135_pos, -1, rx135_fail
    jump $I10
  rx135_done:
    rx135_cur."!cursor_fail"()
    if_null rx135_debug, debug_320
    rx135_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_320:
    .return (rx135_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P142, "ResizablePMCArray"
    push $P142, ""
    .return ($P142)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx144_debug, debug_321
    rx144_cur."!cursor_debug"("START", "decint")
  debug_321:
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
.annotate 'line', 57
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
    if_null rx144_debug, debug_322
    rx144_cur."!cursor_debug"("PASS", "decint", " at pos=", rx144_pos)
  debug_322:
    .return (rx144_cur)
  rx144_restart:
.annotate 'line', 42
    if_null rx144_debug, debug_323
    rx144_cur."!cursor_debug"("NEXT", "decint")
  debug_323:
  rx144_fail:
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    if_null rx144_debug, debug_324
    rx144_cur."!cursor_debug"("FAIL", "decint")
  debug_324:
    .return (rx144_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx150_debug, debug_325
    rx150_cur."!cursor_debug"("START", "decints")
  debug_325:
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
.annotate 'line', 58
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
    if_null rx150_debug, debug_326
    rx150_cur."!cursor_debug"("PASS", "decints", " at pos=", rx150_pos)
  debug_326:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 42
    if_null rx150_debug, debug_327
    rx150_cur."!cursor_debug"("NEXT", "decints")
  debug_327:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_328
    rx150_cur."!cursor_debug"("FAIL", "decints")
  debug_328:
    .return (rx150_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P154, "ResizablePMCArray"
    push $P154, ""
    .return ($P154)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx156_debug, debug_329
    rx156_cur."!cursor_debug"("START", "hexint")
  debug_329:
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
.annotate 'line', 60
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
    if_null rx156_debug, debug_330
    rx156_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx156_pos)
  debug_330:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 42
    if_null rx156_debug, debug_331
    rx156_cur."!cursor_debug"("NEXT", "hexint")
  debug_331:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_332
    rx156_cur."!cursor_debug"("FAIL", "hexint")
  debug_332:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P161, "ResizablePMCArray"
    push $P161, ""
    .return ($P161)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx163_debug, debug_333
    rx163_cur."!cursor_debug"("START", "hexints")
  debug_333:
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
.annotate 'line', 61
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
    if_null rx163_debug, debug_334
    rx163_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx163_pos)
  debug_334:
    .return (rx163_cur)
  rx163_restart:
.annotate 'line', 42
    if_null rx163_debug, debug_335
    rx163_cur."!cursor_debug"("NEXT", "hexints")
  debug_335:
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    if_null rx163_debug, debug_336
    rx163_cur."!cursor_debug"("FAIL", "hexints")
  debug_336:
    .return (rx163_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P167, "ResizablePMCArray"
    push $P167, ""
    .return ($P167)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx169_debug, debug_337
    rx169_cur."!cursor_debug"("START", "octint")
  debug_337:
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
.annotate 'line', 63
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
    if_null rx169_debug, debug_338
    rx169_cur."!cursor_debug"("PASS", "octint", " at pos=", rx169_pos)
  debug_338:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 42
    if_null rx169_debug, debug_339
    rx169_cur."!cursor_debug"("NEXT", "octint")
  debug_339:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_340
    rx169_cur."!cursor_debug"("FAIL", "octint")
  debug_340:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P174, "ResizablePMCArray"
    push $P174, ""
    .return ($P174)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx176_debug, debug_341
    rx176_cur."!cursor_debug"("START", "octints")
  debug_341:
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
.annotate 'line', 64
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
    if_null rx176_debug, debug_342
    rx176_cur."!cursor_debug"("PASS", "octints", " at pos=", rx176_pos)
  debug_342:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 42
    if_null rx176_debug, debug_343
    rx176_cur."!cursor_debug"("NEXT", "octints")
  debug_343:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_344
    rx176_cur."!cursor_debug"("FAIL", "octints")
  debug_344:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P180, "ResizablePMCArray"
    push $P180, ""
    .return ($P180)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx182_debug, debug_345
    rx182_cur."!cursor_debug"("START", "binint")
  debug_345:
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
.annotate 'line', 66
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
    if_null rx182_debug, debug_346
    rx182_cur."!cursor_debug"("PASS", "binint", " at pos=", rx182_pos)
  debug_346:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 42
    if_null rx182_debug, debug_347
    rx182_cur."!cursor_debug"("NEXT", "binint")
  debug_347:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_348
    rx182_cur."!cursor_debug"("FAIL", "binint")
  debug_348:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P187, "ResizablePMCArray"
    push $P187, ""
    .return ($P187)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx189_debug, debug_349
    rx189_cur."!cursor_debug"("START", "binints")
  debug_349:
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
.annotate 'line', 67
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
    if_null rx189_debug, debug_350
    rx189_cur."!cursor_debug"("PASS", "binints", " at pos=", rx189_pos)
  debug_350:
    .return (rx189_cur)
  rx189_restart:
.annotate 'line', 42
    if_null rx189_debug, debug_351
    rx189_cur."!cursor_debug"("NEXT", "binints")
  debug_351:
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    if_null rx189_debug, debug_352
    rx189_cur."!cursor_debug"("FAIL", "binints")
  debug_352:
    .return (rx189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P193, "ResizablePMCArray"
    push $P193, ""
    .return ($P193)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx195_debug, debug_353
    rx195_cur."!cursor_debug"("START", "integer")
  debug_353:
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
.annotate 'line', 70
    set_addr $I10, alt197_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 71
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
.annotate 'line', 72
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
.annotate 'line', 73
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
.annotate 'line', 74
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
.annotate 'line', 71
    goto alt197_end
  alt197_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."decint"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx195_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 69
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "integer")
    if_null rx195_debug, debug_354
    rx195_cur."!cursor_debug"("PASS", "integer", " at pos=", rx195_pos)
  debug_354:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 42
    if_null rx195_debug, debug_355
    rx195_cur."!cursor_debug"("NEXT", "integer")
  debug_355:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_356
    rx195_cur."!cursor_debug"("FAIL", "integer")
  debug_356:
    .return (rx195_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
.sub "dec_number"  :subid("63_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx207_debug, debug_357
    rx207_cur."!cursor_debug"("START", "dec_number")
  debug_357:
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
.annotate 'line', 80
    set_addr $I10, alt209_1
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate 'line', 81
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
.annotate 'line', 82
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
.annotate 'line', 83
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
.annotate 'line', 80
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "dec_number")
    if_null rx207_debug, debug_358
    rx207_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx207_pos)
  debug_358:
    .return (rx207_cur)
  rx207_restart:
.annotate 'line', 42
    if_null rx207_debug, debug_359
    rx207_cur."!cursor_debug"("NEXT", "dec_number")
  debug_359:
  rx207_fail:
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    if_null rx207_debug, debug_360
    rx207_cur."!cursor_debug"("FAIL", "dec_number")
  debug_360:
    .return (rx207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P218, "ResizablePMCArray"
    push $P218, ""
    push $P218, ""
    push $P218, "."
    .return ($P218)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx220_debug, debug_361
    rx220_cur."!cursor_debug"("START", "escale")
  debug_361:
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
.annotate 'line', 86
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
    if_null rx220_debug, debug_362
    rx220_cur."!cursor_debug"("PASS", "escale", " at pos=", rx220_pos)
  debug_362:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 42
    if_null rx220_debug, debug_363
    rx220_cur."!cursor_debug"("NEXT", "escale")
  debug_363:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_364
    rx220_cur."!cursor_debug"("FAIL", "escale")
  debug_364:
    .return (rx220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P224, "ResizablePMCArray"
    push $P224, "e"
    push $P224, "E"
    .return ($P224)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1304523734.668")
    .param pmc param_226
.annotate 'line', 88
    .lex "self", param_226
    $P227 = param_226."!protoregex"("quote_escape")
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1304523734.668")
    .param pmc param_229
.annotate 'line', 88
    .lex "self", param_229
    $P230 = param_229."!PREFIX__!protoregex"("quote_escape")
    .return ($P230)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx232_debug, debug_365
    rx232_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_365:
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
.annotate 'line', 89
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
    if_null rx232_debug, debug_366
    rx232_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx232_pos)
  debug_366:
    .return (rx232_cur)
  rx232_restart:
.annotate 'line', 42
    if_null rx232_debug, debug_367
    rx232_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_367:
  rx232_fail:
    (rx232_rep, rx232_pos, $I10, $P10) = rx232_cur."!mark_fail"(0)
    lt rx232_pos, -1, rx232_done
    eq rx232_pos, -1, rx232_fail
    jump $I10
  rx232_done:
    rx232_cur."!cursor_fail"()
    if_null rx232_debug, debug_368
    rx232_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_368:
    .return (rx232_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P235, "ResizablePMCArray"
    push $P235, "\\\\"
    .return ($P235)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    rx237_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_369:
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
.annotate 'line', 90
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
    if_null rx237_debug, debug_370
    rx237_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx237_pos)
  debug_370:
    .return (rx237_cur)
  rx237_restart:
.annotate 'line', 42
    if_null rx237_debug, debug_371
    rx237_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_371:
  rx237_fail:
    (rx237_rep, rx237_pos, $I10, $P10) = rx237_cur."!mark_fail"(0)
    lt rx237_pos, -1, rx237_done
    eq rx237_pos, -1, rx237_fail
    jump $I10
  rx237_done:
    rx237_cur."!cursor_fail"()
    if_null rx237_debug, debug_372
    rx237_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_372:
    .return (rx237_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P240, "ResizablePMCArray"
    push $P240, "\\"
    .return ($P240)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx242_debug, debug_373
    rx242_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_373:
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
.annotate 'line', 92
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
    if_null rx242_debug, debug_374
    rx242_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx242_pos)
  debug_374:
    .return (rx242_cur)
  rx242_restart:
.annotate 'line', 42
    if_null rx242_debug, debug_375
    rx242_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_375:
  rx242_fail:
    (rx242_rep, rx242_pos, $I10, $P10) = rx242_cur."!mark_fail"(0)
    lt rx242_pos, -1, rx242_done
    eq rx242_pos, -1, rx242_fail
    jump $I10
  rx242_done:
    rx242_cur."!cursor_fail"()
    if_null rx242_debug, debug_376
    rx242_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_376:
    .return (rx242_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P245, "ResizablePMCArray"
    push $P245, "\\b"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx247_debug, debug_377
    rx247_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_377:
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
.annotate 'line', 93
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
    if_null rx247_debug, debug_378
    rx247_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx247_pos)
  debug_378:
    .return (rx247_cur)
  rx247_restart:
.annotate 'line', 42
    if_null rx247_debug, debug_379
    rx247_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_379:
  rx247_fail:
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    if_null rx247_debug, debug_380
    rx247_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_380:
    .return (rx247_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P250, "ResizablePMCArray"
    push $P250, "\\n"
    .return ($P250)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx252_debug, debug_381
    rx252_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_381:
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
.annotate 'line', 94
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
    if_null rx252_debug, debug_382
    rx252_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx252_pos)
  debug_382:
    .return (rx252_cur)
  rx252_restart:
.annotate 'line', 42
    if_null rx252_debug, debug_383
    rx252_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_383:
  rx252_fail:
    (rx252_rep, rx252_pos, $I10, $P10) = rx252_cur."!mark_fail"(0)
    lt rx252_pos, -1, rx252_done
    eq rx252_pos, -1, rx252_fail
    jump $I10
  rx252_done:
    rx252_cur."!cursor_fail"()
    if_null rx252_debug, debug_384
    rx252_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_384:
    .return (rx252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P255, "ResizablePMCArray"
    push $P255, "\\r"
    .return ($P255)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx257_debug, debug_385
    rx257_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_385:
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
.annotate 'line', 95
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
    if_null rx257_debug, debug_386
    rx257_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx257_pos)
  debug_386:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 42
    if_null rx257_debug, debug_387
    rx257_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_387:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_388
    rx257_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_388:
    .return (rx257_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P260, "ResizablePMCArray"
    push $P260, "\\t"
    .return ($P260)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx262_debug, debug_389
    rx262_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_389:
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
.annotate 'line', 96
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
    if_null rx262_debug, debug_390
    rx262_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx262_pos)
  debug_390:
    .return (rx262_cur)
  rx262_restart:
.annotate 'line', 42
    if_null rx262_debug, debug_391
    rx262_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_391:
  rx262_fail:
    (rx262_rep, rx262_pos, $I10, $P10) = rx262_cur."!mark_fail"(0)
    lt rx262_pos, -1, rx262_done
    eq rx262_pos, -1, rx262_fail
    jump $I10
  rx262_done:
    rx262_cur."!cursor_fail"()
    if_null rx262_debug, debug_392
    rx262_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_392:
    .return (rx262_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P265, "ResizablePMCArray"
    push $P265, "\\f"
    .return ($P265)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx267_debug, debug_393
    rx267_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_393:
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
.annotate 'line', 97
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
    if_null rx267_debug, debug_394
    rx267_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx267_pos)
  debug_394:
    .return (rx267_cur)
  rx267_restart:
.annotate 'line', 42
    if_null rx267_debug, debug_395
    rx267_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_395:
  rx267_fail:
    (rx267_rep, rx267_pos, $I10, $P10) = rx267_cur."!mark_fail"(0)
    lt rx267_pos, -1, rx267_done
    eq rx267_pos, -1, rx267_fail
    jump $I10
  rx267_done:
    rx267_cur."!cursor_fail"()
    if_null rx267_debug, debug_396
    rx267_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_396:
    .return (rx267_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P270, "ResizablePMCArray"
    push $P270, "\\e"
    .return ($P270)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx272_debug, debug_397
    rx272_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_397:
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
.annotate 'line', 99
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
.annotate 'line', 100
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
.annotate 'line', 98
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "quote_escape:sym<hex>")
    if_null rx272_debug, debug_398
    rx272_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx272_pos)
  debug_398:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 42
    if_null rx272_debug, debug_399
    rx272_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_399:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_400
    rx272_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_400:
    .return (rx272_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P276, "ResizablePMCArray"
    push $P276, unicode:"\\x"
    .return ($P276)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx278_debug, debug_401
    rx278_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_401:
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
.annotate 'line', 103
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
.annotate 'line', 104
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
.annotate 'line', 102
  # rx pass
    rx278_cur."!cursor_pass"(rx278_pos, "quote_escape:sym<oct>")
    if_null rx278_debug, debug_402
    rx278_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx278_pos)
  debug_402:
    .return (rx278_cur)
  rx278_restart:
.annotate 'line', 42
    if_null rx278_debug, debug_403
    rx278_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_403:
  rx278_fail:
    (rx278_rep, rx278_pos, $I10, $P10) = rx278_cur."!mark_fail"(0)
    lt rx278_pos, -1, rx278_done
    eq rx278_pos, -1, rx278_fail
    jump $I10
  rx278_done:
    rx278_cur."!cursor_fail"()
    if_null rx278_debug, debug_404
    rx278_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_404:
    .return (rx278_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P282, "ResizablePMCArray"
    push $P282, "\\o"
    .return ($P282)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx284_debug, debug_405
    rx284_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_405:
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
.annotate 'line', 106
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
    if_null rx284_debug, debug_406
    rx284_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx284_pos)
  debug_406:
    .return (rx284_cur)
  rx284_restart:
.annotate 'line', 42
    if_null rx284_debug, debug_407
    rx284_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_407:
  rx284_fail:
    (rx284_rep, rx284_pos, $I10, $P10) = rx284_cur."!mark_fail"(0)
    lt rx284_pos, -1, rx284_done
    eq rx284_pos, -1, rx284_fail
    jump $I10
  rx284_done:
    rx284_cur."!cursor_fail"()
    if_null rx284_debug, debug_408
    rx284_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_408:
    .return (rx284_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P287, "ResizablePMCArray"
    push $P287, "\\c"
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx289_debug, debug_409
    rx289_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_409:
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
.annotate 'line', 107
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
    if_null rx289_debug, debug_410
    rx289_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx289_pos)
  debug_410:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 42
    if_null rx289_debug, debug_411
    rx289_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_411:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_412
    rx289_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_412:
    .return (rx289_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P293, "ResizablePMCArray"
    push $P293, "\\0"
    .return ($P293)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    .const 'Sub' $P312 = "96_1304523734.668" 
    capture_lex $P312
    .const 'Sub' $P305 = "95_1304523734.668" 
    capture_lex $P305
    .const 'Sub' $P300 = "94_1304523734.668" 
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
    if_null rx295_debug, debug_413
    rx295_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_413:
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
.annotate 'line', 109
    rx295_cur."!cursor_pos"(rx295_pos)
    find_lex $P297, unicode:"$\x{a2}"
    $P298 = $P297."MATCH"()
    store_lex "$/", $P298
    .const 'Sub' $P300 = "94_1304523734.668" 
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
.annotate 'line', 110
    set_addr $I10, alt302_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    $P10 = rx295_cur."quotemod_check"("b")
    unless $P10, rx295_fail
  alt303_0:
.annotate 'line', 112
    set_addr $I10, alt303_1
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
.annotate 'line', 113
  # rx subrule $P305 subtype=capture negate=
    rx295_cur."!cursor_pos"(rx295_pos)
    .const 'Sub' $P305 = "95_1304523734.668" 
    capture_lex $P305
    $P10 = rx295_cur.$P305()
    unless $P10, rx295_fail
    rx295_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx295_pos = $P10."pos"()
    goto alt303_end
  alt303_1:
.annotate 'line', 114
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
    .const 'Sub' $P312 = "96_1304523734.668" 
    capture_lex $P312
    $P322 = $P312()
  alt303_end:
.annotate 'line', 111
    goto alt302_end
  alt302_1:
.annotate 'line', 116
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
.annotate 'line', 108
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "quote_escape:sym<misc>")
    if_null rx295_debug, debug_421
    rx295_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx295_pos)
  debug_421:
    .return (rx295_cur)
  rx295_restart:
.annotate 'line', 42
    if_null rx295_debug, debug_422
    rx295_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_422:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_423
    rx295_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_423:
    .return (rx295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("94_1304523734.668") :outer("93_1304523734.668")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block304"  :anon :subid("95_1304523734.668") :method :outer("93_1304523734.668")
.annotate 'line', 113
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
    if_null rx306_debug, debug_414
    rx306_cur."!cursor_debug"("START", "")
  debug_414:
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
    if_null rx306_debug, debug_415
    rx306_cur."!cursor_debug"("PASS", "", " at pos=", rx306_pos)
  debug_415:
    .return (rx306_cur)
  rx306_restart:
    if_null rx306_debug, debug_416
    rx306_cur."!cursor_debug"("NEXT", "")
  debug_416:
  rx306_fail:
    (rx306_rep, rx306_pos, $I10, $P10) = rx306_cur."!mark_fail"(0)
    lt rx306_pos, -1, rx306_done
    eq rx306_pos, -1, rx306_fail
    jump $I10
  rx306_done:
    rx306_cur."!cursor_fail"()
    if_null rx306_debug, debug_417
    rx306_cur."!cursor_debug"("FAIL", "")
  debug_417:
    .return (rx306_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block311"  :anon :subid("96_1304523734.668") :outer("93_1304523734.668")
.annotate 'line', 114
    find_lex $P313, "$/"
    unless_null $P313, vivify_418
    new $P313, "Undef"
  vivify_418:
    $P314 = $P313."CURSOR"()
    new $P315, "String"
    assign $P315, "Unrecognized backslash sequence: '\\"
    find_lex $P316, "$/"
    unless_null $P316, vivify_419
    $P316 = root_new ['parrot';'Hash']
  vivify_419:
    set $P317, $P316["x"]
    unless_null $P317, vivify_420
    new $P317, "Undef"
  vivify_420:
    $S318 = $P317."Str"()
    concat $P319, $P315, $S318
    concat $P320, $P319, "'"
    $P321 = $P314."panic"($P320)
    .return ($P321)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P325, "ResizablePMCArray"
    push $P325, ""
    .return ($P325)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    .const 'Sub' $P333 = "99_1304523734.668" 
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
    if_null rx327_debug, debug_424
    rx327_cur."!cursor_debug"("START", "charname")
  debug_424:
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
.annotate 'line', 120
    set_addr $I10, alt329_1
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."integer"()
    unless $P10, rx327_fail
    rx327_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx327_pos = $P10."pos"()
    goto alt329_end
  alt329_1:
.annotate 'line', 122
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
.annotate 'line', 123
  # rx subrule "before" subtype=zerowidth negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    .const 'Sub' $P333 = "99_1304523734.668" 
    capture_lex $P333
    $P10 = rx327_cur."before"($P333)
    unless $P10, rx327_fail
  alt329_end:
.annotate 'line', 120
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "charname")
    if_null rx327_debug, debug_429
    rx327_cur."!cursor_debug"("PASS", "charname", " at pos=", rx327_pos)
  debug_429:
    .return (rx327_cur)
  rx327_restart:
.annotate 'line', 42
    if_null rx327_debug, debug_430
    rx327_cur."!cursor_debug"("NEXT", "charname")
  debug_430:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_431
    rx327_cur."!cursor_debug"("FAIL", "charname")
  debug_431:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block332"  :anon :subid("99_1304523734.668") :method :outer("98_1304523734.668")
.annotate 'line', 123
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
    if_null rx334_debug, debug_425
    rx334_cur."!cursor_debug"("START", "")
  debug_425:
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
    if_null rx334_debug, debug_426
    rx334_cur."!cursor_debug"("PASS", "", " at pos=", rx334_pos)
  debug_426:
    .return (rx334_cur)
  rx334_restart:
    if_null rx334_debug, debug_427
    rx334_cur."!cursor_debug"("NEXT", "")
  debug_427:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_428
    rx334_cur."!cursor_debug"("FAIL", "")
  debug_428:
    .return (rx334_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
.sub "charnames"  :subid("101_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx340_debug, debug_432
    rx340_cur."!cursor_debug"("START", "charnames")
  debug_432:
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
.annotate 'line', 125
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
    if_null rx340_debug, debug_433
    rx340_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx340_pos)
  debug_433:
    .return (rx340_cur)
  rx340_restart:
.annotate 'line', 42
    if_null rx340_debug, debug_434
    rx340_cur."!cursor_debug"("NEXT", "charnames")
  debug_434:
  rx340_fail:
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    if_null rx340_debug, debug_435
    rx340_cur."!cursor_debug"("FAIL", "charnames")
  debug_435:
    .return (rx340_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
    new $P344, "ResizablePMCArray"
    push $P344, ""
    .return ($P344)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
    if_null rx346_debug, debug_436
    rx346_cur."!cursor_debug"("START", "charspec")
  debug_436:
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
.annotate 'line', 127
    set_addr $I10, alt348_1
    rx346_cur."!mark_push"(0, rx346_pos, $I10)
.annotate 'line', 128
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
.annotate 'line', 129
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
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx346_pos, rx346_eos, rx346_fail
    sub $I10, rx346_pos, rx346_off
    substr $S10, rx346_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx346_fail
    inc rx346_pos
    goto alt348_end
  alt348_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx346_cur."!cursor_pos"(rx346_pos)
    $P10 = rx346_cur."panic"("Unrecognized \\c character")
    unless $P10, rx346_fail
    rx346_pos = $P10."pos"()
  alt348_end:
.annotate 'line', 126
  # rx pass
    rx346_cur."!cursor_pass"(rx346_pos, "charspec")
    if_null rx346_debug, debug_437
    rx346_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx346_pos)
  debug_437:
    .return (rx346_cur)
  rx346_restart:
.annotate 'line', 42
    if_null rx346_debug, debug_438
    rx346_cur."!cursor_debug"("NEXT", "charspec")
  debug_438:
  rx346_fail:
    (rx346_rep, rx346_pos, $I10, $P10) = rx346_cur."!mark_fail"(0)
    lt rx346_pos, -1, rx346_done
    eq rx346_pos, -1, rx346_fail
    jump $I10
  rx346_done:
    rx346_cur."!cursor_fail"()
    if_null rx346_debug, debug_439
    rx346_cur."!cursor_debug"("FAIL", "charspec")
  debug_439:
    .return (rx346_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1304523734.668") :method :outer("11_1304523734.668")
.annotate 'line', 42
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
.sub "O"  :subid("105_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357 :optional
    .param int has_param_357 :opt_flag
.annotate 'line', 177
    .lex "self", param_355
    .lex "$spec", param_356
    if has_param_357, optparam_440
    new $P358, "Undef"
    set param_357, $P358
  optparam_440:
    .lex "$save", param_357
.annotate 'line', 178

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
        
.annotate 'line', 177
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic"  :subid("106_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_360
    .param pmc param_361 :slurpy
.annotate 'line', 325
    .lex "self", param_360
    .lex "@args", param_361
.annotate 'line', 326
    new $P362, "Undef"
    .lex "$pos", $P362
.annotate 'line', 327
    new $P363, "Undef"
    .lex "$target", $P363
.annotate 'line', 326
    find_lex $P364, "self"
    $P365 = $P364."pos"()
    store_lex "$pos", $P365
.annotate 'line', 327
    find_lex $P366, "self"
    get_hll_global $P367, "GLOBAL"
    nqp_get_package_through_who $P368, $P367, "Regex"
    get_who $P369, $P368
    set $P370, $P369["Cursor"]
    getattribute $P371, $P366, $P370, "$!target"
    store_lex "$target", $P371
.annotate 'line', 328
    find_lex $P372, "@args"
    unless_null $P372, vivify_441
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_441:
    $P372."push"(" at line ")
.annotate 'line', 329
    find_lex $P373, "@args"
    unless_null $P373, vivify_442
    $P373 = root_new ['parrot';'ResizablePMCArray']
  vivify_442:
    get_hll_global $P374, "GLOBAL"
    nqp_get_package_through_who $P375, $P374, "HLL"
    get_who $P376, $P375
    set $P377, $P376["Compiler"]
    find_lex $P378, "$target"
    unless_null $P378, vivify_443
    new $P378, "Undef"
  vivify_443:
    find_lex $P379, "$pos"
    unless_null $P379, vivify_444
    new $P379, "Undef"
  vivify_444:
    $P380 = $P377."lineof"($P378, $P379)
    add $P381, $P380, 1
    $P373."push"($P381)
.annotate 'line', 330
    find_lex $P382, "@args"
    unless_null $P382, vivify_445
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_445:
    $P382."push"(", near \"")
.annotate 'line', 331
    find_lex $P383, "@args"
    unless_null $P383, vivify_446
    $P383 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    find_lex $P384, "$target"
    unless_null $P384, vivify_447
    new $P384, "Undef"
  vivify_447:
    set $S385, $P384
    find_lex $P386, "$pos"
    unless_null $P386, vivify_448
    new $P386, "Undef"
  vivify_448:
    set $I387, $P386
    substr $S388, $S385, $I387, 10
    escape $S389, $S388
    $P383."push"($S389)
.annotate 'line', 332
    find_lex $P390, "@args"
    unless_null $P390, vivify_449
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_449:
    $P390."push"("\"")
.annotate 'line', 333
    find_lex $P391, "@args"
    unless_null $P391, vivify_450
    $P391 = root_new ['parrot';'ResizablePMCArray']
  vivify_450:
    join $S392, "", $P391
    die $S392
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_394
    .param pmc param_395
    .param pmc param_396
.annotate 'line', 346
    .lex "self", param_394
    .lex "$target", param_395
    .lex "$pos", param_396
.annotate 'line', 347

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
        
.annotate 'line', 346
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR"  :subid("108_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_398
    .param pmc param_399 :slurpy
.annotate 'line', 408
    .lex "self", param_398
    .lex "@args", param_399
.annotate 'line', 409

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
        
.annotate 'line', 408
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check"  :subid("109_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_401
    .param pmc param_402
.annotate 'line', 479
    .lex "self", param_401
    .lex "$mod", param_402
    find_lex $P403, "$mod"
    unless_null $P403, vivify_451
    new $P403, "Undef"
  vivify_451:
    find_dynamic_lex $P406, "%*QUOTEMOD"
    unless_null $P406, vivify_452
    get_hll_global $P404, "GLOBAL"
    get_who $P405, $P404
    set $P406, $P405["%QUOTEMOD"]
    unless_null $P406, vivify_453
    die "Contextual %*QUOTEMOD not found"
  vivify_453:
  vivify_452:
    set $P407, $P406[$P403]
    unless_null $P407, vivify_454
    new $P407, "Undef"
  vivify_454:
    .return ($P407)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_409
.annotate 'line', 483
    .lex "self", param_409
.annotate 'line', 484

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
        
.annotate 'line', 483
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper"  :subid("111_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_411
.annotate 'line', 506
    .lex "self", param_411
.annotate 'line', 507

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
        
.annotate 'line', 506
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words"  :subid("112_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_413
    .param pmc param_414
.annotate 'line', 529
    .lex "self", param_413
    .lex "$words", param_414
.annotate 'line', 530

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
        
.annotate 'line', 529
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR"  :subid("113_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_416
    .param pmc param_417 :optional
    .param int has_param_417 :opt_flag
.annotate 'line', 561
    .lex "self", param_416
    if has_param_417, optparam_455
    new $P418, "String"
    assign $P418, ""
    set param_417, $P418
  optparam_455:
    .lex "$preclim", param_417
.annotate 'line', 562

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

            .const 'Sub' reduce = 'EXPR_reduce'
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
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            capture_lex reduce
            self.reduce(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            capture_lex reduce
            self.reduce(termstack, opstack)
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
        
.annotate 'line', 561
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce"  :subid("114_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_420
    .param pmc param_421
    .param pmc param_422
.annotate 'line', 739
    .lex "self", param_420
    .lex "$termstack", param_421
    .lex "$opstack", param_422
.annotate 'line', 740

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
        
.annotate 'line', 739
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary"  :subid("115_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_424
    .param pmc param_425
.annotate 'line', 811
    .lex "self", param_424
    .lex "$match", param_425
.annotate 'line', 812
    find_lex $P426, "$match"
    unless_null $P426, vivify_456
    $P426 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    set $P427, $P426[1]
    unless_null $P427, vivify_457
    new $P427, "Undef"
  vivify_457:
    find_lex $P428, "$match"
    unless_null $P428, vivify_458
    $P428 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P428
  vivify_458:
    set $P428[2], $P427
.annotate 'line', 813
    find_lex $P429, "$match"
    unless_null $P429, vivify_459
    $P429 = root_new ['parrot';'Hash']
  vivify_459:
    set $P430, $P429["infix"]
    unless_null $P430, vivify_460
    $P430 = root_new ['parrot';'Hash']
  vivify_460:
    set $P431, $P430["EXPR"]
    unless_null $P431, vivify_461
    new $P431, "Undef"
  vivify_461:
    find_lex $P432, "$match"
    unless_null $P432, vivify_462
    $P432 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P432
  vivify_462:
    set $P432[1], $P431
.annotate 'line', 811
    .return ($P431)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_434
    .param pmc param_435
.annotate 'line', 816
    .lex "self", param_434
    .lex "$markname", param_435
.annotate 'line', 817
    new $P436, "Undef"
    .lex "$pos", $P436
.annotate 'line', 819
    $P437 = root_new ['parrot';'Hash']
    .lex "%markhash", $P437
.annotate 'line', 817
    find_lex $P438, "self"
    $P439 = $P438."pos"()
    store_lex "$pos", $P439
.annotate 'line', 818
    find_lex $P440, "self"
    find_lex $P441, "$markname"
    unless_null $P441, vivify_463
    new $P441, "Undef"
  vivify_463:
    find_lex $P442, "$pos"
    unless_null $P442, vivify_464
    new $P442, "Undef"
  vivify_464:
    $P440."!cursor_debug"("START", "MARKER name=", $P441, ", pos=", $P442)
.annotate 'line', 819

            $P443 = get_global '%!MARKHASH'
            unless null $P443 goto have_markhash
            $P443 = new ['Hash']
            set_global '%!MARKHASH', $P443
          have_markhash:
        
    store_lex "%markhash", $P443
.annotate 'line', 826
    find_lex $P444, "$pos"
    unless_null $P444, vivify_465
    new $P444, "Undef"
  vivify_465:
    find_lex $P445, "$markname"
    unless_null $P445, vivify_466
    new $P445, "Undef"
  vivify_466:
    find_lex $P446, "%markhash"
    unless_null $P446, vivify_467
    $P446 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P446
  vivify_467:
    set $P446[$P445], $P444
.annotate 'line', 827
    find_lex $P447, "self"
    $P447."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_449
    .param pmc param_450
.annotate 'line', 831
    .lex "self", param_449
    .lex "$markname", param_450
.annotate 'line', 832
    find_lex $P451, "self"
    find_lex $P452, "$markname"
    unless_null $P452, vivify_468
    new $P452, "Undef"
  vivify_468:
    $P451."!cursor_debug"("START", "MARKED name=", $P452)
.annotate 'line', 833

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
        
.annotate 'line', 831
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG"  :subid("118_1304523734.668") :outer("11_1304523734.668")
    .param pmc param_454
    .param pmc param_455
    .param pmc param_456
.annotate 'line', 851
    .lex "self", param_454
    .lex "$lang", param_455
    .lex "$regex", param_456
.annotate 'line', 852
    new $P457, "Undef"
    .lex "$lang_cursor", $P457
.annotate 'line', 853
    new $P458, "Undef"
    .lex "$*ACTIONS", $P458
.annotate 'line', 854
    new $P459, "Undef"
    .lex "$cur", $P459
.annotate 'line', 852
    find_lex $P460, "$lang"
    unless_null $P460, vivify_469
    new $P460, "Undef"
  vivify_469:
    find_dynamic_lex $P463, "%*LANG"
    unless_null $P463, vivify_470
    get_hll_global $P461, "GLOBAL"
    get_who $P462, $P461
    set $P463, $P462["%LANG"]
    unless_null $P463, vivify_471
    die "Contextual %*LANG not found"
  vivify_471:
  vivify_470:
    set $P464, $P463[$P460]
    unless_null $P464, vivify_472
    new $P464, "Undef"
  vivify_472:
    store_lex "$lang_cursor", $P464
.annotate 'line', 853
    find_lex $P465, "$lang"
    unless_null $P465, vivify_473
    new $P465, "Undef"
  vivify_473:
    concat $P466, $P465, "-actions"
    find_dynamic_lex $P469, "%*LANG"
    unless_null $P469, vivify_474
    get_hll_global $P467, "GLOBAL"
    get_who $P468, $P467
    set $P469, $P468["%LANG"]
    unless_null $P469, vivify_475
    die "Contextual %*LANG not found"
  vivify_475:
  vivify_474:
    set $P470, $P469[$P466]
    unless_null $P470, vivify_476
    new $P470, "Undef"
  vivify_476:
    store_lex "$*ACTIONS", $P470
.annotate 'line', 854

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P471, pos) = self.'!cursor_start'($P0)
            $P471.'!cursor_pos'(pos)
        
    store_lex "$cur", $P471
.annotate 'line', 862
    find_lex $P472, "$cur"
    unless_null $P472, vivify_477
    new $P472, "Undef"
  vivify_477:
    find_lex $P473, "$regex"
    unless_null $P473, vivify_478
    new $P473, "Undef"
  vivify_478:
    set $S474, $P473
    $P475 = $P472.$S474()
.annotate 'line', 851
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block477"  :subid("119_1304523734.668") :outer("10_1304523734.668")
.annotate 'line', 867
    .const 'Sub' $P1146 = "164_1304523734.668" 
    capture_lex $P1146
    .const 'Sub' $P1123 = "162_1304523734.668" 
    capture_lex $P1123
    .const 'Sub' $P1095 = "161_1304523734.668" 
    capture_lex $P1095
    .const 'Sub' $P1078 = "160_1304523734.668" 
    capture_lex $P1078
    .const 'Sub' $P1073 = "159_1304523734.668" 
    capture_lex $P1073
    .const 'Sub' $P1065 = "158_1304523734.668" 
    capture_lex $P1065
    .const 'Sub' $P1050 = "157_1304523734.668" 
    capture_lex $P1050
    .const 'Sub' $P1035 = "156_1304523734.668" 
    capture_lex $P1035
    .const 'Sub' $P1030 = "155_1304523734.668" 
    capture_lex $P1030
    .const 'Sub' $P1025 = "154_1304523734.668" 
    capture_lex $P1025
    .const 'Sub' $P1020 = "153_1304523734.668" 
    capture_lex $P1020
    .const 'Sub' $P1015 = "152_1304523734.668" 
    capture_lex $P1015
    .const 'Sub' $P1010 = "151_1304523734.668" 
    capture_lex $P1010
    .const 'Sub' $P1005 = "150_1304523734.668" 
    capture_lex $P1005
    .const 'Sub' $P997 = "149_1304523734.668" 
    capture_lex $P997
    .const 'Sub' $P992 = "148_1304523734.668" 
    capture_lex $P992
    .const 'Sub' $P978 = "147_1304523734.668" 
    capture_lex $P978
    .const 'Sub' $P896 = "145_1304523734.668" 
    capture_lex $P896
    .const 'Sub' $P819 = "142_1304523734.668" 
    capture_lex $P819
    .const 'Sub' $P812 = "141_1304523734.668" 
    capture_lex $P812
    .const 'Sub' $P805 = "140_1304523734.668" 
    capture_lex $P805
    .const 'Sub' $P798 = "139_1304523734.668" 
    capture_lex $P798
    .const 'Sub' $P791 = "138_1304523734.668" 
    capture_lex $P791
    .const 'Sub' $P784 = "137_1304523734.668" 
    capture_lex $P784
    .const 'Sub' $P776 = "136_1304523734.668" 
    capture_lex $P776
    .const 'Sub' $P768 = "135_1304523734.668" 
    capture_lex $P768
    .const 'Sub' $P762 = "134_1304523734.668" 
    capture_lex $P762
    .const 'Sub' $P754 = "133_1304523734.668" 
    capture_lex $P754
    .const 'Sub' $P746 = "132_1304523734.668" 
    capture_lex $P746
    .const 'Sub' $P638 = "129_1304523734.668" 
    capture_lex $P638
    .const 'Sub' $P598 = "126_1304523734.668" 
    capture_lex $P598
    .const 'Sub' $P590 = "125_1304523734.668" 
    capture_lex $P590
    .const 'Sub' $P551 = "122_1304523734.668" 
    capture_lex $P551
    .const 'Sub' $P479 = "120_1304523734.668" 
    capture_lex $P479
.annotate 'line', 868
    .const 'Sub' $P479 = "120_1304523734.668" 
    newclosure $P547, $P479
    .lex "string_to_int", $P547
.annotate 'line', 867
    find_lex $P548, "string_to_int"
    find_lex $P549, "$?PACKAGE"
    get_who $P550, $P549
    set $P550["string_to_int"], $P548
.annotate 'line', 887
    .const 'Sub' $P551 = "122_1304523734.668" 
    newclosure $P582, $P551
    .lex "ints_to_string", $P582
.annotate 'line', 867
    find_lex $P583, "ints_to_string"
    find_lex $P584, "$?PACKAGE"
    get_who $P585, $P584
    set $P585["ints_to_string"], $P583
    .lex "$?PACKAGE", $P586
    .lex "$?CLASS", $P587
    find_lex $P588, "string_to_int"
    find_lex $P589, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1146 = "164_1304523734.668" 
    newclosure $P1161, $P1146
.annotate 'line', 867
    .return ($P1161)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("120_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_480
    .param pmc param_481
.annotate 'line', 868
    .const 'Sub' $P497 = "121_1304523734.668" 
    capture_lex $P497
    .lex "$src", param_480
    .lex "$base", param_481
.annotate 'line', 869
    new $P482, "Undef"
    .lex "$len", $P482
.annotate 'line', 870
    new $P483, "Undef"
    .lex "$i", $P483
.annotate 'line', 871
    new $P484, "Undef"
    .lex "$result", $P484
.annotate 'line', 869
    find_lex $P485, "$src"
    unless_null $P485, vivify_479
    new $P485, "Undef"
  vivify_479:
    set $S486, $P485
    length $I487, $S486
    new $P488, 'Integer'
    set $P488, $I487
    store_lex "$len", $P488
.annotate 'line', 870
    new $P489, "Integer"
    assign $P489, 0
    store_lex "$i", $P489
.annotate 'line', 871
    new $P490, "Integer"
    assign $P490, 0
    store_lex "$result", $P490
.annotate 'line', 873
    new $P544, 'ExceptionHandler'
    set_label $P544, loop543_handler
    $P544."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P544
  loop543_test:
    find_lex $P491, "$i"
    unless_null $P491, vivify_480
    new $P491, "Undef"
  vivify_480:
    set $N492, $P491
    find_lex $P493, "$len"
    unless_null $P493, vivify_481
    new $P493, "Undef"
  vivify_481:
    set $N494, $P493
    islt $I495, $N492, $N494
    unless $I495, loop543_done
  loop543_redo:
    .const 'Sub' $P497 = "121_1304523734.668" 
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
    unless_null $P546, vivify_496
    new $P546, "Undef"
  vivify_496:
.annotate 'line', 868
    .return ($P546)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block496"  :anon :subid("121_1304523734.668") :outer("120_1304523734.668")
.annotate 'line', 874
    new $P498, "Undef"
    .lex "$char", $P498
.annotate 'line', 876
    new $P499, "Undef"
    .lex "$digitval", $P499
.annotate 'line', 874
    find_lex $P500, "$src"
    unless_null $P500, vivify_482
    new $P500, "Undef"
  vivify_482:
    set $S501, $P500
    find_lex $P502, "$i"
    unless_null $P502, vivify_483
    new $P502, "Undef"
  vivify_483:
    set $I503, $P502
    substr $S504, $S501, $I503, 1
    new $P505, 'String'
    set $P505, $S504
    store_lex "$char", $P505
.annotate 'line', 875
    find_lex $P507, "$char"
    unless_null $P507, vivify_484
    new $P507, "Undef"
  vivify_484:
    set $S508, $P507
    iseq $I509, $S508, "_"
    unless $I509, if_506_end
    set $I510, .CONTROL_LOOP_NEXT
    die 0, $I510
  if_506_end:
.annotate 'line', 876
    find_lex $P511, "$char"
    unless_null $P511, vivify_485
    new $P511, "Undef"
  vivify_485:
    set $S512, $P511
    index $I513, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S512
    new $P514, 'Integer'
    set $P514, $I513
    store_lex "$digitval", $P514
.annotate 'line', 877
    find_lex $P515, "$digitval"
    unless_null $P515, vivify_486
    new $P515, "Undef"
  vivify_486:
    div $P516, $P515, 2
    set $I517, $P516
    new $P518, 'Integer'
    set $P518, $I517
    store_lex "$digitval", $P518
.annotate 'line', 878
    find_lex $P522, "$digitval"
    unless_null $P522, vivify_487
    new $P522, "Undef"
  vivify_487:
    set $N523, $P522
    islt $I524, $N523, 0.0
    unless $I524, unless_521
    new $P520, 'Integer'
    set $P520, $I524
    goto unless_521_end
  unless_521:
    find_lex $P525, "$digitval"
    unless_null $P525, vivify_488
    new $P525, "Undef"
  vivify_488:
    set $N526, $P525
    find_lex $P527, "$base"
    unless_null $P527, vivify_489
    new $P527, "Undef"
  vivify_489:
    set $N528, $P527
    isge $I529, $N526, $N528
    new $P520, 'Integer'
    set $P520, $I529
  unless_521_end:
    unless $P520, if_519_end
.annotate 'line', 879
    find_lex $P530, "$src"
    unless_null $P530, vivify_490
    new $P530, "Undef"
  vivify_490:
    new $P531, 'String'
    set $P531, "Invalid radix conversion of character '"
    find_lex $P532, "$char"
    unless_null $P532, vivify_491
    new $P532, "Undef"
  vivify_491:
    concat $P533, $P531, $P532
    concat $P534, $P533, "'"
    $P530."panic"($P534)
  if_519_end:
.annotate 'line', 881
    find_lex $P535, "$base"
    unless_null $P535, vivify_492
    new $P535, "Undef"
  vivify_492:
    find_lex $P536, "$result"
    unless_null $P536, vivify_493
    new $P536, "Undef"
  vivify_493:
    mul $P537, $P535, $P536
    find_lex $P538, "$digitval"
    unless_null $P538, vivify_494
    new $P538, "Undef"
  vivify_494:
    add $P539, $P537, $P538
    store_lex "$result", $P539
.annotate 'line', 882
    find_lex $P540, "$i"
    unless_null $P540, vivify_495
    new $P540, "Undef"
  vivify_495:
    add $P541, $P540, 1
    store_lex "$i", $P541
    new $P542, "ResizablePMCArray"
    push $P542, $P539
    push $P542, $P541
.annotate 'line', 873
    .return ($P542)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("122_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_552
.annotate 'line', 887
    .const 'Sub' $P558 = "123_1304523734.668" 
    capture_lex $P558
    .lex "$ints", param_552
.annotate 'line', 888
    find_lex $P555, "$ints"
    unless_null $P555, vivify_497
    new $P555, "Undef"
  vivify_497:
    does $I556, $P555, "array"
    if $I556, if_554
.annotate 'line', 895
    find_lex $P578, "$ints"
    unless_null $P578, vivify_498
    new $P578, "Undef"
  vivify_498:
    $I579 = $P578."ast"()
    chr $S580, $I579
    new $P581, 'String'
    set $P581, $S580
.annotate 'line', 894
    set $P553, $P581
.annotate 'line', 888
    goto if_554_end
  if_554:
    .const 'Sub' $P558 = "123_1304523734.668" 
    capture_lex $P558
    $P577 = $P558()
    set $P553, $P577
  if_554_end:
.annotate 'line', 887
    .return ($P553)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block557"  :anon :subid("123_1304523734.668") :outer("122_1304523734.668")
.annotate 'line', 888
    .const 'Sub' $P566 = "124_1304523734.668" 
    capture_lex $P566
.annotate 'line', 889
    new $P559, "Undef"
    .lex "$result", $P559
    new $P560, "String"
    assign $P560, ""
    store_lex "$result", $P560
.annotate 'line', 890
    find_lex $P562, "$ints"
    unless_null $P562, vivify_499
    new $P562, "Undef"
  vivify_499:
    defined $I563, $P562
    unless $I563, for_undef_500
    iter $P561, $P562
    new $P574, 'ExceptionHandler'
    set_label $P574, loop573_handler
    $P574."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P574
  loop573_test:
    unless $P561, loop573_done
    shift $P564, $P561
  loop573_redo:
    .const 'Sub' $P566 = "124_1304523734.668" 
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
  for_undef_500:
    find_lex $P576, "$result"
    unless_null $P576, vivify_503
    new $P576, "Undef"
  vivify_503:
.annotate 'line', 888
    .return ($P576)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block565"  :anon :subid("124_1304523734.668") :outer("123_1304523734.668")
    .param pmc param_567
.annotate 'line', 890
    .lex "$_", param_567
.annotate 'line', 891
    find_lex $P568, "$result"
    unless_null $P568, vivify_501
    new $P568, "Undef"
  vivify_501:
    find_lex $P569, "$_"
    unless_null $P569, vivify_502
    new $P569, "Undef"
  vivify_502:
    $I570 = $P569."ast"()
    chr $S571, $I570
    concat $P572, $P568, $S571
    store_lex "$result", $P572
.annotate 'line', 890
    .return ($P572)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("125_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_591
.annotate 'line', 900
    .lex "self", param_591
.annotate 'line', 901
    get_hll_global $P592, "GLOBAL"
    nqp_get_package_through_who $P593, $P592, "PAST"
    get_who $P594, $P593
    set $P595, $P594["Op"]
.annotate 'line', 907
    new $P596, "ResizablePMCArray"
    push $P596, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P596, "    if null $P0 goto ctxsave_done"
    push $P596, "    $I0 = can $P0, \"ctxsave\""
    push $P596, "    unless $I0 goto ctxsave_done"
    push $P596, "    $P0.\"ctxsave\"()"
    push $P596, "  ctxsave_done:"
    $P597 = $P595."new"($P596 :named("inline"))
.annotate 'line', 900
    .return ($P597)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("126_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_599
    .param pmc param_600
.annotate 'line', 914
    .const 'Sub' $P612 = "127_1304523734.668" 
    capture_lex $P612
    .lex "self", param_599
    .lex "$block", param_600
.annotate 'line', 915
    new $P601, "Undef"
    .lex "$outer_ctx", $P601
    find_dynamic_lex $P604, "%*COMPILING"
    unless_null $P604, vivify_504
    get_hll_global $P602, "GLOBAL"
    get_who $P603, $P602
    set $P604, $P603["%COMPILING"]
    unless_null $P604, vivify_505
    die "Contextual %*COMPILING not found"
  vivify_505:
  vivify_504:
    set $P605, $P604["%?OPTIONS"]
    unless_null $P605, vivify_506
    $P605 = root_new ['parrot';'Hash']
  vivify_506:
    set $P606, $P605["outer_ctx"]
    unless_null $P606, vivify_507
    new $P606, "Undef"
  vivify_507:
    store_lex "$outer_ctx", $P606
.annotate 'line', 916
    find_lex $P609, "$outer_ctx"
    unless_null $P609, vivify_508
    new $P609, "Undef"
  vivify_508:
    defined $I610, $P609
    if $I610, if_608
    new $P607, 'Integer'
    set $P607, $I610
    goto if_608_end
  if_608:
    .const 'Sub' $P612 = "127_1304523734.668" 
    capture_lex $P612
    $P637 = $P612()
    set $P607, $P637
  if_608_end:
.annotate 'line', 914
    .return ($P607)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block611"  :anon :subid("127_1304523734.668") :outer("126_1304523734.668")
.annotate 'line', 916
    .const 'Sub' $P626 = "128_1304523734.668" 
    capture_lex $P626
.annotate 'line', 917
    $P613 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P613
    find_lex $P614, "$outer_ctx"
    unless_null $P614, vivify_509
    new $P614, "Undef"
  vivify_509:
    getattribute $P615, $P614, "current_namespace"
    $P616 = $P615."get_name"()
    store_lex "@ns", $P616
.annotate 'line', 918
    find_lex $P617, "@ns"
    unless_null $P617, vivify_510
    $P617 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    $P617."shift"()
.annotate 'line', 919
    find_lex $P618, "$block"
    unless_null $P618, vivify_511
    new $P618, "Undef"
  vivify_511:
    find_lex $P619, "@ns"
    unless_null $P619, vivify_512
    $P619 = root_new ['parrot';'ResizablePMCArray']
  vivify_512:
    $P618."namespace"($P619)
.annotate 'line', 920
    find_lex $P621, "$outer_ctx"
    unless_null $P621, vivify_513
    new $P621, "Undef"
  vivify_513:
    $P622 = $P621."lexpad_full"()
    defined $I623, $P622
    unless $I623, for_undef_514
    iter $P620, $P622
    new $P635, 'ExceptionHandler'
    set_label $P635, loop634_handler
    $P635."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P635
  loop634_test:
    unless $P620, loop634_done
    shift $P624, $P620
  loop634_redo:
    .const 'Sub' $P626 = "128_1304523734.668" 
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
  for_undef_514:
.annotate 'line', 916
    .return ($P620)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block625"  :anon :subid("128_1304523734.668") :outer("127_1304523734.668")
    .param pmc param_627
.annotate 'line', 920
    .lex "$_", param_627
.annotate 'line', 921
    find_lex $P628, "$block"
    unless_null $P628, vivify_515
    new $P628, "Undef"
  vivify_515:
    find_lex $P629, "$_"
    unless_null $P629, vivify_516
    new $P629, "Undef"
  vivify_516:
    $P630 = $P629."key"()
    find_lex $P631, "$_"
    unless_null $P631, vivify_517
    new $P631, "Undef"
  vivify_517:
    $P632 = $P631."value"()
    $P633 = $P628."symbol"($P630, "lexical" :named("scope"), $P632 :named("value"))
.annotate 'line', 920
    .return ($P633)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("129_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_641
    .param pmc param_642
    .param pmc param_643 :optional
    .param int has_param_643 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P728 = "131_1304523734.668" 
    capture_lex $P728
    .const 'Sub' $P692 = "130_1304523734.668" 
    capture_lex $P692
    new $P640, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P640, control_639
    push_eh $P640
    .lex "self", param_641
    .lex "$/", param_642
    if has_param_643, optparam_518
    new $P644, "Undef"
    set param_643, $P644
  optparam_518:
    .lex "$key", param_643
.annotate 'line', 929
    new $P645, "Undef"
    .lex "$past", $P645
.annotate 'line', 928
    find_lex $P647, "$key"
    unless_null $P647, vivify_519
    new $P647, "Undef"
  vivify_519:
    if $P647, unless_646_end
    new $P648, "Exception"
    set $P648['type'], .CONTROL_RETURN
    new $P649, "Integer"
    assign $P649, 0
    setattribute $P648, 'payload', $P649
    throw $P648
  unless_646_end:
.annotate 'line', 929
    find_lex $P651, "$/"
    unless_null $P651, vivify_520
    new $P651, "Undef"
  vivify_520:
    $P652 = $P651."ast"()
    set $P650, $P652
    defined $I654, $P650
    if $I654, default_653
    find_lex $P655, "$/"
    unless_null $P655, vivify_521
    $P655 = root_new ['parrot';'Hash']
  vivify_521:
    set $P656, $P655["OPER"]
    unless_null $P656, vivify_522
    new $P656, "Undef"
  vivify_522:
    $P657 = $P656."ast"()
    set $P650, $P657
  default_653:
    store_lex "$past", $P650
.annotate 'line', 930
    find_lex $P659, "$past"
    unless_null $P659, vivify_523
    new $P659, "Undef"
  vivify_523:
    if $P659, unless_658_end
.annotate 'line', 931
    get_hll_global $P660, "GLOBAL"
    nqp_get_package_through_who $P661, $P660, "PAST"
    get_who $P662, $P661
    set $P663, $P662["Op"]
    find_lex $P664, "$/"
    unless_null $P664, vivify_524
    new $P664, "Undef"
  vivify_524:
    $P665 = $P663."new"($P664 :named("node"))
    store_lex "$past", $P665
.annotate 'line', 932
    find_lex $P667, "$/"
    unless_null $P667, vivify_525
    $P667 = root_new ['parrot';'Hash']
  vivify_525:
    set $P668, $P667["OPER"]
    unless_null $P668, vivify_526
    $P668 = root_new ['parrot';'Hash']
  vivify_526:
    set $P669, $P668["O"]
    unless_null $P669, vivify_527
    $P669 = root_new ['parrot';'Hash']
  vivify_527:
    set $P670, $P669["pasttype"]
    unless_null $P670, vivify_528
    new $P670, "Undef"
  vivify_528:
    if $P670, if_666
.annotate 'line', 933
    find_lex $P678, "$/"
    unless_null $P678, vivify_529
    $P678 = root_new ['parrot';'Hash']
  vivify_529:
    set $P679, $P678["OPER"]
    unless_null $P679, vivify_530
    $P679 = root_new ['parrot';'Hash']
  vivify_530:
    set $P680, $P679["O"]
    unless_null $P680, vivify_531
    $P680 = root_new ['parrot';'Hash']
  vivify_531:
    set $P681, $P680["pirop"]
    unless_null $P681, vivify_532
    new $P681, "Undef"
  vivify_532:
    unless $P681, if_677_end
    find_lex $P682, "$past"
    unless_null $P682, vivify_533
    new $P682, "Undef"
  vivify_533:
    find_lex $P683, "$/"
    unless_null $P683, vivify_534
    $P683 = root_new ['parrot';'Hash']
  vivify_534:
    set $P684, $P683["OPER"]
    unless_null $P684, vivify_535
    $P684 = root_new ['parrot';'Hash']
  vivify_535:
    set $P685, $P684["O"]
    unless_null $P685, vivify_536
    $P685 = root_new ['parrot';'Hash']
  vivify_536:
    set $P686, $P685["pirop"]
    unless_null $P686, vivify_537
    new $P686, "Undef"
  vivify_537:
    set $S687, $P686
    $P682."pirop"($S687)
  if_677_end:
    goto if_666_end
  if_666:
.annotate 'line', 932
    find_lex $P671, "$past"
    unless_null $P671, vivify_538
    new $P671, "Undef"
  vivify_538:
    find_lex $P672, "$/"
    unless_null $P672, vivify_539
    $P672 = root_new ['parrot';'Hash']
  vivify_539:
    set $P673, $P672["OPER"]
    unless_null $P673, vivify_540
    $P673 = root_new ['parrot';'Hash']
  vivify_540:
    set $P674, $P673["O"]
    unless_null $P674, vivify_541
    $P674 = root_new ['parrot';'Hash']
  vivify_541:
    set $P675, $P674["pasttype"]
    unless_null $P675, vivify_542
    new $P675, "Undef"
  vivify_542:
    set $S676, $P675
    $P671."pasttype"($S676)
  if_666_end:
.annotate 'line', 934
    find_lex $P689, "$past"
    unless_null $P689, vivify_543
    new $P689, "Undef"
  vivify_543:
    $P690 = $P689."name"()
    if $P690, unless_688_end
    .const 'Sub' $P692 = "130_1304523734.668" 
    capture_lex $P692
    $P692()
  unless_688_end:
  unless_658_end:
.annotate 'line', 940
    find_lex $P715, "$key"
    unless_null $P715, vivify_551
    new $P715, "Undef"
  vivify_551:
    set $S716, $P715
    iseq $I717, $S716, "POSTFIX"
    if $I717, if_714
.annotate 'line', 942
    find_lex $P723, "$/"
    unless_null $P723, vivify_552
    new $P723, "Undef"
  vivify_552:
    $P724 = $P723."list"()
    defined $I725, $P724
    unless $I725, for_undef_553
    iter $P722, $P724
    new $P740, 'ExceptionHandler'
    set_label $P740, loop739_handler
    $P740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P740
  loop739_test:
    unless $P722, loop739_done
    shift $P726, $P722
  loop739_redo:
    .const 'Sub' $P728 = "131_1304523734.668" 
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
  for_undef_553:
.annotate 'line', 941
    goto if_714_end
  if_714:
.annotate 'line', 940
    find_lex $P718, "$past"
    unless_null $P718, vivify_557
    new $P718, "Undef"
  vivify_557:
    find_lex $P719, "$/"
    unless_null $P719, vivify_558
    $P719 = root_new ['parrot';'ResizablePMCArray']
  vivify_558:
    set $P720, $P719[0]
    unless_null $P720, vivify_559
    new $P720, "Undef"
  vivify_559:
    $P721 = $P720."ast"()
    $P718."unshift"($P721)
  if_714_end:
.annotate 'line', 944
    find_lex $P742, "$/"
    find_lex $P743, "$past"
    unless_null $P743, vivify_560
    new $P743, "Undef"
  vivify_560:
    $P744 = $P742."!make"($P743)
.annotate 'line', 927
    .return ($P744)
  control_639:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P745, exception, "payload"
    .return ($P745)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block691"  :anon :subid("130_1304523734.668") :outer("129_1304523734.668")
.annotate 'line', 936
    new $P693, "Undef"
    .lex "$name", $P693
.annotate 'line', 935
    find_lex $P695, "$key"
    unless_null $P695, vivify_544
    new $P695, "Undef"
  vivify_544:
    set $S696, $P695
    iseq $I697, $S696, "LIST"
    unless $I697, if_694_end
    new $P698, "String"
    assign $P698, "infix"
    store_lex "$key", $P698
  if_694_end:
.annotate 'line', 936
    find_lex $P699, "$key"
    unless_null $P699, vivify_545
    new $P699, "Undef"
  vivify_545:
    set $S700, $P699
    downcase $S701, $S700
    new $P702, 'String'
    set $P702, $S701
    concat $P703, $P702, ":<"
    find_lex $P704, "$/"
    unless_null $P704, vivify_546
    $P704 = root_new ['parrot';'Hash']
  vivify_546:
    set $P705, $P704["OPER"]
    unless_null $P705, vivify_547
    $P705 = root_new ['parrot';'Hash']
  vivify_547:
    set $P706, $P705["sym"]
    unless_null $P706, vivify_548
    new $P706, "Undef"
  vivify_548:
    concat $P707, $P703, $P706
    concat $P708, $P707, ">"
    store_lex "$name", $P708
.annotate 'line', 937
    find_lex $P709, "$past"
    unless_null $P709, vivify_549
    new $P709, "Undef"
  vivify_549:
    new $P710, "String"
    assign $P710, "&"
    find_lex $P711, "$name"
    unless_null $P711, vivify_550
    new $P711, "Undef"
  vivify_550:
    concat $P712, $P710, $P711
    $P713 = $P709."name"($P712)
.annotate 'line', 934
    .return ($P713)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block727"  :anon :subid("131_1304523734.668") :outer("129_1304523734.668")
    .param pmc param_729
.annotate 'line', 942
    .lex "$_", param_729
    find_lex $P732, "$_"
    unless_null $P732, vivify_554
    new $P732, "Undef"
  vivify_554:
    $P733 = $P732."ast"()
    defined $I734, $P733
    if $I734, if_731
    new $P730, 'Integer'
    set $P730, $I734
    goto if_731_end
  if_731:
    find_lex $P735, "$past"
    unless_null $P735, vivify_555
    new $P735, "Undef"
  vivify_555:
    find_lex $P736, "$_"
    unless_null $P736, vivify_556
    new $P736, "Undef"
  vivify_556:
    $P737 = $P736."ast"()
    $P738 = $P735."push"($P737)
    set $P730, $P738
  if_731_end:
    .return ($P730)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("132_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_747
    .param pmc param_748
.annotate 'line', 947
    .lex "self", param_747
    .lex "$/", param_748
    find_lex $P749, "$/"
    find_lex $P750, "$/"
    unless_null $P750, vivify_561
    $P750 = root_new ['parrot';'Hash']
  vivify_561:
    set $P751, $P750["circumfix"]
    unless_null $P751, vivify_562
    new $P751, "Undef"
  vivify_562:
    $P752 = $P751."ast"()
    $P753 = $P749."!make"($P752)
    .return ($P753)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("133_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_755
    .param pmc param_756
.annotate 'line', 949
    .lex "self", param_755
    .lex "$/", param_756
    find_lex $P757, "$/"
    find_lex $P758, "$/"
    unless_null $P758, vivify_563
    $P758 = root_new ['parrot';'Hash']
  vivify_563:
    set $P759, $P758["term"]
    unless_null $P759, vivify_564
    new $P759, "Undef"
  vivify_564:
    $P760 = $P759."ast"()
    $P761 = $P757."!make"($P760)
    .return ($P761)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("134_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_763
    .param pmc param_764
.annotate 'line', 950
    .lex "self", param_763
    .lex "$/", param_764
    find_lex $P765, "$/"
    new $P766, "Undef"
    $P767 = $P765."!make"($P766)
    .return ($P767)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("135_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_769
    .param pmc param_770
.annotate 'line', 951
    .lex "self", param_769
    .lex "$/", param_770
    find_lex $P771, "$/"
    find_lex $P772, "$/"
    unless_null $P772, vivify_565
    $P772 = root_new ['parrot';'Hash']
  vivify_565:
    set $P773, $P772["term"]
    unless_null $P773, vivify_566
    new $P773, "Undef"
  vivify_566:
    $P774 = $P773."ast"()
    $P775 = $P771."!make"($P774)
    .return ($P775)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("136_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_777
    .param pmc param_778
.annotate 'line', 953
    .lex "self", param_777
    .lex "$/", param_778
    find_lex $P779, "$/"
    find_lex $P780, "$/"
    unless_null $P780, vivify_567
    $P780 = root_new ['parrot';'Hash']
  vivify_567:
    set $P781, $P780["VALUE"]
    unless_null $P781, vivify_568
    new $P781, "Undef"
  vivify_568:
    $P782 = $P781."ast"()
    $P783 = $P779."!make"($P782)
    .return ($P783)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("137_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_785
    .param pmc param_786
.annotate 'line', 955
    .lex "self", param_785
    .lex "$/", param_786
    find_lex $P787, "$/"
    find_lex $P788, "$/"
    unless_null $P788, vivify_569
    new $P788, "Undef"
  vivify_569:
    set $N789, $P788
    $P790 = $P787."!make"($N789)
    .return ($P790)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("138_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_792
    .param pmc param_793
.annotate 'line', 957
    .lex "self", param_792
    .lex "$/", param_793
    find_lex $P794, "$/"
    find_lex $P795, "$/"
    unless_null $P795, vivify_570
    new $P795, "Undef"
  vivify_570:
    $P796 = "string_to_int"($P795, 10)
    $P797 = $P794."!make"($P796)
    .return ($P797)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("139_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_799
    .param pmc param_800
.annotate 'line', 958
    .lex "self", param_799
    .lex "$/", param_800
    find_lex $P801, "$/"
    find_lex $P802, "$/"
    unless_null $P802, vivify_571
    new $P802, "Undef"
  vivify_571:
    $P803 = "string_to_int"($P802, 16)
    $P804 = $P801."!make"($P803)
    .return ($P804)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("140_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_806
    .param pmc param_807
.annotate 'line', 959
    .lex "self", param_806
    .lex "$/", param_807
    find_lex $P808, "$/"
    find_lex $P809, "$/"
    unless_null $P809, vivify_572
    new $P809, "Undef"
  vivify_572:
    $P810 = "string_to_int"($P809, 8)
    $P811 = $P808."!make"($P810)
    .return ($P811)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("141_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_813
    .param pmc param_814
.annotate 'line', 960
    .lex "self", param_813
    .lex "$/", param_814
    find_lex $P815, "$/"
    find_lex $P816, "$/"
    unless_null $P816, vivify_573
    new $P816, "Undef"
  vivify_573:
    $P817 = "string_to_int"($P816, 2)
    $P818 = $P815."!make"($P817)
    .return ($P818)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("142_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_820
    .param pmc param_821
.annotate 'line', 962
    .const 'Sub' $P840 = "143_1304523734.668" 
    capture_lex $P840
    .lex "self", param_820
    .lex "$/", param_821
.annotate 'line', 963
    new $P822, "Undef"
    .lex "$past", $P822
    find_lex $P823, "$/"
    unless_null $P823, vivify_574
    $P823 = root_new ['parrot';'Hash']
  vivify_574:
    set $P824, $P823["quote_delimited"]
    unless_null $P824, vivify_575
    new $P824, "Undef"
  vivify_575:
    $P825 = $P824."ast"()
    store_lex "$past", $P825
.annotate 'line', 964
    find_lex $P827, "$/"
    unless_null $P827, vivify_576
    new $P827, "Undef"
  vivify_576:
    $P828 = $P827."CURSOR"()
    $P829 = $P828."quotemod_check"("w")
    unless $P829, if_826_end
.annotate 'line', 965
    get_hll_global $P831, "GLOBAL"
    nqp_get_package_through_who $P832, $P831, "PAST"
    get_who $P833, $P832
    set $P834, $P833["Node"]
    find_lex $P835, "$past"
    unless_null $P835, vivify_577
    new $P835, "Undef"
  vivify_577:
    $P836 = $P834."ACCEPTS"($P835)
    if $P836, if_830
.annotate 'line', 968
    .const 'Sub' $P840 = "143_1304523734.668" 
    capture_lex $P840
    $P840()
    goto if_830_end
  if_830:
.annotate 'line', 966
    find_lex $P837, "$/"
    unless_null $P837, vivify_588
    new $P837, "Undef"
  vivify_588:
    $P838 = $P837."CURSOR"()
    $P838."panic"("Can't form :w list from non-constant strings (yet)")
  if_830_end:
  if_826_end:
.annotate 'line', 979
    get_hll_global $P879, "GLOBAL"
    nqp_get_package_through_who $P880, $P879, "PAST"
    get_who $P881, $P880
    set $P882, $P881["Node"]
    find_lex $P883, "$past"
    unless_null $P883, vivify_589
    new $P883, "Undef"
  vivify_589:
    $P884 = $P882."ACCEPTS"($P883)
    isfalse $I885, $P884
    unless $I885, if_878_end
.annotate 'line', 980
    get_hll_global $P886, "GLOBAL"
    nqp_get_package_through_who $P887, $P886, "PAST"
    get_who $P888, $P887
    set $P889, $P888["Val"]
    find_lex $P890, "$past"
    unless_null $P890, vivify_590
    new $P890, "Undef"
  vivify_590:
    set $S891, $P890
    $P892 = $P889."new"($S891 :named("value"))
    store_lex "$past", $P892
  if_878_end:
.annotate 'line', 982
    find_lex $P893, "$/"
    find_lex $P894, "$past"
    unless_null $P894, vivify_591
    new $P894, "Undef"
  vivify_591:
    $P895 = $P893."!make"($P894)
.annotate 'line', 962
    .return ($P895)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block839"  :anon :subid("143_1304523734.668") :outer("142_1304523734.668")
.annotate 'line', 968
    .const 'Sub' $P866 = "144_1304523734.668" 
    capture_lex $P866
.annotate 'line', 969
    $P841 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P841
    get_hll_global $P842, "GLOBAL"
    nqp_get_package_through_who $P843, $P842, "HLL"
    nqp_get_package_through_who $P844, $P843, "Grammar"
    get_who $P845, $P844
    set $P846, $P845["split_words"]
    find_lex $P847, "$/"
    unless_null $P847, vivify_578
    new $P847, "Undef"
  vivify_578:
    find_lex $P848, "$past"
    unless_null $P848, vivify_579
    new $P848, "Undef"
  vivify_579:
    $P849 = $P846($P847, $P848)
    store_lex "@words", $P849
.annotate 'line', 970
    find_lex $P852, "@words"
    unless_null $P852, vivify_580
    $P852 = root_new ['parrot';'ResizablePMCArray']
  vivify_580:
    set $N853, $P852
    isne $I854, $N853, 1.0
    if $I854, if_851
.annotate 'line', 975
    find_lex $P874, "@words"
    unless_null $P874, vivify_581
    $P874 = root_new ['parrot';'ResizablePMCArray']
  vivify_581:
    set $P875, $P874[0]
    unless_null $P875, vivify_582
    new $P875, "Undef"
  vivify_582:
    set $S876, $P875
    new $P877, 'String'
    set $P877, $S876
    store_lex "$past", $P877
.annotate 'line', 974
    set $P850, $P877
.annotate 'line', 970
    goto if_851_end
  if_851:
.annotate 'line', 971
    get_hll_global $P855, "GLOBAL"
    nqp_get_package_through_who $P856, $P855, "PAST"
    get_who $P857, $P856
    set $P858, $P857["Op"]
    find_lex $P859, "$/"
    unless_null $P859, vivify_583
    new $P859, "Undef"
  vivify_583:
    $P860 = $P858."new"("list" :named("pasttype"), $P859 :named("node"))
    store_lex "$past", $P860
.annotate 'line', 972
    find_lex $P862, "@words"
    unless_null $P862, vivify_584
    $P862 = root_new ['parrot';'ResizablePMCArray']
  vivify_584:
    defined $I863, $P862
    unless $I863, for_undef_585
    iter $P861, $P862
    new $P872, 'ExceptionHandler'
    set_label $P872, loop871_handler
    $P872."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P872
  loop871_test:
    unless $P861, loop871_done
    shift $P864, $P861
  loop871_redo:
    .const 'Sub' $P866 = "144_1304523734.668" 
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
  for_undef_585:
.annotate 'line', 970
    set $P850, $P861
  if_851_end:
.annotate 'line', 968
    .return ($P850)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block865"  :anon :subid("144_1304523734.668") :outer("143_1304523734.668")
    .param pmc param_867
.annotate 'line', 972
    .lex "$_", param_867
    find_lex $P868, "$past"
    unless_null $P868, vivify_586
    new $P868, "Undef"
  vivify_586:
    find_lex $P869, "$_"
    unless_null $P869, vivify_587
    new $P869, "Undef"
  vivify_587:
    $P870 = $P868."push"($P869)
    .return ($P870)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("145_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_897
    .param pmc param_898
.annotate 'line', 985
    .const 'Sub' $P910 = "146_1304523734.668" 
    capture_lex $P910
    .lex "self", param_897
    .lex "$/", param_898
.annotate 'line', 986
    $P899 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P899
.annotate 'line', 987
    new $P900, "Undef"
    .lex "$lastlit", $P900
.annotate 'line', 1003
    new $P901, "Undef"
    .lex "$past", $P901
.annotate 'line', 985
    find_lex $P902, "@parts"
    unless_null $P902, vivify_592
    $P902 = root_new ['parrot';'ResizablePMCArray']
  vivify_592:
.annotate 'line', 987
    new $P903, "String"
    assign $P903, ""
    store_lex "$lastlit", $P903
.annotate 'line', 988
    find_lex $P905, "$/"
    unless_null $P905, vivify_593
    $P905 = root_new ['parrot';'Hash']
  vivify_593:
    set $P906, $P905["quote_atom"]
    unless_null $P906, vivify_594
    new $P906, "Undef"
  vivify_594:
    defined $I907, $P906
    unless $I907, for_undef_595
    iter $P904, $P906
    new $P949, 'ExceptionHandler'
    set_label $P949, loop948_handler
    $P949."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P949
  loop948_test:
    unless $P904, loop948_done
    shift $P908, $P904
  loop948_redo:
    .const 'Sub' $P910 = "146_1304523734.668" 
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
  for_undef_595:
.annotate 'line', 1002
    find_lex $P952, "$lastlit"
    unless_null $P952, vivify_608
    new $P952, "Undef"
  vivify_608:
    set $S953, $P952
    isgt $I954, $S953, ""
    unless $I954, if_951_end
    find_lex $P955, "@parts"
    unless_null $P955, vivify_609
    $P955 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    find_lex $P956, "$lastlit"
    unless_null $P956, vivify_610
    new $P956, "Undef"
  vivify_610:
    $P955."push"($P956)
  if_951_end:
.annotate 'line', 1003
    find_lex $P959, "@parts"
    unless_null $P959, vivify_611
    $P959 = root_new ['parrot';'ResizablePMCArray']
  vivify_611:
    if $P959, if_958
    new $P962, "String"
    assign $P962, ""
    set $P957, $P962
    goto if_958_end
  if_958:
    find_lex $P960, "@parts"
    unless_null $P960, vivify_612
    $P960 = root_new ['parrot';'ResizablePMCArray']
  vivify_612:
    $P961 = $P960."shift"()
    set $P957, $P961
  if_958_end:
    store_lex "$past", $P957
.annotate 'line', 1004
    new $P973, 'ExceptionHandler'
    set_label $P973, loop972_handler
    $P973."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P973
  loop972_test:
    find_lex $P963, "@parts"
    unless_null $P963, vivify_613
    $P963 = root_new ['parrot';'ResizablePMCArray']
  vivify_613:
    unless $P963, loop972_done
  loop972_redo:
.annotate 'line', 1005
    get_hll_global $P964, "GLOBAL"
    nqp_get_package_through_who $P965, $P964, "PAST"
    get_who $P966, $P965
    set $P967, $P966["Op"]
    find_lex $P968, "$past"
    unless_null $P968, vivify_614
    new $P968, "Undef"
  vivify_614:
    find_lex $P969, "@parts"
    unless_null $P969, vivify_615
    $P969 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    $P970 = $P969."shift"()
    $P971 = $P967."new"($P968, $P970, "concat" :named("pirop"))
    store_lex "$past", $P971
  loop972_next:
.annotate 'line', 1004
    goto loop972_test
  loop972_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P974, exception, 'type'
    eq $P974, .CONTROL_LOOP_NEXT, loop972_next
    eq $P974, .CONTROL_LOOP_REDO, loop972_redo
  loop972_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P975, "$/"
    find_lex $P976, "$past"
    unless_null $P976, vivify_616
    new $P976, "Undef"
  vivify_616:
    $P977 = $P975."!make"($P976)
.annotate 'line', 985
    .return ($P977)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block909"  :anon :subid("146_1304523734.668") :outer("145_1304523734.668")
    .param pmc param_912
.annotate 'line', 989
    new $P911, "Undef"
    .lex "$ast", $P911
    .lex "$_", param_912
    find_lex $P913, "$_"
    unless_null $P913, vivify_596
    new $P913, "Undef"
  vivify_596:
    $P914 = $P913."ast"()
    store_lex "$ast", $P914
.annotate 'line', 990
    get_hll_global $P917, "GLOBAL"
    nqp_get_package_through_who $P918, $P917, "PAST"
    get_who $P919, $P918
    set $P920, $P919["Node"]
    find_lex $P921, "$ast"
    unless_null $P921, vivify_597
    new $P921, "Undef"
  vivify_597:
    $P922 = $P920."ACCEPTS"($P921)
    isfalse $I923, $P922
    if $I923, if_916
.annotate 'line', 993
    find_lex $P929, "$ast"
    unless_null $P929, vivify_598
    new $P929, "Undef"
  vivify_598:
    get_hll_global $P930, "GLOBAL"
    nqp_get_package_through_who $P931, $P930, "PAST"
    get_who $P932, $P931
    set $P933, $P932["Val"]
    $P934 = $P929."isa"($P933)
    if $P934, if_928
.annotate 'line', 997
    find_lex $P940, "$lastlit"
    unless_null $P940, vivify_599
    new $P940, "Undef"
  vivify_599:
    set $S941, $P940
    isgt $I942, $S941, ""
    unless $I942, if_939_end
    find_lex $P943, "@parts"
    unless_null $P943, vivify_600
    $P943 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    find_lex $P944, "$lastlit"
    unless_null $P944, vivify_601
    new $P944, "Undef"
  vivify_601:
    $P943."push"($P944)
  if_939_end:
.annotate 'line', 998
    find_lex $P945, "@parts"
    unless_null $P945, vivify_602
    $P945 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    find_lex $P946, "$ast"
    unless_null $P946, vivify_603
    new $P946, "Undef"
  vivify_603:
    $P945."push"($P946)
.annotate 'line', 999
    new $P947, "String"
    assign $P947, ""
    store_lex "$lastlit", $P947
.annotate 'line', 996
    set $P927, $P947
.annotate 'line', 993
    goto if_928_end
  if_928:
.annotate 'line', 994
    find_lex $P935, "$lastlit"
    unless_null $P935, vivify_604
    new $P935, "Undef"
  vivify_604:
    find_lex $P936, "$ast"
    unless_null $P936, vivify_605
    new $P936, "Undef"
  vivify_605:
    $S937 = $P936."value"()
    concat $P938, $P935, $S937
    store_lex "$lastlit", $P938
.annotate 'line', 993
    set $P927, $P938
  if_928_end:
    set $P915, $P927
.annotate 'line', 990
    goto if_916_end
  if_916:
.annotate 'line', 991
    find_lex $P924, "$lastlit"
    unless_null $P924, vivify_606
    new $P924, "Undef"
  vivify_606:
    find_lex $P925, "$ast"
    unless_null $P925, vivify_607
    new $P925, "Undef"
  vivify_607:
    concat $P926, $P924, $P925
    store_lex "$lastlit", $P926
.annotate 'line', 990
    set $P915, $P926
  if_916_end:
.annotate 'line', 988
    .return ($P915)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("147_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 1010
    .lex "self", param_979
    .lex "$/", param_980
.annotate 'line', 1011
    find_lex $P981, "$/"
    find_lex $P984, "$/"
    unless_null $P984, vivify_617
    $P984 = root_new ['parrot';'Hash']
  vivify_617:
    set $P985, $P984["quote_escape"]
    unless_null $P985, vivify_618
    new $P985, "Undef"
  vivify_618:
    if $P985, if_983
    find_lex $P989, "$/"
    unless_null $P989, vivify_619
    new $P989, "Undef"
  vivify_619:
    set $S990, $P989
    new $P982, 'String'
    set $P982, $S990
    goto if_983_end
  if_983:
    find_lex $P986, "$/"
    unless_null $P986, vivify_620
    $P986 = root_new ['parrot';'Hash']
  vivify_620:
    set $P987, $P986["quote_escape"]
    unless_null $P987, vivify_621
    new $P987, "Undef"
  vivify_621:
    $P988 = $P987."ast"()
    set $P982, $P988
  if_983_end:
    $P991 = $P981."!make"($P982)
.annotate 'line', 1010
    .return ($P991)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("148_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_993
    .param pmc param_994
.annotate 'line', 1014
    .lex "self", param_993
    .lex "$/", param_994
    find_lex $P995, "$/"
    $P996 = $P995."!make"("\\")
    .return ($P996)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("149_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_998
    .param pmc param_999
.annotate 'line', 1015
    .lex "self", param_998
    .lex "$/", param_999
    find_lex $P1000, "$/"
    find_lex $P1001, "$/"
    unless_null $P1001, vivify_622
    $P1001 = root_new ['parrot';'Hash']
  vivify_622:
    set $P1002, $P1001["stopper"]
    unless_null $P1002, vivify_623
    new $P1002, "Undef"
  vivify_623:
    set $S1003, $P1002
    $P1004 = $P1000."!make"($S1003)
    .return ($P1004)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("150_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1006
    .param pmc param_1007
.annotate 'line', 1017
    .lex "self", param_1006
    .lex "$/", param_1007
    find_lex $P1008, "$/"
    $P1009 = $P1008."!make"("\b")
    .return ($P1009)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("151_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1011
    .param pmc param_1012
.annotate 'line', 1018
    .lex "self", param_1011
    .lex "$/", param_1012
    find_lex $P1013, "$/"
    $P1014 = $P1013."!make"("\n")
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("152_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 1019
    .lex "self", param_1016
    .lex "$/", param_1017
    find_lex $P1018, "$/"
    $P1019 = $P1018."!make"("\r")
    .return ($P1019)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("153_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1021
    .param pmc param_1022
.annotate 'line', 1020
    .lex "self", param_1021
    .lex "$/", param_1022
    find_lex $P1023, "$/"
    $P1024 = $P1023."!make"("\t")
    .return ($P1024)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("154_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1026
    .param pmc param_1027
.annotate 'line', 1021
    .lex "self", param_1026
    .lex "$/", param_1027
    find_lex $P1028, "$/"
    $P1029 = $P1028."!make"("\f")
    .return ($P1029)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("155_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1031
    .param pmc param_1032
.annotate 'line', 1022
    .lex "self", param_1031
    .lex "$/", param_1032
    find_lex $P1033, "$/"
    $P1034 = $P1033."!make"("\e")
    .return ($P1034)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("156_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1036
    .param pmc param_1037
.annotate 'line', 1024
    .lex "self", param_1036
    .lex "$/", param_1037
.annotate 'line', 1025
    find_lex $P1038, "$/"
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_624
    $P1041 = root_new ['parrot';'Hash']
  vivify_624:
    set $P1042, $P1041["hexint"]
    unless_null $P1042, vivify_625
    new $P1042, "Undef"
  vivify_625:
    if $P1042, if_1040
    find_lex $P1045, "$/"
    unless_null $P1045, vivify_626
    $P1045 = root_new ['parrot';'Hash']
  vivify_626:
    set $P1046, $P1045["hexints"]
    unless_null $P1046, vivify_627
    $P1046 = root_new ['parrot';'Hash']
  vivify_627:
    set $P1047, $P1046["hexint"]
    unless_null $P1047, vivify_628
    new $P1047, "Undef"
  vivify_628:
    set $P1039, $P1047
    goto if_1040_end
  if_1040:
    find_lex $P1043, "$/"
    unless_null $P1043, vivify_629
    $P1043 = root_new ['parrot';'Hash']
  vivify_629:
    set $P1044, $P1043["hexint"]
    unless_null $P1044, vivify_630
    new $P1044, "Undef"
  vivify_630:
    set $P1039, $P1044
  if_1040_end:
    $P1048 = "ints_to_string"($P1039)
    $P1049 = $P1038."!make"($P1048)
.annotate 'line', 1024
    .return ($P1049)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("157_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1051
    .param pmc param_1052
.annotate 'line', 1028
    .lex "self", param_1051
    .lex "$/", param_1052
.annotate 'line', 1029
    find_lex $P1053, "$/"
    find_lex $P1056, "$/"
    unless_null $P1056, vivify_631
    $P1056 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1057, $P1056["octint"]
    unless_null $P1057, vivify_632
    new $P1057, "Undef"
  vivify_632:
    if $P1057, if_1055
    find_lex $P1060, "$/"
    unless_null $P1060, vivify_633
    $P1060 = root_new ['parrot';'Hash']
  vivify_633:
    set $P1061, $P1060["octints"]
    unless_null $P1061, vivify_634
    $P1061 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1062, $P1061["octint"]
    unless_null $P1062, vivify_635
    new $P1062, "Undef"
  vivify_635:
    set $P1054, $P1062
    goto if_1055_end
  if_1055:
    find_lex $P1058, "$/"
    unless_null $P1058, vivify_636
    $P1058 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1059, $P1058["octint"]
    unless_null $P1059, vivify_637
    new $P1059, "Undef"
  vivify_637:
    set $P1054, $P1059
  if_1055_end:
    $P1063 = "ints_to_string"($P1054)
    $P1064 = $P1053."!make"($P1063)
.annotate 'line', 1028
    .return ($P1064)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("158_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1066
    .param pmc param_1067
.annotate 'line', 1032
    .lex "self", param_1066
    .lex "$/", param_1067
.annotate 'line', 1033
    find_lex $P1068, "$/"
    find_lex $P1069, "$/"
    unless_null $P1069, vivify_638
    $P1069 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1070, $P1069["charspec"]
    unless_null $P1070, vivify_639
    new $P1070, "Undef"
  vivify_639:
    $P1071 = $P1070."ast"()
    $P1072 = $P1068."!make"($P1071)
.annotate 'line', 1032
    .return ($P1072)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("159_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1074
    .param pmc param_1075
.annotate 'line', 1036
    .lex "self", param_1074
    .lex "$/", param_1075
.annotate 'line', 1037
    find_lex $P1076, "$/"
    $P1077 = $P1076."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1077)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("160_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1079
    .param pmc param_1080
.annotate 'line', 1040
    .lex "self", param_1079
    .lex "$/", param_1080
.annotate 'line', 1041
    find_lex $P1081, "$/"
    find_lex $P1084, "$/"
    unless_null $P1084, vivify_640
    $P1084 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1085, $P1084["textq"]
    unless_null $P1085, vivify_641
    new $P1085, "Undef"
  vivify_641:
    if $P1085, if_1083
    find_lex $P1091, "$/"
    unless_null $P1091, vivify_642
    $P1091 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1092, $P1091["textqq"]
    unless_null $P1092, vivify_643
    new $P1092, "Undef"
  vivify_643:
    $P1093 = $P1092."Str"()
    set $P1082, $P1093
    goto if_1083_end
  if_1083:
    new $P1086, "String"
    assign $P1086, "\\"
    find_lex $P1087, "$/"
    unless_null $P1087, vivify_644
    $P1087 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1088, $P1087["textq"]
    unless_null $P1088, vivify_645
    new $P1088, "Undef"
  vivify_645:
    $S1089 = $P1088."Str"()
    concat $P1090, $P1086, $S1089
    set $P1082, $P1090
  if_1083_end:
    $P1094 = $P1081."!make"($P1082)
.annotate 'line', 1040
    .return ($P1094)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("161_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1096
    .param pmc param_1097
.annotate 'line', 1044
    .lex "self", param_1096
    .lex "$/", param_1097
.annotate 'line', 1045
    new $P1098, "Undef"
    .lex "$codepoint", $P1098
.annotate 'line', 1046
    find_lex $P1101, "$/"
    unless_null $P1101, vivify_646
    $P1101 = root_new ['parrot';'Hash']
  vivify_646:
    set $P1102, $P1101["integer"]
    unless_null $P1102, vivify_647
    new $P1102, "Undef"
  vivify_647:
    if $P1102, if_1100
.annotate 'line', 1047
    find_lex $P1106, "$/"
    unless_null $P1106, vivify_648
    new $P1106, "Undef"
  vivify_648:
    set $S1107, $P1106
    find_codepoint $I1108, $S1107
    new $P1099, 'Integer'
    set $P1099, $I1108
.annotate 'line', 1046
    goto if_1100_end
  if_1100:
    find_lex $P1103, "$/"
    unless_null $P1103, vivify_649
    $P1103 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1104, $P1103["integer"]
    unless_null $P1104, vivify_650
    new $P1104, "Undef"
  vivify_650:
    $P1105 = $P1104."ast"()
    set $P1099, $P1105
  if_1100_end:
    store_lex "$codepoint", $P1099
.annotate 'line', 1048
    find_lex $P1110, "$codepoint"
    unless_null $P1110, vivify_651
    new $P1110, "Undef"
  vivify_651:
    set $N1111, $P1110
    islt $I1112, $N1111, 0.0
    unless $I1112, if_1109_end
    find_lex $P1113, "$/"
    unless_null $P1113, vivify_652
    new $P1113, "Undef"
  vivify_652:
    $P1114 = $P1113."CURSOR"()
    new $P1115, 'String'
    set $P1115, "Unrecognized character name "
    find_lex $P1116, "$/"
    unless_null $P1116, vivify_653
    new $P1116, "Undef"
  vivify_653:
    concat $P1117, $P1115, $P1116
    $P1114."panic"($P1117)
  if_1109_end:
.annotate 'line', 1049
    find_lex $P1118, "$/"
    find_lex $P1119, "$codepoint"
    unless_null $P1119, vivify_654
    new $P1119, "Undef"
  vivify_654:
    set $I1120, $P1119
    chr $S1121, $I1120
    $P1122 = $P1118."!make"($S1121)
.annotate 'line', 1044
    .return ($P1122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("162_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1124
    .param pmc param_1125
.annotate 'line', 1052
    .const 'Sub' $P1134 = "163_1304523734.668" 
    capture_lex $P1134
    .lex "self", param_1124
    .lex "$/", param_1125
.annotate 'line', 1053
    new $P1126, "Undef"
    .lex "$str", $P1126
    new $P1127, "String"
    assign $P1127, ""
    store_lex "$str", $P1127
.annotate 'line', 1054
    find_lex $P1129, "$/"
    unless_null $P1129, vivify_655
    $P1129 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1130, $P1129["charname"]
    unless_null $P1130, vivify_656
    new $P1130, "Undef"
  vivify_656:
    defined $I1131, $P1130
    unless $I1131, for_undef_657
    iter $P1128, $P1130
    new $P1141, 'ExceptionHandler'
    set_label $P1141, loop1140_handler
    $P1141."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1141
  loop1140_test:
    unless $P1128, loop1140_done
    shift $P1132, $P1128
  loop1140_redo:
    .const 'Sub' $P1134 = "163_1304523734.668" 
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
  for_undef_657:
.annotate 'line', 1055
    find_lex $P1143, "$/"
    find_lex $P1144, "$str"
    unless_null $P1144, vivify_660
    new $P1144, "Undef"
  vivify_660:
    $P1145 = $P1143."!make"($P1144)
.annotate 'line', 1052
    .return ($P1145)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1133"  :anon :subid("163_1304523734.668") :outer("162_1304523734.668")
    .param pmc param_1135
.annotate 'line', 1054
    .lex "$_", param_1135
    find_lex $P1136, "$str"
    unless_null $P1136, vivify_658
    new $P1136, "Undef"
  vivify_658:
    find_lex $P1137, "$_"
    unless_null $P1137, vivify_659
    new $P1137, "Undef"
  vivify_659:
    $S1138 = $P1137."ast"()
    concat $P1139, $P1136, $S1138
    store_lex "$str", $P1139
    .return ($P1139)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("164_1304523734.668") :outer("119_1304523734.668")
    .param pmc param_1147
    .param pmc param_1148
.annotate 'line', 1058
    .lex "self", param_1147
    .lex "$/", param_1148
.annotate 'line', 1059
    find_lex $P1149, "$/"
    find_lex $P1152, "$/"
    unless_null $P1152, vivify_661
    $P1152 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1153, $P1152["charnames"]
    unless_null $P1153, vivify_662
    new $P1153, "Undef"
  vivify_662:
    if $P1153, if_1151
    find_lex $P1157, "$/"
    unless_null $P1157, vivify_663
    new $P1157, "Undef"
  vivify_663:
    $I1158 = "string_to_int"($P1157, 10)
    chr $S1159, $I1158
    new $P1150, 'String'
    set $P1150, $S1159
    goto if_1151_end
  if_1151:
    find_lex $P1154, "$/"
    unless_null $P1154, vivify_664
    $P1154 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1155, $P1154["charnames"]
    unless_null $P1155, vivify_665
    new $P1155, "Undef"
  vivify_665:
    $P1156 = $P1155."ast"()
    set $P1150, $P1156
  if_1151_end:
    $P1160 = $P1149."!make"($P1150)
.annotate 'line', 1058
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1162"  :subid("165_1304523734.668") :outer("10_1304523734.668")
.annotate 'line', 1072
    .const 'Sub' $P2385 = "232_1304523734.668" 
    capture_lex $P2385
    .const 'Sub' $P2332 = "230_1304523734.668" 
    capture_lex $P2332
    .const 'Sub' $P2259 = "227_1304523734.668" 
    capture_lex $P2259
    .const 'Sub' $P2229 = "225_1304523734.668" 
    capture_lex $P2229
    .const 'Sub' $P2224 = "224_1304523734.668" 
    capture_lex $P2224
    .const 'Sub' $P2214 = "223_1304523734.668" 
    capture_lex $P2214
    .const 'Sub' $P2185 = "221_1304523734.668" 
    capture_lex $P2185
    .const 'Sub' $P2176 = "220_1304523734.668" 
    capture_lex $P2176
    .const 'Sub' $P2168 = "219_1304523734.668" 
    capture_lex $P2168
    .const 'Sub' $P2160 = "218_1304523734.668" 
    capture_lex $P2160
    .const 'Sub' $P2156 = "217_1304523734.668" 
    capture_lex $P2156
    .const 'Sub' $P2090 = "214_1304523734.668" 
    capture_lex $P2090
    .const 'Sub' $P2021 = "212_1304523734.668" 
    capture_lex $P2021
    .const 'Sub' $P1925 = "208_1304523734.668" 
    capture_lex $P1925
    .const 'Sub' $P1885 = "205_1304523734.668" 
    capture_lex $P1885
    .const 'Sub' $P1837 = "203_1304523734.668" 
    capture_lex $P1837
    .const 'Sub' $P1824 = "202_1304523734.668" 
    capture_lex $P1824
    .const 'Sub' $P1811 = "201_1304523734.668" 
    capture_lex $P1811
    .const 'Sub' $P1798 = "200_1304523734.668" 
    capture_lex $P1798
    .const 'Sub' $P1785 = "199_1304523734.668" 
    capture_lex $P1785
    .const 'Sub' $P1772 = "198_1304523734.668" 
    capture_lex $P1772
    .const 'Sub' $P1759 = "197_1304523734.668" 
    capture_lex $P1759
    .const 'Sub' $P1746 = "196_1304523734.668" 
    capture_lex $P1746
    .const 'Sub' $P1733 = "195_1304523734.668" 
    capture_lex $P1733
    .const 'Sub' $P1728 = "194_1304523734.668" 
    capture_lex $P1728
    .const 'Sub' $P1724 = "193_1304523734.668" 
    capture_lex $P1724
    .const 'Sub' $P1684 = "191_1304523734.668" 
    capture_lex $P1684
    .const 'Sub' $P1525 = "184_1304523734.668" 
    capture_lex $P1525
    .const 'Sub' $P1510 = "183_1304523734.668" 
    capture_lex $P1510
    .const 'Sub' $P1417 = "178_1304523734.668" 
    capture_lex $P1417
    .const 'Sub' $P1384 = "176_1304523734.668" 
    capture_lex $P1384
    .const 'Sub' $P1369 = "175_1304523734.668" 
    capture_lex $P1369
    .const 'Sub' $P1354 = "174_1304523734.668" 
    capture_lex $P1354
    .const 'Sub' $P1267 = "171_1304523734.668" 
    capture_lex $P1267
    .const 'Sub' $P1208 = "169_1304523734.668" 
    capture_lex $P1208
    .const 'Sub' $P1201 = "168_1304523734.668" 
    capture_lex $P1201
    .const 'Sub' $P1181 = "167_1304523734.668" 
    capture_lex $P1181
    .const 'Sub' $P1164 = "166_1304523734.668" 
    capture_lex $P1164
.annotate 'line', 1132
    .const 'Sub' $P1164 = "166_1304523734.668" 
    newclosure $P1177, $P1164
    .lex "value_type", $P1177
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1178
    .lex "$?CLASS", $P1179
.annotate 'line', 1094
    .const 'Sub' $P1181 = "167_1304523734.668" 
    capture_lex $P1181
    $P1181()
.annotate 'line', 1072
    find_lex $P1195, "$?PACKAGE"
    get_who $P1196, $P1195
    set $P1197, $P1196["$interactive_ctx"]
    unless_null $P1197, vivify_672
    new $P1197, "Undef"
  vivify_672:
    find_lex $P1198, "$?PACKAGE"
    get_who $P1199, $P1198
    set $P1200, $P1199["%interactive_pad"]
    unless_null $P1200, vivify_673
    $P1200 = root_new ['parrot';'Hash']
  vivify_673:
.annotate 'line', 1112
    find_lex $P1266, "value_type"
.annotate 'line', 1697
    .const 'Sub' $P2385 = "232_1304523734.668" 
    newclosure $P2391, $P2385
.annotate 'line', 1072
    .return ($P2391)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("166_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1165
.annotate 'line', 1132
    .lex "$value", param_1165
.annotate 'line', 1133
    find_lex $P1168, "$value"
    unless_null $P1168, vivify_666
    new $P1168, "Undef"
  vivify_666:
    isa $I1169, $P1168, "NameSpace"
    if $I1169, if_1167
.annotate 'line', 1135
    find_lex $P1173, "$value"
    unless_null $P1173, vivify_667
    new $P1173, "Undef"
  vivify_667:
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
.annotate 'line', 1133
    goto if_1167_end
  if_1167:
    new $P1170, "String"
    assign $P1170, "namespace"
    set $P1166, $P1170
  if_1167_end:
.annotate 'line', 1132
    .return ($P1166)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1180"  :anon :subid("167_1304523734.668") :outer("165_1304523734.668")
.annotate 'line', 1099
    $P1182 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1182
.annotate 'line', 1096
    getinterp $P1183
    set $P1184, $P1183["context"]
    unless_null $P1184, vivify_668
    new $P1184, "Undef"
  vivify_668:
    find_lex $P1185, "$?PACKAGE"
    get_who $P1186, $P1185
    set $P1186["$interactive_ctx"], $P1184
    find_lex $P1187, "%pad_contents"
    unless_null $P1187, vivify_669
    $P1187 = root_new ['parrot';'Hash']
  vivify_669:
.annotate 'line', 1101
    find_lex $P1188, "$?PACKAGE"
    get_who $P1189, $P1188
    set $P1190, $P1189["$interactive_ctx"]
    unless_null $P1190, vivify_670
    new $P1190, "Undef"
  vivify_670:
    getattribute $P1191, $P1190, "lex_pad"
    find_lex $P1192, "%pad_contents"
    unless_null $P1192, vivify_671
    $P1192 = root_new ['parrot';'Hash']
  vivify_671:
    copy $P1191, $P1192
.annotate 'line', 1100
    find_lex $P1193, "$?PACKAGE"
    get_who $P1194, $P1193
    set $P1194["%interactive_pad"], $P1191
.annotate 'line', 1094
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("168_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1202
.annotate 'line', 1106
    .lex "self", param_1202
.annotate 'line', 1107
    new $P1203, "Undef"
    .lex "$obj", $P1203
    find_lex $P1204, "self"
    repr_instance_of $P1205, $P1204
    store_lex "$obj", $P1205
.annotate 'line', 1108
    find_lex $P1206, "$obj"
    unless_null $P1206, vivify_674
    new $P1206, "Undef"
  vivify_674:
    $P1206."BUILD"()
    find_lex $P1207, "$obj"
    unless_null $P1207, vivify_675
    new $P1207, "Undef"
  vivify_675:
.annotate 'line', 1106
    .return ($P1207)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("169_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1209
.annotate 'line', 1112
    .const 'Sub' $P1230 = "170_1304523734.668" 
    capture_lex $P1230
    .lex "self", param_1209
.annotate 'line', 1122
    new $P1210, "Undef"
    .lex "$config_hash_idx", $P1210
.annotate 'line', 1126
    $P1211 = root_new ['parrot';'Hash']
    .lex "%config", $P1211
.annotate 'line', 1127
    new $P1212, "Undef"
    .lex "$version", $P1212
.annotate 'line', 1128
    new $P1213, "Undef"
    .lex "$revision", $P1213
.annotate 'line', 1114
    split $P1214, " ", "parse past post pir evalpmc"
    find_lex $P1215, "self"
    find_lex $P1216, "$?CLASS"
    setattribute $P1215, $P1216, "@!stages", $P1214
.annotate 'line', 1117
    split $P1217, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1218, "self"
    find_lex $P1219, "$?CLASS"
    setattribute $P1218, $P1219, "@!cmdoptions", $P1217
.annotate 'line', 1118
    new $P1220, "String"
    assign $P1220, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1221, "self"
    find_lex $P1222, "$?CLASS"
    setattribute $P1221, $P1222, "$!usage", $P1220
.annotate 'line', 1119
    find_lex $P1224, "self"
    find_lex $P1225, "$?CLASS"
    getattribute $P1226, $P1224, $P1225, "@!cmdoptions"
    unless_null $P1226, vivify_676
    $P1226 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    defined $I1227, $P1226
    unless $I1227, for_undef_677
    iter $P1223, $P1226
    new $P1243, 'ExceptionHandler'
    set_label $P1243, loop1242_handler
    $P1243."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1243
  loop1242_test:
    unless $P1223, loop1242_done
    shift $P1228, $P1223
  loop1242_redo:
    .const 'Sub' $P1230 = "170_1304523734.668" 
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
  for_undef_677:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1245 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1245
.annotate 'line', 1126
    find_lex $P1246, "$config_hash_idx"
    unless_null $P1246, vivify_680
    new $P1246, "Undef"
  vivify_680:
    set $I1247, $P1246
    getinterp $P1248
    set $P1249, $P1248[$I1247]
    unless_null $P1249, vivify_681
    new $P1249, "Undef"
  vivify_681:
    store_lex "%config", $P1249
.annotate 'line', 1127
    find_lex $P1250, "%config"
    unless_null $P1250, vivify_682
    $P1250 = root_new ['parrot';'Hash']
  vivify_682:
    set $P1251, $P1250["VERSION"]
    unless_null $P1251, vivify_683
    new $P1251, "Undef"
  vivify_683:
    store_lex "$version", $P1251
.annotate 'line', 1128
    find_lex $P1253, "%config"
    unless_null $P1253, vivify_684
    $P1253 = root_new ['parrot';'Hash']
  vivify_684:
    set $P1254, $P1253["git_describe"]
    unless_null $P1254, vivify_685
    new $P1254, "Undef"
  vivify_685:
    set $P1252, $P1254
    defined $I1256, $P1252
    if $I1256, default_1255
    new $P1257, "String"
    assign $P1257, "(unknown)"
    set $P1252, $P1257
  default_1255:
    store_lex "$revision", $P1252
.annotate 'line', 1129
    new $P1258, 'String'
    set $P1258, "This compiler is built with NQP, parrot "
    find_lex $P1259, "$version"
    unless_null $P1259, vivify_686
    new $P1259, "Undef"
  vivify_686:
    concat $P1260, $P1258, $P1259
    concat $P1261, $P1260, ", revision "
    find_lex $P1262, "$revision"
    unless_null $P1262, vivify_687
    new $P1262, "Undef"
  vivify_687:
    concat $P1263, $P1261, $P1262
    find_lex $P1264, "self"
    find_lex $P1265, "$?CLASS"
    setattribute $P1264, $P1265, "$!version", $P1263
.annotate 'line', 1112
    .return ($P1263)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1229"  :anon :subid("170_1304523734.668") :outer("169_1304523734.668")
    .param pmc param_1231
.annotate 'line', 1119
    .lex "$_", param_1231
.annotate 'line', 1120
    find_lex $P1232, "self"
    find_lex $P1233, "$?CLASS"
    getattribute $P1234, $P1232, $P1233, "$!usage"
    unless_null $P1234, vivify_678
    new $P1234, "Undef"
  vivify_678:
    new $P1235, 'String'
    set $P1235, "    "
    find_lex $P1236, "$_"
    unless_null $P1236, vivify_679
    new $P1236, "Undef"
  vivify_679:
    concat $P1237, $P1235, $P1236
    concat $P1238, $P1237, "\n"
    concat $P1239, $P1234, $P1238
    find_lex $P1240, "self"
    find_lex $P1241, "$?CLASS"
    setattribute $P1240, $P1241, "$!usage", $P1239
.annotate 'line', 1119
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("171_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1268
    .param pmc param_1269
    .param pmc param_1272 :slurpy
    .param pmc param_1270 :optional :named("tagset")
    .param int has_param_1270 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1338 = "173_1304523734.668" 
    capture_lex $P1338
    .const 'Sub' $P1317 = "172_1304523734.668" 
    capture_lex $P1317
    .lex "self", param_1268
    .lex "$module", param_1269
    if has_param_1270, optparam_688
    new $P1271, "Undef"
    set param_1270, $P1271
  optparam_688:
    .lex "$tagset", param_1270
    .lex "@symbols", param_1272
.annotate 'line', 1145
    $P1273 = root_new ['parrot';'Hash']
    .lex "%exports", $P1273
.annotate 'line', 1146
    $P1274 = root_new ['parrot';'Hash']
    .lex "%source", $P1274
.annotate 'line', 1140
    find_lex $P1276, "$module"
    unless_null $P1276, vivify_689
    new $P1276, "Undef"
  vivify_689:
    does $I1277, $P1276, "hash"
    new $P1278, 'Integer'
    set $P1278, $I1277
    isfalse $I1279, $P1278
    unless $I1279, if_1275_end
.annotate 'line', 1141
    find_lex $P1280, "self"
    find_lex $P1281, "$module"
    unless_null $P1281, vivify_690
    new $P1281, "Undef"
  vivify_690:
    $P1282 = $P1280."get_module"($P1281)
    store_lex "$module", $P1282
  if_1275_end:
.annotate 'line', 1144
    find_lex $P1284, "$tagset"
    unless_null $P1284, vivify_691
    new $P1284, "Undef"
  vivify_691:
    set $P1283, $P1284
    defined $I1286, $P1283
    if $I1286, default_1285
    find_lex $P1289, "@symbols"
    unless_null $P1289, vivify_692
    $P1289 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    if $P1289, if_1288
    new $P1291, "String"
    assign $P1291, "DEFAULT"
    set $P1287, $P1291
    goto if_1288_end
  if_1288:
    new $P1290, "String"
    assign $P1290, "ALL"
    set $P1287, $P1290
  if_1288_end:
    set $P1283, $P1287
  default_1285:
    store_lex "$tagset", $P1283
    find_lex $P1292, "%exports"
    unless_null $P1292, vivify_693
    $P1292 = root_new ['parrot';'Hash']
  vivify_693:
.annotate 'line', 1146
    find_lex $P1293, "$tagset"
    unless_null $P1293, vivify_694
    new $P1293, "Undef"
  vivify_694:
    set $S1294, $P1293
    find_lex $P1295, "$module"
    unless_null $P1295, vivify_695
    $P1295 = root_new ['parrot';'Hash']
  vivify_695:
    set $P1296, $P1295["EXPORT"]
    unless_null $P1296, vivify_696
    $P1296 = root_new ['parrot';'Hash']
  vivify_696:
    set $P1297, $P1296[$S1294]
    unless_null $P1297, vivify_697
    new $P1297, "Undef"
  vivify_697:
    store_lex "%source", $P1297
.annotate 'line', 1147
    find_lex $P1299, "%source"
    unless_null $P1299, vivify_698
    $P1299 = root_new ['parrot';'Hash']
  vivify_698:
    defined $I1300, $P1299
    new $P1301, 'Integer'
    set $P1301, $I1300
    isfalse $I1302, $P1301
    unless $I1302, if_1298_end
.annotate 'line', 1148
    find_lex $P1305, "$tagset"
    unless_null $P1305, vivify_699
    new $P1305, "Undef"
  vivify_699:
    set $S1306, $P1305
    iseq $I1307, $S1306, "ALL"
    if $I1307, if_1304
    $P1309 = root_new ['parrot';'Hash']
    set $P1303, $P1309
    goto if_1304_end
  if_1304:
    find_lex $P1308, "$module"
    unless_null $P1308, vivify_700
    new $P1308, "Undef"
  vivify_700:
    set $P1303, $P1308
  if_1304_end:
    store_lex "%source", $P1303
  if_1298_end:
.annotate 'line', 1150
    find_lex $P1311, "@symbols"
    unless_null $P1311, vivify_701
    $P1311 = root_new ['parrot';'ResizablePMCArray']
  vivify_701:
    if $P1311, if_1310
.annotate 'line', 1157
    find_lex $P1334, "%source"
    unless_null $P1334, vivify_702
    $P1334 = root_new ['parrot';'Hash']
  vivify_702:
    defined $I1335, $P1334
    unless $I1335, for_undef_703
    iter $P1333, $P1334
    new $P1351, 'ExceptionHandler'
    set_label $P1351, loop1350_handler
    $P1351."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1351
  loop1350_test:
    unless $P1333, loop1350_done
    shift $P1336, $P1333
  loop1350_redo:
    .const 'Sub' $P1338 = "173_1304523734.668" 
    capture_lex $P1338
    $P1338($P1336)
  loop1350_next:
    goto loop1350_test
  loop1350_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1352, exception, 'type'
    eq $P1352, .CONTROL_LOOP_NEXT, loop1350_next
    eq $P1352, .CONTROL_LOOP_REDO, loop1350_redo
  loop1350_done:
    pop_eh 
  for_undef_703:
.annotate 'line', 1156
    goto if_1310_end
  if_1310:
.annotate 'line', 1151
    find_lex $P1313, "@symbols"
    unless_null $P1313, vivify_710
    $P1313 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    defined $I1314, $P1313
    unless $I1314, for_undef_711
    iter $P1312, $P1313
    new $P1331, 'ExceptionHandler'
    set_label $P1331, loop1330_handler
    $P1331."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1331
  loop1330_test:
    unless $P1312, loop1330_done
    shift $P1315, $P1312
  loop1330_redo:
    .const 'Sub' $P1317 = "172_1304523734.668" 
    capture_lex $P1317
    $P1317($P1315)
  loop1330_next:
    goto loop1330_test
  loop1330_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1332, exception, 'type'
    eq $P1332, .CONTROL_LOOP_NEXT, loop1330_next
    eq $P1332, .CONTROL_LOOP_REDO, loop1330_redo
  loop1330_done:
    pop_eh 
  for_undef_711:
  if_1310_end:
.annotate 'line', 1150
    find_lex $P1353, "%exports"
    unless_null $P1353, vivify_720
    $P1353 = root_new ['parrot';'Hash']
  vivify_720:
.annotate 'line', 1138
    .return ($P1353)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1337"  :anon :subid("173_1304523734.668") :outer("171_1304523734.668")
    .param pmc param_1340
.annotate 'line', 1158
    new $P1339, "Undef"
    .lex "$value", $P1339
    .lex "$_", param_1340
    find_lex $P1341, "$_"
    unless_null $P1341, vivify_704
    new $P1341, "Undef"
  vivify_704:
    $P1342 = $P1341."value"()
    store_lex "$value", $P1342
.annotate 'line', 1159
    find_lex $P1343, "$value"
    unless_null $P1343, vivify_705
    new $P1343, "Undef"
  vivify_705:
    find_lex $P1344, "$_"
    unless_null $P1344, vivify_706
    new $P1344, "Undef"
  vivify_706:
    $P1345 = $P1344."key"()
    find_lex $P1346, "$value"
    unless_null $P1346, vivify_707
    new $P1346, "Undef"
  vivify_707:
    $P1347 = "value_type"($P1346)
    find_lex $P1348, "%exports"
    unless_null $P1348, vivify_708
    $P1348 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1348
  vivify_708:
    set $P1349, $P1348[$P1347]
    unless_null $P1349, vivify_709
    $P1349 = root_new ['parrot';'Hash']
    set $P1348[$P1347], $P1349
  vivify_709:
    set $P1349[$P1345], $P1343
.annotate 'line', 1157
    .return ($P1343)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1316"  :anon :subid("172_1304523734.668") :outer("171_1304523734.668")
    .param pmc param_1319
.annotate 'line', 1152
    new $P1318, "Undef"
    .lex "$value", $P1318
    .lex "$_", param_1319
    find_lex $P1320, "$_"
    unless_null $P1320, vivify_712
    new $P1320, "Undef"
  vivify_712:
    set $S1321, $P1320
    find_lex $P1322, "%source"
    unless_null $P1322, vivify_713
    $P1322 = root_new ['parrot';'Hash']
  vivify_713:
    set $P1323, $P1322[$S1321]
    unless_null $P1323, vivify_714
    new $P1323, "Undef"
  vivify_714:
    store_lex "$value", $P1323
.annotate 'line', 1153
    find_lex $P1324, "$value"
    unless_null $P1324, vivify_715
    new $P1324, "Undef"
  vivify_715:
    find_lex $P1325, "$_"
    unless_null $P1325, vivify_716
    new $P1325, "Undef"
  vivify_716:
    find_lex $P1326, "$value"
    unless_null $P1326, vivify_717
    new $P1326, "Undef"
  vivify_717:
    $P1327 = "value_type"($P1326)
    find_lex $P1328, "%exports"
    unless_null $P1328, vivify_718
    $P1328 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1328
  vivify_718:
    set $P1329, $P1328[$P1327]
    unless_null $P1329, vivify_719
    $P1329 = root_new ['parrot';'Hash']
    set $P1328[$P1327], $P1329
  vivify_719:
    set $P1329[$P1325], $P1324
.annotate 'line', 1151
    .return ($P1324)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("174_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1355
    .param pmc param_1356
.annotate 'line', 1165
    .lex "self", param_1355
    .lex "$name", param_1356
.annotate 'line', 1166
    $P1357 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1357
    find_lex $P1358, "self"
    find_lex $P1359, "$name"
    unless_null $P1359, vivify_721
    new $P1359, "Undef"
  vivify_721:
    $P1360 = $P1358."parse_name"($P1359)
    store_lex "@name", $P1360
.annotate 'line', 1167
    find_lex $P1361, "@name"
    unless_null $P1361, vivify_722
    $P1361 = root_new ['parrot';'ResizablePMCArray']
  vivify_722:
    find_lex $P1362, "self"
    find_lex $P1363, "$?CLASS"
    getattribute $P1364, $P1362, $P1363, "$!language"
    unless_null $P1364, vivify_723
    new $P1364, "Undef"
  vivify_723:
    set $S1365, $P1364
    downcase $S1366, $S1365
    $P1361."unshift"($S1366)
.annotate 'line', 1168
    find_lex $P1367, "@name"
    unless_null $P1367, vivify_724
    $P1367 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
    get_root_namespace $P1368, $P1367
.annotate 'line', 1165
    .return ($P1368)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("175_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1370
    .param pmc param_1371 :optional
    .param int has_param_1371 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1370
    if has_param_1371, optparam_725
    new $P1372, "Undef"
    set param_1371, $P1372
  optparam_725:
    .lex "$name", param_1371
.annotate 'line', 1172
    find_lex $P1374, "$name"
    unless_null $P1374, vivify_726
    new $P1374, "Undef"
  vivify_726:
    unless $P1374, if_1373_end
.annotate 'line', 1173
    find_lex $P1375, "$name"
    unless_null $P1375, vivify_727
    new $P1375, "Undef"
  vivify_727:
    find_lex $P1376, "self"
    find_lex $P1377, "$?CLASS"
    setattribute $P1376, $P1377, "$!language", $P1375
.annotate 'line', 1174
    find_lex $P1378, "$name"
    unless_null $P1378, vivify_728
    new $P1378, "Undef"
  vivify_728:
    set $S1379, $P1378
    find_lex $P1380, "self"
    compreg $S1379, $P1380
  if_1373_end:
.annotate 'line', 1172
    find_lex $P1381, "self"
    find_lex $P1382, "$?CLASS"
    getattribute $P1383, $P1381, $P1382, "$!language"
    unless_null $P1383, vivify_729
    new $P1383, "Undef"
  vivify_729:
.annotate 'line', 1171
    .return ($P1383)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("176_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1385
    .param pmc param_1386
.annotate 'line', 1179
    .const 'Sub' $P1396 = "177_1304523734.668" 
    capture_lex $P1396
    .lex "self", param_1385
    .lex "$name", param_1386
.annotate 'line', 1180
    new $P1387, "Undef"
    .lex "$base", $P1387
.annotate 'line', 1181
    new $P1388, "Undef"
    .lex "$loaded", $P1388
.annotate 'line', 1180
    find_lex $P1389, "self"
    find_lex $P1390, "$name"
    unless_null $P1390, vivify_730
    new $P1390, "Undef"
  vivify_730:
    $P1391 = $P1389."parse_name"($P1390)
    join $S1392, "/", $P1391
    new $P1393, 'String'
    set $P1393, $S1392
    store_lex "$base", $P1393
.annotate 'line', 1181
    new $P1394, "Integer"
    assign $P1394, 0
    store_lex "$loaded", $P1394
.annotate 'line', 1182
    .const 'Sub' $P1396 = "177_1304523734.668" 
    capture_lex $P1396
    $P1396()
.annotate 'line', 1183
    find_lex $P1409, "$loaded"
    unless_null $P1409, vivify_732
    new $P1409, "Undef"
  vivify_732:
    if $P1409, unless_1408_end
    find_lex $P1410, "$base"
    unless_null $P1410, vivify_733
    new $P1410, "Undef"
  vivify_733:
    concat $P1411, $P1410, ".pir"
    set $S1412, $P1411
    load_bytecode $S1412
    new $P1413, "Integer"
    assign $P1413, 1
    store_lex "$loaded", $P1413
  unless_1408_end:
.annotate 'line', 1184
    find_lex $P1414, "self"
    find_lex $P1415, "$name"
    unless_null $P1415, vivify_734
    new $P1415, "Undef"
  vivify_734:
    $P1416 = $P1414."get_module"($P1415)
.annotate 'line', 1179
    .return ($P1416)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1395"  :anon :subid("177_1304523734.668") :outer("176_1304523734.668")
.annotate 'line', 1182
    new $P1403, 'ExceptionHandler'
    set_label $P1403, control_1402
    $P1403."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1403
    find_lex $P1397, "$base"
    unless_null $P1397, vivify_731
    new $P1397, "Undef"
  vivify_731:
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
.sub "import"  :subid("178_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1418
    .param pmc param_1419
    .param pmc param_1420
.annotate 'line', 1187
    .const 'Sub' $P1426 = "179_1304523734.668" 
    capture_lex $P1426
    .lex "self", param_1418
    .lex "$target", param_1419
    .lex "%exports", param_1420
.annotate 'line', 1188
    find_lex $P1422, "%exports"
    unless_null $P1422, vivify_735
    $P1422 = root_new ['parrot';'Hash']
  vivify_735:
    defined $I1423, $P1422
    unless $I1423, for_undef_736
    iter $P1421, $P1422
    new $P1508, 'ExceptionHandler'
    set_label $P1508, loop1507_handler
    $P1508."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1508
  loop1507_test:
    unless $P1421, loop1507_done
    shift $P1424, $P1421
  loop1507_redo:
    .const 'Sub' $P1426 = "179_1304523734.668" 
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
  for_undef_736:
.annotate 'line', 1187
    .return ($P1421)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1425"  :anon :subid("179_1304523734.668") :outer("178_1304523734.668")
    .param pmc param_1429
.annotate 'line', 1188
    .const 'Sub' $P1496 = "182_1304523734.668" 
    capture_lex $P1496
    .const 'Sub' $P1476 = "181_1304523734.668" 
    capture_lex $P1476
    .const 'Sub' $P1447 = "180_1304523734.668" 
    capture_lex $P1447
.annotate 'line', 1189
    new $P1427, "Undef"
    .lex "$type", $P1427
.annotate 'line', 1190
    $P1428 = root_new ['parrot';'Hash']
    .lex "%items", $P1428
    .lex "$_", param_1429
.annotate 'line', 1189
    find_lex $P1430, "$_"
    unless_null $P1430, vivify_737
    new $P1430, "Undef"
  vivify_737:
    $P1431 = $P1430."key"()
    store_lex "$type", $P1431
.annotate 'line', 1190
    find_lex $P1432, "$_"
    unless_null $P1432, vivify_738
    new $P1432, "Undef"
  vivify_738:
    $P1433 = $P1432."value"()
    store_lex "%items", $P1433
.annotate 'line', 1191
    find_lex $P1436, "self"
    new $P1437, 'String'
    set $P1437, "import_"
    find_lex $P1438, "$type"
    unless_null $P1438, vivify_739
    new $P1438, "Undef"
  vivify_739:
    concat $P1439, $P1437, $P1438
    set $S1440, $P1439
    can $I1441, $P1436, $S1440
    if $I1441, if_1435
.annotate 'line', 1194
    find_lex $P1465, "$target"
    unless_null $P1465, vivify_740
    new $P1465, "Undef"
  vivify_740:
    new $P1466, 'String'
    set $P1466, "add_"
    find_lex $P1467, "$type"
    unless_null $P1467, vivify_741
    new $P1467, "Undef"
  vivify_741:
    concat $P1468, $P1466, $P1467
    set $S1469, $P1468
    can $I1470, $P1465, $S1469
    if $I1470, if_1464
.annotate 'line', 1198
    find_lex $P1492, "%items"
    unless_null $P1492, vivify_742
    $P1492 = root_new ['parrot';'Hash']
  vivify_742:
    defined $I1493, $P1492
    unless $I1493, for_undef_743
    iter $P1491, $P1492
    new $P1505, 'ExceptionHandler'
    set_label $P1505, loop1504_handler
    $P1505."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1505
  loop1504_test:
    unless $P1491, loop1504_done
    shift $P1494, $P1491
  loop1504_redo:
    .const 'Sub' $P1496 = "182_1304523734.668" 
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
  for_undef_743:
.annotate 'line', 1197
    set $P1463, $P1491
.annotate 'line', 1194
    goto if_1464_end
  if_1464:
.annotate 'line', 1195
    find_lex $P1472, "%items"
    unless_null $P1472, vivify_747
    $P1472 = root_new ['parrot';'Hash']
  vivify_747:
    defined $I1473, $P1472
    unless $I1473, for_undef_748
    iter $P1471, $P1472
    new $P1489, 'ExceptionHandler'
    set_label $P1489, loop1488_handler
    $P1489."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1489
  loop1488_test:
    unless $P1471, loop1488_done
    shift $P1474, $P1471
  loop1488_redo:
    .const 'Sub' $P1476 = "181_1304523734.668" 
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
  for_undef_748:
.annotate 'line', 1194
    set $P1463, $P1471
  if_1464_end:
    set $P1434, $P1463
.annotate 'line', 1191
    goto if_1435_end
  if_1435:
.annotate 'line', 1192
    find_lex $P1443, "%items"
    unless_null $P1443, vivify_753
    $P1443 = root_new ['parrot';'Hash']
  vivify_753:
    defined $I1444, $P1443
    unless $I1444, for_undef_754
    iter $P1442, $P1443
    new $P1461, 'ExceptionHandler'
    set_label $P1461, loop1460_handler
    $P1461."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1461
  loop1460_test:
    unless $P1442, loop1460_done
    shift $P1445, $P1442
  loop1460_redo:
    .const 'Sub' $P1447 = "180_1304523734.668" 
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
  for_undef_754:
.annotate 'line', 1191
    set $P1434, $P1442
  if_1435_end:
.annotate 'line', 1188
    .return ($P1434)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1495"  :anon :subid("182_1304523734.668") :outer("179_1304523734.668")
    .param pmc param_1497
.annotate 'line', 1198
    .lex "$_", param_1497
    find_lex $P1498, "$_"
    unless_null $P1498, vivify_744
    new $P1498, "Undef"
  vivify_744:
    $P1499 = $P1498."value"()
    find_lex $P1500, "$_"
    unless_null $P1500, vivify_745
    new $P1500, "Undef"
  vivify_745:
    $P1501 = $P1500."key"()
    set $S1502, $P1501
    find_lex $P1503, "$target"
    unless_null $P1503, vivify_746
    $P1503 = root_new ['parrot';'Hash']
    store_lex "$target", $P1503
  vivify_746:
    set $P1503[$S1502], $P1499
    .return ($P1499)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1475"  :anon :subid("181_1304523734.668") :outer("179_1304523734.668")
    .param pmc param_1477
.annotate 'line', 1195
    .lex "$_", param_1477
    find_lex $P1478, "$target"
    unless_null $P1478, vivify_749
    new $P1478, "Undef"
  vivify_749:
    find_lex $P1479, "$_"
    unless_null $P1479, vivify_750
    new $P1479, "Undef"
  vivify_750:
    $P1480 = $P1479."key"()
    find_lex $P1481, "$_"
    unless_null $P1481, vivify_751
    new $P1481, "Undef"
  vivify_751:
    $P1482 = $P1481."value"()
    new $P1483, 'String'
    set $P1483, "add_"
    find_lex $P1484, "$type"
    unless_null $P1484, vivify_752
    new $P1484, "Undef"
  vivify_752:
    concat $P1485, $P1483, $P1484
    set $S1486, $P1485
    $P1487 = $P1478.$S1486($P1480, $P1482)
    .return ($P1487)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1446"  :anon :subid("180_1304523734.668") :outer("179_1304523734.668")
    .param pmc param_1448
.annotate 'line', 1192
    .lex "$_", param_1448
    find_lex $P1449, "self"
    find_lex $P1450, "$target"
    unless_null $P1450, vivify_755
    new $P1450, "Undef"
  vivify_755:
    find_lex $P1451, "$_"
    unless_null $P1451, vivify_756
    new $P1451, "Undef"
  vivify_756:
    $P1452 = $P1451."key"()
    find_lex $P1453, "$_"
    unless_null $P1453, vivify_757
    new $P1453, "Undef"
  vivify_757:
    $P1454 = $P1453."value"()
    new $P1455, 'String'
    set $P1455, "import_"
    find_lex $P1456, "$type"
    unless_null $P1456, vivify_758
    new $P1456, "Undef"
  vivify_758:
    concat $P1457, $P1455, $P1456
    set $S1458, $P1457
    $P1459 = $P1449.$S1458($P1450, $P1452, $P1454)
    .return ($P1459)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("183_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'line', 1203
    .lex "self", param_1511
    .lex "$value", param_1512
.annotate 'line', 1205
    getinterp $P1515
    $P1516 = $P1515."stdout_handle"()
    $N1517 = $P1516."tell"()
    find_dynamic_lex $P1520, "$*AUTOPRINTPOS"
    unless_null $P1520, vivify_759
    get_hll_global $P1518, "GLOBAL"
    get_who $P1519, $P1518
    set $P1520, $P1519["$AUTOPRINTPOS"]
    unless_null $P1520, vivify_760
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_760:
  vivify_759:
    set $N1521, $P1520
    isgt $I1522, $N1517, $N1521
    unless $I1522, unless_1514
    new $P1513, 'Integer'
    set $P1513, $I1522
    goto unless_1514_end
  unless_1514:
.annotate 'line', 1204
    find_lex $P1523, "$value"
    unless_null $P1523, vivify_761
    new $P1523, "Undef"
  vivify_761:
    set $S1524, $P1523
    say $S1524
  unless_1514_end:
.annotate 'line', 1203
    .return ($P1513)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("184_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1526
    .param pmc param_1527 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1559 = "185_1304523734.668" 
    capture_lex $P1559
    .lex "self", param_1526
    .lex "%adverbs", param_1527
.annotate 'line', 1209
    new $P1528, "Undef"
    .lex "$target", $P1528
.annotate 'line', 1213
    new $P1529, "Undef"
    .lex "$stdin", $P1529
.annotate 'line', 1214
    new $P1530, "Undef"
    .lex "$encoding", $P1530
.annotate 'line', 1219
    new $P1531, "Undef"
    .lex "$save_ctx", $P1531
.annotate 'line', 1209
    find_lex $P1532, "%adverbs"
    unless_null $P1532, vivify_762
    $P1532 = root_new ['parrot';'Hash']
  vivify_762:
    set $P1533, $P1532["target"]
    unless_null $P1533, vivify_763
    new $P1533, "Undef"
  vivify_763:
    set $S1534, $P1533
    downcase $S1535, $S1534
    new $P1536, 'String'
    set $P1536, $S1535
    store_lex "$target", $P1536
.annotate 'line', 1211
    getinterp $P1537
    $P1538 = $P1537."stderr_handle"()
    find_lex $P1539, "self"
    $S1540 = $P1539."commandline_banner"()
    print $P1538, $S1540
.annotate 'line', 1213
    getinterp $P1541
    $P1542 = $P1541."stdin_handle"()
    store_lex "$stdin", $P1542
.annotate 'line', 1214
    find_lex $P1543, "%adverbs"
    unless_null $P1543, vivify_764
    $P1543 = root_new ['parrot';'Hash']
  vivify_764:
    set $P1544, $P1543["encoding"]
    unless_null $P1544, vivify_765
    new $P1544, "Undef"
  vivify_765:
    set $S1545, $P1544
    new $P1546, 'String'
    set $P1546, $S1545
    store_lex "$encoding", $P1546
.annotate 'line', 1215
    find_lex $P1550, "$encoding"
    unless_null $P1550, vivify_766
    new $P1550, "Undef"
  vivify_766:
    if $P1550, if_1549
    set $P1548, $P1550
    goto if_1549_end
  if_1549:
    find_lex $P1551, "$encoding"
    unless_null $P1551, vivify_767
    new $P1551, "Undef"
  vivify_767:
    set $S1552, $P1551
    isne $I1553, $S1552, "fixed_8"
    new $P1548, 'Integer'
    set $P1548, $I1553
  if_1549_end:
    unless $P1548, if_1547_end
.annotate 'line', 1216
    find_lex $P1554, "$stdin"
    unless_null $P1554, vivify_768
    new $P1554, "Undef"
  vivify_768:
    find_lex $P1555, "$encoding"
    unless_null $P1555, vivify_769
    new $P1555, "Undef"
  vivify_769:
    $P1554."encoding"($P1555)
  if_1547_end:
.annotate 'line', 1215
    find_lex $P1556, "$save_ctx"
    unless_null $P1556, vivify_770
    new $P1556, "Undef"
  vivify_770:
.annotate 'line', 1220
    new $P1682, 'ExceptionHandler'
    set_label $P1682, loop1681_handler
    $P1682."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1682
  loop1681_test:
    new $P1557, "Integer"
    assign $P1557, 1
    unless $P1557, loop1681_done
  loop1681_redo:
    .const 'Sub' $P1559 = "185_1304523734.668" 
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
.annotate 'line', 1208
    .return ($P1557)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1558"  :anon :subid("185_1304523734.668") :outer("184_1304523734.668")
.annotate 'line', 1220
    .const 'Sub' $P1593 = "186_1304523734.668" 
    capture_lex $P1593
.annotate 'line', 1223
    new $P1560, "Undef"
    .lex "$prompt", $P1560
.annotate 'line', 1224
    new $P1561, "Undef"
    .lex "$code", $P1561
.annotate 'line', 1229
    new $P1562, "Undef"
    .lex "$*AUTOPRINTPOS", $P1562
.annotate 'line', 1230
    new $P1563, "Undef"
    .lex "$*CTXSAVE", $P1563
.annotate 'line', 1231
    new $P1564, "Undef"
    .lex "$*MAIN_CTX", $P1564
.annotate 'line', 1221
    find_lex $P1566, "$stdin"
    unless_null $P1566, vivify_771
    new $P1566, "Undef"
  vivify_771:
    if $P1566, unless_1565_end
    set $I1567, .CONTROL_LOOP_LAST
    die 0, $I1567
  unless_1565_end:
.annotate 'line', 1223
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
.annotate 'line', 1224
    find_lex $P1574, "$stdin"
    unless_null $P1574, vivify_772
    new $P1574, "Undef"
  vivify_772:
    find_lex $P1575, "$prompt"
    unless_null $P1575, vivify_773
    new $P1575, "Undef"
  vivify_773:
    set $S1576, $P1575
    $P1577 = $P1574."readline_interactive"($S1576)
    store_lex "$code", $P1577
.annotate 'line', 1226
    find_lex $P1579, "$code"
    unless_null $P1579, vivify_774
    new $P1579, "Undef"
  vivify_774:
    isnull $I1580, $P1579
    unless $I1580, if_1578_end
    set $I1581, .CONTROL_LOOP_LAST
    die 0, $I1581
  if_1578_end:
.annotate 'line', 1229
    getinterp $P1582
    $P1583 = $P1582."stdout_handle"()
    $P1584 = $P1583."tell"()
    store_lex "$*AUTOPRINTPOS", $P1584
.annotate 'line', 1230
    find_lex $P1585, "self"
    store_lex "$*CTXSAVE", $P1585
    find_lex $P1588, "$*MAIN_CTX"
    unless_null $P1588, vivify_775
    get_hll_global $P1586, "GLOBAL"
    get_who $P1587, $P1586
    set $P1588, $P1587["$MAIN_CTX"]
    unless_null $P1588, vivify_776
    die "Contextual $*MAIN_CTX not found"
  vivify_776:
  vivify_775:
.annotate 'line', 1233
    find_lex $P1591, "$code"
    unless_null $P1591, vivify_777
    new $P1591, "Undef"
  vivify_777:
    if $P1591, if_1590
    set $P1589, $P1591
    goto if_1590_end
  if_1590:
    .const 'Sub' $P1593 = "186_1304523734.668" 
    capture_lex $P1593
    $P1680 = $P1593()
    set $P1589, $P1680
  if_1590_end:
.annotate 'line', 1220
    .return ($P1589)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1592"  :anon :subid("186_1304523734.668") :outer("185_1304523734.668")
.annotate 'line', 1233
    .const 'Sub' $P1628 = "189_1304523734.668" 
    capture_lex $P1628
    .const 'Sub' $P1599 = "187_1304523734.668" 
    capture_lex $P1599
.annotate 'line', 1235
    new $P1594, "Undef"
    .lex "$output", $P1594
.annotate 'line', 1234
    find_lex $P1595, "$code"
    unless_null $P1595, vivify_778
    new $P1595, "Undef"
  vivify_778:
    concat $P1596, $P1595, "\n"
    store_lex "$code", $P1596
    find_lex $P1597, "$output"
    unless_null $P1597, vivify_779
    new $P1597, "Undef"
  vivify_779:
.annotate 'line', 1236
    .const 'Sub' $P1599 = "187_1304523734.668" 
    capture_lex $P1599
    $P1599()
.annotate 'line', 1243
    find_dynamic_lex $P1625, "$*MAIN_CTX"
    unless_null $P1625, vivify_784
    get_hll_global $P1623, "GLOBAL"
    get_who $P1624, $P1623
    set $P1625, $P1624["$MAIN_CTX"]
    unless_null $P1625, vivify_785
    die "Contextual $*MAIN_CTX not found"
  vivify_785:
  vivify_784:
    defined $I1626, $P1625
    unless $I1626, if_1622_end
    .const 'Sub' $P1628 = "189_1304523734.668" 
    capture_lex $P1628
    $P1628()
  if_1622_end:
.annotate 'line', 1251
    find_lex $P1659, "$output"
    unless_null $P1659, vivify_795
    new $P1659, "Undef"
  vivify_795:
    isnull $I1660, $P1659
    unless $I1660, if_1658_end
    set $I1661, .CONTROL_LOOP_NEXT
    die 0, $I1661
  if_1658_end:
.annotate 'line', 1253
    find_lex $P1664, "$target"
    unless_null $P1664, vivify_796
    new $P1664, "Undef"
  vivify_796:
    isfalse $I1665, $P1664
    if $I1665, if_1663
.annotate 'line', 1255
    find_lex $P1671, "$target"
    unless_null $P1671, vivify_797
    new $P1671, "Undef"
  vivify_797:
    set $S1672, $P1671
    iseq $I1673, $S1672, "pir"
    if $I1673, if_1670
.annotate 'line', 1258
    find_lex $P1675, "self"
    find_lex $P1676, "$output"
    unless_null $P1676, vivify_798
    new $P1676, "Undef"
  vivify_798:
    find_lex $P1677, "$target"
    unless_null $P1677, vivify_799
    new $P1677, "Undef"
  vivify_799:
    find_lex $P1678, "%adverbs"
    unless_null $P1678, vivify_800
    $P1678 = root_new ['parrot';'Hash']
  vivify_800:
    $P1679 = $P1675."dumper"($P1676, $P1677, $P1678 :flat)
.annotate 'line', 1257
    set $P1669, $P1679
.annotate 'line', 1255
    goto if_1670_end
  if_1670:
.annotate 'line', 1256
    find_lex $P1674, "$output"
    unless_null $P1674, vivify_801
    new $P1674, "Undef"
  vivify_801:
    say $P1674
  if_1670_end:
.annotate 'line', 1255
    set $P1662, $P1669
.annotate 'line', 1253
    goto if_1663_end
  if_1663:
.annotate 'line', 1254
    find_lex $P1666, "self"
    find_lex $P1667, "$output"
    unless_null $P1667, vivify_802
    new $P1667, "Undef"
  vivify_802:
    $P1668 = $P1666."autoprint"($P1667)
.annotate 'line', 1253
    set $P1662, $P1668
  if_1663_end:
.annotate 'line', 1233
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1598"  :anon :subid("187_1304523734.668") :outer("186_1304523734.668")
.annotate 'line', 1236
    .const 'Sub' $P1611 = "188_1304523734.668" 
    capture_lex $P1611
    new $P1607, 'ExceptionHandler'
    set_label $P1607, control_1606
    $P1607."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1607
.annotate 'line', 1237
    find_lex $P1600, "self"
    find_lex $P1601, "$code"
    unless_null $P1601, vivify_780
    new $P1601, "Undef"
  vivify_780:
    find_lex $P1602, "$save_ctx"
    unless_null $P1602, vivify_781
    new $P1602, "Undef"
  vivify_781:
    find_lex $P1603, "%adverbs"
    unless_null $P1603, vivify_782
    $P1603 = root_new ['parrot';'Hash']
  vivify_782:
    $P1604 = $P1600."eval"($P1601, $P1603 :flat, $P1602 :named("outer_ctx"))
    store_lex "$output", $P1604
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1605
  control_1606:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1611 = "188_1304523734.668" 
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
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1610"  :anon :subid("188_1304523734.668") :outer("187_1304523734.668")
    .param pmc param_1612
.annotate 'line', 1238
    .lex "$_", param_1612
    find_lex $P1613, "$_"
    .lex "$!", $P1613
.annotate 'line', 1239
    find_lex $P1614, "$!"
    unless_null $P1614, vivify_783
    new $P1614, "Undef"
  vivify_783:
    set $S1615, $P1614
    new $P1616, 'String'
    set $P1616, $S1615
    concat $P1617, $P1616, "\n"
    print $P1617
.annotate 'line', 1240
    set $I1618, .CONTROL_LOOP_NEXT
    die 0, $I1618
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1627"  :anon :subid("189_1304523734.668") :outer("186_1304523734.668")
.annotate 'line', 1243
    .const 'Sub' $P1643 = "190_1304523734.668" 
    capture_lex $P1643
    find_lex $P1629, "$?PACKAGE"
    get_who $P1630, $P1629
    set $P1631, $P1630["$interactive_ctx"]
    unless_null $P1631, vivify_786
    new $P1631, "Undef"
  vivify_786:
    find_lex $P1632, "$?PACKAGE"
    get_who $P1633, $P1632
    set $P1634, $P1633["%interactive_pad"]
    unless_null $P1634, vivify_787
    $P1634 = root_new ['parrot';'Hash']
  vivify_787:
.annotate 'line', 1246
    find_dynamic_lex $P1638, "$*MAIN_CTX"
    unless_null $P1638, vivify_788
    get_hll_global $P1636, "GLOBAL"
    get_who $P1637, $P1636
    set $P1638, $P1637["$MAIN_CTX"]
    unless_null $P1638, vivify_789
    die "Contextual $*MAIN_CTX not found"
  vivify_789:
  vivify_788:
    $P1639 = $P1638."lexpad_full"()
    defined $I1640, $P1639
    unless $I1640, for_undef_790
    iter $P1635, $P1639
    new $P1653, 'ExceptionHandler'
    set_label $P1653, loop1652_handler
    $P1653."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1653
  loop1652_test:
    unless $P1635, loop1652_done
    shift $P1641, $P1635
  loop1652_redo:
    .const 'Sub' $P1643 = "190_1304523734.668" 
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
  for_undef_790:
.annotate 'line', 1249
    find_lex $P1655, "$?PACKAGE"
    get_who $P1656, $P1655
    set $P1657, $P1656["$interactive_ctx"]
    unless_null $P1657, vivify_794
    new $P1657, "Undef"
  vivify_794:
    store_lex "$save_ctx", $P1657
.annotate 'line', 1243
    .return ($P1657)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1642"  :anon :subid("190_1304523734.668") :outer("189_1304523734.668")
    .param pmc param_1644
.annotate 'line', 1246
    .lex "$_", param_1644
.annotate 'line', 1247
    find_lex $P1645, "$_"
    unless_null $P1645, vivify_791
    new $P1645, "Undef"
  vivify_791:
    $P1646 = $P1645."value"()
    find_lex $P1647, "$_"
    unless_null $P1647, vivify_792
    new $P1647, "Undef"
  vivify_792:
    $P1648 = $P1647."key"()
    find_lex $P1649, "$?PACKAGE"
    get_who $P1650, $P1649
    set $P1651, $P1650["%interactive_pad"]
    unless_null $P1651, vivify_793
    $P1651 = root_new ['parrot';'Hash']
    set $P1650["%interactive_pad"], $P1651
  vivify_793:
    set $P1651[$P1648], $P1646
.annotate 'line', 1246
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("191_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1685
    .param pmc param_1686
    .param pmc param_1687 :slurpy
    .param pmc param_1688 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1707 = "192_1304523734.668" 
    capture_lex $P1707
    .lex "self", param_1685
    .lex "$code", param_1686
    .lex "@args", param_1687
    .lex "%adverbs", param_1688
.annotate 'line', 1265
    new $P1689, "Undef"
    .lex "$output", $P1689
.annotate 'line', 1264
    find_lex $P1690, "$output"
    unless_null $P1690, vivify_803
    new $P1690, "Undef"
  vivify_803:
.annotate 'line', 1266
    find_lex $P1691, "self"
    find_lex $P1692, "$code"
    unless_null $P1692, vivify_804
    new $P1692, "Undef"
  vivify_804:
    find_lex $P1693, "%adverbs"
    unless_null $P1693, vivify_805
    $P1693 = root_new ['parrot';'Hash']
  vivify_805:
    $P1694 = $P1691."compile"($P1692, $P1693 :flat)
    store_lex "$output", $P1694
.annotate 'line', 1268
    find_lex $P1698, "$output"
    unless_null $P1698, vivify_806
    new $P1698, "Undef"
  vivify_806:
    isa $I1699, $P1698, "String"
    new $P1700, 'Integer'
    set $P1700, $I1699
    isfalse $I1701, $P1700
    if $I1701, if_1697
    new $P1696, 'Integer'
    set $P1696, $I1701
    goto if_1697_end
  if_1697:
.annotate 'line', 1269
    find_lex $P1702, "%adverbs"
    unless_null $P1702, vivify_807
    $P1702 = root_new ['parrot';'Hash']
  vivify_807:
    set $P1703, $P1702["target"]
    unless_null $P1703, vivify_808
    new $P1703, "Undef"
  vivify_808:
    set $S1704, $P1703
    iseq $I1705, $S1704, ""
    new $P1696, 'Integer'
    set $P1696, $I1705
  if_1697_end:
    unless $P1696, if_1695_end
    .const 'Sub' $P1707 = "192_1304523734.668" 
    capture_lex $P1707
    $P1707()
  if_1695_end:
.annotate 'line', 1268
    find_lex $P1723, "$output"
    unless_null $P1723, vivify_819
    new $P1723, "Undef"
  vivify_819:
.annotate 'line', 1264
    .return ($P1723)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1706"  :anon :subid("192_1304523734.668") :outer("191_1304523734.668")
.annotate 'line', 1270
    new $P1708, "Undef"
    .lex "$outer_ctx", $P1708
    find_lex $P1709, "%adverbs"
    unless_null $P1709, vivify_809
    $P1709 = root_new ['parrot';'Hash']
  vivify_809:
    set $P1710, $P1709["outer_ctx"]
    unless_null $P1710, vivify_810
    new $P1710, "Undef"
  vivify_810:
    store_lex "$outer_ctx", $P1710
.annotate 'line', 1271
    find_lex $P1712, "$outer_ctx"
    unless_null $P1712, vivify_811
    new $P1712, "Undef"
  vivify_811:
    defined $I1713, $P1712
    unless $I1713, if_1711_end
.annotate 'line', 1272
    find_lex $P1714, "$output"
    unless_null $P1714, vivify_812
    $P1714 = root_new ['parrot';'ResizablePMCArray']
  vivify_812:
    set $P1715, $P1714[0]
    unless_null $P1715, vivify_813
    new $P1715, "Undef"
  vivify_813:
    find_lex $P1716, "$outer_ctx"
    unless_null $P1716, vivify_814
    new $P1716, "Undef"
  vivify_814:
    $P1715."set_outer_ctx"($P1716)
  if_1711_end:
.annotate 'line', 1275
    find_lex $P1717, "%adverbs"
    unless_null $P1717, vivify_815
    $P1717 = root_new ['parrot';'Hash']
  vivify_815:
    set $P1718, $P1717["trace"]
    unless_null $P1718, vivify_816
    new $P1718, "Undef"
  vivify_816:
    set $I1719, $P1718
    trace $I1719
.annotate 'line', 1276
    find_lex $P1720, "$output"
    unless_null $P1720, vivify_817
    new $P1720, "Undef"
  vivify_817:
    find_lex $P1721, "@args"
    unless_null $P1721, vivify_818
    $P1721 = root_new ['parrot';'ResizablePMCArray']
  vivify_818:
    $P1722 = $P1720($P1721 :flat)
    store_lex "$output", $P1722
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("193_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1725
.annotate 'line', 1283
    .lex "self", param_1725
.annotate 'line', 1285

                $P0 = getinterp
                $P1726 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1726
.annotate 'line', 1289
    new $P1727, "Integer"
    assign $P1727, 0
    store_dynamic_lex "$*CTXSAVE", $P1727
.annotate 'line', 1283
    .return ($P1727)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("194_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1729
    .param pmc param_1730 :slurpy
.annotate 'line', 1292
    .lex "self", param_1729
    .lex "@args", param_1730
.annotate 'line', 1293
    find_lex $P1731, "@args"
    unless_null $P1731, vivify_820
    $P1731 = root_new ['parrot';'ResizablePMCArray']
  vivify_820:
    join $S1732, "", $P1731
    die $S1732
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("195_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1734
    .param pmc param_1735 :optional
    .param int has_param_1735 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1734
    if has_param_1735, optparam_821
    $P1736 = root_new ['parrot';'ResizablePMCArray']
    set param_1735, $P1736
  optparam_821:
    .lex "@value", param_1735
.annotate 'line', 1297
    find_lex $P1738, "@value"
    unless_null $P1738, vivify_822
    $P1738 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    set $N1739, $P1738
    unless $N1739, if_1737_end
.annotate 'line', 1298
    find_lex $P1740, "@value"
    unless_null $P1740, vivify_823
    $P1740 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    find_lex $P1741, "self"
    find_lex $P1742, "$?CLASS"
    setattribute $P1741, $P1742, "@!stages", $P1740
  if_1737_end:
.annotate 'line', 1297
    find_lex $P1743, "self"
    find_lex $P1744, "$?CLASS"
    getattribute $P1745, $P1743, $P1744, "@!stages"
    unless_null $P1745, vivify_824
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
.annotate 'line', 1296
    .return ($P1745)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("196_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1747
    .param pmc param_1748 :slurpy
.annotate 'line', 1303
    .lex "self", param_1747
    .lex "@value", param_1748
.annotate 'line', 1304
    find_lex $P1750, "@value"
    unless_null $P1750, vivify_825
    $P1750 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    set $N1751, $P1750
    unless $N1751, if_1749_end
.annotate 'line', 1305
    find_lex $P1752, "@value"
    unless_null $P1752, vivify_826
    $P1752 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $P1753, $P1752[0]
    unless_null $P1753, vivify_827
    new $P1753, "Undef"
  vivify_827:
    find_lex $P1754, "self"
    find_lex $P1755, "$?CLASS"
    setattribute $P1754, $P1755, "$!parsegrammar", $P1753
  if_1749_end:
.annotate 'line', 1304
    find_lex $P1756, "self"
    find_lex $P1757, "$?CLASS"
    getattribute $P1758, $P1756, $P1757, "$!parsegrammar"
    unless_null $P1758, vivify_828
    new $P1758, "Undef"
  vivify_828:
.annotate 'line', 1303
    .return ($P1758)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("197_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1760
    .param pmc param_1761 :slurpy
.annotate 'line', 1310
    .lex "self", param_1760
    .lex "@value", param_1761
.annotate 'line', 1311
    find_lex $P1763, "@value"
    unless_null $P1763, vivify_829
    $P1763 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
    set $N1764, $P1763
    unless $N1764, if_1762_end
.annotate 'line', 1312
    find_lex $P1765, "@value"
    unless_null $P1765, vivify_830
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    set $P1766, $P1765[0]
    unless_null $P1766, vivify_831
    new $P1766, "Undef"
  vivify_831:
    find_lex $P1767, "self"
    find_lex $P1768, "$?CLASS"
    setattribute $P1767, $P1768, "$!parseactions", $P1766
  if_1762_end:
.annotate 'line', 1311
    find_lex $P1769, "self"
    find_lex $P1770, "$?CLASS"
    getattribute $P1771, $P1769, $P1770, "$!parseactions"
    unless_null $P1771, vivify_832
    new $P1771, "Undef"
  vivify_832:
.annotate 'line', 1310
    .return ($P1771)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("198_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1773
    .param pmc param_1774 :slurpy
.annotate 'line', 1317
    .lex "self", param_1773
    .lex "@value", param_1774
.annotate 'line', 1318
    find_lex $P1776, "@value"
    unless_null $P1776, vivify_833
    $P1776 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    set $N1777, $P1776
    unless $N1777, if_1775_end
.annotate 'line', 1319
    find_lex $P1778, "@value"
    unless_null $P1778, vivify_834
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $P1779, $P1778[0]
    unless_null $P1779, vivify_835
    new $P1779, "Undef"
  vivify_835:
    find_lex $P1780, "self"
    find_lex $P1781, "$?CLASS"
    setattribute $P1780, $P1781, "$!astgrammar", $P1779
  if_1775_end:
.annotate 'line', 1318
    find_lex $P1782, "self"
    find_lex $P1783, "$?CLASS"
    getattribute $P1784, $P1782, $P1783, "$!astgrammar"
    unless_null $P1784, vivify_836
    new $P1784, "Undef"
  vivify_836:
.annotate 'line', 1317
    .return ($P1784)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("199_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1786
    .param pmc param_1787 :optional
    .param int has_param_1787 :opt_flag
.annotate 'line', 1324
    .lex "self", param_1786
    if has_param_1787, optparam_837
    new $P1788, "Undef"
    set param_1787, $P1788
  optparam_837:
    .lex "$value", param_1787
.annotate 'line', 1325
    find_lex $P1790, "$value"
    unless_null $P1790, vivify_838
    new $P1790, "Undef"
  vivify_838:
    defined $I1791, $P1790
    unless $I1791, if_1789_end
.annotate 'line', 1326
    find_lex $P1792, "$value"
    unless_null $P1792, vivify_839
    new $P1792, "Undef"
  vivify_839:
    find_lex $P1793, "self"
    find_lex $P1794, "$?CLASS"
    setattribute $P1793, $P1794, "$!commandline_banner", $P1792
  if_1789_end:
.annotate 'line', 1325
    find_lex $P1795, "self"
    find_lex $P1796, "$?CLASS"
    getattribute $P1797, $P1795, $P1796, "$!commandline_banner"
    unless_null $P1797, vivify_840
    new $P1797, "Undef"
  vivify_840:
.annotate 'line', 1324
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("200_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1799
    .param pmc param_1800 :optional
    .param int has_param_1800 :opt_flag
.annotate 'line', 1331
    .lex "self", param_1799
    if has_param_1800, optparam_841
    new $P1801, "Undef"
    set param_1800, $P1801
  optparam_841:
    .lex "$value", param_1800
.annotate 'line', 1332
    find_lex $P1803, "$value"
    unless_null $P1803, vivify_842
    new $P1803, "Undef"
  vivify_842:
    defined $I1804, $P1803
    unless $I1804, if_1802_end
.annotate 'line', 1333
    find_lex $P1805, "$value"
    unless_null $P1805, vivify_843
    new $P1805, "Undef"
  vivify_843:
    find_lex $P1806, "self"
    find_lex $P1807, "$?CLASS"
    setattribute $P1806, $P1807, "$!commandline_prompt", $P1805
  if_1802_end:
.annotate 'line', 1332
    find_lex $P1808, "self"
    find_lex $P1809, "$?CLASS"
    getattribute $P1810, $P1808, $P1809, "$!commandline_prompt"
    unless_null $P1810, vivify_844
    new $P1810, "Undef"
  vivify_844:
.annotate 'line', 1331
    .return ($P1810)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("201_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1812
    .param pmc param_1813 :optional
    .param int has_param_1813 :opt_flag
.annotate 'line', 1338
    .lex "self", param_1812
    if has_param_1813, optparam_845
    new $P1814, "Undef"
    set param_1813, $P1814
  optparam_845:
    .lex "$value", param_1813
.annotate 'line', 1339
    find_lex $P1816, "$value"
    unless_null $P1816, vivify_846
    new $P1816, "Undef"
  vivify_846:
    defined $I1817, $P1816
    unless $I1817, if_1815_end
.annotate 'line', 1340
    find_lex $P1818, "$value"
    unless_null $P1818, vivify_847
    new $P1818, "Undef"
  vivify_847:
    find_lex $P1819, "self"
    find_lex $P1820, "$?CLASS"
    setattribute $P1819, $P1820, "$!compiler_progname", $P1818
  if_1815_end:
.annotate 'line', 1339
    find_lex $P1821, "self"
    find_lex $P1822, "$?CLASS"
    getattribute $P1823, $P1821, $P1822, "$!compiler_progname"
    unless_null $P1823, vivify_848
    new $P1823, "Undef"
  vivify_848:
.annotate 'line', 1338
    .return ($P1823)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("202_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1825
    .param pmc param_1826 :optional
    .param int has_param_1826 :opt_flag
.annotate 'line', 1345
    .lex "self", param_1825
    if has_param_1826, optparam_849
    $P1827 = root_new ['parrot';'ResizablePMCArray']
    set param_1826, $P1827
  optparam_849:
    .lex "@value", param_1826
.annotate 'line', 1346
    find_lex $P1829, "@value"
    unless_null $P1829, vivify_850
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $N1830, $P1829
    unless $N1830, if_1828_end
.annotate 'line', 1347
    find_lex $P1831, "@value"
    unless_null $P1831, vivify_851
    $P1831 = root_new ['parrot';'ResizablePMCArray']
  vivify_851:
    find_lex $P1832, "self"
    find_lex $P1833, "$?CLASS"
    setattribute $P1832, $P1833, "@!cmdoptions", $P1831
  if_1828_end:
.annotate 'line', 1346
    find_lex $P1834, "self"
    find_lex $P1835, "$?CLASS"
    getattribute $P1836, $P1834, $P1835, "@!cmdoptions"
    unless_null $P1836, vivify_852
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
.annotate 'line', 1345
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("203_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1838
    .param pmc param_1839
    .param pmc param_1840 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P1866 = "204_1304523734.668" 
    capture_lex $P1866
    .lex "self", param_1838
    .lex "@args", param_1839
    .lex "%adverbs", param_1840
.annotate 'line', 1365
    new $P1841, "Undef"
    .lex "$program-name", $P1841
.annotate 'line', 1366
    new $P1842, "Undef"
    .lex "$res", $P1842
.annotate 'line', 1367
    $P1843 = root_new ['parrot';'Hash']
    .lex "%opts", $P1843
.annotate 'line', 1368
    $P1844 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P1844
.annotate 'line', 1361
    find_lex $P1846, "@args"
    unless_null $P1846, vivify_853
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    set $P1847, $P1846[2]
    unless_null $P1847, vivify_854
    new $P1847, "Undef"
  vivify_854:
    set $S1848, $P1847
    index $I1849, $S1848, "@INC"
    set $N1850, $I1849
    isge $I1851, $N1850, 0.0
    unless $I1851, if_1845_end
.annotate 'line', 1362
    exit 0
  if_1845_end:
.annotate 'line', 1365
    find_lex $P1852, "@args"
    unless_null $P1852, vivify_855
    $P1852 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $P1853, $P1852[0]
    unless_null $P1853, vivify_856
    new $P1853, "Undef"
  vivify_856:
    store_lex "$program-name", $P1853
.annotate 'line', 1366
    find_lex $P1854, "self"
    find_lex $P1855, "@args"
    unless_null $P1855, vivify_857
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    $P1856 = $P1854."process_args"($P1855)
    store_lex "$res", $P1856
.annotate 'line', 1367
    find_lex $P1857, "$res"
    unless_null $P1857, vivify_858
    new $P1857, "Undef"
  vivify_858:
    $P1858 = $P1857."options"()
    store_lex "%opts", $P1858
.annotate 'line', 1368
    find_lex $P1859, "$res"
    unless_null $P1859, vivify_859
    new $P1859, "Undef"
  vivify_859:
    $P1860 = $P1859."arguments"()
    store_lex "@a", $P1860
.annotate 'line', 1370
    find_lex $P1862, "%opts"
    unless_null $P1862, vivify_860
    $P1862 = root_new ['parrot';'Hash']
  vivify_860:
    defined $I1863, $P1862
    unless $I1863, for_undef_861
    iter $P1861, $P1862
    new $P1874, 'ExceptionHandler'
    set_label $P1874, loop1873_handler
    $P1874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1874
  loop1873_test:
    unless $P1861, loop1873_done
    shift $P1864, $P1861
  loop1873_redo:
    .const 'Sub' $P1866 = "204_1304523734.668" 
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
  for_undef_861:
.annotate 'line', 1373
    find_lex $P1877, "%adverbs"
    unless_null $P1877, vivify_867
    $P1877 = root_new ['parrot';'Hash']
  vivify_867:
    set $P1878, $P1877["help"]
    unless_null $P1878, vivify_868
    new $P1878, "Undef"
  vivify_868:
    unless $P1878, if_1876_end
    find_lex $P1879, "self"
    find_lex $P1880, "$program-name"
    unless_null $P1880, vivify_869
    new $P1880, "Undef"
  vivify_869:
    $P1879."usage"($P1880)
  if_1876_end:
.annotate 'line', 1374
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_870
    $P1882 = root_new ['parrot';'Hash']
  vivify_870:
    set $P1883, $P1882["version"]
    unless_null $P1883, vivify_871
    new $P1883, "Undef"
  vivify_871:
    unless $P1883, if_1881_end
    find_lex $P1884, "self"
    $P1884."version"()
  if_1881_end:
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
        
.annotate 'line', 1352
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1865"  :anon :subid("204_1304523734.668") :outer("203_1304523734.668")
    .param pmc param_1867
.annotate 'line', 1370
    .lex "$k", param_1867
.annotate 'line', 1371
    find_lex $P1868, "$k"
    unless_null $P1868, vivify_862
    new $P1868, "Undef"
  vivify_862:
    find_lex $P1869, "%opts"
    unless_null $P1869, vivify_863
    $P1869 = root_new ['parrot';'Hash']
  vivify_863:
    set $P1870, $P1869[$P1868]
    unless_null $P1870, vivify_864
    new $P1870, "Undef"
  vivify_864:
    find_lex $P1871, "$k"
    unless_null $P1871, vivify_865
    new $P1871, "Undef"
  vivify_865:
    find_lex $P1872, "%adverbs"
    unless_null $P1872, vivify_866
    $P1872 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1872
  vivify_866:
    set $P1872[$P1871], $P1870
.annotate 'line', 1370
    .return ($P1870)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("205_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1886
    .param pmc param_1887
.annotate 'line', 1470
    .const 'Sub' $P1906 = "206_1304523734.668" 
    capture_lex $P1906
    .lex "self", param_1886
    .lex "@args", param_1887
.annotate 'line', 1474
    new $P1888, "Undef"
    .lex "$p", $P1888
.annotate 'line', 1477
    new $P1889, "Undef"
    .lex "$res", $P1889
.annotate 'line', 1472
    find_lex $P1890, "self"
    find_lex $P1891, "@args"
    unless_null $P1891, vivify_872
    $P1891 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    $P1892 = $P1891."shift"()
    $P1890."compiler_progname"($P1892)
.annotate 'line', 1474
    get_hll_global $P1893, "GLOBAL"
    nqp_get_package_through_who $P1894, $P1893, "HLL"
    nqp_get_package_through_who $P1895, $P1894, "CommandLine"
    get_who $P1896, $P1895
    set $P1897, $P1896["Parser"]
    find_lex $P1898, "self"
    find_lex $P1899, "$?CLASS"
    getattribute $P1900, $P1898, $P1899, "@!cmdoptions"
    unless_null $P1900, vivify_873
    $P1900 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    $P1901 = $P1897."new"($P1900)
    store_lex "$p", $P1901
.annotate 'line', 1475
    find_lex $P1902, "$p"
    unless_null $P1902, vivify_874
    new $P1902, "Undef"
  vivify_874:
    $P1902."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P1903, "$p"
    unless_null $P1903, vivify_875
    new $P1903, "Undef"
  vivify_875:
    $P1903."stop-after-first-arg"()
    find_lex $P1904, "$res"
    unless_null $P1904, vivify_876
    new $P1904, "Undef"
  vivify_876:
.annotate 'line', 1478
    .const 'Sub' $P1906 = "206_1304523734.668" 
    capture_lex $P1906
    $P1906()
    find_lex $P1924, "$res"
    unless_null $P1924, vivify_880
    new $P1924, "Undef"
  vivify_880:
.annotate 'line', 1470
    .return ($P1924)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1905"  :anon :subid("206_1304523734.668") :outer("205_1304523734.668")
.annotate 'line', 1478
    .const 'Sub' $P1916 = "207_1304523734.668" 
    capture_lex $P1916
    new $P1912, 'ExceptionHandler'
    set_label $P1912, control_1911
    $P1912."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1912
.annotate 'line', 1479
    find_lex $P1907, "$p"
    unless_null $P1907, vivify_877
    new $P1907, "Undef"
  vivify_877:
    find_lex $P1908, "@args"
    unless_null $P1908, vivify_878
    $P1908 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    $P1909 = $P1907."parse"($P1908)
    store_lex "$res", $P1909
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_1910
  control_1911:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1916 = "207_1304523734.668" 
    newclosure $P1921, $P1916
    $P1921(exception)
    new $P1922, 'Integer'
    set $P1922, 1
    set exception["handled"], $P1922
    set $I1923, exception["handled"]
    ne $I1923, 1, nothandled_1914
  handled_1913:
    .return (exception)
  nothandled_1914:
    rethrow exception
  skip_handler_1910:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1915"  :anon :subid("207_1304523734.668") :outer("206_1304523734.668")
    .param pmc param_1917
.annotate 'line', 1480
    .lex "$_", param_1917
    find_lex $P1918, "$_"
    .lex "$!", $P1918
.annotate 'line', 1481
    find_lex $P1919, "$_"
    unless_null $P1919, vivify_879
    new $P1919, "Undef"
  vivify_879:
    say $P1919
.annotate 'line', 1482
    find_lex $P1920, "self"
    $P1920."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("208_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_1928
    .param pmc param_1929
    .param pmc param_1930 :slurpy
    .param pmc param_1931 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P1956 = "209_1304523734.668" 
    capture_lex $P1956
    new $P1927, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1927, control_1926
    push_eh $P1927
    .lex "self", param_1928
    .lex "$files", param_1929
    .lex "@args", param_1930
    .lex "%adverbs", param_1931
.annotate 'line', 1490
    new $P1932, "Undef"
    .lex "$target", $P1932
.annotate 'line', 1491
    new $P1933, "Undef"
    .lex "$encoding", $P1933
.annotate 'line', 1492
    $P1934 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P1934
.annotate 'line', 1493
    $P1935 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P1935
.annotate 'line', 1490
    find_lex $P1936, "%adverbs"
    unless_null $P1936, vivify_881
    $P1936 = root_new ['parrot';'Hash']
  vivify_881:
    set $P1937, $P1936["target"]
    unless_null $P1937, vivify_882
    new $P1937, "Undef"
  vivify_882:
    set $S1938, $P1937
    downcase $S1939, $S1938
    new $P1940, 'String'
    set $P1940, $S1939
    store_lex "$target", $P1940
.annotate 'line', 1491
    find_lex $P1941, "%adverbs"
    unless_null $P1941, vivify_883
    $P1941 = root_new ['parrot';'Hash']
  vivify_883:
    set $P1942, $P1941["encoding"]
    unless_null $P1942, vivify_884
    new $P1942, "Undef"
  vivify_884:
    store_lex "$encoding", $P1942
.annotate 'line', 1492
    find_lex $P1945, "$files"
    unless_null $P1945, vivify_885
    new $P1945, "Undef"
  vivify_885:
    does $I1946, $P1945, "array"
    if $I1946, if_1944
    find_lex $P1948, "$files"
    unless_null $P1948, vivify_886
    new $P1948, "Undef"
  vivify_886:
    new $P1949, "ResizablePMCArray"
    push $P1949, $P1948
    set $P1943, $P1949
    goto if_1944_end
  if_1944:
    find_lex $P1947, "$files"
    unless_null $P1947, vivify_887
    new $P1947, "Undef"
  vivify_887:
    set $P1943, $P1947
  if_1944_end:
    store_lex "@files", $P1943
    find_lex $P1950, "@codes"
    unless_null $P1950, vivify_888
    $P1950 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
.annotate 'line', 1494
    find_lex $P1952, "@files"
    unless_null $P1952, vivify_889
    $P1952 = root_new ['parrot';'ResizablePMCArray']
  vivify_889:
    defined $I1953, $P1952
    unless $I1953, for_undef_890
    iter $P1951, $P1952
    new $P2018, 'ExceptionHandler'
    set_label $P2018, loop2017_handler
    $P2018."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2018
  loop2017_test:
    unless $P1951, loop2017_done
    shift $P1954, $P1951
  loop2017_redo:
    .const 'Sub' $P1956 = "209_1304523734.668" 
    capture_lex $P1956
    $P1956($P1954)
  loop2017_next:
    goto loop2017_test
  loop2017_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2019, exception, 'type'
    eq $P2019, .CONTROL_LOOP_NEXT, loop2017_next
    eq $P2019, .CONTROL_LOOP_REDO, loop2017_redo
  loop2017_done:
    pop_eh 
  for_undef_890:
.annotate 'line', 1489
    .return ($P1951)
  control_1926:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2020, exception, "payload"
    .return ($P2020)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1955"  :anon :subid("209_1304523734.668") :outer("208_1304523734.668")
    .param pmc param_1961
.annotate 'line', 1494
    .const 'Sub' $P1965 = "210_1304523734.668" 
    capture_lex $P1965
.annotate 'line', 1495
    new $P1957, "Undef"
    .lex "$in-handle", $P1957
.annotate 'line', 1496
    new $P1958, "Undef"
    .lex "$err", $P1958
.annotate 'line', 1509
    new $P1959, "Undef"
    .lex "$code", $P1959
.annotate 'line', 1511
    new $P1960, "Undef"
    .lex "$r", $P1960
    .lex "$_", param_1961
.annotate 'line', 1495
    new $P1962, "FileHandle"
    store_lex "$in-handle", $P1962
.annotate 'line', 1496
    new $P1963, "Integer"
    assign $P1963, 0
    store_lex "$err", $P1963
.annotate 'line', 1497
    .const 'Sub' $P1965 = "210_1304523734.668" 
    capture_lex $P1965
    $P1965()
.annotate 'line', 1508
    find_lex $P1989, "$err"
    unless_null $P1989, vivify_898
    new $P1989, "Undef"
  vivify_898:
    unless $P1989, if_1988_end
    find_lex $P1990, "$err"
    unless_null $P1990, vivify_899
    new $P1990, "Undef"
  vivify_899:
    die $P1990
  if_1988_end:
.annotate 'line', 1509
    find_lex $P1991, "@codes"
    unless_null $P1991, vivify_900
    $P1991 = root_new ['parrot';'ResizablePMCArray']
  vivify_900:
    join $S1992, "", $P1991
    new $P1993, 'String'
    set $P1993, $S1992
    store_lex "$code", $P1993
.annotate 'line', 1511
    find_lex $P1994, "self"
    find_lex $P1995, "$code"
    unless_null $P1995, vivify_901
    new $P1995, "Undef"
  vivify_901:
    find_lex $P1996, "@args"
    unless_null $P1996, vivify_902
    $P1996 = root_new ['parrot';'ResizablePMCArray']
  vivify_902:
    find_lex $P1997, "%adverbs"
    unless_null $P1997, vivify_903
    $P1997 = root_new ['parrot';'Hash']
  vivify_903:
    $P1998 = $P1994."eval"($P1995, $P1996 :flat, $P1997 :flat)
    store_lex "$r", $P1998
.annotate 'line', 1512
    find_lex $P2003, "$target"
    unless_null $P2003, vivify_904
    new $P2003, "Undef"
  vivify_904:
    set $S2004, $P2003
    iseq $I2005, $S2004, ""
    unless $I2005, unless_2002
    new $P2001, 'Integer'
    set $P2001, $I2005
    goto unless_2002_end
  unless_2002:
    find_lex $P2006, "$target"
    unless_null $P2006, vivify_905
    new $P2006, "Undef"
  vivify_905:
    set $S2007, $P2006
    iseq $I2008, $S2007, "pir"
    new $P2001, 'Integer'
    set $P2001, $I2008
  unless_2002_end:
    if $P2001, if_2000
.annotate 'line', 1515
    new $P2011, "Exception"
    set $P2011['type'], .CONTROL_RETURN
    find_lex $P2012, "self"
    find_lex $P2013, "$r"
    unless_null $P2013, vivify_906
    new $P2013, "Undef"
  vivify_906:
    find_lex $P2014, "$target"
    unless_null $P2014, vivify_907
    new $P2014, "Undef"
  vivify_907:
    find_lex $P2015, "%adverbs"
    unless_null $P2015, vivify_908
    $P2015 = root_new ['parrot';'Hash']
  vivify_908:
    $P2016 = $P2012."dumper"($P2013, $P2014, $P2015 :flat)
    setattribute $P2011, 'payload', $P2016
    throw $P2011
.annotate 'line', 1514
    goto if_2000_end
  if_2000:
.annotate 'line', 1513
    new $P2009, "Exception"
    set $P2009['type'], .CONTROL_RETURN
    find_lex $P2010, "$r"
    unless_null $P2010, vivify_909
    new $P2010, "Undef"
  vivify_909:
    setattribute $P2009, 'payload', $P2010
    throw $P2009
  if_2000_end:
.annotate 'line', 1494
    .return ($P1999)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1964"  :anon :subid("210_1304523734.668") :outer("209_1304523734.668")
.annotate 'line', 1497
    .const 'Sub' $P1979 = "211_1304523734.668" 
    capture_lex $P1979
    new $P1975, 'ExceptionHandler'
    set_label $P1975, control_1974
    $P1975."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1975
.annotate 'line', 1501
    find_lex $P1966, "$in-handle"
    unless_null $P1966, vivify_891
    new $P1966, "Undef"
  vivify_891:
    find_lex $P1967, "$encoding"
    unless_null $P1967, vivify_892
    new $P1967, "Undef"
  vivify_892:
    $P1966."encoding"($P1967)
.annotate 'line', 1502
    find_lex $P1968, "@codes"
    unless_null $P1968, vivify_893
    $P1968 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    find_lex $P1969, "$in-handle"
    unless_null $P1969, vivify_894
    new $P1969, "Undef"
  vivify_894:
    find_lex $P1970, "$_"
    unless_null $P1970, vivify_895
    new $P1970, "Undef"
  vivify_895:
    $P1971 = $P1969."readall"($P1970)
    push $P1968, $P1971
.annotate 'line', 1503
    find_lex $P1972, "$in-handle"
    unless_null $P1972, vivify_896
    new $P1972, "Undef"
  vivify_896:
    $P1972."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_1973
  control_1974:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1979 = "211_1304523734.668" 
    newclosure $P1985, $P1979
    $P1985(exception)
    new $P1986, 'Integer'
    set $P1986, 1
    set exception["handled"], $P1986
    set $I1987, exception["handled"]
    ne $I1987, 1, nothandled_1977
  handled_1976:
    .return (exception)
  nothandled_1977:
    rethrow exception
  skip_handler_1973:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1978"  :anon :subid("211_1304523734.668") :outer("210_1304523734.668")
    .param pmc param_1980
.annotate 'line', 1504
    .lex "$_", param_1980
    find_lex $P1981, "$_"
    .lex "$!", $P1981
.annotate 'line', 1505
    new $P1982, 'String'
    set $P1982, "Error while reading from file: "
    find_lex $P1983, "$_"
    unless_null $P1983, vivify_897
    new $P1983, "Undef"
  vivify_897:
    concat $P1984, $P1982, $P1983
    store_lex "$err", $P1984
.annotate 'line', 1504
    .return ($P1984)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("212_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2024
    .param pmc param_2025
    .param pmc param_2026 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2049 = "213_1304523734.668" 
    capture_lex $P2049
    new $P2023, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2023, control_2022
    push_eh $P2023
    .lex "self", param_2024
    .lex "$source", param_2025
    .lex "%adverbs", param_2026
.annotate 'line', 1522
    $P2027 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2027
.annotate 'line', 1524
    new $P2028, "Undef"
    .lex "$target", $P2028
.annotate 'line', 1525
    new $P2029, "Undef"
    .lex "$result", $P2029
.annotate 'line', 1526
    new $P2030, "Undef"
    .lex "$stderr", $P2030
.annotate 'line', 1522
    find_lex $P2031, "%adverbs"
    unless_null $P2031, vivify_910
    $P2031 = root_new ['parrot';'Hash']
  vivify_910:
    find_lex $P2034, "%*COMPILING"
    unless_null $P2034, vivify_911
    get_hll_global $P2032, "GLOBAL"
    get_who $P2033, $P2032
    set $P2034, $P2033["%COMPILING"]
    unless_null $P2034, vivify_912
    die "Contextual %*COMPILING not found"
  vivify_912:
    store_lex "%*COMPILING", $P2034
  vivify_911:
    set $P2034["%?OPTIONS"], $P2031
.annotate 'line', 1524
    find_lex $P2035, "%adverbs"
    unless_null $P2035, vivify_913
    $P2035 = root_new ['parrot';'Hash']
  vivify_913:
    set $P2036, $P2035["target"]
    unless_null $P2036, vivify_914
    new $P2036, "Undef"
  vivify_914:
    set $S2037, $P2036
    downcase $S2038, $S2037
    new $P2039, 'String'
    set $P2039, $S2038
    store_lex "$target", $P2039
.annotate 'line', 1525
    find_lex $P2040, "$source"
    unless_null $P2040, vivify_915
    new $P2040, "Undef"
  vivify_915:
    store_lex "$result", $P2040
.annotate 'line', 1526
    getinterp $P2041
    $P2042 = $P2041."stderr_handle"()
    store_lex "$stderr", $P2042
.annotate 'line', 1527
    find_lex $P2044, "self"
    $P2045 = $P2044."stages"()
    defined $I2046, $P2045
    unless $I2046, for_undef_916
    iter $P2043, $P2045
    new $P2085, 'ExceptionHandler'
    set_label $P2085, loop2084_handler
    $P2085."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2085
  loop2084_test:
    unless $P2043, loop2084_done
    shift $P2047, $P2043
  loop2084_redo:
    .const 'Sub' $P2049 = "213_1304523734.668" 
    capture_lex $P2049
    $P2049($P2047)
  loop2084_next:
    goto loop2084_test
  loop2084_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2086, exception, 'type'
    eq $P2086, .CONTROL_LOOP_NEXT, loop2084_next
    eq $P2086, .CONTROL_LOOP_REDO, loop2084_redo
  loop2084_done:
    pop_eh 
  for_undef_916:
.annotate 'line', 1537
    new $P2087, "Exception"
    set $P2087['type'], .CONTROL_RETURN
    find_lex $P2088, "$result"
    unless_null $P2088, vivify_928
    new $P2088, "Undef"
  vivify_928:
    setattribute $P2087, 'payload', $P2088
    throw $P2087
.annotate 'line', 1521
    .return ()
  control_2022:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2089, exception, "payload"
    .return ($P2089)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2048"  :anon :subid("213_1304523734.668") :outer("212_1304523734.668")
    .param pmc param_2052
.annotate 'line', 1528
    new $P2050, "Undef"
    .lex "$timestamp", $P2050
.annotate 'line', 1530
    new $P2051, "Undef"
    .lex "$diff", $P2051
    .lex "$_", param_2052
.annotate 'line', 1528
    time $N2053
    new $P2054, 'Float'
    set $P2054, $N2053
    store_lex "$timestamp", $P2054
.annotate 'line', 1529
    find_lex $P2055, "self"
    find_lex $P2056, "$result"
    unless_null $P2056, vivify_917
    new $P2056, "Undef"
  vivify_917:
    find_lex $P2057, "%adverbs"
    unless_null $P2057, vivify_918
    $P2057 = root_new ['parrot';'Hash']
  vivify_918:
    find_lex $P2058, "$_"
    unless_null $P2058, vivify_919
    new $P2058, "Undef"
  vivify_919:
    set $S2059, $P2058
    $P2060 = $P2055.$S2059($P2056, $P2057 :flat)
    store_lex "$result", $P2060
.annotate 'line', 1530
    time $N2061
    new $P2062, 'Float'
    set $P2062, $N2061
    find_lex $P2063, "$timestamp"
    unless_null $P2063, vivify_920
    new $P2063, "Undef"
  vivify_920:
    sub $P2064, $P2062, $P2063
    store_lex "$diff", $P2064
.annotate 'line', 1531
    find_lex $P2066, "%adverbs"
    unless_null $P2066, vivify_921
    $P2066 = root_new ['parrot';'Hash']
  vivify_921:
    set $P2067, $P2066["stagestats"]
    unless_null $P2067, vivify_922
    new $P2067, "Undef"
  vivify_922:
    unless $P2067, if_2065_end
.annotate 'line', 1533
    find_lex $P2068, "$stderr"
    unless_null $P2068, vivify_923
    new $P2068, "Undef"
  vivify_923:
    new $P2069, 'String'
    set $P2069, "Stage "
    find_lex $P2070, "$_"
    unless_null $P2070, vivify_924
    new $P2070, "Undef"
  vivify_924:
    concat $P2071, $P2069, $P2070
    concat $P2072, $P2071, ": "
    find_lex $P2073, "$diff"
    unless_null $P2073, vivify_925
    new $P2073, "Undef"
  vivify_925:
    concat $P2074, $P2072, $P2073
    concat $P2075, $P2074, "\n"
    $P2068."print__N"($P2075)
  if_2065_end:
.annotate 'line', 1535
    find_lex $P2078, "$_"
    unless_null $P2078, vivify_926
    new $P2078, "Undef"
  vivify_926:
    set $S2079, $P2078
    find_lex $P2080, "$target"
    unless_null $P2080, vivify_927
    new $P2080, "Undef"
  vivify_927:
    set $S2081, $P2080
    iseq $I2082, $S2079, $S2081
    if $I2082, if_2077
    new $P2076, 'Integer'
    set $P2076, $I2082
    goto if_2077_end
  if_2077:
    set $I2083, .CONTROL_LOOP_LAST
    die 0, $I2083
  if_2077_end:
.annotate 'line', 1527
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse"  :subid("214_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2093
    .param pmc param_2094
    .param pmc param_2095 :slurpy :named
.annotate 'line', 1540
    .const 'Sub' $P2112 = "215_1304523734.668" 
    capture_lex $P2112
    new $P2092, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2092, control_2091
    push_eh $P2092
    .lex "self", param_2093
    .lex "$source", param_2094
    .lex "%adverbs", param_2095
.annotate 'line', 1541
    new $P2096, "Undef"
    .lex "$s", $P2096
.annotate 'line', 1550
    new $P2097, "Undef"
    .lex "$grammar", $P2097
.annotate 'line', 1551
    new $P2098, "Undef"
    .lex "$actions", $P2098
.annotate 'line', 1553
    new $P2099, "Undef"
    .lex "$match", $P2099
.annotate 'line', 1541
    find_lex $P2100, "$source"
    unless_null $P2100, vivify_929
    new $P2100, "Undef"
  vivify_929:
    store_lex "$s", $P2100
.annotate 'line', 1542
    find_lex $P2102, "%adverbs"
    unless_null $P2102, vivify_930
    $P2102 = root_new ['parrot';'Hash']
  vivify_930:
    set $P2103, $P2102["transcode"]
    unless_null $P2103, vivify_931
    new $P2103, "Undef"
  vivify_931:
    unless $P2103, if_2101_end
.annotate 'line', 1543
    find_lex $P2105, "%adverbs"
    unless_null $P2105, vivify_932
    $P2105 = root_new ['parrot';'Hash']
  vivify_932:
    set $P2106, $P2105["transcode"]
    unless_null $P2106, vivify_933
    new $P2106, "Undef"
  vivify_933:
    set $S2107, $P2106
    split $P2108, " ", $S2107
    defined $I2109, $P2108
    unless $I2109, for_undef_934
    iter $P2104, $P2108
    new $P2132, 'ExceptionHandler'
    set_label $P2132, loop2131_handler
    $P2132."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2132
  loop2131_test:
    unless $P2104, loop2131_done
    shift $P2110, $P2104
  loop2131_redo:
    .const 'Sub' $P2112 = "215_1304523734.668" 
    capture_lex $P2112
    $P2112($P2110)
  loop2131_next:
    goto loop2131_test
  loop2131_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2133, exception, 'type'
    eq $P2133, .CONTROL_LOOP_NEXT, loop2131_next
    eq $P2133, .CONTROL_LOOP_REDO, loop2131_redo
  loop2131_done:
    pop_eh 
  for_undef_934:
  if_2101_end:
.annotate 'line', 1550
    find_lex $P2134, "self"
    $P2135 = $P2134."parsegrammar"()
    store_lex "$grammar", $P2135
    find_lex $P2136, "$actions"
    unless_null $P2136, vivify_937
    new $P2136, "Undef"
  vivify_937:
.annotate 'line', 1552
    find_lex $P2138, "%adverbs"
    unless_null $P2138, vivify_938
    $P2138 = root_new ['parrot';'Hash']
  vivify_938:
    set $P2139, $P2138["target"]
    unless_null $P2139, vivify_939
    new $P2139, "Undef"
  vivify_939:
    set $S2140, $P2139
    iseq $I2141, $S2140, "parse"
    if $I2141, unless_2137_end
    find_lex $P2142, "self"
    $P2143 = $P2142."parseactions"()
    store_lex "$actions", $P2143
  unless_2137_end:
.annotate 'line', 1553
    find_lex $P2144, "$grammar"
    unless_null $P2144, vivify_940
    new $P2144, "Undef"
  vivify_940:
    find_lex $P2145, "$s"
    unless_null $P2145, vivify_941
    new $P2145, "Undef"
  vivify_941:
    find_lex $P2146, "$actions"
    unless_null $P2146, vivify_942
    new $P2146, "Undef"
  vivify_942:
    find_lex $P2147, "%adverbs"
    unless_null $P2147, vivify_943
    $P2147 = root_new ['parrot';'Hash']
  vivify_943:
    set $P2148, $P2147["rxtrace"]
    unless_null $P2148, vivify_944
    new $P2148, "Undef"
  vivify_944:
    $P2149 = $P2144."parse"($P2145, 0 :named("p"), $P2146 :named("actions"), $P2148 :named("rxtrace"))
    store_lex "$match", $P2149
.annotate 'line', 1554
    find_lex $P2151, "$match"
    unless_null $P2151, vivify_945
    new $P2151, "Undef"
  vivify_945:
    if $P2151, unless_2150_end
    find_lex $P2152, "self"
    $P2152."panic"("Unable to parse source")
  unless_2150_end:
.annotate 'line', 1555
    new $P2153, "Exception"
    set $P2153['type'], .CONTROL_RETURN
    find_lex $P2154, "$match"
    unless_null $P2154, vivify_946
    new $P2154, "Undef"
  vivify_946:
    setattribute $P2153, 'payload', $P2154
    throw $P2153
.annotate 'line', 1540
    .return ()
  control_2091:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2155, exception, "payload"
    .return ($P2155)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2111"  :anon :subid("215_1304523734.668") :outer("214_1304523734.668")
    .param pmc param_2113
.annotate 'line', 1543
    .const 'Sub' $P2115 = "216_1304523734.668" 
    capture_lex $P2115
    .lex "$_", param_2113
.annotate 'line', 1544
    .const 'Sub' $P2115 = "216_1304523734.668" 
    capture_lex $P2115
    $P2130 = $P2115()
.annotate 'line', 1543
    .return ($P2130)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2114"  :anon :subid("216_1304523734.668") :outer("215_1304523734.668")
.annotate 'line', 1544
    new $P2125, 'ExceptionHandler'
    set_label $P2125, control_2124
    $P2125."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2125
.annotate 'line', 1545
    find_lex $P2116, "$s"
    unless_null $P2116, vivify_935
    new $P2116, "Undef"
  vivify_935:
    set $S2117, $P2116
.annotate 'line', 1546
    find_lex $P2118, "$_"
    unless_null $P2118, vivify_936
    new $P2118, "Undef"
  vivify_936:
    set $S2119, $P2118
    find_encoding $I2120, $S2119
    trans_encoding $S2121, $S2117, $I2120
.annotate 'line', 1545
    new $P2122, 'String'
    set $P2122, $S2121
    store_lex "$s", $P2122
.annotate 'line', 1544
    pop_eh 
    goto skip_handler_2123
  control_2124:
    .local pmc exception 
    .get_results (exception) 
    new $P2128, 'Integer'
    set $P2128, 1
    set exception["handled"], $P2128
    set $I2129, exception["handled"]
    ne $I2129, 1, nothandled_2127
  handled_2126:
    .return (exception)
  nothandled_2127:
    rethrow exception
  skip_handler_2123:
    .return ($P2122)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("217_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2157
    .param pmc param_2158
    .param pmc param_2159 :slurpy :named
.annotate 'line', 1558
    .lex "self", param_2157
    .lex "$source", param_2158
    .lex "%adverbs", param_2159
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
.sub "post"  :subid("218_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2161
    .param pmc param_2162
    .param pmc param_2163 :slurpy :named
.annotate 'line', 1598
    .lex "self", param_2161
    .lex "$source", param_2162
    .lex "%adverbs", param_2163
.annotate 'line', 1599
    compreg $P2164, "PAST"
    find_lex $P2165, "$source"
    unless_null $P2165, vivify_947
    new $P2165, "Undef"
  vivify_947:
    find_lex $P2166, "%adverbs"
    unless_null $P2166, vivify_948
    $P2166 = root_new ['parrot';'Hash']
  vivify_948:
    $P2167 = $P2164."to_post"($P2165, $P2166 :flat)
.annotate 'line', 1598
    .return ($P2167)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2169
    .param pmc param_2170
    .param pmc param_2171 :slurpy :named
.annotate 'line', 1602
    .lex "self", param_2169
    .lex "$source", param_2170
    .lex "%adverbs", param_2171
.annotate 'line', 1603
    compreg $P2172, "POST"
    find_lex $P2173, "$source"
    unless_null $P2173, vivify_949
    new $P2173, "Undef"
  vivify_949:
    find_lex $P2174, "%adverbs"
    unless_null $P2174, vivify_950
    $P2174 = root_new ['parrot';'Hash']
  vivify_950:
    $P2175 = $P2172."to_pir"($P2173, $P2174 :flat)
.annotate 'line', 1602
    .return ($P2175)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2177
    .param pmc param_2178
    .param pmc param_2179 :slurpy :named
.annotate 'line', 1606
    .lex "self", param_2177
    .lex "$source", param_2178
    .lex "%adverbs", param_2179
.annotate 'line', 1607
    new $P2180, "Undef"
    .lex "$compiler", $P2180
    compreg $P2181, "PIR"
    store_lex "$compiler", $P2181
.annotate 'line', 1608
    find_lex $P2182, "$compiler"
    unless_null $P2182, vivify_951
    new $P2182, "Undef"
  vivify_951:
    find_lex $P2183, "$source"
    unless_null $P2183, vivify_952
    new $P2183, "Undef"
  vivify_952:
    $P2184 = $P2182($P2183)
.annotate 'line', 1606
    .return ($P2184)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2186
    .param pmc param_2187
    .param pmc param_2188
    .param pmc param_2189 :slurpy :named
.annotate 'line', 1611
    .const 'Sub' $P2195 = "222_1304523734.668" 
    capture_lex $P2195
    .lex "self", param_2186
    .lex "$obj", param_2187
    .lex "$name", param_2188
    .lex "%options", param_2189
.annotate 'line', 1612
    find_lex $P2192, "%options"
    unless_null $P2192, vivify_953
    $P2192 = root_new ['parrot';'Hash']
  vivify_953:
    set $P2193, $P2192["dumper"]
    unless_null $P2193, vivify_954
    new $P2193, "Undef"
  vivify_954:
    if $P2193, if_2191
.annotate 'line', 1618
    find_lex $P2211, "$obj"
    unless_null $P2211, vivify_955
    new $P2211, "Undef"
  vivify_955:
    find_lex $P2212, "$name"
    unless_null $P2212, vivify_956
    new $P2212, "Undef"
  vivify_956:
    $P2213 = "_dumper"($P2211, $P2212)
.annotate 'line', 1617
    set $P2190, $P2213
.annotate 'line', 1612
    goto if_2191_end
  if_2191:
    .const 'Sub' $P2195 = "222_1304523734.668" 
    capture_lex $P2195
    $P2210 = $P2195()
    set $P2190, $P2210
  if_2191_end:
.annotate 'line', 1611
    .return ($P2190)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2194"  :anon :subid("222_1304523734.668") :outer("221_1304523734.668")
.annotate 'line', 1614
    new $P2196, "Undef"
    .lex "$dumper", $P2196
.annotate 'line', 1613
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1614
    find_lex $P2197, "%options"
    unless_null $P2197, vivify_957
    $P2197 = root_new ['parrot';'Hash']
  vivify_957:
    set $P2198, $P2197["dumper"]
    unless_null $P2198, vivify_958
    new $P2198, "Undef"
  vivify_958:
    set $S2199, $P2198
    downcase $S2200, $S2199
    get_hll_global $P2201, "GLOBAL"
    nqp_get_package_through_who $P2202, $P2201, "PCT"
    get_who $P2203, $P2202
    set $P2204, $P2203["Dumper"]
    unless_null $P2204, vivify_959
    $P2204 = root_new ['parrot';'Hash']
  vivify_959:
    set $P2205, $P2204[$S2200]
    unless_null $P2205, vivify_960
    new $P2205, "Undef"
  vivify_960:
    store_lex "$dumper", $P2205
.annotate 'line', 1615
    find_lex $P2206, "$dumper"
    unless_null $P2206, vivify_961
    new $P2206, "Undef"
  vivify_961:
    find_lex $P2207, "$obj"
    unless_null $P2207, vivify_962
    new $P2207, "Undef"
  vivify_962:
    find_lex $P2208, "$name"
    unless_null $P2208, vivify_963
    new $P2208, "Undef"
  vivify_963:
    $P2209 = $P2206($P2207, $P2208)
.annotate 'line', 1612
    .return ($P2209)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2215
    .param pmc param_2216 :optional
    .param int has_param_2216 :opt_flag
.annotate 'line', 1622
    .lex "self", param_2215
    if has_param_2216, optparam_964
    new $P2217, "Undef"
    set param_2216, $P2217
  optparam_964:
    .lex "$name", param_2216
.annotate 'line', 1623
    find_lex $P2219, "$name"
    unless_null $P2219, vivify_965
    new $P2219, "Undef"
  vivify_965:
    unless $P2219, if_2218_end
.annotate 'line', 1624
    find_lex $P2220, "$name"
    unless_null $P2220, vivify_966
    new $P2220, "Undef"
  vivify_966:
    "say"($P2220)
  if_2218_end:
.annotate 'line', 1626
    find_lex $P2221, "self"
    find_lex $P2222, "$?CLASS"
    getattribute $P2223, $P2221, $P2222, "$!usage"
    unless_null $P2223, vivify_967
    new $P2223, "Undef"
  vivify_967:
    say $P2223
.annotate 'line', 1627
    exit 0
.annotate 'line', 1622
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2225
.annotate 'line', 1630
    .lex "self", param_2225
.annotate 'line', 1631
    find_lex $P2226, "self"
    find_lex $P2227, "$?CLASS"
    getattribute $P2228, $P2226, $P2227, "$!version"
    unless_null $P2228, vivify_968
    new $P2228, "Undef"
  vivify_968:
    say $P2228
.annotate 'line', 1632
    exit 0
.annotate 'line', 1630
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2230
    .param pmc param_2231
.annotate 'line', 1635
    .const 'Sub' $P2241 = "226_1304523734.668" 
    capture_lex $P2241
    .lex "self", param_2230
    .lex "$stagename", param_2231
.annotate 'line', 1636
    $P2232 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2232
    new $P2233, "ResizableStringArray"
    store_lex "@new_stages", $P2233
.annotate 'line', 1637
    find_lex $P2235, "self"
    find_lex $P2236, "$?CLASS"
    getattribute $P2237, $P2235, $P2236, "@!stages"
    unless_null $P2237, vivify_969
    $P2237 = root_new ['parrot';'ResizablePMCArray']
  vivify_969:
    defined $I2238, $P2237
    unless $I2238, for_undef_970
    iter $P2234, $P2237
    new $P2254, 'ExceptionHandler'
    set_label $P2254, loop2253_handler
    $P2254."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2254
  loop2253_test:
    unless $P2234, loop2253_done
    shift $P2239, $P2234
  loop2253_redo:
    .const 'Sub' $P2241 = "226_1304523734.668" 
    capture_lex $P2241
    $P2241($P2239)
  loop2253_next:
    goto loop2253_test
  loop2253_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2255, exception, 'type'
    eq $P2255, .CONTROL_LOOP_NEXT, loop2253_next
    eq $P2255, .CONTROL_LOOP_REDO, loop2253_redo
  loop2253_done:
    pop_eh 
  for_undef_970:
.annotate 'line', 1642
    find_lex $P2256, "@new_stages"
    unless_null $P2256, vivify_975
    $P2256 = root_new ['parrot';'ResizablePMCArray']
  vivify_975:
    find_lex $P2257, "self"
    find_lex $P2258, "$?CLASS"
    setattribute $P2257, $P2258, "@!stages", $P2256
.annotate 'line', 1635
    .return ($P2256)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2240"  :anon :subid("226_1304523734.668") :outer("225_1304523734.668")
    .param pmc param_2242
.annotate 'line', 1637
    .lex "$_", param_2242
.annotate 'line', 1638
    find_lex $P2245, "$_"
    unless_null $P2245, vivify_971
    new $P2245, "Undef"
  vivify_971:
    set $S2246, $P2245
    find_lex $P2247, "$stagename"
    unless_null $P2247, vivify_972
    new $P2247, "Undef"
  vivify_972:
    set $S2248, $P2247
    isne $I2249, $S2246, $S2248
    if $I2249, if_2244
    new $P2243, 'Integer'
    set $P2243, $I2249
    goto if_2244_end
  if_2244:
.annotate 'line', 1639
    find_lex $P2250, "@new_stages"
    unless_null $P2250, vivify_973
    $P2250 = root_new ['parrot';'ResizablePMCArray']
  vivify_973:
    find_lex $P2251, "$_"
    unless_null $P2251, vivify_974
    new $P2251, "Undef"
  vivify_974:
    $P2252 = $P2250."push"($P2251)
.annotate 'line', 1638
    set $P2243, $P2252
  if_2244_end:
.annotate 'line', 1637
    .return ($P2243)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2262
    .param pmc param_2263
    .param pmc param_2264 :slurpy :named
.annotate 'line', 1645
    .const 'Sub' $P2301 = "229_1304523734.668" 
    capture_lex $P2301
    .const 'Sub' $P2283 = "228_1304523734.668" 
    capture_lex $P2283
    new $P2261, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2261, control_2260
    push_eh $P2261
    .lex "self", param_2262
    .lex "$stagename", param_2263
    .lex "%adverbs", param_2264
.annotate 'line', 1646
    new $P2265, "Undef"
    .lex "$position", $P2265
.annotate 'line', 1647
    new $P2266, "Undef"
    .lex "$where", $P2266
.annotate 'line', 1660
    $P2267 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2267
.annotate 'line', 1645
    find_lex $P2268, "$position"
    unless_null $P2268, vivify_976
    new $P2268, "Undef"
  vivify_976:
    find_lex $P2269, "$where"
    unless_null $P2269, vivify_977
    new $P2269, "Undef"
  vivify_977:
.annotate 'line', 1648
    find_lex $P2271, "%adverbs"
    unless_null $P2271, vivify_978
    $P2271 = root_new ['parrot';'Hash']
  vivify_978:
    set $P2272, $P2271["before"]
    unless_null $P2272, vivify_979
    new $P2272, "Undef"
  vivify_979:
    if $P2272, if_2270
.annotate 'line', 1651
    find_lex $P2277, "%adverbs"
    unless_null $P2277, vivify_980
    $P2277 = root_new ['parrot';'Hash']
  vivify_980:
    set $P2278, $P2277["after"]
    unless_null $P2278, vivify_981
    new $P2278, "Undef"
  vivify_981:
    if $P2278, if_2276
.annotate 'line', 1654
    .const 'Sub' $P2283 = "228_1304523734.668" 
    capture_lex $P2283
    $P2283()
    goto if_2276_end
  if_2276:
.annotate 'line', 1652
    find_lex $P2279, "%adverbs"
    unless_null $P2279, vivify_985
    $P2279 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2280, $P2279["after"]
    unless_null $P2280, vivify_986
    new $P2280, "Undef"
  vivify_986:
    store_lex "$where", $P2280
.annotate 'line', 1653
    new $P2281, "String"
    assign $P2281, "after"
    store_lex "$position", $P2281
  if_2276_end:
.annotate 'line', 1651
    goto if_2270_end
  if_2270:
.annotate 'line', 1649
    find_lex $P2273, "%adverbs"
    unless_null $P2273, vivify_987
    $P2273 = root_new ['parrot';'Hash']
  vivify_987:
    set $P2274, $P2273["before"]
    unless_null $P2274, vivify_988
    new $P2274, "Undef"
  vivify_988:
    store_lex "$where", $P2274
.annotate 'line', 1650
    new $P2275, "String"
    assign $P2275, "before"
    store_lex "$position", $P2275
  if_2270_end:
.annotate 'line', 1660
    new $P2294, "ResizableStringArray"
    store_lex "@new-stages", $P2294
.annotate 'line', 1661
    find_lex $P2296, "self"
    $P2297 = $P2296."stages"()
    defined $I2298, $P2297
    unless $I2298, for_undef_989
    iter $P2295, $P2297
    new $P2326, 'ExceptionHandler'
    set_label $P2326, loop2325_handler
    $P2326."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2326
  loop2325_test:
    unless $P2295, loop2325_done
    shift $P2299, $P2295
  loop2325_redo:
    .const 'Sub' $P2301 = "229_1304523734.668" 
    capture_lex $P2301
    $P2301($P2299)
  loop2325_next:
    goto loop2325_test
  loop2325_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2327, exception, 'type'
    eq $P2327, .CONTROL_LOOP_NEXT, loop2325_next
    eq $P2327, .CONTROL_LOOP_REDO, loop2325_redo
  loop2325_done:
    pop_eh 
  for_undef_989:
.annotate 'line', 1674
    find_lex $P2328, "self"
    find_lex $P2329, "@new-stages"
    unless_null $P2329, vivify_1003
    $P2329 = root_new ['parrot';'ResizablePMCArray']
  vivify_1003:
    $P2330 = $P2328."stages"($P2329)
.annotate 'line', 1645
    .return ($P2330)
  control_2260:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2331, exception, "payload"
    .return ($P2331)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2282"  :anon :subid("228_1304523734.668") :outer("227_1304523734.668")
.annotate 'line', 1655
    $P2284 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2284
    find_lex $P2285, "self"
    $P2286 = $P2285."stages"()
    clone $P2287, $P2286
    store_lex "@new-stages", $P2287
.annotate 'line', 1656
    find_lex $P2288, "@new-stages"
    unless_null $P2288, vivify_982
    $P2288 = root_new ['parrot';'ResizablePMCArray']
  vivify_982:
    find_lex $P2289, "$stagename"
    unless_null $P2289, vivify_983
    new $P2289, "Undef"
  vivify_983:
    push $P2288, $P2289
.annotate 'line', 1657
    find_lex $P2290, "self"
    find_lex $P2291, "@new-stages"
    unless_null $P2291, vivify_984
    $P2291 = root_new ['parrot';'ResizablePMCArray']
  vivify_984:
    $P2290."stages"($P2291)
.annotate 'line', 1658
    new $P2292, "Exception"
    set $P2292['type'], .CONTROL_RETURN
    new $P2293, "Integer"
    assign $P2293, 1
    setattribute $P2292, 'payload', $P2293
    throw $P2292
.annotate 'line', 1654
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2300"  :anon :subid("229_1304523734.668") :outer("227_1304523734.668")
    .param pmc param_2302
.annotate 'line', 1661
    .lex "$_", param_2302
.annotate 'line', 1662
    find_lex $P2305, "$_"
    unless_null $P2305, vivify_990
    new $P2305, "Undef"
  vivify_990:
    set $S2306, $P2305
    find_lex $P2307, "$where"
    unless_null $P2307, vivify_991
    new $P2307, "Undef"
  vivify_991:
    set $S2308, $P2307
    iseq $I2309, $S2306, $S2308
    if $I2309, if_2304
.annotate 'line', 1671
    find_lex $P2323, "@new-stages"
    unless_null $P2323, vivify_992
    $P2323 = root_new ['parrot';'ResizablePMCArray']
  vivify_992:
    find_lex $P2324, "$_"
    unless_null $P2324, vivify_993
    new $P2324, "Undef"
  vivify_993:
    push $P2323, $P2324
.annotate 'line', 1670
    set $P2303, $P2323
.annotate 'line', 1662
    goto if_2304_end
  if_2304:
.annotate 'line', 1663
    find_lex $P2312, "$position"
    unless_null $P2312, vivify_994
    new $P2312, "Undef"
  vivify_994:
    set $S2313, $P2312
    iseq $I2314, $S2313, "before"
    if $I2314, if_2311
.annotate 'line', 1667
    find_lex $P2319, "@new-stages"
    unless_null $P2319, vivify_995
    $P2319 = root_new ['parrot';'ResizablePMCArray']
  vivify_995:
    find_lex $P2320, "$_"
    unless_null $P2320, vivify_996
    new $P2320, "Undef"
  vivify_996:
    push $P2319, $P2320
.annotate 'line', 1668
    find_lex $P2321, "@new-stages"
    unless_null $P2321, vivify_997
    $P2321 = root_new ['parrot';'ResizablePMCArray']
  vivify_997:
    find_lex $P2322, "$stagename"
    unless_null $P2322, vivify_998
    new $P2322, "Undef"
  vivify_998:
    push $P2321, $P2322
.annotate 'line', 1666
    set $P2310, $P2321
.annotate 'line', 1663
    goto if_2311_end
  if_2311:
.annotate 'line', 1664
    find_lex $P2315, "@new-stages"
    unless_null $P2315, vivify_999
    $P2315 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    find_lex $P2316, "$stagename"
    unless_null $P2316, vivify_1000
    new $P2316, "Undef"
  vivify_1000:
    push $P2315, $P2316
.annotate 'line', 1665
    find_lex $P2317, "@new-stages"
    unless_null $P2317, vivify_1001
    $P2317 = root_new ['parrot';'ResizablePMCArray']
  vivify_1001:
    find_lex $P2318, "$_"
    unless_null $P2318, vivify_1002
    new $P2318, "Undef"
  vivify_1002:
    push $P2317, $P2318
.annotate 'line', 1663
    set $P2310, $P2317
  if_2311_end:
.annotate 'line', 1662
    set $P2303, $P2310
  if_2304_end:
.annotate 'line', 1661
    .return ($P2303)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2333
    .param pmc param_2334
.annotate 'line', 1677
    .const 'Sub' $P2372 = "231_1304523734.668" 
    capture_lex $P2372
    .lex "self", param_2333
    .lex "$name", param_2334
.annotate 'line', 1678
    $P2335 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2335
.annotate 'line', 1679
    new $P2336, "Undef"
    .lex "$sigil", $P2336
.annotate 'line', 1682
    new $P2337, "Undef"
    .lex "$idx", $P2337
.annotate 'line', 1690
    $P2338 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2338
.annotate 'line', 1678
    find_lex $P2339, "$name"
    unless_null $P2339, vivify_1004
    new $P2339, "Undef"
  vivify_1004:
    set $S2340, $P2339
    split $P2341, "::", $S2340
    store_lex "@ns", $P2341
.annotate 'line', 1679
    find_lex $P2342, "@ns"
    unless_null $P2342, vivify_1005
    $P2342 = root_new ['parrot';'ResizablePMCArray']
  vivify_1005:
    set $P2343, $P2342[0]
    unless_null $P2343, vivify_1006
    new $P2343, "Undef"
  vivify_1006:
    set $S2344, $P2343
    substr $S2345, $S2344, 0, 1
    new $P2346, 'String'
    set $P2346, $S2345
    store_lex "$sigil", $P2346
.annotate 'line', 1682
    find_lex $P2347, "$sigil"
    unless_null $P2347, vivify_1007
    new $P2347, "Undef"
  vivify_1007:
    set $S2348, $P2347
    index $I2349, "$@%&", $S2348
    new $P2350, 'Integer'
    set $P2350, $I2349
    store_lex "$idx", $P2350
.annotate 'line', 1683
    find_lex $P2352, "$idx"
    unless_null $P2352, vivify_1008
    new $P2352, "Undef"
  vivify_1008:
    set $N2353, $P2352
    isge $I2354, $N2353, 0.0
    unless $I2354, if_2351_end
.annotate 'line', 1684
    find_lex $P2355, "@ns"
    unless_null $P2355, vivify_1009
    $P2355 = root_new ['parrot';'ResizablePMCArray']
  vivify_1009:
    set $P2356, $P2355[0]
    unless_null $P2356, vivify_1010
    new $P2356, "Undef"
  vivify_1010:
    set $S2357, $P2356
    substr $S2358, $S2357, 1
    new $P2359, 'String'
    set $P2359, $S2358
    find_lex $P2360, "@ns"
    unless_null $P2360, vivify_1011
    $P2360 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2360
  vivify_1011:
    set $P2360[0], $P2359
.annotate 'line', 1685
    find_lex $P2361, "$sigil"
    unless_null $P2361, vivify_1012
    new $P2361, "Undef"
  vivify_1012:
    find_lex $P2362, "@ns"
    unless_null $P2362, vivify_1013
    $P2362 = root_new ['parrot';'ResizablePMCArray']
  vivify_1013:
    set $P2363, $P2362[-1]
    unless_null $P2363, vivify_1014
    new $P2363, "Undef"
  vivify_1014:
    concat $P2364, $P2361, $P2363
    find_lex $P2365, "@ns"
    unless_null $P2365, vivify_1015
    $P2365 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2365
  vivify_1015:
    set $P2365[-1], $P2364
  if_2351_end:
.annotate 'line', 1683
    find_lex $P2366, "@actual_ns"
    unless_null $P2366, vivify_1016
    $P2366 = root_new ['parrot';'ResizablePMCArray']
  vivify_1016:
.annotate 'line', 1691
    find_lex $P2368, "@ns"
    unless_null $P2368, vivify_1017
    $P2368 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    defined $I2369, $P2368
    unless $I2369, for_undef_1018
    iter $P2367, $P2368
    new $P2382, 'ExceptionHandler'
    set_label $P2382, loop2381_handler
    $P2382."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2382
  loop2381_test:
    unless $P2367, loop2381_done
    shift $P2370, $P2367
  loop2381_redo:
    .const 'Sub' $P2372 = "231_1304523734.668" 
    capture_lex $P2372
    $P2372($P2370)
  loop2381_next:
    goto loop2381_test
  loop2381_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2383, exception, 'type'
    eq $P2383, .CONTROL_LOOP_NEXT, loop2381_next
    eq $P2383, .CONTROL_LOOP_REDO, loop2381_redo
  loop2381_done:
    pop_eh 
  for_undef_1018:
    find_lex $P2384, "@actual_ns"
    unless_null $P2384, vivify_1022
    $P2384 = root_new ['parrot';'ResizablePMCArray']
  vivify_1022:
.annotate 'line', 1677
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2371"  :anon :subid("231_1304523734.668") :outer("230_1304523734.668")
    .param pmc param_2373
.annotate 'line', 1691
    .lex "$_", param_2373
.annotate 'line', 1692
    find_lex $P2376, "$_"
    unless_null $P2376, vivify_1019
    new $P2376, "Undef"
  vivify_1019:
    set $S2377, $P2376
    iseq $I2378, $S2377, ""
    unless $I2378, unless_2375
    new $P2374, 'Integer'
    set $P2374, $I2378
    goto unless_2375_end
  unless_2375:
    find_lex $P2379, "@actual_ns"
    unless_null $P2379, vivify_1020
    $P2379 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
    find_lex $P2380, "$_"
    unless_null $P2380, vivify_1021
    new $P2380, "Undef"
  vivify_1021:
    push $P2379, $P2380
    set $P2374, $P2379
  unless_2375_end:
.annotate 'line', 1691
    .return ($P2374)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1304523734.668") :outer("165_1304523734.668")
    .param pmc param_2386
    .param pmc param_2387
    .param pmc param_2388
    .param pmc param_2389 :optional :named("cache")
    .param int has_param_2389 :opt_flag
.annotate 'line', 1697
    .lex "self", param_2386
    .lex "$target", param_2387
    .lex "$pos", param_2388
    if has_param_2389, optparam_1023
    new $P2390, "Undef"
    set param_2389, $P2390
  optparam_1023:
    .lex "$cache", param_2389
.annotate 'line', 1698

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
        
.annotate 'line', 1697
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2398"  :subid("233_1304523734.668") :outer("10_1304523734.668")
.annotate 'line', 1854
    .const 'Sub' $P2427 = "238_1304523734.668" 
    capture_lex $P2427
    .const 'Sub' $P2420 = "237_1304523734.668" 
    capture_lex $P2420
    .const 'Sub' $P2415 = "236_1304523734.668" 
    capture_lex $P2415
    .const 'Sub' $P2410 = "235_1304523734.668" 
    capture_lex $P2410
    .const 'Sub' $P2402 = "234_1304523734.668" 
    capture_lex $P2402
    .lex "$?PACKAGE", $P2400
    .lex "$?CLASS", $P2401
.annotate 'line', 1870
    .const 'Sub' $P2427 = "238_1304523734.668" 
    newclosure $P2475, $P2427
.annotate 'line', 1854
    .return ($P2475)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("234_1304523734.668") :outer("233_1304523734.668")
    .param pmc param_2403
.annotate 'line', 1858
    .lex "self", param_2403
.annotate 'line', 1859
    new $P2404, "ResizablePMCArray"
    find_lex $P2405, "self"
    find_lex $P2406, "$?CLASS"
    setattribute $P2405, $P2406, "@!arguments", $P2404
.annotate 'line', 1860
    new $P2407, "Hash"
    find_lex $P2408, "self"
    find_lex $P2409, "$?CLASS"
    setattribute $P2408, $P2409, "%!options", $P2407
.annotate 'line', 1858
    .return ($P2407)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("235_1304523734.668") :outer("233_1304523734.668")
    .param pmc param_2411
.annotate 'line', 1863
    .lex "self", param_2411
    find_lex $P2412, "self"
    find_lex $P2413, "$?CLASS"
    getattribute $P2414, $P2412, $P2413, "@!arguments"
    unless_null $P2414, vivify_1025
    $P2414 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    .return ($P2414)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("236_1304523734.668") :outer("233_1304523734.668")
    .param pmc param_2416
.annotate 'line', 1864
    .lex "self", param_2416
    find_lex $P2417, "self"
    find_lex $P2418, "$?CLASS"
    getattribute $P2419, $P2417, $P2418, "%!options"
    unless_null $P2419, vivify_1026
    $P2419 = root_new ['parrot';'Hash']
  vivify_1026:
    .return ($P2419)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("237_1304523734.668") :outer("233_1304523734.668")
    .param pmc param_2421
    .param pmc param_2422
.annotate 'line', 1866
    .lex "self", param_2421
    .lex "$x", param_2422
.annotate 'line', 1867
    find_lex $P2423, "self"
    find_lex $P2424, "$?CLASS"
    getattribute $P2425, $P2423, $P2424, "@!arguments"
    unless_null $P2425, vivify_1027
    $P2425 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    find_lex $P2426, "$x"
    unless_null $P2426, vivify_1028
    new $P2426, "Undef"
  vivify_1028:
    push $P2425, $P2426
.annotate 'line', 1866
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("238_1304523734.668") :outer("233_1304523734.668")
    .param pmc param_2428
    .param pmc param_2429
    .param pmc param_2430
.annotate 'line', 1870
    .const 'Sub' $P2439 = "239_1304523734.668" 
    capture_lex $P2439
    .lex "self", param_2428
    .lex "$name", param_2429
    .lex "$value", param_2430
.annotate 'line', 1873
    find_lex $P2436, "$name"
    unless_null $P2436, vivify_1029
    new $P2436, "Undef"
  vivify_1029:
    find_lex $P2433, "self"
    find_lex $P2434, "$?CLASS"
    getattribute $P2435, $P2433, $P2434, "%!options"
    unless_null $P2435, vivify_1030
    $P2435 = root_new ['parrot';'Hash']
  vivify_1030:
    exists $I2437, $P2435[$P2436]
    if $I2437, if_2432
.annotate 'line', 1882
    find_lex $P2470, "$value"
    unless_null $P2470, vivify_1031
    new $P2470, "Undef"
  vivify_1031:
    find_lex $P2471, "$name"
    unless_null $P2471, vivify_1032
    new $P2471, "Undef"
  vivify_1032:
    find_lex $P2472, "self"
    find_lex $P2473, "$?CLASS"
    getattribute $P2474, $P2472, $P2473, "%!options"
    unless_null $P2474, vivify_1033
    $P2474 = root_new ['parrot';'Hash']
    setattribute $P2472, $P2473, "%!options", $P2474
  vivify_1033:
    set $P2474[$P2471], $P2470
.annotate 'line', 1881
    set $P2431, $P2470
.annotate 'line', 1873
    goto if_2432_end
  if_2432:
    .const 'Sub' $P2439 = "239_1304523734.668" 
    capture_lex $P2439
    $P2469 = $P2439()
    set $P2431, $P2469
  if_2432_end:
.annotate 'line', 1870
    .return ($P2431)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2438"  :anon :subid("239_1304523734.668") :outer("238_1304523734.668")
.annotate 'line', 1874
    new $P2440, "Undef"
    .lex "$t", $P2440
    find_lex $P2441, "self"
    find_lex $P2442, "$?CLASS"
    getattribute $P2443, $P2441, $P2442, "%!options"
    unless_null $P2443, vivify_1034
    $P2443 = root_new ['parrot';'Hash']
  vivify_1034:
    typeof $S2444, $P2443
    new $P2445, 'String'
    set $P2445, $S2444
    store_lex "$t", $P2445
.annotate 'line', 1875
    find_lex $P2446, "$t"
    unless_null $P2446, vivify_1035
    new $P2446, "Undef"
  vivify_1035:
    "say"($P2446)
.annotate 'line', 1876
    find_lex $P2449, "$t"
    unless_null $P2449, vivify_1036
    new $P2449, "Undef"
  vivify_1036:
    set $S2450, $P2449
    iseq $I2451, $S2450, "ResizablePMCArray"
    if $I2451, if_2448
.annotate 'line', 1879
    find_lex $P2458, "$name"
    unless_null $P2458, vivify_1037
    new $P2458, "Undef"
  vivify_1037:
    find_lex $P2459, "self"
    find_lex $P2460, "$?CLASS"
    getattribute $P2461, $P2459, $P2460, "%!options"
    unless_null $P2461, vivify_1038
    $P2461 = root_new ['parrot';'Hash']
  vivify_1038:
    set $P2462, $P2461[$P2458]
    unless_null $P2462, vivify_1039
    new $P2462, "Undef"
  vivify_1039:
    find_lex $P2463, "$name"
    unless_null $P2463, vivify_1040
    new $P2463, "Undef"
  vivify_1040:
    new $P2464, "ResizablePMCArray"
    push $P2464, $P2462
    push $P2464, $P2463
    find_lex $P2465, "$name"
    unless_null $P2465, vivify_1041
    new $P2465, "Undef"
  vivify_1041:
    find_lex $P2466, "self"
    find_lex $P2467, "$?CLASS"
    getattribute $P2468, $P2466, $P2467, "%!options"
    unless_null $P2468, vivify_1042
    $P2468 = root_new ['parrot';'Hash']
    setattribute $P2466, $P2467, "%!options", $P2468
  vivify_1042:
    set $P2468[$P2465], $P2464
.annotate 'line', 1878
    set $P2447, $P2464
.annotate 'line', 1876
    goto if_2448_end
  if_2448:
.annotate 'line', 1877
    find_lex $P2452, "$name"
    unless_null $P2452, vivify_1043
    new $P2452, "Undef"
  vivify_1043:
    find_lex $P2453, "self"
    find_lex $P2454, "$?CLASS"
    getattribute $P2455, $P2453, $P2454, "%!options"
    unless_null $P2455, vivify_1044
    $P2455 = root_new ['parrot';'Hash']
  vivify_1044:
    set $P2456, $P2455[$P2452]
    unless_null $P2456, vivify_1045
    new $P2456, "Undef"
  vivify_1045:
    find_lex $P2457, "$value"
    unless_null $P2457, vivify_1046
    new $P2457, "Undef"
  vivify_1046:
    push $P2456, $P2457
.annotate 'line', 1876
    set $P2447, $P2456
  if_2448_end:
.annotate 'line', 1873
    .return ($P2447)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2476"  :subid("240_1304523734.668") :outer("10_1304523734.668")
.annotate 'line', 1887
    .const 'Sub' $P2617 = "251_1304523734.668" 
    capture_lex $P2617
    .const 'Sub' $P2605 = "250_1304523734.668" 
    capture_lex $P2605
    .const 'Sub' $P2581 = "249_1304523734.668" 
    capture_lex $P2581
    .const 'Sub' $P2532 = "247_1304523734.668" 
    capture_lex $P2532
    .const 'Sub' $P2526 = "246_1304523734.668" 
    capture_lex $P2526
    .const 'Sub' $P2518 = "245_1304523734.668" 
    capture_lex $P2518
    .const 'Sub' $P2494 = "243_1304523734.668" 
    capture_lex $P2494
    .const 'Sub' $P2489 = "242_1304523734.668" 
    capture_lex $P2489
    .const 'Sub' $P2480 = "241_1304523734.668" 
    capture_lex $P2480
    .lex "$?PACKAGE", $P2478
    .lex "$?CLASS", $P2479
.annotate 'line', 1947
    .const 'Sub' $P2617 = "251_1304523734.668" 
    newclosure $P2904, $P2617
.annotate 'line', 1887
    .return ($P2904)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("241_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2481
    .param pmc param_2482
.annotate 'line', 1893
    .lex "self", param_2481
    .lex "@specs", param_2482
.annotate 'line', 1894
    new $P2483, "Undef"
    .lex "$obj", $P2483
    find_lex $P2484, "self"
    $P2485 = $P2484."CREATE"()
    store_lex "$obj", $P2485
.annotate 'line', 1895
    find_lex $P2486, "$obj"
    unless_null $P2486, vivify_1047
    new $P2486, "Undef"
  vivify_1047:
    find_lex $P2487, "@specs"
    unless_null $P2487, vivify_1048
    $P2487 = root_new ['parrot';'ResizablePMCArray']
  vivify_1048:
    $P2486."BUILD"($P2487 :named("specs"))
    find_lex $P2488, "$obj"
    unless_null $P2488, vivify_1049
    new $P2488, "Undef"
  vivify_1049:
.annotate 'line', 1893
    .return ($P2488)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("242_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2490
.annotate 'line', 1899
    .lex "self", param_2490
.annotate 'line', 1900
    new $P2491, "Integer"
    assign $P2491, 1
    find_lex $P2492, "self"
    find_lex $P2493, "$?CLASS"
    setattribute $P2492, $P2493, "$!stop-after-first-arg", $P2491
.annotate 'line', 1899
    .return ($P2491)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("243_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2495
    .param pmc param_2496 :optional :named("specs")
    .param int has_param_2496 :opt_flag
.annotate 'line', 1903
    .const 'Sub' $P2510 = "244_1304523734.668" 
    capture_lex $P2510
    .lex "self", param_2495
    if has_param_2496, optparam_1050
    $P2497 = root_new ['parrot';'ResizablePMCArray']
    set param_2496, $P2497
  optparam_1050:
    .lex "@specs", param_2496
.annotate 'line', 1904
    new $P2498, "Integer"
    assign $P2498, 1
    find_lex $P2499, "self"
    find_lex $P2500, "$?CLASS"
    getattribute $P2501, $P2499, $P2500, "%!stopper"
    unless_null $P2501, vivify_1051
    $P2501 = root_new ['parrot';'Hash']
    setattribute $P2499, $P2500, "%!stopper", $P2501
  vivify_1051:
    set $P2501["--"], $P2498
.annotate 'line', 1905
    new $P2502, "Integer"
    assign $P2502, 0
    find_lex $P2503, "self"
    find_lex $P2504, "$?CLASS"
    setattribute $P2503, $P2504, "$!stop-after-first-arg", $P2502
.annotate 'line', 1906
    find_lex $P2506, "@specs"
    unless_null $P2506, vivify_1052
    $P2506 = root_new ['parrot';'ResizablePMCArray']
  vivify_1052:
    defined $I2507, $P2506
    unless $I2507, for_undef_1053
    iter $P2505, $P2506
    new $P2516, 'ExceptionHandler'
    set_label $P2516, loop2515_handler
    $P2516."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2516
  loop2515_test:
    unless $P2505, loop2515_done
    shift $P2508, $P2505
  loop2515_redo:
    .const 'Sub' $P2510 = "244_1304523734.668" 
    capture_lex $P2510
    $P2510($P2508)
  loop2515_next:
    goto loop2515_test
  loop2515_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2517, exception, 'type'
    eq $P2517, .CONTROL_LOOP_NEXT, loop2515_next
    eq $P2517, .CONTROL_LOOP_REDO, loop2515_redo
  loop2515_done:
    pop_eh 
  for_undef_1053:
.annotate 'line', 1903
    .return ($P2505)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2509"  :anon :subid("244_1304523734.668") :outer("243_1304523734.668")
    .param pmc param_2511
.annotate 'line', 1906
    .lex "$_", param_2511
.annotate 'line', 1907
    find_lex $P2512, "self"
    find_lex $P2513, "$_"
    unless_null $P2513, vivify_1054
    new $P2513, "Undef"
  vivify_1054:
    $P2514 = $P2512."add-spec"($P2513)
.annotate 'line', 1906
    .return ($P2514)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("245_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2519
    .param pmc param_2520
.annotate 'line', 1910
    .lex "self", param_2519
    .lex "$x", param_2520
.annotate 'line', 1911
    new $P2521, "Integer"
    assign $P2521, 1
    find_lex $P2522, "$x"
    unless_null $P2522, vivify_1055
    new $P2522, "Undef"
  vivify_1055:
    find_lex $P2523, "self"
    find_lex $P2524, "$?CLASS"
    getattribute $P2525, $P2523, $P2524, "%!stopper"
    unless_null $P2525, vivify_1056
    $P2525 = root_new ['parrot';'Hash']
    setattribute $P2523, $P2524, "%!stopper", $P2525
  vivify_1056:
    set $P2525[$P2522], $P2521
.annotate 'line', 1910
    .return ($P2521)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("246_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2527
    .param pmc param_2528
.annotate 'line', 1914
    .lex "self", param_2527
    .lex "$s", param_2528
.annotate 'line', 1915
    find_lex $P2529, "$s"
    unless_null $P2529, vivify_1057
    new $P2529, "Undef"
  vivify_1057:
    set $S2530, $P2529
    split $P2531, "|", $S2530
.annotate 'line', 1914
    .return ($P2531)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("247_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2533
    .param pmc param_2534
.annotate 'line', 1919
    .const 'Sub' $P2571 = "248_1304523734.668" 
    capture_lex $P2571
    .lex "self", param_2533
    .lex "$s", param_2534
.annotate 'line', 1920
    new $P2535, "Undef"
    .lex "$i", $P2535
.annotate 'line', 1921
    new $P2536, "Undef"
    .lex "$type", $P2536
.annotate 'line', 1922
    $P2537 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2537
.annotate 'line', 1920
    find_lex $P2538, "$s"
    unless_null $P2538, vivify_1058
    new $P2538, "Undef"
  vivify_1058:
    set $S2539, $P2538
    index $I2540, $S2539, "="
    new $P2541, 'Integer'
    set $P2541, $I2540
    store_lex "$i", $P2541
    find_lex $P2542, "$type"
    unless_null $P2542, vivify_1059
    new $P2542, "Undef"
  vivify_1059:
    find_lex $P2543, "@options"
    unless_null $P2543, vivify_1060
    $P2543 = root_new ['parrot';'ResizablePMCArray']
  vivify_1060:
.annotate 'line', 1923
    find_lex $P2545, "$i"
    unless_null $P2545, vivify_1061
    new $P2545, "Undef"
  vivify_1061:
    set $N2546, $P2545
    islt $I2547, $N2546, 0.0
    if $I2547, if_2544
.annotate 'line', 1927
    find_lex $P2552, "$s"
    unless_null $P2552, vivify_1062
    new $P2552, "Undef"
  vivify_1062:
    set $S2553, $P2552
    find_lex $P2554, "$i"
    unless_null $P2554, vivify_1063
    new $P2554, "Undef"
  vivify_1063:
    add $P2555, $P2554, 1
    set $I2556, $P2555
    substr $S2557, $S2553, $I2556
    new $P2558, 'String'
    set $P2558, $S2557
    store_lex "$type", $P2558
.annotate 'line', 1928
    find_lex $P2559, "self"
    find_lex $P2560, "$s"
    unless_null $P2560, vivify_1064
    new $P2560, "Undef"
  vivify_1064:
    set $S2561, $P2560
    find_lex $P2562, "$i"
    unless_null $P2562, vivify_1065
    new $P2562, "Undef"
  vivify_1065:
    set $I2563, $P2562
    substr $S2564, $S2561, 0, $I2563
    $P2565 = $P2559."split-option-aliases"($S2564)
    store_lex "@options", $P2565
.annotate 'line', 1926
    goto if_2544_end
  if_2544:
.annotate 'line', 1924
    new $P2548, "String"
    assign $P2548, "b"
    store_lex "$type", $P2548
.annotate 'line', 1925
    find_lex $P2549, "self"
    find_lex $P2550, "$s"
    unless_null $P2550, vivify_1066
    new $P2550, "Undef"
  vivify_1066:
    $P2551 = $P2549."split-option-aliases"($P2550)
    store_lex "@options", $P2551
  if_2544_end:
.annotate 'line', 1930
    find_lex $P2567, "@options"
    unless_null $P2567, vivify_1067
    $P2567 = root_new ['parrot';'ResizablePMCArray']
  vivify_1067:
    defined $I2568, $P2567
    unless $I2568, for_undef_1068
    iter $P2566, $P2567
    new $P2579, 'ExceptionHandler'
    set_label $P2579, loop2578_handler
    $P2579."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2579
  loop2578_test:
    unless $P2566, loop2578_done
    shift $P2569, $P2566
  loop2578_redo:
    .const 'Sub' $P2571 = "248_1304523734.668" 
    capture_lex $P2571
    $P2571($P2569)
  loop2578_next:
    goto loop2578_test
  loop2578_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2580, exception, 'type'
    eq $P2580, .CONTROL_LOOP_NEXT, loop2578_next
    eq $P2580, .CONTROL_LOOP_REDO, loop2578_redo
  loop2578_done:
    pop_eh 
  for_undef_1068:
.annotate 'line', 1919
    .return ($P2566)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2570"  :anon :subid("248_1304523734.668") :outer("247_1304523734.668")
    .param pmc param_2572
.annotate 'line', 1930
    .lex "$_", param_2572
.annotate 'line', 1931
    find_lex $P2573, "$type"
    unless_null $P2573, vivify_1069
    new $P2573, "Undef"
  vivify_1069:
    find_lex $P2574, "$_"
    unless_null $P2574, vivify_1070
    new $P2574, "Undef"
  vivify_1070:
    find_lex $P2575, "self"
    find_lex $P2576, "$?CLASS"
    getattribute $P2577, $P2575, $P2576, "%!options"
    unless_null $P2577, vivify_1071
    $P2577 = root_new ['parrot';'Hash']
    setattribute $P2575, $P2576, "%!options", $P2577
  vivify_1071:
    set $P2577[$P2574], $P2573
.annotate 'line', 1930
    .return ($P2573)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("249_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2584
    .param pmc param_2585
.annotate 'line', 1936
    new $P2583, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2583, control_2582
    push_eh $P2583
    .lex "self", param_2584
    .lex "$x", param_2585
.annotate 'line', 1937
    find_lex $P2589, "$x"
    unless_null $P2589, vivify_1072
    new $P2589, "Undef"
  vivify_1072:
    set $S2590, $P2589
    iseq $I2591, $S2590, "-"
    unless $I2591, unless_2588
    new $P2587, 'Integer'
    set $P2587, $I2591
    goto unless_2588_end
  unless_2588:
    find_lex $P2592, "$x"
    unless_null $P2592, vivify_1073
    new $P2592, "Undef"
  vivify_1073:
    set $S2593, $P2592
    iseq $I2594, $S2593, "--"
    new $P2587, 'Integer'
    set $P2587, $I2594
  unless_2588_end:
    unless $P2587, if_2586_end
    new $P2595, "Exception"
    set $P2595['type'], .CONTROL_RETURN
    new $P2596, "Integer"
    assign $P2596, 0
    setattribute $P2595, 'payload', $P2596
    throw $P2595
  if_2586_end:
.annotate 'line', 1938
    find_lex $P2598, "$x"
    unless_null $P2598, vivify_1074
    new $P2598, "Undef"
  vivify_1074:
    set $S2599, $P2598
    substr $S2600, $S2599, 0, 1
    iseq $I2601, $S2600, "-"
    unless $I2601, if_2597_end
    new $P2602, "Exception"
    set $P2602['type'], .CONTROL_RETURN
    new $P2603, "Integer"
    assign $P2603, 1
    setattribute $P2602, 'payload', $P2603
    throw $P2602
  if_2597_end:
.annotate 'line', 1936
    .return (0)
  control_2582:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2604, exception, "payload"
    .return ($P2604)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("250_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2606
    .param pmc param_2607
.annotate 'line', 1942
    .lex "self", param_2606
    .lex "$x", param_2607
.annotate 'line', 1943
    new $P2608, "Undef"
    .lex "$spec", $P2608
    find_lex $P2609, "$x"
    unless_null $P2609, vivify_1075
    new $P2609, "Undef"
  vivify_1075:
    find_lex $P2610, "self"
    find_lex $P2611, "$?CLASS"
    getattribute $P2612, $P2610, $P2611, "%!options"
    unless_null $P2612, vivify_1076
    $P2612 = root_new ['parrot';'Hash']
  vivify_1076:
    set $P2613, $P2612[$P2609]
    unless_null $P2613, vivify_1077
    new $P2613, "Undef"
  vivify_1077:
    store_lex "$spec", $P2613
.annotate 'line', 1944
    find_lex $P2614, "$spec"
    unless_null $P2614, vivify_1078
    new $P2614, "Undef"
  vivify_1078:
    set $S2615, $P2614
    iseq $I2616, $S2615, "s"
.annotate 'line', 1942
    .return ($I2616)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("251_1304523734.668") :outer("240_1304523734.668")
    .param pmc param_2620
    .param pmc param_2621
.annotate 'line', 1947
    .const 'Sub' $P2712 = "254_1304523734.668" 
    capture_lex $P2712
    .const 'Sub' $P2674 = "253_1304523734.668" 
    capture_lex $P2674
    .const 'Sub' $P2625 = "252_1304523734.668" 
    capture_lex $P2625
    new $P2619, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2619, control_2618
    push_eh $P2619
    .lex "self", param_2620
    .lex "@args", param_2621
.annotate 'line', 1948
    new $P2622, "Undef"
    .lex "$i", $P2622
.annotate 'line', 1949
    new $P2623, "Undef"
    .lex "$arg-count", $P2623
.annotate 'line', 1951
    new $P2624, "Undef"
    .lex "$result", $P2624
.annotate 'line', 1955
    .const 'Sub' $P2625 = "252_1304523734.668" 
    newclosure $P2673, $P2625
    .lex "get-value", $P2673
.annotate 'line', 1970
    .const 'Sub' $P2674 = "253_1304523734.668" 
    newclosure $P2692, $P2674
    .lex "slurp-rest", $P2692
.annotate 'line', 1948
    new $P2693, "Integer"
    assign $P2693, 0
    store_lex "$i", $P2693
.annotate 'line', 1949
    find_lex $P2694, "@args"
    unless_null $P2694, vivify_1104
    $P2694 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $N2695, $P2694
    new $P2696, 'Float'
    set $P2696, $N2695
    store_lex "$arg-count", $P2696
.annotate 'line', 1951
    get_hll_global $P2697, "GLOBAL"
    nqp_get_package_through_who $P2698, $P2697, "HLL"
    nqp_get_package_through_who $P2699, $P2698, "CommandLine"
    get_who $P2700, $P2699
    set $P2701, $P2700["Result"]
    $P2702 = $P2701."new"()
    store_lex "$result", $P2702
.annotate 'line', 1952
    find_lex $P2703, "$result"
    unless_null $P2703, vivify_1105
    new $P2703, "Undef"
  vivify_1105:
    $P2703."init"()
    find_lex $P2704, "get-value"
    find_lex $P2705, "slurp-rest"
.annotate 'line', 1978
    new $P2899, 'ExceptionHandler'
    set_label $P2899, loop2898_handler
    $P2899."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2899
  loop2898_test:
    find_lex $P2706, "$i"
    unless_null $P2706, vivify_1106
    new $P2706, "Undef"
  vivify_1106:
    set $N2707, $P2706
    find_lex $P2708, "$arg-count"
    unless_null $P2708, vivify_1107
    new $P2708, "Undef"
  vivify_1107:
    set $N2709, $P2708
    islt $I2710, $N2707, $N2709
    unless $I2710, loop2898_done
  loop2898_redo:
    .const 'Sub' $P2712 = "254_1304523734.668" 
    capture_lex $P2712
    $P2712()
  loop2898_next:
    goto loop2898_test
  loop2898_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2900, exception, 'type'
    eq $P2900, .CONTROL_LOOP_NEXT, loop2898_next
    eq $P2900, .CONTROL_LOOP_REDO, loop2898_redo
  loop2898_done:
    pop_eh 
.annotate 'line', 2030
    new $P2901, "Exception"
    set $P2901['type'], .CONTROL_RETURN
    find_lex $P2902, "$result"
    unless_null $P2902, vivify_1168
    new $P2902, "Undef"
  vivify_1168:
    setattribute $P2901, 'payload', $P2902
    throw $P2901
.annotate 'line', 1947
    .return ()
  control_2618:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2903, exception, "payload"
    .return ($P2903)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("252_1304523734.668") :outer("251_1304523734.668")
    .param pmc param_2626
.annotate 'line', 1955
    .lex "$opt", param_2626
.annotate 'line', 1956
    find_lex $P2629, "$i"
    unless_null $P2629, vivify_1079
    new $P2629, "Undef"
  vivify_1079:
    set $N2630, $P2629
    find_lex $P2631, "$arg-count"
    unless_null $P2631, vivify_1080
    new $P2631, "Undef"
  vivify_1080:
    sub $P2632, $P2631, 1
    set $N2633, $P2632
    iseq $I2634, $N2630, $N2633
    if $I2634, if_2628
.annotate 'line', 1958
    find_lex $P2641, "self"
    find_lex $P2642, "$i"
    unless_null $P2642, vivify_1081
    new $P2642, "Undef"
  vivify_1081:
    add $P2643, $P2642, 1
    set $I2644, $P2643
    find_lex $P2645, "@args"
    unless_null $P2645, vivify_1082
    $P2645 = root_new ['parrot';'ResizablePMCArray']
  vivify_1082:
    set $P2646, $P2645[$I2644]
    unless_null $P2646, vivify_1083
    new $P2646, "Undef"
  vivify_1083:
    $P2647 = $P2641."is-option"($P2646)
    if $P2647, if_2640
.annotate 'line', 1960
    find_lex $P2654, "$i"
    unless_null $P2654, vivify_1084
    new $P2654, "Undef"
  vivify_1084:
    add $P2655, $P2654, 1
    set $I2656, $P2655
    find_lex $P2657, "@args"
    unless_null $P2657, vivify_1085
    $P2657 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2658, $P2657[$I2656]
    unless_null $P2658, vivify_1086
    new $P2658, "Undef"
  vivify_1086:
    find_lex $P2659, "self"
    find_lex $P2660, "$?CLASS"
    getattribute $P2661, $P2659, $P2660, "%!stopper"
    unless_null $P2661, vivify_1087
    $P2661 = root_new ['parrot';'Hash']
  vivify_1087:
    set $P2662, $P2661[$P2658]
    unless_null $P2662, vivify_1088
    new $P2662, "Undef"
  vivify_1088:
    if $P2662, if_2653
.annotate 'line', 1962
    find_lex $P2667, "$i"
    unless_null $P2667, vivify_1089
    new $P2667, "Undef"
  vivify_1089:
    clone $P2668, $P2667
    inc $P2667
    find_lex $P2669, "$i"
    unless_null $P2669, vivify_1090
    new $P2669, "Undef"
  vivify_1090:
    set $I2670, $P2669
    find_lex $P2671, "@args"
    unless_null $P2671, vivify_1091
    $P2671 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    set $P2672, $P2671[$I2670]
    unless_null $P2672, vivify_1092
    new $P2672, "Undef"
  vivify_1092:
    set $P2652, $P2672
.annotate 'line', 1960
    goto if_2653_end
  if_2653:
.annotate 'line', 1961
    new $P2663, 'String'
    set $P2663, "Option "
    find_lex $P2664, "$opt"
    unless_null $P2664, vivify_1093
    new $P2664, "Undef"
  vivify_1093:
    concat $P2665, $P2663, $P2664
    concat $P2666, $P2665, " needs a value, but is followed by a stopper"
    die $P2666
  if_2653_end:
.annotate 'line', 1960
    set $P2639, $P2652
.annotate 'line', 1958
    goto if_2640_end
  if_2640:
.annotate 'line', 1959
    new $P2648, 'String'
    set $P2648, "Option "
    find_lex $P2649, "$opt"
    unless_null $P2649, vivify_1094
    new $P2649, "Undef"
  vivify_1094:
    concat $P2650, $P2648, $P2649
    concat $P2651, $P2650, " needs a value, but is followed by an option"
    die $P2651
  if_2640_end:
.annotate 'line', 1958
    set $P2627, $P2639
.annotate 'line', 1956
    goto if_2628_end
  if_2628:
.annotate 'line', 1957
    new $P2635, 'String'
    set $P2635, "Option "
    find_lex $P2636, "$opt"
    unless_null $P2636, vivify_1095
    new $P2636, "Undef"
  vivify_1095:
    concat $P2637, $P2635, $P2636
    concat $P2638, $P2637, " needs a value"
    die $P2638
  if_2628_end:
.annotate 'line', 1955
    .return ($P2627)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("253_1304523734.668") :outer("251_1304523734.668")
.annotate 'line', 1970
    find_lex $P2675, "$i"
    unless_null $P2675, vivify_1096
    new $P2675, "Undef"
  vivify_1096:
    clone $P2676, $P2675
    inc $P2675
.annotate 'line', 1972
    new $P2690, 'ExceptionHandler'
    set_label $P2690, loop2689_handler
    $P2690."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2690
  loop2689_test:
    find_lex $P2677, "$i"
    unless_null $P2677, vivify_1097
    new $P2677, "Undef"
  vivify_1097:
    set $N2678, $P2677
    find_lex $P2679, "$arg-count"
    unless_null $P2679, vivify_1098
    new $P2679, "Undef"
  vivify_1098:
    set $N2680, $P2679
    islt $I2681, $N2678, $N2680
    unless $I2681, loop2689_done
  loop2689_redo:
.annotate 'line', 1973
    find_lex $P2682, "$result"
    unless_null $P2682, vivify_1099
    new $P2682, "Undef"
  vivify_1099:
    find_lex $P2683, "$i"
    unless_null $P2683, vivify_1100
    new $P2683, "Undef"
  vivify_1100:
    set $I2684, $P2683
    find_lex $P2685, "@args"
    unless_null $P2685, vivify_1101
    $P2685 = root_new ['parrot';'ResizablePMCArray']
  vivify_1101:
    set $P2686, $P2685[$I2684]
    unless_null $P2686, vivify_1102
    new $P2686, "Undef"
  vivify_1102:
    $P2682."add-argument"($P2686)
    find_lex $P2687, "$i"
    unless_null $P2687, vivify_1103
    new $P2687, "Undef"
  vivify_1103:
    clone $P2688, $P2687
    inc $P2687
  loop2689_next:
.annotate 'line', 1972
    goto loop2689_test
  loop2689_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2691, exception, 'type'
    eq $P2691, .CONTROL_LOOP_NEXT, loop2689_next
    eq $P2691, .CONTROL_LOOP_REDO, loop2689_redo
  loop2689_done:
    pop_eh 
.annotate 'line', 1970
    .return ($I2681)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2711"  :anon :subid("254_1304523734.668") :outer("251_1304523734.668")
.annotate 'line', 1978
    .const 'Sub' $P2814 = "256_1304523734.668" 
    capture_lex $P2814
    .const 'Sub' $P2728 = "255_1304523734.668" 
    capture_lex $P2728
.annotate 'line', 1979
    new $P2713, "Undef"
    .lex "$cur", $P2713
    find_lex $P2714, "$i"
    unless_null $P2714, vivify_1108
    new $P2714, "Undef"
  vivify_1108:
    set $I2715, $P2714
    find_lex $P2716, "@args"
    unless_null $P2716, vivify_1109
    $P2716 = root_new ['parrot';'ResizablePMCArray']
  vivify_1109:
    set $P2717, $P2716[$I2715]
    unless_null $P2717, vivify_1110
    new $P2717, "Undef"
  vivify_1110:
    store_lex "$cur", $P2717
.annotate 'line', 1980
    find_lex $P2719, "self"
    find_lex $P2720, "$cur"
    unless_null $P2720, vivify_1111
    new $P2720, "Undef"
  vivify_1111:
    $P2721 = $P2719."is-option"($P2720)
    if $P2721, if_2718
.annotate 'line', 2022
    find_lex $P2885, "$cur"
    unless_null $P2885, vivify_1112
    new $P2885, "Undef"
  vivify_1112:
    find_lex $P2886, "self"
    find_lex $P2887, "$?CLASS"
    getattribute $P2888, $P2886, $P2887, "%!stopper"
    unless_null $P2888, vivify_1113
    $P2888 = root_new ['parrot';'Hash']
  vivify_1113:
    set $P2889, $P2888[$P2885]
    unless_null $P2889, vivify_1114
    new $P2889, "Undef"
  vivify_1114:
    if $P2889, if_2884
.annotate 'line', 2025
    find_lex $P2890, "$result"
    unless_null $P2890, vivify_1115
    new $P2890, "Undef"
  vivify_1115:
    find_lex $P2891, "$cur"
    unless_null $P2891, vivify_1116
    new $P2891, "Undef"
  vivify_1116:
    $P2890."add-argument"($P2891)
.annotate 'line', 2026
    find_lex $P2893, "self"
    find_lex $P2894, "$?CLASS"
    getattribute $P2895, $P2893, $P2894, "$!stop-after-first-arg"
    unless_null $P2895, vivify_1117
    new $P2895, "Undef"
  vivify_1117:
    unless $P2895, if_2892_end
    "slurp-rest"()
  if_2892_end:
.annotate 'line', 2024
    goto if_2884_end
  if_2884:
.annotate 'line', 2023
    "slurp-rest"()
  if_2884_end:
.annotate 'line', 2022
    goto if_2718_end
  if_2718:
.annotate 'line', 1981
    find_lex $P2723, "$cur"
    unless_null $P2723, vivify_1118
    new $P2723, "Undef"
  vivify_1118:
    set $S2724, $P2723
    substr $S2725, $S2724, 0, 2
    iseq $I2726, $S2725, "--"
    if $I2726, if_2722
.annotate 'line', 2000
    .const 'Sub' $P2814 = "256_1304523734.668" 
    capture_lex $P2814
    $P2814()
    goto if_2722_end
  if_2722:
.annotate 'line', 1981
    .const 'Sub' $P2728 = "255_1304523734.668" 
    capture_lex $P2728
    $P2728()
  if_2722_end:
  if_2718_end:
.annotate 'line', 1980
    find_lex $P2896, "$i"
    unless_null $P2896, vivify_1167
    new $P2896, "Undef"
  vivify_1167:
    clone $P2897, $P2896
    inc $P2896
.annotate 'line', 1978
    .return ($P2897)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2813"  :anon :subid("256_1304523734.668") :outer("254_1304523734.668")
.annotate 'line', 2000
    .const 'Sub' $P2859 = "257_1304523734.668" 
    capture_lex $P2859
.annotate 'line', 2001
    new $P2815, "Undef"
    .lex "$opt", $P2815
    find_lex $P2816, "$cur"
    unless_null $P2816, vivify_1119
    new $P2816, "Undef"
  vivify_1119:
    set $S2817, $P2816
    substr $S2818, $S2817, 1
    new $P2819, 'String'
    set $P2819, $S2818
    store_lex "$opt", $P2819
.annotate 'line', 2002
    find_lex $P2822, "$opt"
    unless_null $P2822, vivify_1120
    new $P2822, "Undef"
  vivify_1120:
    set $S2823, $P2822
    length $I2824, $S2823
    set $N2825, $I2824
    iseq $I2826, $N2825, 1.0
    if $I2826, if_2821
.annotate 'line', 2012
    .const 'Sub' $P2859 = "257_1304523734.668" 
    capture_lex $P2859
    $P2883 = $P2859()
    set $P2820, $P2883
.annotate 'line', 2002
    goto if_2821_end
  if_2821:
.annotate 'line', 2004
    find_lex $P2828, "$opt"
    unless_null $P2828, vivify_1128
    new $P2828, "Undef"
  vivify_1128:
    find_lex $P2829, "self"
    find_lex $P2830, "$?CLASS"
    getattribute $P2831, $P2829, $P2830, "%!options"
    unless_null $P2831, vivify_1129
    $P2831 = root_new ['parrot';'Hash']
  vivify_1129:
    set $P2832, $P2831[$P2828]
    unless_null $P2832, vivify_1130
    new $P2832, "Undef"
  vivify_1130:
    if $P2832, unless_2827_end
    new $P2833, 'String'
    set $P2833, "No such option -"
    find_lex $P2834, "$opt"
    unless_null $P2834, vivify_1131
    new $P2834, "Undef"
  vivify_1131:
    concat $P2835, $P2833, $P2834
    die $P2835
  unless_2827_end:
.annotate 'line', 2005
    find_lex $P2837, "self"
    find_lex $P2838, "$opt"
    unless_null $P2838, vivify_1132
    new $P2838, "Undef"
  vivify_1132:
    $P2839 = $P2837."wants-value"($P2838)
    if $P2839, if_2836
.annotate 'line', 2009
    find_lex $P2846, "$result"
    unless_null $P2846, vivify_1133
    new $P2846, "Undef"
  vivify_1133:
    find_lex $P2847, "$opt"
    unless_null $P2847, vivify_1134
    new $P2847, "Undef"
  vivify_1134:
    $P2846."add-option"($P2847, 1)
.annotate 'line', 2008
    goto if_2836_end
  if_2836:
.annotate 'line', 2006
    find_lex $P2840, "$result"
    unless_null $P2840, vivify_1135
    new $P2840, "Undef"
  vivify_1135:
    find_lex $P2841, "$opt"
    unless_null $P2841, vivify_1136
    new $P2841, "Undef"
  vivify_1136:
.annotate 'line', 2007
    new $P2842, 'String'
    set $P2842, "-"
    find_lex $P2843, "$opt"
    unless_null $P2843, vivify_1137
    new $P2843, "Undef"
  vivify_1137:
    concat $P2844, $P2842, $P2843
    $P2845 = "get-value"($P2844)
    $P2840."add-option"($P2841, $P2845)
  if_2836_end:
.annotate 'line', 2011
    new $P2850, 'String'
    set $P2850, "-"
    find_lex $P2851, "$opt"
    unless_null $P2851, vivify_1138
    new $P2851, "Undef"
  vivify_1138:
    concat $P2852, $P2850, $P2851
    find_lex $P2853, "self"
    find_lex $P2854, "$?CLASS"
    getattribute $P2855, $P2853, $P2854, "%!stopper"
    unless_null $P2855, vivify_1139
    $P2855 = root_new ['parrot';'Hash']
  vivify_1139:
    set $P2856, $P2855[$P2852]
    unless_null $P2856, vivify_1140
    new $P2856, "Undef"
  vivify_1140:
    if $P2856, if_2849
    set $P2848, $P2856
    goto if_2849_end
  if_2849:
    $P2857 = "slurp-rest"()
    set $P2848, $P2857
  if_2849_end:
.annotate 'line', 2002
    set $P2820, $P2848
  if_2821_end:
.annotate 'line', 2000
    .return ($P2820)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2858"  :anon :subid("257_1304523734.668") :outer("256_1304523734.668")
.annotate 'line', 2012
    .const 'Sub' $P2865 = "258_1304523734.668" 
    capture_lex $P2865
.annotate 'line', 2014
    new $P2860, "Undef"
    .lex "$iter", $P2860
    find_lex $P2861, "$opt"
    unless_null $P2861, vivify_1121
    new $P2861, "Undef"
  vivify_1121:
    iter $P2862, $P2861
    store_lex "$iter", $P2862
.annotate 'line', 2015
    new $P2881, 'ExceptionHandler'
    set_label $P2881, loop2880_handler
    $P2881."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2881
  loop2880_test:
    find_lex $P2863, "$iter"
    unless_null $P2863, vivify_1122
    new $P2863, "Undef"
  vivify_1122:
    unless $P2863, loop2880_done
  loop2880_redo:
    .const 'Sub' $P2865 = "258_1304523734.668" 
    capture_lex $P2865
    $P2865()
  loop2880_next:
    goto loop2880_test
  loop2880_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2882, exception, 'type'
    eq $P2882, .CONTROL_LOOP_NEXT, loop2880_next
    eq $P2882, .CONTROL_LOOP_REDO, loop2880_redo
  loop2880_done:
    pop_eh 
.annotate 'line', 2012
    .return ($P2863)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2864"  :anon :subid("258_1304523734.668") :outer("257_1304523734.668")
.annotate 'line', 2016
    new $P2866, "Undef"
    .lex "$o", $P2866
    find_lex $P2867, "$iter"
    unless_null $P2867, vivify_1123
    new $P2867, "Undef"
  vivify_1123:
    shift $P2868, $P2867
    store_lex "$o", $P2868
.annotate 'line', 2017
    find_lex $P2870, "self"
    find_lex $P2871, "$o"
    unless_null $P2871, vivify_1124
    new $P2871, "Undef"
  vivify_1124:
    $P2872 = $P2870."wants-value"($P2871)
    unless $P2872, if_2869_end
    new $P2873, 'String'
    set $P2873, "Option -"
    find_lex $P2874, "$o"
    unless_null $P2874, vivify_1125
    new $P2874, "Undef"
  vivify_1125:
    concat $P2875, $P2873, $P2874
    concat $P2876, $P2875, " requires a value and cannot be grouped"
    die $P2876
  if_2869_end:
.annotate 'line', 2018
    find_lex $P2877, "$result"
    unless_null $P2877, vivify_1126
    new $P2877, "Undef"
  vivify_1126:
    find_lex $P2878, "$o"
    unless_null $P2878, vivify_1127
    new $P2878, "Undef"
  vivify_1127:
    $P2879 = $P2877."add-option"($P2878, 1)
.annotate 'line', 2015
    .return ($P2879)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2727"  :anon :subid("255_1304523734.668") :outer("254_1304523734.668")
.annotate 'line', 1983
    new $P2729, "Undef"
    .lex "$opt", $P2729
.annotate 'line', 1984
    new $P2730, "Undef"
    .lex "$idx", $P2730
.annotate 'line', 1985
    new $P2731, "Undef"
    .lex "$value", $P2731
.annotate 'line', 1986
    new $P2732, "Undef"
    .lex "$has-value", $P2732
.annotate 'line', 1983
    find_lex $P2733, "$i"
    unless_null $P2733, vivify_1141
    new $P2733, "Undef"
  vivify_1141:
    set $I2734, $P2733
    find_lex $P2735, "@args"
    unless_null $P2735, vivify_1142
    $P2735 = root_new ['parrot';'ResizablePMCArray']
  vivify_1142:
    set $P2736, $P2735[$I2734]
    unless_null $P2736, vivify_1143
    new $P2736, "Undef"
  vivify_1143:
    set $S2737, $P2736
    substr $S2738, $S2737, 2
    new $P2739, 'String'
    set $P2739, $S2738
    store_lex "$opt", $P2739
.annotate 'line', 1984
    find_lex $P2740, "$opt"
    unless_null $P2740, vivify_1144
    new $P2740, "Undef"
  vivify_1144:
    set $S2741, $P2740
    index $I2742, $S2741, "="
    new $P2743, 'Integer'
    set $P2743, $I2742
    store_lex "$idx", $P2743
.annotate 'line', 1985
    new $P2744, "Integer"
    assign $P2744, 1
    store_lex "$value", $P2744
.annotate 'line', 1986
    new $P2745, "Integer"
    assign $P2745, 0
    store_lex "$has-value", $P2745
.annotate 'line', 1988
    find_lex $P2747, "$idx"
    unless_null $P2747, vivify_1145
    new $P2747, "Undef"
  vivify_1145:
    set $N2748, $P2747
    isge $I2749, $N2748, 0.0
    unless $I2749, if_2746_end
.annotate 'line', 1989
    find_lex $P2750, "$opt"
    unless_null $P2750, vivify_1146
    new $P2750, "Undef"
  vivify_1146:
    set $S2751, $P2750
    find_lex $P2752, "$idx"
    unless_null $P2752, vivify_1147
    new $P2752, "Undef"
  vivify_1147:
    add $P2753, $P2752, 1
    set $I2754, $P2753
    substr $S2755, $S2751, $I2754
    new $P2756, 'String'
    set $P2756, $S2755
    store_lex "$value", $P2756
.annotate 'line', 1990
    find_lex $P2757, "$opt"
    unless_null $P2757, vivify_1148
    new $P2757, "Undef"
  vivify_1148:
    set $S2758, $P2757
    find_lex $P2759, "$idx"
    unless_null $P2759, vivify_1149
    new $P2759, "Undef"
  vivify_1149:
    set $I2760, $P2759
    substr $S2761, $S2758, 0, $I2760
    new $P2762, 'String'
    set $P2762, $S2761
    store_lex "$opt", $P2762
.annotate 'line', 1991
    new $P2763, "Integer"
    assign $P2763, 1
    store_lex "$has-value", $P2763
  if_2746_end:
.annotate 'line', 1993
    find_lex $P2768, "$opt"
    unless_null $P2768, vivify_1150
    new $P2768, "Undef"
  vivify_1150:
    find_lex $P2765, "self"
    find_lex $P2766, "$?CLASS"
    getattribute $P2767, $P2765, $P2766, "%!options"
    unless_null $P2767, vivify_1151
    $P2767 = root_new ['parrot';'Hash']
  vivify_1151:
    exists $I2769, $P2767[$P2768]
    if $I2769, unless_2764_end
    new $P2770, 'String'
    set $P2770, "Illegal option --"
    find_lex $P2771, "$opt"
    unless_null $P2771, vivify_1152
    new $P2771, "Undef"
  vivify_1152:
    concat $P2772, $P2770, $P2771
    die $P2772
  unless_2764_end:
.annotate 'line', 1994
    find_lex $P2776, "$opt"
    unless_null $P2776, vivify_1153
    new $P2776, "Undef"
  vivify_1153:
    find_lex $P2777, "self"
    find_lex $P2778, "$?CLASS"
    getattribute $P2779, $P2777, $P2778, "%!options"
    unless_null $P2779, vivify_1154
    $P2779 = root_new ['parrot';'Hash']
  vivify_1154:
    set $P2780, $P2779[$P2776]
    unless_null $P2780, vivify_1155
    new $P2780, "Undef"
  vivify_1155:
    set $S2781, $P2780
    isne $I2782, $S2781, "s"
    if $I2782, if_2775
    new $P2774, 'Integer'
    set $P2774, $I2782
    goto if_2775_end
  if_2775:
    find_lex $P2783, "$has-value"
    unless_null $P2783, vivify_1156
    new $P2783, "Undef"
  vivify_1156:
    set $P2774, $P2783
  if_2775_end:
    unless $P2774, if_2773_end
    new $P2784, 'String'
    set $P2784, "Option --"
    find_lex $P2785, "$opt"
    unless_null $P2785, vivify_1157
    new $P2785, "Undef"
  vivify_1157:
    concat $P2786, $P2784, $P2785
    concat $P2787, $P2786, " does not allow a value"
    die $P2787
  if_2773_end:
.annotate 'line', 1995
    find_lex $P2791, "$has-value"
    unless_null $P2791, vivify_1158
    new $P2791, "Undef"
  vivify_1158:
    isfalse $I2792, $P2791
    if $I2792, if_2790
    new $P2789, 'Integer'
    set $P2789, $I2792
    goto if_2790_end
  if_2790:
    find_lex $P2793, "self"
    find_lex $P2794, "$opt"
    unless_null $P2794, vivify_1159
    new $P2794, "Undef"
  vivify_1159:
    $P2795 = $P2793."wants-value"($P2794)
    set $P2789, $P2795
  if_2790_end:
    unless $P2789, if_2788_end
.annotate 'line', 1996
    new $P2796, 'String'
    set $P2796, "--"
    find_lex $P2797, "$opt"
    unless_null $P2797, vivify_1160
    new $P2797, "Undef"
  vivify_1160:
    concat $P2798, $P2796, $P2797
    $P2799 = "get-value"($P2798)
    store_lex "$value", $P2799
  if_2788_end:
.annotate 'line', 1998
    find_lex $P2800, "$result"
    unless_null $P2800, vivify_1161
    new $P2800, "Undef"
  vivify_1161:
    find_lex $P2801, "$opt"
    unless_null $P2801, vivify_1162
    new $P2801, "Undef"
  vivify_1162:
    find_lex $P2802, "$value"
    unless_null $P2802, vivify_1163
    new $P2802, "Undef"
  vivify_1163:
    $P2800."add-option"($P2801, $P2802)
.annotate 'line', 1999
    new $P2805, 'String'
    set $P2805, "--"
    find_lex $P2806, "$opt"
    unless_null $P2806, vivify_1164
    new $P2806, "Undef"
  vivify_1164:
    concat $P2807, $P2805, $P2806
    find_lex $P2808, "self"
    find_lex $P2809, "$?CLASS"
    getattribute $P2810, $P2808, $P2809, "%!stopper"
    unless_null $P2810, vivify_1165
    $P2810 = root_new ['parrot';'Hash']
  vivify_1165:
    set $P2811, $P2810[$P2807]
    unless_null $P2811, vivify_1166
    new $P2811, "Undef"
  vivify_1166:
    if $P2811, if_2804
    set $P2803, $P2811
    goto if_2804_end
  if_2804:
    find_lex $P2812, "slurp-rest"
    set $P2803, $P2812
  if_2804_end:
.annotate 'line', 1981
    .return ($P2803)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2905"  :subid("259_1304523734.668") :outer("10_1304523734.668")
.annotate 'line', 2065
    .const 'Sub' $P3131 = "276_1304523734.668" 
    capture_lex $P3131
    .const 'Sub' $P3126 = "275_1304523734.668" 
    capture_lex $P3126
    .const 'Sub' $P3121 = "274_1304523734.668" 
    capture_lex $P3121
    .const 'Sub' $P3084 = "273_1304523734.668" 
    capture_lex $P3084
    .const 'Sub' $P3070 = "272_1304523734.668" 
    capture_lex $P3070
    .const 'Sub' $P3049 = "271_1304523734.668" 
    capture_lex $P3049
    .const 'Sub' $P3024 = "270_1304523734.668" 
    capture_lex $P3024
    .const 'Sub' $P3010 = "269_1304523734.668" 
    capture_lex $P3010
    .const 'Sub' $P2992 = "268_1304523734.668" 
    capture_lex $P2992
    .const 'Sub' $P2972 = "267_1304523734.668" 
    capture_lex $P2972
    .const 'Sub' $P2958 = "266_1304523734.668" 
    capture_lex $P2958
    .const 'Sub' $P2940 = "265_1304523734.668" 
    capture_lex $P2940
    .const 'Sub' $P2931 = "264_1304523734.668" 
    capture_lex $P2931
    .const 'Sub' $P2916 = "261_1304523734.668" 
    capture_lex $P2916
    .const 'Sub' $P2908 = "260_1304523734.668" 
    capture_lex $P2908
    .lex "Event", $P2907
.annotate 'line', 2086
    .const 'Sub' $P2908 = "260_1304523734.668" 
    newclosure $P2912, $P2908
    .lex "addr", $P2912
.annotate 'line', 2065
    .lex "$?PACKAGE", $P2913
    .lex "$?CLASS", $P2914
.annotate 'line', 2067
    .const 'Sub' $P2916 = "261_1304523734.668" 
    capture_lex $P2916
    $P2916()
    find_lex $P2930, "addr"
.annotate 'line', 2200
    .const 'Sub' $P3131 = "276_1304523734.668" 
    newclosure $P3136, $P3131
.annotate 'line', 2065
    .return ($P3136)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("260_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_2909
.annotate 'line', 2086
    .lex "$obj", param_2909
.annotate 'line', 2087
    find_lex $P2910, "$obj"
    unless_null $P2910, vivify_1169
    new $P2910, "Undef"
  vivify_1169:
    get_addr $I2911, $P2910
.annotate 'line', 2086
    .return ($I2911)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2915"  :anon :subid("261_1304523734.668") :outer("259_1304523734.668")
.annotate 'line', 2067
    .const 'Sub' $P2924 = "263_1304523734.668" 
    capture_lex $P2924
    .const 'Sub' $P2919 = "262_1304523734.668" 
    capture_lex $P2919
    .lex "$?PACKAGE", $P2917
    .lex "$?CLASS", $P2918
.annotate 'line', 2074
    .const 'Sub' $P2924 = "263_1304523734.668" 
    newclosure $P2929, $P2924
.annotate 'line', 2067
    .return ($P2929)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("262_1304523734.668") :outer("261_1304523734.668")
    .param pmc param_2920
.annotate 'line', 2070
    .lex "self", param_2920
    find_lex $P2921, "self"
    find_lex $P2922, "$?CLASS"
    getattribute $P2923, $P2921, $P2922, "$!deserialize_past"
    unless_null $P2923, vivify_1170
    new $P2923, "Undef"
  vivify_1170:
    .return ($P2923)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("263_1304523734.668") :outer("261_1304523734.668")
    .param pmc param_2925
.annotate 'line', 2074
    .lex "self", param_2925
    find_lex $P2926, "self"
    find_lex $P2927, "$?CLASS"
    getattribute $P2928, $P2926, $P2927, "$!fixup_past"
    unless_null $P2928, vivify_1171
    new $P2928, "Undef"
  vivify_1171:
    .return ($P2928)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("264_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_2932
    .param pmc param_2933 :named("handle")
.annotate 'line', 2094
    .lex "self", param_2932
    .lex "$handle", param_2933
.annotate 'line', 2095
    new $P2934, "Undef"
    .lex "$obj", $P2934
    find_lex $P2935, "self"
    $P2936 = $P2935."CREATE"()
    store_lex "$obj", $P2936
.annotate 'line', 2096
    find_lex $P2937, "$obj"
    unless_null $P2937, vivify_1172
    new $P2937, "Undef"
  vivify_1172:
    find_lex $P2938, "$handle"
    unless_null $P2938, vivify_1173
    new $P2938, "Undef"
  vivify_1173:
    $P2937."BUILD"($P2938 :named("handle"))
    find_lex $P2939, "$obj"
    unless_null $P2939, vivify_1174
    new $P2939, "Undef"
  vivify_1174:
.annotate 'line', 2094
    .return ($P2939)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("265_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_2941
    .param pmc param_2942 :optional :named("handle")
    .param int has_param_2942 :opt_flag
.annotate 'line', 2100
    .lex "self", param_2941
    if has_param_2942, optparam_1175
    new $P2943, "Undef"
    set param_2942, $P2943
  optparam_1175:
    .lex "$handle", param_2942
.annotate 'line', 2101
    find_lex $P2944, "$handle"
    unless_null $P2944, vivify_1176
    new $P2944, "Undef"
  vivify_1176:
    set $S2945, $P2944
    nqp_create_sc $P2946, $S2945
    find_lex $P2947, "self"
    find_lex $P2948, "$?CLASS"
    setattribute $P2947, $P2948, "$!sc", $P2946
.annotate 'line', 2102
    find_lex $P2949, "$handle"
    unless_null $P2949, vivify_1177
    new $P2949, "Undef"
  vivify_1177:
    find_lex $P2950, "self"
    find_lex $P2951, "$?CLASS"
    setattribute $P2950, $P2951, "$!handle", $P2949
.annotate 'line', 2103
    new $P2952, "Hash"
    find_lex $P2953, "self"
    find_lex $P2954, "$?CLASS"
    setattribute $P2953, $P2954, "%!addr_to_slot", $P2952
.annotate 'line', 2104
    new $P2955, "ResizablePMCArray"
    find_lex $P2956, "self"
    find_lex $P2957, "$?CLASS"
    setattribute $P2956, $P2957, "@!event_stream", $P2955
.annotate 'line', 2100
    .return ($P2955)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("266_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_2959
    .param pmc param_2960
.annotate 'line', 2108
    .lex "self", param_2959
    .lex "$obj", param_2960
.annotate 'line', 2109
    new $P2961, "Undef"
    .lex "$slot", $P2961
    find_lex $P2962, "$obj"
    unless_null $P2962, vivify_1178
    new $P2962, "Undef"
  vivify_1178:
    $P2963 = "addr"($P2962)
    find_lex $P2964, "self"
    find_lex $P2965, "$?CLASS"
    getattribute $P2966, $P2964, $P2965, "%!addr_to_slot"
    unless_null $P2966, vivify_1179
    $P2966 = root_new ['parrot';'Hash']
  vivify_1179:
    set $P2967, $P2966[$P2963]
    unless_null $P2967, vivify_1180
    new $P2967, "Undef"
  vivify_1180:
    store_lex "$slot", $P2967
.annotate 'line', 2110
    find_lex $P2969, "$slot"
    unless_null $P2969, vivify_1181
    new $P2969, "Undef"
  vivify_1181:
    defined $I2970, $P2969
    if $I2970, unless_2968_end
.annotate 'line', 2111
    die "slot_for_object called on object not in context"
  unless_2968_end:
.annotate 'line', 2110
    find_lex $P2971, "$slot"
    unless_null $P2971, vivify_1182
    new $P2971, "Undef"
  vivify_1182:
.annotate 'line', 2108
    .return ($P2971)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("267_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_2975
    .param pmc param_2976
.annotate 'line', 2120
    new $P2974, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2974, control_2973
    push_eh $P2974
    .lex "self", param_2975
    .lex "$obj", param_2976
.annotate 'line', 2121
    new $P2977, "Undef"
    .lex "$slot", $P2977
    find_lex $P2978, "self"
    find_lex $P2979, "$obj"
    unless_null $P2979, vivify_1183
    new $P2979, "Undef"
  vivify_1183:
    $P2980 = $P2978."slot_for_object"($P2979)
    store_lex "$slot", $P2980
.annotate 'line', 2122
    new $P2981, "Exception"
    set $P2981['type'], .CONTROL_RETURN
    get_hll_global $P2982, "GLOBAL"
    nqp_get_package_through_who $P2983, $P2982, "PAST"
    get_who $P2984, $P2983
    set $P2985, $P2984["Op"]
    find_lex $P2986, "self"
    find_lex $P2987, "$?CLASS"
    getattribute $P2988, $P2986, $P2987, "$!handle"
    unless_null $P2988, vivify_1184
    new $P2988, "Undef"
  vivify_1184:
    find_lex $P2989, "$slot"
    unless_null $P2989, vivify_1185
    new $P2989, "Undef"
  vivify_1185:
    $P2990 = $P2985."new"($P2988, $P2989, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P2981, 'payload', $P2990
    throw $P2981
.annotate 'line', 2120
    .return ()
  control_2973:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2991, exception, "payload"
    .return ($P2991)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("268_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_2995
    .param pmc param_2996
    .param pmc param_2997
.annotate 'line', 2126
    new $P2994, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2994, control_2993
    push_eh $P2994
    .lex "self", param_2995
    .lex "$slot", param_2996
    .lex "$past_to_set", param_2997
.annotate 'line', 2127
    new $P2998, "Exception"
    set $P2998['type'], .CONTROL_RETURN
    get_hll_global $P2999, "GLOBAL"
    nqp_get_package_through_who $P3000, $P2999, "PAST"
    get_who $P3001, $P3000
    set $P3002, $P3001["Op"]
    find_lex $P3003, "self"
    find_lex $P3004, "$?CLASS"
    getattribute $P3005, $P3003, $P3004, "$!handle"
    unless_null $P3005, vivify_1186
    new $P3005, "Undef"
  vivify_1186:
    find_lex $P3006, "$slot"
    unless_null $P3006, vivify_1187
    new $P3006, "Undef"
  vivify_1187:
    find_lex $P3007, "$past_to_set"
    unless_null $P3007, vivify_1188
    new $P3007, "Undef"
  vivify_1188:
    $P3008 = $P3002."new"($P3005, $P3006, $P3007, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P2998, 'payload', $P3008
    throw $P2998
.annotate 'line', 2126
    .return ()
  control_2993:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3009, exception, "payload"
    .return ($P3009)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("269_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3011
    .param pmc param_3012
.annotate 'line', 2133
    .lex "self", param_3011
    .lex "$to_wrap", param_3012
.annotate 'line', 2134
    get_hll_global $P3013, "GLOBAL"
    nqp_get_package_through_who $P3014, $P3013, "PAST"
    get_who $P3015, $P3014
    set $P3016, $P3015["Op"]
    find_lex $P3017, "$to_wrap"
    unless_null $P3017, vivify_1189
    new $P3017, "Undef"
  vivify_1189:
.annotate 'line', 2137
    get_hll_global $P3018, "GLOBAL"
    nqp_get_package_through_who $P3019, $P3018, "PAST"
    get_who $P3020, $P3019
    set $P3021, $P3020["Var"]
    $P3022 = $P3021."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3023 = $P3016."new"($P3017, $P3022, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2133
    .return ($P3023)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("270_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3025
    .param pmc param_3026
.annotate 'line', 2142
    .lex "self", param_3025
    .lex "$obj", param_3026
.annotate 'line', 2144
    new $P3027, "Undef"
    .lex "$idx", $P3027
.annotate 'line', 2143
    find_lex $P3028, "$obj"
    unless_null $P3028, vivify_1190
    new $P3028, "Undef"
  vivify_1190:
    find_lex $P3029, "self"
    find_lex $P3030, "$?CLASS"
    getattribute $P3031, $P3029, $P3030, "$!sc"
    unless_null $P3031, vivify_1191
    new $P3031, "Undef"
  vivify_1191:
    nqp_set_sc_for_object $P3028, $P3031
.annotate 'line', 2144
    find_lex $P3032, "self"
    find_lex $P3033, "$?CLASS"
    getattribute $P3034, $P3032, $P3033, "$!sc"
    unless_null $P3034, vivify_1192
    new $P3034, "Undef"
  vivify_1192:
    $P3035 = $P3034."elems"()
    store_lex "$idx", $P3035
.annotate 'line', 2145
    find_lex $P3036, "$obj"
    unless_null $P3036, vivify_1193
    new $P3036, "Undef"
  vivify_1193:
    find_lex $P3037, "$idx"
    unless_null $P3037, vivify_1194
    new $P3037, "Undef"
  vivify_1194:
    set $I3038, $P3037
    find_lex $P3039, "self"
    find_lex $P3040, "$?CLASS"
    getattribute $P3041, $P3039, $P3040, "$!sc"
    unless_null $P3041, vivify_1195
    $P3041 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3039, $P3040, "$!sc", $P3041
  vivify_1195:
    set $P3041[$I3038], $P3036
.annotate 'line', 2146
    find_lex $P3042, "$idx"
    unless_null $P3042, vivify_1196
    new $P3042, "Undef"
  vivify_1196:
    find_lex $P3043, "$obj"
    unless_null $P3043, vivify_1197
    new $P3043, "Undef"
  vivify_1197:
    $P3044 = "addr"($P3043)
    find_lex $P3045, "self"
    find_lex $P3046, "$?CLASS"
    getattribute $P3047, $P3045, $P3046, "%!addr_to_slot"
    unless_null $P3047, vivify_1198
    $P3047 = root_new ['parrot';'Hash']
    setattribute $P3045, $P3046, "%!addr_to_slot", $P3047
  vivify_1198:
    set $P3047[$P3044], $P3042
    find_lex $P3048, "$idx"
    unless_null $P3048, vivify_1199
    new $P3048, "Undef"
  vivify_1199:
.annotate 'line', 2142
    .return ($P3048)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code"  :subid("271_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3050
    .param pmc param_3051
.annotate 'line', 2151
    .lex "self", param_3050
    .lex "$obj", param_3051
.annotate 'line', 2152
    new $P3052, "Undef"
    .lex "$idx", $P3052
    find_lex $P3053, "self"
    find_lex $P3054, "$?CLASS"
    getattribute $P3055, $P3053, $P3054, "$!sc"
    unless_null $P3055, vivify_1200
    new $P3055, "Undef"
  vivify_1200:
    $P3056 = $P3055."elems"()
    store_lex "$idx", $P3056
.annotate 'line', 2153
    find_lex $P3057, "$obj"
    unless_null $P3057, vivify_1201
    new $P3057, "Undef"
  vivify_1201:
    find_lex $P3058, "$idx"
    unless_null $P3058, vivify_1202
    new $P3058, "Undef"
  vivify_1202:
    set $I3059, $P3058
    find_lex $P3060, "self"
    find_lex $P3061, "$?CLASS"
    getattribute $P3062, $P3060, $P3061, "$!sc"
    unless_null $P3062, vivify_1203
    $P3062 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3060, $P3061, "$!sc", $P3062
  vivify_1203:
    set $P3062[$I3059], $P3057
.annotate 'line', 2154
    find_lex $P3063, "$idx"
    unless_null $P3063, vivify_1204
    new $P3063, "Undef"
  vivify_1204:
    find_lex $P3064, "$obj"
    unless_null $P3064, vivify_1205
    new $P3064, "Undef"
  vivify_1205:
    $P3065 = "addr"($P3064)
    find_lex $P3066, "self"
    find_lex $P3067, "$?CLASS"
    getattribute $P3068, $P3066, $P3067, "%!addr_to_slot"
    unless_null $P3068, vivify_1206
    $P3068 = root_new ['parrot';'Hash']
    setattribute $P3066, $P3067, "%!addr_to_slot", $P3068
  vivify_1206:
    set $P3068[$P3065], $P3063
    find_lex $P3069, "$idx"
    unless_null $P3069, vivify_1207
    new $P3069, "Undef"
  vivify_1207:
.annotate 'line', 2151
    .return ($P3069)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("272_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3071
    .param pmc param_3072 :optional :named("deserialize_past")
    .param int has_param_3072 :opt_flag
    .param pmc param_3074 :optional :named("fixup_past")
    .param int has_param_3074 :opt_flag
.annotate 'line', 2159
    .lex "self", param_3071
    if has_param_3072, optparam_1208
    new $P3073, "Undef"
    set param_3072, $P3073
  optparam_1208:
    .lex "$deserialize_past", param_3072
    if has_param_3074, optparam_1209
    new $P3075, "Undef"
    set param_3074, $P3075
  optparam_1209:
    .lex "$fixup_past", param_3074
.annotate 'line', 2160
    find_lex $P3076, "self"
    find_lex $P3077, "$?CLASS"
    getattribute $P3078, $P3076, $P3077, "@!event_stream"
    unless_null $P3078, vivify_1210
    $P3078 = root_new ['parrot';'ResizablePMCArray']
  vivify_1210:
    find_lex $P3079, "Event"
    find_lex $P3080, "$deserialize_past"
    unless_null $P3080, vivify_1211
    new $P3080, "Undef"
  vivify_1211:
    find_lex $P3081, "$fixup_past"
    unless_null $P3081, vivify_1212
    new $P3081, "Undef"
  vivify_1212:
    $P3082 = $P3079."new"($P3080 :named("deserialize_past"), $P3081 :named("fixup_past"))
    $P3083 = $P3078."push"($P3082)
.annotate 'line', 2159
    .return ($P3083)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("273_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3085
    .param pmc param_3086
.annotate 'line', 2167
    .lex "self", param_3085
    .lex "$obj", param_3086
.annotate 'line', 2170
    new $P3087, "Undef"
    .lex "$sc", $P3087
    find_lex $P3088, "$obj"
    unless_null $P3088, vivify_1213
    new $P3088, "Undef"
  vivify_1213:
    nqp_get_sc_for_object $P3089, $P3088
    store_lex "$sc", $P3089
.annotate 'line', 2171
    find_lex $P3091, "$sc"
    unless_null $P3091, vivify_1214
    new $P3091, "Undef"
  vivify_1214:
    defined $I3092, $P3091
    if $I3092, unless_3090_end
.annotate 'line', 2172
    new $P3093, "String"
    assign $P3093, "Object of type '"
    find_lex $P3094, "$obj"
    unless_null $P3094, vivify_1215
    new $P3094, "Undef"
  vivify_1215:
    get_how $P3095, $P3094
    find_lex $P3096, "$obj"
    unless_null $P3096, vivify_1216
    new $P3096, "Undef"
  vivify_1216:
    $S3097 = $P3095."name"($P3096)
    concat $P3098, $P3093, $S3097
    concat $P3099, $P3098, "' cannot be referenced without having been "
    concat $P3100, $P3099, "assigned a serialization context"
.annotate 'line', 2173
    die $P3100
  unless_3090_end:
.annotate 'line', 2179
    find_lex $P3103, "$sc"
    unless_null $P3103, vivify_1217
    new $P3103, "Undef"
  vivify_1217:
    find_lex $P3104, "self"
    find_lex $P3105, "$?CLASS"
    getattribute $P3106, $P3104, $P3105, "$!sc"
    unless_null $P3106, vivify_1218
    new $P3106, "Undef"
  vivify_1218:
    issame $I3107, $P3103, $P3106
    if $I3107, if_3102
.annotate 'line', 2183
    get_hll_global $P3111, "GLOBAL"
    nqp_get_package_through_who $P3112, $P3111, "PAST"
    get_who $P3113, $P3112
    set $P3114, $P3113["Op"]
.annotate 'line', 2184
    find_lex $P3115, "$sc"
    unless_null $P3115, vivify_1219
    new $P3115, "Undef"
  vivify_1219:
    $P3116 = $P3115."handle"()
    find_lex $P3117, "$sc"
    unless_null $P3117, vivify_1220
    new $P3117, "Undef"
  vivify_1220:
    find_lex $P3118, "$obj"
    unless_null $P3118, vivify_1221
    new $P3118, "Undef"
  vivify_1221:
    $P3119 = $P3117."slot_index_for"($P3118)
    $P3120 = $P3114."new"($P3116, $P3119, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2182
    set $P3101, $P3120
.annotate 'line', 2179
    goto if_3102_end
  if_3102:
.annotate 'line', 2180
    find_lex $P3108, "self"
    find_lex $P3109, "$obj"
    unless_null $P3109, vivify_1222
    new $P3109, "Undef"
  vivify_1222:
    $P3110 = $P3108."get_slot_past_for_object"($P3109)
.annotate 'line', 2179
    set $P3101, $P3110
  if_3102_end:
.annotate 'line', 2167
    .return ($P3101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("274_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3122
.annotate 'line', 2190
    .lex "self", param_3122
    find_lex $P3123, "self"
    find_lex $P3124, "$?CLASS"
    getattribute $P3125, $P3123, $P3124, "$!sc"
    unless_null $P3125, vivify_1223
    new $P3125, "Undef"
  vivify_1223:
    .return ($P3125)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle"  :subid("275_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3127
.annotate 'line', 2195
    .lex "self", param_3127
    find_lex $P3128, "self"
    find_lex $P3129, "$?CLASS"
    getattribute $P3130, $P3128, $P3129, "$!handle"
    unless_null $P3130, vivify_1224
    new $P3130, "Undef"
  vivify_1224:
    .return ($P3130)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream"  :subid("276_1304523734.668") :outer("259_1304523734.668")
    .param pmc param_3132
.annotate 'line', 2200
    .lex "self", param_3132
    find_lex $P3133, "self"
    find_lex $P3134, "$?CLASS"
    getattribute $P3135, $P3133, $P3134, "@!event_stream"
    unless_null $P3135, vivify_1225
    $P3135 = root_new ['parrot';'ResizablePMCArray']
  vivify_1225:
    .return ($P3135)
.end


.HLL "nqp"

.namespace []
.sub "_block3144" :load :anon :subid("277_1304523734.668")
.annotate 'line', 1064
    .const 'Sub' $P3146 = "10_1304523734.668" 
    $P3147 = $P3146()
    .return ($P3147)
.end

