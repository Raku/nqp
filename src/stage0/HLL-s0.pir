
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303857419.487")
.annotate 'line', 0
    .const 'Sub' $P3289 = "262_1303857419.487" 
    capture_lex $P3289
    .const 'Sub' $P2825 = "242_1303857419.487" 
    capture_lex $P2825
    .const 'Sub' $P2726 = "234_1303857419.487" 
    capture_lex $P2726
    .const 'Sub' $P1442 = "167_1303857419.487" 
    capture_lex $P1442
    .const 'Sub' $P688 = "120_1303857419.487" 
    capture_lex $P688
    .const 'Sub' $P17 = "11_1303857419.487" 
    capture_lex $P17
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
.annotate 'line', 1791
    new $P15, "Undef"
    .lex "$compiler", $P15
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
    .const 'Sub' $P17 = "11_1303857419.487" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P688 = "120_1303857419.487" 
    capture_lex $P688
    $P688()
.annotate 'line', 1072
    .const 'Sub' $P1442 = "167_1303857419.487" 
    capture_lex $P1442
    $P1442()
.annotate 'line', 1791
    get_hll_global $P2719, "GLOBAL"
    nqp_get_package_through_who $P2720, $P2719, "HLL"
    get_who $P2721, $P2720
    set $P2722, $P2721["Compiler"]
    $P2723 = $P2722."new"()
    store_lex "$compiler", $P2723
.annotate 'line', 1792
    find_lex $P2724, "$compiler"
    unless_null $P2724, vivify_1025
    new $P2724, "Undef"
  vivify_1025:
    $P2724."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2726 = "234_1303857419.487" 
    capture_lex $P2726
    $P2726()
.annotate 'line', 1918
    .const 'Sub' $P2825 = "242_1303857419.487" 
    capture_lex $P2825
    $P2825()
.annotate 'line', 2096
    .const 'Sub' $P3289 = "262_1303857419.487" 
    capture_lex $P3289
    $P4119 = $P3289()
.annotate 'line', 1
    .return ($P4119)
.annotate 'line', 1064
    .const 'Sub' $P4121 = "293_1303857419.487" 
.annotate 'line', 1
    .return ($P4121)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1303857419.487")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303857419.487" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P4125, "1303857411.111"
    isnull $I4126, $P4125
    if $I4126, if_4124
    .const 'Sub' $P4311 = "10_1303857419.487" 
    $P4312 = $P4311."get_lexinfo"()
    nqp_get_sc_object $P4313, "1303857411.111", 0
    $P4312."set_static_lexpad_value"("GLOBALish", $P4313)
    .const 'Sub' $P4314 = "10_1303857419.487" 
    $P4315 = $P4314."get_lexinfo"()
    $P4315."finish_static_lexpad"()
    .const 'Sub' $P4316 = "10_1303857419.487" 
    $P4317 = $P4316."get_lexinfo"()
    nqp_get_sc_object $P4318, "1303857411.111", 0
    $P4317."set_static_lexpad_value"("$?PACKAGE", $P4318)
    .const 'Sub' $P4319 = "10_1303857419.487" 
    $P4320 = $P4319."get_lexinfo"()
    $P4320."finish_static_lexpad"()
    nqp_get_sc_object $P4321, "1303857411.111", 1
    set_hll_global ["HLL"], "Grammar", $P4321
    .const 'Sub' $P4322 = "109_1303857419.487" 
    nqp_get_sc_object $P4323, "1303857411.111", 1
    get_who $P4324, $P4323
    set $P4324["quotemod_check"], $P4322
    .const 'Sub' $P4325 = "112_1303857419.487" 
    nqp_get_sc_object $P4326, "1303857411.111", 1
    get_who $P4327, $P4326
    set $P4327["split_words"], $P4325
    .const 'Sub' $P4328 = "11_1303857419.487" 
    $P4329 = $P4328."get_lexinfo"()
    nqp_get_sc_object $P4330, "1303857411.111", 1
    $P4329."set_static_lexpad_value"("$?PACKAGE", $P4330)
    .const 'Sub' $P4331 = "11_1303857419.487" 
    $P4332 = $P4331."get_lexinfo"()
    $P4332."finish_static_lexpad"()
    .const 'Sub' $P4333 = "11_1303857419.487" 
    $P4334 = $P4333."get_lexinfo"()
    nqp_get_sc_object $P4335, "1303857411.111", 1
    $P4334."set_static_lexpad_value"("$?CLASS", $P4335)
    .const 'Sub' $P4336 = "11_1303857419.487" 
    $P4337 = $P4336."get_lexinfo"()
    $P4337."finish_static_lexpad"()
    nqp_get_sc_object $P4338, "1303857411.111", 2
    set_hll_global ["HLL"], "Actions", $P4338
    .const 'Sub' $P4339 = "121_1303857419.487" 
    nqp_get_sc_object $P4340, "1303857411.111", 2
    get_who $P4341, $P4340
    set $P4341["string_to_int"], $P4339
    .const 'Sub' $P4342 = "123_1303857419.487" 
    nqp_get_sc_object $P4343, "1303857411.111", 2
    get_who $P4344, $P4343
    set $P4344["ints_to_string"], $P4342
    .const 'Sub' $P4345 = "120_1303857419.487" 
    $P4346 = $P4345."get_lexinfo"()
    nqp_get_sc_object $P4347, "1303857411.111", 2
    $P4346."set_static_lexpad_value"("$?PACKAGE", $P4347)
    .const 'Sub' $P4348 = "120_1303857419.487" 
    $P4349 = $P4348."get_lexinfo"()
    $P4349."finish_static_lexpad"()
    .const 'Sub' $P4350 = "120_1303857419.487" 
    $P4351 = $P4350."get_lexinfo"()
    nqp_get_sc_object $P4352, "1303857411.111", 2
    $P4351."set_static_lexpad_value"("$?CLASS", $P4352)
    .const 'Sub' $P4353 = "120_1303857419.487" 
    $P4354 = $P4353."get_lexinfo"()
    $P4354."finish_static_lexpad"()
    nqp_get_sc_object $P4355, "1303857411.111", 3
    set_hll_global ["HLL"], "Compiler", $P4355
    .const 'Sub' $P4356 = "167_1303857419.487" 
    $P4357 = $P4356."get_lexinfo"()
    nqp_get_sc_object $P4358, "1303857411.111", 3
    $P4357."set_static_lexpad_value"("$?PACKAGE", $P4358)
    .const 'Sub' $P4359 = "167_1303857419.487" 
    $P4360 = $P4359."get_lexinfo"()
    $P4360."finish_static_lexpad"()
    .const 'Sub' $P4361 = "167_1303857419.487" 
    $P4362 = $P4361."get_lexinfo"()
    nqp_get_sc_object $P4363, "1303857411.111", 3
    $P4362."set_static_lexpad_value"("$?CLASS", $P4363)
    .const 'Sub' $P4364 = "167_1303857419.487" 
    $P4365 = $P4364."get_lexinfo"()
    $P4365."finish_static_lexpad"()
    nqp_get_sc_object $P4366, "1303857411.111", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4366
    .const 'Sub' $P4367 = "234_1303857419.487" 
    $P4368 = $P4367."get_lexinfo"()
    nqp_get_sc_object $P4369, "1303857411.111", 4
    $P4368."set_static_lexpad_value"("$?PACKAGE", $P4369)
    .const 'Sub' $P4370 = "234_1303857419.487" 
    $P4371 = $P4370."get_lexinfo"()
    $P4371."finish_static_lexpad"()
    .const 'Sub' $P4372 = "234_1303857419.487" 
    $P4373 = $P4372."get_lexinfo"()
    nqp_get_sc_object $P4374, "1303857411.111", 4
    $P4373."set_static_lexpad_value"("$?CLASS", $P4374)
    .const 'Sub' $P4375 = "234_1303857419.487" 
    $P4376 = $P4375."get_lexinfo"()
    $P4376."finish_static_lexpad"()
    nqp_get_sc_object $P4377, "1303857411.111", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4377
    .const 'Sub' $P4378 = "242_1303857419.487" 
    $P4379 = $P4378."get_lexinfo"()
    nqp_get_sc_object $P4380, "1303857411.111", 5
    $P4379."set_static_lexpad_value"("$?PACKAGE", $P4380)
    .const 'Sub' $P4381 = "242_1303857419.487" 
    $P4382 = $P4381."get_lexinfo"()
    $P4382."finish_static_lexpad"()
    .const 'Sub' $P4383 = "242_1303857419.487" 
    $P4384 = $P4383."get_lexinfo"()
    nqp_get_sc_object $P4385, "1303857411.111", 5
    $P4384."set_static_lexpad_value"("$?CLASS", $P4385)
    .const 'Sub' $P4386 = "242_1303857419.487" 
    $P4387 = $P4386."get_lexinfo"()
    $P4387."finish_static_lexpad"()
    nqp_get_sc_object $P4388, "1303857411.111", 6
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4388
    .const 'Sub' $P4389 = "262_1303857419.487" 
    $P4390 = $P4389."get_lexinfo"()
    nqp_get_sc_object $P4391, "1303857411.111", 7
    $P4390."set_static_lexpad_value"("Event", $P4391)
    .const 'Sub' $P4392 = "262_1303857419.487" 
    $P4393 = $P4392."get_lexinfo"()
    $P4393."finish_static_lexpad"()
    .const 'Sub' $P4394 = "264_1303857419.487" 
    $P4395 = $P4394."get_lexinfo"()
    nqp_get_sc_object $P4396, "1303857411.111", 7
    $P4395."set_static_lexpad_value"("$?PACKAGE", $P4396)
    .const 'Sub' $P4397 = "264_1303857419.487" 
    $P4398 = $P4397."get_lexinfo"()
    $P4398."finish_static_lexpad"()
    .const 'Sub' $P4399 = "264_1303857419.487" 
    $P4400 = $P4399."get_lexinfo"()
    nqp_get_sc_object $P4401, "1303857411.111", 7
    $P4400."set_static_lexpad_value"("$?CLASS", $P4401)
    .const 'Sub' $P4402 = "264_1303857419.487" 
    $P4403 = $P4402."get_lexinfo"()
    $P4403."finish_static_lexpad"()
    .const 'Sub' $P4404 = "262_1303857419.487" 
    $P4405 = $P4404."get_lexinfo"()
    nqp_get_sc_object $P4406, "1303857411.111", 6
    $P4405."set_static_lexpad_value"("$?PACKAGE", $P4406)
    .const 'Sub' $P4407 = "262_1303857419.487" 
    $P4408 = $P4407."get_lexinfo"()
    $P4408."finish_static_lexpad"()
    .const 'Sub' $P4409 = "262_1303857419.487" 
    $P4410 = $P4409."get_lexinfo"()
    nqp_get_sc_object $P4411, "1303857411.111", 6
    $P4410."set_static_lexpad_value"("$?CLASS", $P4411)
    .const 'Sub' $P4412 = "262_1303857419.487" 
    $P4413 = $P4412."get_lexinfo"()
    $P4413."finish_static_lexpad"()
    goto if_4124_end
  if_4124:
    nqp_dynop_setup 
    getinterp $P4127
    get_class $P4128, "LexPad"
    get_class $P4129, "NQPLexPad"
    $P4127."hll_map"($P4128, $P4129)
    nqp_create_sc $P4130, "1303857411.111"
    .local pmc cur_sc
    set cur_sc, $P4130
    nqp_get_sc_object $P4131, "__6MODEL_CORE__", 0
    $P4132 = $P4131."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P4132, cur_sc
    nqp_set_sc_object "1303857411.111", 0, $P4132
    .const 'Sub' $P4133 = "10_1303857419.487" 
    $P4134 = $P4133."get_lexinfo"()
    nqp_get_sc_object $P4135, "1303857411.111", 0
    $P4134."set_static_lexpad_value"("GLOBALish", $P4135)
    .const 'Sub' $P4136 = "10_1303857419.487" 
    $P4137 = $P4136."get_lexinfo"()
    $P4137."finish_static_lexpad"()
    .const 'Sub' $P4138 = "10_1303857419.487" 
    $P4139 = $P4138."get_lexinfo"()
    nqp_get_sc_object $P4140, "1303857411.111", 0
    $P4139."set_static_lexpad_value"("$?PACKAGE", $P4140)
    .const 'Sub' $P4141 = "10_1303857419.487" 
    $P4142 = $P4141."get_lexinfo"()
    $P4142."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4143, "ModuleLoader"
    $P4144 = $P4143."load_setting"("NQPCORE")
    block."set_outer_ctx"($P4144)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4145, "ModuleLoader"
    nqp_get_sc_object $P4146, "1303857411.111", 0
    $P4145."load_module"("Regex", $P4146)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4147, "ModuleLoader"
    nqp_get_sc_object $P4148, "1303857411.111", 0
    $P4147."load_module"("Regex", $P4148)
    nqp_get_sc_object $P4149, "1303857403.801", 6
    $P4150 = $P4149."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P4150, cur_sc
    nqp_set_sc_object "1303857411.111", 1, $P4150
    nqp_get_sc_object $P4151, "1303857411.111", 1
    nqp_get_sc_object $P4152, "1303857411.111", 0
    nqp_get_package_through_who $P4153, $P4152, "HLL"
    get_who $P4154, $P4153
    set $P4154["Grammar"], $P4151
    nqp_get_sc_object $P4155, "1303857411.111", 1
    set_hll_global ["HLL"], "Grammar", $P4155
    .const 'Sub' $P4156 = "109_1303857419.487" 
    nqp_get_sc_object $P4157, "1303857411.111", 1
    get_who $P4158, $P4157
    set $P4158["quotemod_check"], $P4156
    .const 'Sub' $P4159 = "112_1303857419.487" 
    nqp_get_sc_object $P4160, "1303857411.111", 1
    get_who $P4161, $P4160
    set $P4161["split_words"], $P4159
    .const 'Sub' $P4162 = "11_1303857419.487" 
    $P4163 = $P4162."get_lexinfo"()
    nqp_get_sc_object $P4164, "1303857411.111", 1
    $P4163."set_static_lexpad_value"("$?PACKAGE", $P4164)
    .const 'Sub' $P4165 = "11_1303857419.487" 
    $P4166 = $P4165."get_lexinfo"()
    $P4166."finish_static_lexpad"()
    .const 'Sub' $P4167 = "11_1303857419.487" 
    $P4168 = $P4167."get_lexinfo"()
    nqp_get_sc_object $P4169, "1303857411.111", 1
    $P4168."set_static_lexpad_value"("$?CLASS", $P4169)
    .const 'Sub' $P4170 = "11_1303857419.487" 
    $P4171 = $P4170."get_lexinfo"()
    $P4171."finish_static_lexpad"()
    nqp_get_sc_object $P4172, "1303857411.111", 1
    get_how $P4173, $P4172
    nqp_get_sc_object $P4174, "1303857411.111", 1
    nqp_get_sc_object $P4175, "__REGEX_CORE_SC__", 0
    $P4173."set_default_parent"($P4174, $P4175)
    nqp_get_sc_object $P4176, "1303857403.801", 6
    $P4177 = $P4176."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4177, cur_sc
    nqp_set_sc_object "1303857411.111", 2, $P4177
    nqp_get_sc_object $P4178, "1303857411.111", 2
    nqp_get_sc_object $P4179, "1303857411.111", 0
    nqp_get_package_through_who $P4180, $P4179, "HLL"
    get_who $P4181, $P4180
    set $P4181["Actions"], $P4178
    nqp_get_sc_object $P4182, "1303857411.111", 2
    set_hll_global ["HLL"], "Actions", $P4182
    .const 'Sub' $P4183 = "121_1303857419.487" 
    nqp_get_sc_object $P4184, "1303857411.111", 2
    get_who $P4185, $P4184
    set $P4185["string_to_int"], $P4183
    .const 'Sub' $P4186 = "123_1303857419.487" 
    nqp_get_sc_object $P4187, "1303857411.111", 2
    get_who $P4188, $P4187
    set $P4188["ints_to_string"], $P4186
    .const 'Sub' $P4189 = "120_1303857419.487" 
    $P4190 = $P4189."get_lexinfo"()
    nqp_get_sc_object $P4191, "1303857411.111", 2
    $P4190."set_static_lexpad_value"("$?PACKAGE", $P4191)
    .const 'Sub' $P4192 = "120_1303857419.487" 
    $P4193 = $P4192."get_lexinfo"()
    $P4193."finish_static_lexpad"()
    .const 'Sub' $P4194 = "120_1303857419.487" 
    $P4195 = $P4194."get_lexinfo"()
    nqp_get_sc_object $P4196, "1303857411.111", 2
    $P4195."set_static_lexpad_value"("$?CLASS", $P4196)
    .const 'Sub' $P4197 = "120_1303857419.487" 
    $P4198 = $P4197."get_lexinfo"()
    $P4198."finish_static_lexpad"()
    nqp_get_sc_object $P4199, "1303857411.111", 2
    get_how $P4200, $P4199
    nqp_get_sc_object $P4201, "1303857411.111", 2
    nqp_get_sc_object $P4202, "1303857409.396", 5
    $P4200."set_default_parent"($P4201, $P4202)
    nqp_get_sc_object $P4203, "1303857403.801", 6
    $P4204 = $P4203."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4204, cur_sc
    nqp_set_sc_object "1303857411.111", 3, $P4204
    nqp_get_sc_object $P4205, "1303857411.111", 3
    nqp_get_sc_object $P4206, "1303857411.111", 0
    nqp_get_package_through_who $P4207, $P4206, "HLL"
    get_who $P4208, $P4207
    set $P4208["Compiler"], $P4205
    nqp_get_sc_object $P4209, "1303857411.111", 3
    set_hll_global ["HLL"], "Compiler", $P4209
    .const 'Sub' $P4210 = "167_1303857419.487" 
    $P4211 = $P4210."get_lexinfo"()
    nqp_get_sc_object $P4212, "1303857411.111", 3
    $P4211."set_static_lexpad_value"("$?PACKAGE", $P4212)
    .const 'Sub' $P4213 = "167_1303857419.487" 
    $P4214 = $P4213."get_lexinfo"()
    $P4214."finish_static_lexpad"()
    .const 'Sub' $P4215 = "167_1303857419.487" 
    $P4216 = $P4215."get_lexinfo"()
    nqp_get_sc_object $P4217, "1303857411.111", 3
    $P4216."set_static_lexpad_value"("$?CLASS", $P4217)
    .const 'Sub' $P4218 = "167_1303857419.487" 
    $P4219 = $P4218."get_lexinfo"()
    $P4219."finish_static_lexpad"()
    nqp_get_sc_object $P4220, "1303857411.111", 3
    get_how $P4221, $P4220
    nqp_get_sc_object $P4222, "1303857411.111", 3
    nqp_get_sc_object $P4223, "1303857409.396", 5
    $P4221."set_default_parent"($P4222, $P4223)
    nqp_get_sc_object $P4224, "1303857403.801", 6
    $P4225 = $P4224."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4225, cur_sc
    nqp_set_sc_object "1303857411.111", 4, $P4225
    nqp_get_sc_object $P4226, "1303857411.111", 4
    nqp_get_sc_object $P4227, "1303857411.111", 0
    nqp_get_package_through_who $P4228, $P4227, "HLL"
    nqp_get_package_through_who $P4229, $P4228, "CommandLine"
    get_who $P4230, $P4229
    set $P4230["Result"], $P4226
    nqp_get_sc_object $P4231, "1303857411.111", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4231
    .const 'Sub' $P4232 = "234_1303857419.487" 
    $P4233 = $P4232."get_lexinfo"()
    nqp_get_sc_object $P4234, "1303857411.111", 4
    $P4233."set_static_lexpad_value"("$?PACKAGE", $P4234)
    .const 'Sub' $P4235 = "234_1303857419.487" 
    $P4236 = $P4235."get_lexinfo"()
    $P4236."finish_static_lexpad"()
    .const 'Sub' $P4237 = "234_1303857419.487" 
    $P4238 = $P4237."get_lexinfo"()
    nqp_get_sc_object $P4239, "1303857411.111", 4
    $P4238."set_static_lexpad_value"("$?CLASS", $P4239)
    .const 'Sub' $P4240 = "234_1303857419.487" 
    $P4241 = $P4240."get_lexinfo"()
    $P4241."finish_static_lexpad"()
    nqp_get_sc_object $P4242, "1303857411.111", 4
    get_how $P4243, $P4242
    nqp_get_sc_object $P4244, "1303857411.111", 4
    nqp_get_sc_object $P4245, "1303857409.396", 5
    $P4243."set_default_parent"($P4244, $P4245)
    nqp_get_sc_object $P4246, "1303857403.801", 6
    $P4247 = $P4246."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4247, cur_sc
    nqp_set_sc_object "1303857411.111", 5, $P4247
    nqp_get_sc_object $P4248, "1303857411.111", 5
    nqp_get_sc_object $P4249, "1303857411.111", 0
    nqp_get_package_through_who $P4250, $P4249, "HLL"
    nqp_get_package_through_who $P4251, $P4250, "CommandLine"
    get_who $P4252, $P4251
    set $P4252["Parser"], $P4248
    nqp_get_sc_object $P4253, "1303857411.111", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4253
    .const 'Sub' $P4254 = "242_1303857419.487" 
    $P4255 = $P4254."get_lexinfo"()
    nqp_get_sc_object $P4256, "1303857411.111", 5
    $P4255."set_static_lexpad_value"("$?PACKAGE", $P4256)
    .const 'Sub' $P4257 = "242_1303857419.487" 
    $P4258 = $P4257."get_lexinfo"()
    $P4258."finish_static_lexpad"()
    .const 'Sub' $P4259 = "242_1303857419.487" 
    $P4260 = $P4259."get_lexinfo"()
    nqp_get_sc_object $P4261, "1303857411.111", 5
    $P4260."set_static_lexpad_value"("$?CLASS", $P4261)
    .const 'Sub' $P4262 = "242_1303857419.487" 
    $P4263 = $P4262."get_lexinfo"()
    $P4263."finish_static_lexpad"()
    nqp_get_sc_object $P4264, "1303857411.111", 5
    get_how $P4265, $P4264
    nqp_get_sc_object $P4266, "1303857411.111", 5
    nqp_get_sc_object $P4267, "1303857409.396", 5
    $P4265."set_default_parent"($P4266, $P4267)
    nqp_get_sc_object $P4268, "1303857403.801", 6
    $P4269 = $P4268."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4269, cur_sc
    nqp_set_sc_object "1303857411.111", 6, $P4269
    nqp_get_sc_object $P4270, "1303857411.111", 6
    nqp_get_sc_object $P4271, "1303857411.111", 0
    nqp_get_package_through_who $P4272, $P4271, "HLL"
    nqp_get_package_through_who $P4273, $P4272, "Compiler"
    get_who $P4274, $P4273
    set $P4274["SerializationContextBuilder"], $P4270
    nqp_get_sc_object $P4275, "1303857411.111", 6
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4275
    nqp_get_sc_object $P4276, "1303857403.801", 6
    $P4277 = $P4276."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4277, cur_sc
    nqp_set_sc_object "1303857411.111", 7, $P4277
    .const 'Sub' $P4278 = "262_1303857419.487" 
    $P4279 = $P4278."get_lexinfo"()
    nqp_get_sc_object $P4280, "1303857411.111", 7
    $P4279."set_static_lexpad_value"("Event", $P4280)
    .const 'Sub' $P4281 = "262_1303857419.487" 
    $P4282 = $P4281."get_lexinfo"()
    $P4282."finish_static_lexpad"()
    .const 'Sub' $P4283 = "264_1303857419.487" 
    $P4284 = $P4283."get_lexinfo"()
    nqp_get_sc_object $P4285, "1303857411.111", 7
    $P4284."set_static_lexpad_value"("$?PACKAGE", $P4285)
    .const 'Sub' $P4286 = "264_1303857419.487" 
    $P4287 = $P4286."get_lexinfo"()
    $P4287."finish_static_lexpad"()
    .const 'Sub' $P4288 = "264_1303857419.487" 
    $P4289 = $P4288."get_lexinfo"()
    nqp_get_sc_object $P4290, "1303857411.111", 7
    $P4289."set_static_lexpad_value"("$?CLASS", $P4290)
    .const 'Sub' $P4291 = "264_1303857419.487" 
    $P4292 = $P4291."get_lexinfo"()
    $P4292."finish_static_lexpad"()
    nqp_get_sc_object $P4293, "1303857411.111", 7
    get_how $P4294, $P4293
    nqp_get_sc_object $P4295, "1303857411.111", 7
    nqp_get_sc_object $P4296, "1303857409.396", 5
    $P4294."set_default_parent"($P4295, $P4296)
    .const 'Sub' $P4297 = "262_1303857419.487" 
    $P4298 = $P4297."get_lexinfo"()
    nqp_get_sc_object $P4299, "1303857411.111", 6
    $P4298."set_static_lexpad_value"("$?PACKAGE", $P4299)
    .const 'Sub' $P4300 = "262_1303857419.487" 
    $P4301 = $P4300."get_lexinfo"()
    $P4301."finish_static_lexpad"()
    .const 'Sub' $P4302 = "262_1303857419.487" 
    $P4303 = $P4302."get_lexinfo"()
    nqp_get_sc_object $P4304, "1303857411.111", 6
    $P4303."set_static_lexpad_value"("$?CLASS", $P4304)
    .const 'Sub' $P4305 = "262_1303857419.487" 
    $P4306 = $P4305."get_lexinfo"()
    $P4306."finish_static_lexpad"()
    nqp_get_sc_object $P4307, "1303857411.111", 6
    get_how $P4308, $P4307
    nqp_get_sc_object $P4309, "1303857411.111", 6
    nqp_get_sc_object $P4310, "1303857409.396", 5
    $P4308."set_default_parent"($P4309, $P4310)
  if_4124_end:
    nqp_get_sc_object $P4414, "1303857411.111", 0
    set_hll_global "GLOBAL", $P4414
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303857419.487") :outer("10_1303857419.487")
.annotate 'line', 9
    .const 'Sub' $P477 = "119_1303857419.487" 
    capture_lex $P477
    .const 'Sub' $P452 = "118_1303857419.487" 
    capture_lex $P452
    .const 'Sub' $P447 = "117_1303857419.487" 
    capture_lex $P447
    .const 'Sub' $P432 = "116_1303857419.487" 
    capture_lex $P432
    .const 'Sub' $P422 = "115_1303857419.487" 
    capture_lex $P422
    .const 'Sub' $P418 = "114_1303857419.487" 
    capture_lex $P418
    .const 'Sub' $P414 = "113_1303857419.487" 
    capture_lex $P414
    .const 'Sub' $P411 = "112_1303857419.487" 
    capture_lex $P411
    .const 'Sub' $P409 = "111_1303857419.487" 
    capture_lex $P409
    .const 'Sub' $P407 = "110_1303857419.487" 
    capture_lex $P407
    .const 'Sub' $P399 = "109_1303857419.487" 
    capture_lex $P399
    .const 'Sub' $P396 = "108_1303857419.487" 
    capture_lex $P396
    .const 'Sub' $P392 = "107_1303857419.487" 
    capture_lex $P392
    .const 'Sub' $P358 = "106_1303857419.487" 
    capture_lex $P358
    .const 'Sub' $P353 = "105_1303857419.487" 
    capture_lex $P353
    .const 'Sub' $P344 = "103_1303857419.487" 
    capture_lex $P344
    .const 'Sub' $P338 = "101_1303857419.487" 
    capture_lex $P338
    .const 'Sub' $P325 = "98_1303857419.487" 
    capture_lex $P325
    .const 'Sub' $P293 = "93_1303857419.487" 
    capture_lex $P293
    .const 'Sub' $P287 = "91_1303857419.487" 
    capture_lex $P287
    .const 'Sub' $P282 = "89_1303857419.487" 
    capture_lex $P282
    .const 'Sub' $P276 = "87_1303857419.487" 
    capture_lex $P276
    .const 'Sub' $P270 = "85_1303857419.487" 
    capture_lex $P270
    .const 'Sub' $P265 = "83_1303857419.487" 
    capture_lex $P265
    .const 'Sub' $P260 = "81_1303857419.487" 
    capture_lex $P260
    .const 'Sub' $P255 = "79_1303857419.487" 
    capture_lex $P255
    .const 'Sub' $P250 = "77_1303857419.487" 
    capture_lex $P250
    .const 'Sub' $P245 = "75_1303857419.487" 
    capture_lex $P245
    .const 'Sub' $P240 = "73_1303857419.487" 
    capture_lex $P240
    .const 'Sub' $P235 = "71_1303857419.487" 
    capture_lex $P235
    .const 'Sub' $P230 = "69_1303857419.487" 
    capture_lex $P230
    .const 'Sub' $P218 = "65_1303857419.487" 
    capture_lex $P218
    .const 'Sub' $P205 = "63_1303857419.487" 
    capture_lex $P205
    .const 'Sub' $P193 = "61_1303857419.487" 
    capture_lex $P193
    .const 'Sub' $P187 = "59_1303857419.487" 
    capture_lex $P187
    .const 'Sub' $P180 = "57_1303857419.487" 
    capture_lex $P180
    .const 'Sub' $P174 = "55_1303857419.487" 
    capture_lex $P174
    .const 'Sub' $P167 = "53_1303857419.487" 
    capture_lex $P167
    .const 'Sub' $P161 = "51_1303857419.487" 
    capture_lex $P161
    .const 'Sub' $P154 = "49_1303857419.487" 
    capture_lex $P154
    .const 'Sub' $P148 = "47_1303857419.487" 
    capture_lex $P148
    .const 'Sub' $P142 = "45_1303857419.487" 
    capture_lex $P142
    .const 'Sub' $P133 = "43_1303857419.487" 
    capture_lex $P133
    .const 'Sub' $P125 = "41_1303857419.487" 
    capture_lex $P125
    .const 'Sub' $P117 = "40_1303857419.487" 
    capture_lex $P117
    .const 'Sub' $P111 = "38_1303857419.487" 
    capture_lex $P111
    .const 'Sub' $P106 = "36_1303857419.487" 
    capture_lex $P106
    .const 'Sub' $P98 = "34_1303857419.487" 
    capture_lex $P98
    .const 'Sub' $P92 = "32_1303857419.487" 
    capture_lex $P92
    .const 'Sub' $P86 = "30_1303857419.487" 
    capture_lex $P86
    .const 'Sub' $P80 = "28_1303857419.487" 
    capture_lex $P80
    .const 'Sub' $P35 = "14_1303857419.487" 
    capture_lex $P35
    .const 'Sub' $P28 = "12_1303857419.487" 
    capture_lex $P28
.annotate 'line', 10
    new $P18, "Undef"
    .lex "$brackets", $P18
.annotate 'line', 12
    new $P19, "Undef"
    .lex "$cursor_class", $P19
    .lex "$?PACKAGE", $P20
    .lex "$?CLASS", $P21
.annotate 'line', 10
    new $P22, "String"
    assign $P22, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P22
.annotate 'line', 12
    find_lex $P23, "GLOBALish"
    get_who $P24, $P23
    set $P25, $P24["Regex"]
    unless_null $P25, vivify_296
    new $P25, "Undef"
  vivify_296:
    get_who $P26, $P25
    set $P27, $P26["Cursor"]
    unless_null $P27, vivify_297
    new $P27, "Undef"
  vivify_297:
    store_lex "$cursor_class", $P27
.annotate 'line', 851
    .const 'Sub' $P452 = "118_1303857419.487" 
    newclosure $P475, $P452
.annotate 'line', 9
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post295") :outer("11_1303857419.487")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1303857419.487" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P477 = "119_1303857419.487" 
    capture_lex $P477
    $P477()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block476"  :anon :subid("119_1303857419.487") :outer("11_1303857419.487")
.annotate 'line', 9
    nqp_get_sc_object $P478, "1303857411.111", 1
    .local pmc type_obj
    set type_obj, $P478
    get_how $P479, type_obj
    .const 'Sub' $P480 = "12_1303857419.487" 
    $P479."add_method"(type_obj, "ws", $P480)
    get_how $P481, type_obj
    get_global $P482, "!PREFIX__ws"
    $P481."add_method"(type_obj, "!PREFIX__ws", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "14_1303857419.487" 
    $P483."add_method"(type_obj, "termish", $P484)
    get_how $P485, type_obj
    get_global $P486, "!PREFIX__termish"
    $P485."add_method"(type_obj, "!PREFIX__termish", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "16_1303857419.487" 
    $P487."add_method"(type_obj, "term", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "17_1303857419.487" 
    $P489."add_method"(type_obj, "!PREFIX__term", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "18_1303857419.487" 
    $P491."add_method"(type_obj, "infix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "19_1303857419.487" 
    $P493."add_method"(type_obj, "!PREFIX__infix", $P494)
    get_how $P495, type_obj
    .const 'Sub' $P496 = "20_1303857419.487" 
    $P495."add_method"(type_obj, "prefix", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "21_1303857419.487" 
    $P497."add_method"(type_obj, "!PREFIX__prefix", $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "22_1303857419.487" 
    $P499."add_method"(type_obj, "postfix", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "23_1303857419.487" 
    $P501."add_method"(type_obj, "!PREFIX__postfix", $P502)
    get_how $P503, type_obj
    .const 'Sub' $P504 = "24_1303857419.487" 
    $P503."add_method"(type_obj, "circumfix", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "25_1303857419.487" 
    $P505."add_method"(type_obj, "!PREFIX__circumfix", $P506)
    get_how $P507, type_obj
    .const 'Sub' $P508 = "26_1303857419.487" 
    $P507."add_method"(type_obj, "postcircumfix", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "27_1303857419.487" 
    $P509."add_method"(type_obj, "!PREFIX__postcircumfix", $P510)
    get_how $P511, type_obj
    .const 'Sub' $P512 = "28_1303857419.487" 
    $P511."add_method"(type_obj, "term:sym<circumfix>", $P512)
    get_how $P513, type_obj
    get_global $P514, "!PREFIX__term:sym<circumfix>"
    $P513."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P514)
    get_how $P515, type_obj
    .const 'Sub' $P516 = "30_1303857419.487" 
    $P515."add_method"(type_obj, "infixish", $P516)
    get_how $P517, type_obj
    get_global $P518, "!PREFIX__infixish"
    $P517."add_method"(type_obj, "!PREFIX__infixish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "32_1303857419.487" 
    $P519."add_method"(type_obj, "prefixish", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__prefixish"
    $P521."add_method"(type_obj, "!PREFIX__prefixish", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "34_1303857419.487" 
    $P523."add_method"(type_obj, "postfixish", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__postfixish"
    $P525."add_method"(type_obj, "!PREFIX__postfixish", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "36_1303857419.487" 
    $P527."add_method"(type_obj, "nullterm", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__nullterm"
    $P529."add_method"(type_obj, "!PREFIX__nullterm", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "38_1303857419.487" 
    $P531."add_method"(type_obj, "nullterm_alt", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__nullterm_alt"
    $P533."add_method"(type_obj, "!PREFIX__nullterm_alt", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "40_1303857419.487" 
    $P535."add_method"(type_obj, "nulltermish", $P536)
    get_how $P537, type_obj
    .const 'Sub' $P538 = "41_1303857419.487" 
    $P537."add_method"(type_obj, "quote_delimited", $P538)
    get_how $P539, type_obj
    get_global $P540, "!PREFIX__quote_delimited"
    $P539."add_method"(type_obj, "!PREFIX__quote_delimited", $P540)
    get_how $P541, type_obj
    .const 'Sub' $P542 = "43_1303857419.487" 
    $P541."add_method"(type_obj, "quote_atom", $P542)
    get_how $P543, type_obj
    get_global $P544, "!PREFIX__quote_atom"
    $P543."add_method"(type_obj, "!PREFIX__quote_atom", $P544)
    get_how $P545, type_obj
    .const 'Sub' $P546 = "45_1303857419.487" 
    $P545."add_method"(type_obj, "decint", $P546)
    get_how $P547, type_obj
    get_global $P548, "!PREFIX__decint"
    $P547."add_method"(type_obj, "!PREFIX__decint", $P548)
    get_how $P549, type_obj
    .const 'Sub' $P550 = "47_1303857419.487" 
    $P549."add_method"(type_obj, "decints", $P550)
    get_how $P551, type_obj
    get_global $P552, "!PREFIX__decints"
    $P551."add_method"(type_obj, "!PREFIX__decints", $P552)
    get_how $P553, type_obj
    .const 'Sub' $P554 = "49_1303857419.487" 
    $P553."add_method"(type_obj, "hexint", $P554)
    get_how $P555, type_obj
    get_global $P556, "!PREFIX__hexint"
    $P555."add_method"(type_obj, "!PREFIX__hexint", $P556)
    get_how $P557, type_obj
    .const 'Sub' $P558 = "51_1303857419.487" 
    $P557."add_method"(type_obj, "hexints", $P558)
    get_how $P559, type_obj
    get_global $P560, "!PREFIX__hexints"
    $P559."add_method"(type_obj, "!PREFIX__hexints", $P560)
    get_how $P561, type_obj
    .const 'Sub' $P562 = "53_1303857419.487" 
    $P561."add_method"(type_obj, "octint", $P562)
    get_how $P563, type_obj
    get_global $P564, "!PREFIX__octint"
    $P563."add_method"(type_obj, "!PREFIX__octint", $P564)
    get_how $P565, type_obj
    .const 'Sub' $P566 = "55_1303857419.487" 
    $P565."add_method"(type_obj, "octints", $P566)
    get_how $P567, type_obj
    get_global $P568, "!PREFIX__octints"
    $P567."add_method"(type_obj, "!PREFIX__octints", $P568)
    get_how $P569, type_obj
    .const 'Sub' $P570 = "57_1303857419.487" 
    $P569."add_method"(type_obj, "binint", $P570)
    get_how $P571, type_obj
    get_global $P572, "!PREFIX__binint"
    $P571."add_method"(type_obj, "!PREFIX__binint", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "59_1303857419.487" 
    $P573."add_method"(type_obj, "binints", $P574)
    get_how $P575, type_obj
    get_global $P576, "!PREFIX__binints"
    $P575."add_method"(type_obj, "!PREFIX__binints", $P576)
    get_how $P577, type_obj
    .const 'Sub' $P578 = "61_1303857419.487" 
    $P577."add_method"(type_obj, "integer", $P578)
    get_how $P579, type_obj
    get_global $P580, "!PREFIX__integer"
    $P579."add_method"(type_obj, "!PREFIX__integer", $P580)
    get_how $P581, type_obj
    .const 'Sub' $P582 = "63_1303857419.487" 
    $P581."add_method"(type_obj, "dec_number", $P582)
    get_how $P583, type_obj
    get_global $P584, "!PREFIX__dec_number"
    $P583."add_method"(type_obj, "!PREFIX__dec_number", $P584)
    get_how $P585, type_obj
    .const 'Sub' $P586 = "65_1303857419.487" 
    $P585."add_method"(type_obj, "escale", $P586)
    get_how $P587, type_obj
    get_global $P588, "!PREFIX__escale"
    $P587."add_method"(type_obj, "!PREFIX__escale", $P588)
    get_how $P589, type_obj
    .const 'Sub' $P590 = "67_1303857419.487" 
    $P589."add_method"(type_obj, "quote_escape", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "68_1303857419.487" 
    $P591."add_method"(type_obj, "!PREFIX__quote_escape", $P592)
    get_how $P593, type_obj
    .const 'Sub' $P594 = "69_1303857419.487" 
    $P593."add_method"(type_obj, "quote_escape:sym<backslash>", $P594)
    get_how $P595, type_obj
    get_global $P596, "!PREFIX__quote_escape:sym<backslash>"
    $P595."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P596)
    get_how $P597, type_obj
    .const 'Sub' $P598 = "71_1303857419.487" 
    $P597."add_method"(type_obj, "quote_escape:sym<stopper>", $P598)
    get_how $P599, type_obj
    get_global $P600, "!PREFIX__quote_escape:sym<stopper>"
    $P599."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P600)
    get_how $P601, type_obj
    .const 'Sub' $P602 = "73_1303857419.487" 
    $P601."add_method"(type_obj, "quote_escape:sym<bs>", $P602)
    get_how $P603, type_obj
    get_global $P604, "!PREFIX__quote_escape:sym<bs>"
    $P603."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P604)
    get_how $P605, type_obj
    .const 'Sub' $P606 = "75_1303857419.487" 
    $P605."add_method"(type_obj, "quote_escape:sym<nl>", $P606)
    get_how $P607, type_obj
    get_global $P608, "!PREFIX__quote_escape:sym<nl>"
    $P607."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P608)
    get_how $P609, type_obj
    .const 'Sub' $P610 = "77_1303857419.487" 
    $P609."add_method"(type_obj, "quote_escape:sym<cr>", $P610)
    get_how $P611, type_obj
    get_global $P612, "!PREFIX__quote_escape:sym<cr>"
    $P611."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P612)
    get_how $P613, type_obj
    .const 'Sub' $P614 = "79_1303857419.487" 
    $P613."add_method"(type_obj, "quote_escape:sym<tab>", $P614)
    get_how $P615, type_obj
    get_global $P616, "!PREFIX__quote_escape:sym<tab>"
    $P615."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P616)
    get_how $P617, type_obj
    .const 'Sub' $P618 = "81_1303857419.487" 
    $P617."add_method"(type_obj, "quote_escape:sym<ff>", $P618)
    get_how $P619, type_obj
    get_global $P620, "!PREFIX__quote_escape:sym<ff>"
    $P619."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P620)
    get_how $P621, type_obj
    .const 'Sub' $P622 = "83_1303857419.487" 
    $P621."add_method"(type_obj, "quote_escape:sym<esc>", $P622)
    get_how $P623, type_obj
    get_global $P624, "!PREFIX__quote_escape:sym<esc>"
    $P623."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P624)
    get_how $P625, type_obj
    .const 'Sub' $P626 = "85_1303857419.487" 
    $P625."add_method"(type_obj, "quote_escape:sym<hex>", $P626)
    get_how $P627, type_obj
    get_global $P628, "!PREFIX__quote_escape:sym<hex>"
    $P627."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P628)
    get_how $P629, type_obj
    .const 'Sub' $P630 = "87_1303857419.487" 
    $P629."add_method"(type_obj, "quote_escape:sym<oct>", $P630)
    get_how $P631, type_obj
    get_global $P632, "!PREFIX__quote_escape:sym<oct>"
    $P631."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P632)
    get_how $P633, type_obj
    .const 'Sub' $P634 = "89_1303857419.487" 
    $P633."add_method"(type_obj, "quote_escape:sym<chr>", $P634)
    get_how $P635, type_obj
    get_global $P636, "!PREFIX__quote_escape:sym<chr>"
    $P635."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P636)
    get_how $P637, type_obj
    .const 'Sub' $P638 = "91_1303857419.487" 
    $P637."add_method"(type_obj, "quote_escape:sym<0>", $P638)
    get_how $P639, type_obj
    get_global $P640, "!PREFIX__quote_escape:sym<0>"
    $P639."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "93_1303857419.487" 
    $P641."add_method"(type_obj, "quote_escape:sym<misc>", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__quote_escape:sym<misc>"
    $P643."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "98_1303857419.487" 
    $P645."add_method"(type_obj, "charname", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__charname"
    $P647."add_method"(type_obj, "!PREFIX__charname", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "101_1303857419.487" 
    $P649."add_method"(type_obj, "charnames", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__charnames"
    $P651."add_method"(type_obj, "!PREFIX__charnames", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "103_1303857419.487" 
    $P653."add_method"(type_obj, "charspec", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__charspec"
    $P655."add_method"(type_obj, "!PREFIX__charspec", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "105_1303857419.487" 
    $P657."add_method"(type_obj, "O", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "106_1303857419.487" 
    $P659."add_method"(type_obj, "panic", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "107_1303857419.487" 
    $P661."add_method"(type_obj, "peek_delimiters", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "108_1303857419.487" 
    $P663."add_method"(type_obj, "quote_EXPR", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "109_1303857419.487" 
    $P665."add_method"(type_obj, "quotemod_check", $P666)
    get_how $P667, type_obj
    .const 'Sub' $P668 = "110_1303857419.487" 
    $P667."add_method"(type_obj, "starter", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "111_1303857419.487" 
    $P669."add_method"(type_obj, "stopper", $P670)
    get_how $P671, type_obj
    .const 'Sub' $P672 = "112_1303857419.487" 
    $P671."add_method"(type_obj, "split_words", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "113_1303857419.487" 
    $P673."add_method"(type_obj, "EXPR", $P674)
    get_how $P675, type_obj
    .const 'Sub' $P676 = "114_1303857419.487" 
    $P675."add_method"(type_obj, "EXPR_reduce", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "115_1303857419.487" 
    $P677."add_method"(type_obj, "ternary", $P678)
    get_how $P679, type_obj
    .const 'Sub' $P680 = "116_1303857419.487" 
    $P679."add_method"(type_obj, "MARKER", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "117_1303857419.487" 
    $P681."add_method"(type_obj, "MARKED", $P682)
    get_how $P683, type_obj
    .const 'Sub' $P684 = "118_1303857419.487" 
    $P683."add_method"(type_obj, "LANG", $P684)
    get_how $P685, type_obj
    $P686 = $P685."compose"(type_obj)
    .return ($P686)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx29_tgt
    .local int rx29_pos
    .local int rx29_off
    .local int rx29_eos
    .local int rx29_rep
    .local pmc rx29_cur
    .local pmc rx29_debug
    (rx29_cur, rx29_pos, rx29_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx29_cur
    .local pmc match
    .lex "$/", match
    length rx29_eos, rx29_tgt
    gt rx29_pos, rx29_eos, rx29_done
    set rx29_off, 0
    lt rx29_pos, 2, rx29_start
    sub rx29_off, rx29_pos, 1
    substr rx29_tgt, rx29_tgt, rx29_off
  rx29_start:
    eq $I10, 1, rx29_restart
    if_null rx29_debug, debug_298
    rx29_cur."!cursor_debug"("START", "ws")
  debug_298:
    $I10 = self.'from'()
    ne $I10, -1, rxscan32_done
    goto rxscan32_scan
  rxscan32_loop:
    (rx29_pos) = rx29_cur."from"()
    inc rx29_pos
    rx29_cur."!cursor_from"(rx29_pos)
    ge rx29_pos, rx29_eos, rxscan32_done
  rxscan32_scan:
    set_addr $I10, rxscan32_loop
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxscan32_done:
.annotate 'line', 14
  # rx subrule "ww" subtype=zerowidth negate=1
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ww"()
    if $P10, rx29_fail
  # rx rxquantr33 ** 0..*
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxquantr33_loop:
  alt34_0:
    set_addr $I10, alt34_1
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx29_pos, rx29_off
    find_not_cclass $I11, 32, rx29_tgt, $I10, rx29_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx29_fail
    add rx29_pos, rx29_off, $I11
    goto alt34_end
  alt34_1:
  # rx literal  "#"
    add $I11, rx29_pos, 1
    gt $I11, rx29_eos, rx29_fail
    sub $I11, rx29_pos, rx29_off
    ord $I11, rx29_tgt, $I11
    ne $I11, 35, rx29_fail
    add rx29_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx29_pos, rx29_off
    find_cclass $I11, 4096, rx29_tgt, $I10, rx29_eos
    add rx29_pos, rx29_off, $I11
  alt34_end:
    set_addr $I10, rxquantr33_done
    (rx29_rep) = rx29_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(rx29_rep, rx29_pos, $I10)
    goto rxquantr33_loop
  rxquantr33_done:
  # rx pass
    rx29_cur."!cursor_pass"(rx29_pos, "ws")
    if_null rx29_debug, debug_299
    rx29_cur."!cursor_debug"("PASS", "ws", " at pos=", rx29_pos)
  debug_299:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 12
    if_null rx29_debug, debug_300
    rx29_cur."!cursor_debug"("NEXT", "ws")
  debug_300:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_301
    rx29_cur."!cursor_debug"("FAIL", "ws")
  debug_301:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303857419.487") :method
.annotate 'line', 12
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx36_tgt
    .local int rx36_pos
    .local int rx36_off
    .local int rx36_eos
    .local int rx36_rep
    .local pmc rx36_cur
    .local pmc rx36_debug
    (rx36_cur, rx36_pos, rx36_tgt, $I10) = self."!cursor_start"()
    rx36_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx36_cur
    .local pmc match
    .lex "$/", match
    length rx36_eos, rx36_tgt
    gt rx36_pos, rx36_eos, rx36_done
    set rx36_off, 0
    lt rx36_pos, 2, rx36_start
    sub rx36_off, rx36_pos, 1
    substr rx36_tgt, rx36_tgt, rx36_off
  rx36_start:
    eq $I10, 1, rx36_restart
    if_null rx36_debug, debug_302
    rx36_cur."!cursor_debug"("START", "termish")
  debug_302:
    $I10 = self.'from'()
    ne $I10, -1, rxscan39_done
    goto rxscan39_scan
  rxscan39_loop:
    (rx36_pos) = rx36_cur."from"()
    inc rx36_pos
    rx36_cur."!cursor_from"(rx36_pos)
    ge rx36_pos, rx36_eos, rxscan39_done
  rxscan39_scan:
    set_addr $I10, rxscan39_loop
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxscan39_done:
.annotate 'line', 17
  # rx rxquantr40 ** 0..*
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr40_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."prefixish"()
    unless $P10, rx36_fail
    goto rxsubrule41_pass
  rxsubrule41_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule41_pass:
    set_addr $I10, rxsubrule41_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr40_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr40_loop
  rxquantr40_done:
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."term"()
    unless $P10, rx36_fail
    rx36_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx36_pos = $P10."pos"()
.annotate 'line', 19
  # rx rxquantr42 ** 0..*
    set_addr $I10, rxquantr42_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr42_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."postfixish"()
    unless $P10, rx36_fail
    goto rxsubrule43_pass
  rxsubrule43_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule43_pass:
    set_addr $I10, rxsubrule43_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr42_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr42_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr42_loop
  rxquantr42_done:
.annotate 'line', 16
  # rx pass
    rx36_cur."!cursor_pass"(rx36_pos, "termish")
    if_null rx36_debug, debug_303
    rx36_cur."!cursor_debug"("PASS", "termish", " at pos=", rx36_pos)
  debug_303:
    .return (rx36_cur)
  rx36_restart:
.annotate 'line', 12
    if_null rx36_debug, debug_304
    rx36_cur."!cursor_debug"("NEXT", "termish")
  debug_304:
  rx36_fail:
    (rx36_rep, rx36_pos, $I10, $P10) = rx36_cur."!mark_fail"(0)
    lt rx36_pos, -1, rx36_done
    eq rx36_pos, -1, rx36_fail
    jump $I10
  rx36_done:
    rx36_cur."!cursor_fail"()
    if_null rx36_debug, debug_305
    rx36_cur."!cursor_debug"("FAIL", "termish")
  debug_305:
    .return (rx36_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303857419.487") :method
.annotate 'line', 12
    new $P38, "ResizablePMCArray"
    push $P38, ""
    .return ($P38)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303857419.487")
    .param pmc param_45
.annotate 'line', 22
    .lex "self", param_45
    $P46 = param_45."!protoregex"("term")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303857419.487")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("term")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303857419.487")
    .param pmc param_51
.annotate 'line', 23
    .lex "self", param_51
    $P52 = param_51."!protoregex"("infix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303857419.487")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("infix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303857419.487")
    .param pmc param_57
.annotate 'line', 24
    .lex "self", param_57
    $P58 = param_57."!protoregex"("prefix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303857419.487")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("prefix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303857419.487")
    .param pmc param_63
.annotate 'line', 25
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303857419.487")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303857419.487")
    .param pmc param_69
.annotate 'line', 26
    .lex "self", param_69
    $P70 = param_69."!protoregex"("circumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303857419.487")
    .param pmc param_72
.annotate 'line', 26
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("circumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303857419.487")
    .param pmc param_75
.annotate 'line', 27
    .lex "self", param_75
    $P76 = param_75."!protoregex"("postcircumfix")
    .return ($P76)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303857419.487")
    .param pmc param_78
.annotate 'line', 27
    .lex "self", param_78
    $P79 = param_78."!PREFIX__!protoregex"("postcircumfix")
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_debug
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    gt rx81_pos, rx81_eos, rx81_done
    set rx81_off, 0
    lt rx81_pos, 2, rx81_start
    sub rx81_off, rx81_pos, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
    eq $I10, 1, rx81_restart
    if_null rx81_debug, debug_306
    rx81_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_306:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    (rx81_pos) = rx81_cur."from"()
    inc rx81_pos
    rx81_cur."!cursor_from"(rx81_pos)
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
.annotate 'line', 29
  # rx subrule "circumfix" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."circumfix"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx81_pos = $P10."pos"()
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "term:sym<circumfix>")
    if_null rx81_debug, debug_307
    rx81_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx81_pos)
  debug_307:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 12
    if_null rx81_debug, debug_308
    rx81_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_308:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_309
    rx81_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_309:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303857419.487") :method
.annotate 'line', 12
    $P83 = self."!PREFIX__!subrule"("circumfix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    gt rx87_pos, rx87_eos, rx87_done
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    eq $I10, 1, rx87_restart
    if_null rx87_debug, debug_310
    rx87_cur."!cursor_debug"("START", "infixish")
  debug_310:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan91_done:
.annotate 'line', 31
  # rx subrule "infix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."infix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx87_pos = $P10."pos"()
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "infixish")
    if_null rx87_debug, debug_311
    rx87_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx87_pos)
  debug_311:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 12
    if_null rx87_debug, debug_312
    rx87_cur."!cursor_debug"("NEXT", "infixish")
  debug_312:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_313
    rx87_cur."!cursor_debug"("FAIL", "infixish")
  debug_313:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303857419.487") :method
.annotate 'line', 12
    $P89 = self."!PREFIX__!subrule"("infix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_debug
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    gt rx93_pos, rx93_eos, rx93_done
    set rx93_off, 0
    lt rx93_pos, 2, rx93_start
    sub rx93_off, rx93_pos, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
    eq $I10, 1, rx93_restart
    if_null rx93_debug, debug_314
    rx93_cur."!cursor_debug"("START", "prefixish")
  debug_314:
    $I10 = self.'from'()
    ne $I10, -1, rxscan97_done
    goto rxscan97_scan
  rxscan97_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan97_done
  rxscan97_scan:
    set_addr $I10, rxscan97_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan97_done:
.annotate 'line', 32
  # rx subrule "prefix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."prefix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx93_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."ws"()
    unless $P10, rx93_fail
    rx93_pos = $P10."pos"()
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "prefixish")
    if_null rx93_debug, debug_315
    rx93_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx93_pos)
  debug_315:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 12
    if_null rx93_debug, debug_316
    rx93_cur."!cursor_debug"("NEXT", "prefixish")
  debug_316:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_317
    rx93_cur."!cursor_debug"("FAIL", "prefixish")
  debug_317:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303857419.487") :method
.annotate 'line', 12
    $P95 = self."!PREFIX__!subrule"("prefix", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_debug
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx99_cur
    .local pmc match
    .lex "$/", match
    length rx99_eos, rx99_tgt
    gt rx99_pos, rx99_eos, rx99_done
    set rx99_off, 0
    lt rx99_pos, 2, rx99_start
    sub rx99_off, rx99_pos, 1
    substr rx99_tgt, rx99_tgt, rx99_off
  rx99_start:
    eq $I10, 1, rx99_restart
    if_null rx99_debug, debug_318
    rx99_cur."!cursor_debug"("START", "postfixish")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    (rx99_pos) = rx99_cur."from"()
    inc rx99_pos
    rx99_cur."!cursor_from"(rx99_pos)
    ge rx99_pos, rx99_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxscan104_done:
  alt105_0:
.annotate 'line', 33
    set_addr $I10, alt105_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx99_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postcircumfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx99_pos = $P10."pos"()
  alt105_end:
.annotate 'line', 33
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "postfixish")
    if_null rx99_debug, debug_319
    rx99_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx99_pos)
  debug_319:
    .return (rx99_cur)
  rx99_restart:
.annotate 'line', 12
    if_null rx99_debug, debug_320
    rx99_cur."!cursor_debug"("NEXT", "postfixish")
  debug_320:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_321
    rx99_cur."!cursor_debug"("FAIL", "postfixish")
  debug_321:
    .return (rx99_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303857419.487") :method
.annotate 'line', 12
    $P101 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P102 = self."!PREFIX__!subrule"("postfix", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, $P102
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
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
    if_null rx107_debug, debug_322
    rx107_cur."!cursor_debug"("START", "nullterm")
  debug_322:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    (rx107_pos) = rx107_cur."from"()
    inc rx107_pos
    rx107_cur."!cursor_from"(rx107_pos)
    ge rx107_pos, rx107_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan110_done:
.annotate 'line', 38
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "nullterm")
    if_null rx107_debug, debug_323
    rx107_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx107_pos)
  debug_323:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 12
    if_null rx107_debug, debug_324
    rx107_cur."!cursor_debug"("NEXT", "nullterm")
  debug_324:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_325
    rx107_cur."!cursor_debug"("FAIL", "nullterm")
  debug_325:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303857419.487") :method
.annotate 'line', 12
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 12
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    .local pmc rx112_debug
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
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
    if_null rx112_debug, debug_326
    rx112_cur."!cursor_debug"("START", "nullterm_alt")
  debug_326:
    $I10 = self.'from'()
    ne $I10, -1, rxscan116_done
    goto rxscan116_scan
  rxscan116_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan116_done
  rxscan116_scan:
    set_addr $I10, rxscan116_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan116_done:
.annotate 'line', 39
  # rx subrule "nullterm" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."nullterm"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx112_pos = $P10."pos"()
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "nullterm_alt")
    if_null rx112_debug, debug_327
    rx112_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx112_pos)
  debug_327:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 12
    if_null rx112_debug, debug_328
    rx112_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_328:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_329
    rx112_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_329:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303857419.487") :method
.annotate 'line', 12
    $P114 = self."!PREFIX__!subrule"("nullterm", "")
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_118
.annotate 'line', 42
    .lex "self", param_118
    find_lex $P121, "self"
    $P122 = $P121."termish"()
    unless $P122, unless_120
    set $P119, $P122
    goto unless_120_end
  unless_120:
    find_lex $P123, "self"
    $P124 = $P123."nullterm_alt"()
    set $P119, $P124
  unless_120_end:
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_debug
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    gt rx126_pos, rx126_eos, rx126_done
    set rx126_off, 0
    lt rx126_pos, 2, rx126_start
    sub rx126_off, rx126_pos, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    eq $I10, 1, rx126_restart
    if_null rx126_debug, debug_330
    rx126_cur."!cursor_debug"("START", "quote_delimited")
  debug_330:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    (rx126_pos) = rx126_cur."from"()
    inc rx126_pos
    rx126_cur."!cursor_from"(rx126_pos)
    ge rx126_pos, rx126_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan130_done:
.annotate 'line', 46
  # rx subrule "starter" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."starter"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx126_pos = $P10."pos"()
  # rx rxquantr131 ** 0..*
    set_addr $I10, rxquantr131_done
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxquantr131_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."quote_atom"()
    unless $P10, rx126_fail
    goto rxsubrule132_pass
  rxsubrule132_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx126_fail
  rxsubrule132_pass:
    set_addr $I10, rxsubrule132_back
    rx126_cur."!mark_push"(0, rx126_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx126_pos = $P10."pos"()
    set_addr $I10, rxquantr131_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr131_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
    goto rxquantr131_loop
  rxquantr131_done:
  # rx subrule "stopper" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."stopper"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx126_pos = $P10."pos"()
.annotate 'line', 45
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "quote_delimited")
    if_null rx126_debug, debug_331
    rx126_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx126_pos)
  debug_331:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 42
    if_null rx126_debug, debug_332
    rx126_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_332:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_333
    rx126_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_333:
    .return (rx126_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303857419.487") :method
.annotate 'line', 42
    $P128 = self."!PREFIX__!subrule"("starter", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_debug
    (rx134_cur, rx134_pos, rx134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx134_cur
    .local pmc match
    .lex "$/", match
    length rx134_eos, rx134_tgt
    gt rx134_pos, rx134_eos, rx134_done
    set rx134_off, 0
    lt rx134_pos, 2, rx134_start
    sub rx134_off, rx134_pos, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
    eq $I10, 1, rx134_restart
    if_null rx134_debug, debug_334
    rx134_cur."!cursor_debug"("START", "quote_atom")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    (rx134_pos) = rx134_cur."from"()
    inc rx134_pos
    rx134_cur."!cursor_from"(rx134_pos)
    ge rx134_pos, rx134_eos, rxscan137_done
  rxscan137_scan:
    set_addr $I10, rxscan137_loop
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  rxscan137_done:
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  alt138_0:
.annotate 'line', 51
    set_addr $I10, alt138_1
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx134_pos = $P10."pos"()
    goto alt138_end
  alt138_1:
.annotate 'line', 53
  # rx rxquantr139 ** 1..*
    set_addr $I10, rxquantr139_done
    rx134_cur."!mark_push"(0, -1, $I10)
  rxquantr139_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    if $P10, rx134_fail
  # rx charclass .
    ge rx134_pos, rx134_eos, rx134_fail
    inc rx134_pos
    set_addr $I10, rxquantr139_done
    (rx134_rep) = rx134_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr139_done
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I10)
    goto rxquantr139_loop
  rxquantr139_done:
  alt138_end:
.annotate 'line', 49
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "quote_atom")
    if_null rx134_debug, debug_335
    rx134_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx134_pos)
  debug_335:
    .return (rx134_cur)
  rx134_restart:
.annotate 'line', 42
    if_null rx134_debug, debug_336
    rx134_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_336:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_337
    rx134_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_337:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303857419.487") :method
.annotate 'line', 42
    new $P136, "ResizablePMCArray"
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx143_cur
    .local pmc match
    .lex "$/", match
    length rx143_eos, rx143_tgt
    gt rx143_pos, rx143_eos, rx143_done
    set rx143_off, 0
    lt rx143_pos, 2, rx143_start
    sub rx143_off, rx143_pos, 1
    substr rx143_tgt, rx143_tgt, rx143_off
  rx143_start:
    eq $I10, 1, rx143_restart
    if_null rx143_debug, debug_338
    rx143_cur."!cursor_debug"("START", "decint")
  debug_338:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    (rx143_pos) = rx143_cur."from"()
    inc rx143_pos
    rx143_cur."!cursor_from"(rx143_pos)
    ge rx143_pos, rx143_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan146_done:
.annotate 'line', 57
  # rx rxquantr147 ** 1..*
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr147_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx143_pos, rx143_off
    find_not_cclass $I11, 8, rx143_tgt, $I10, rx143_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx143_fail
    add rx143_pos, rx143_off, $I11
    set_addr $I10, rxquantr147_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  "_"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 95, rx143_fail
    add rx143_pos, 1
    goto rxquantr147_loop
  rxquantr147_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "decint")
    if_null rx143_debug, debug_339
    rx143_cur."!cursor_debug"("PASS", "decint", " at pos=", rx143_pos)
  debug_339:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 42
    if_null rx143_debug, debug_340
    rx143_cur."!cursor_debug"("NEXT", "decint")
  debug_340:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_341
    rx143_cur."!cursor_debug"("FAIL", "decint")
  debug_341:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303857419.487") :method
.annotate 'line', 42
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_debug
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    rx149_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx149_cur
    .local pmc match
    .lex "$/", match
    length rx149_eos, rx149_tgt
    gt rx149_pos, rx149_eos, rx149_done
    set rx149_off, 0
    lt rx149_pos, 2, rx149_start
    sub rx149_off, rx149_pos, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
    eq $I10, 1, rx149_restart
    if_null rx149_debug, debug_342
    rx149_cur."!cursor_debug"("START", "decints")
  debug_342:
    $I10 = self.'from'()
    ne $I10, -1, rxscan152_done
    goto rxscan152_scan
  rxscan152_loop:
    (rx149_pos) = rx149_cur."from"()
    inc rx149_pos
    rx149_cur."!cursor_from"(rx149_pos)
    ge rx149_pos, rx149_eos, rxscan152_done
  rxscan152_scan:
    set_addr $I10, rxscan152_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan152_done:
.annotate 'line', 58
  # rx rxquantr153 ** 1..*
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(0, -1, $I10)
  rxquantr153_loop:
  # rx subrule "ws" subtype=method negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."ws"()
    unless $P10, rx149_fail
    rx149_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."decint"()
    unless $P10, rx149_fail
    rx149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx149_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."ws"()
    unless $P10, rx149_fail
    rx149_pos = $P10."pos"()
    set_addr $I10, rxquantr153_done
    (rx149_rep) = rx149_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
  # rx literal  ","
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    ord $I11, rx149_tgt, $I11
    ne $I11, 44, rx149_fail
    add rx149_pos, 1
    goto rxquantr153_loop
  rxquantr153_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "decints")
    if_null rx149_debug, debug_343
    rx149_cur."!cursor_debug"("PASS", "decints", " at pos=", rx149_pos)
  debug_343:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 42
    if_null rx149_debug, debug_344
    rx149_cur."!cursor_debug"("NEXT", "decints")
  debug_344:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_345
    rx149_cur."!cursor_debug"("FAIL", "decints")
  debug_345:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303857419.487") :method
.annotate 'line', 42
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx155_debug, debug_346
    rx155_cur."!cursor_debug"("START", "hexint")
  debug_346:
    $I10 = self.'from'()
    ne $I10, -1, rxscan158_done
    goto rxscan158_scan
  rxscan158_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan158_done
  rxscan158_scan:
    set_addr $I10, rxscan158_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan158_done:
.annotate 'line', 60
  # rx rxquantr159 ** 1..*
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(0, -1, $I10)
  rxquantr159_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx155_pos, rx155_off
    set rx155_rep, 0
    sub $I12, rx155_eos, rx155_pos
  rxenumcharlistq160_loop:
    le $I12, 0, rxenumcharlistq160_done
    substr $S10, rx155_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq160_done
    inc rx155_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq160_loop
  rxenumcharlistq160_done:
    lt rx155_rep, 1, rx155_fail
    add rx155_pos, rx155_pos, rx155_rep
    set_addr $I10, rxquantr159_done
    (rx155_rep) = rx155_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(rx155_rep, rx155_pos, $I10)
  # rx literal  "_"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 95, rx155_fail
    add rx155_pos, 1
    goto rxquantr159_loop
  rxquantr159_done:
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "hexint")
    if_null rx155_debug, debug_347
    rx155_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx155_pos)
  debug_347:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 42
    if_null rx155_debug, debug_348
    rx155_cur."!cursor_debug"("NEXT", "hexint")
  debug_348:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_349
    rx155_cur."!cursor_debug"("FAIL", "hexint")
  debug_349:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303857419.487") :method
.annotate 'line', 42
    new $P157, "ResizablePMCArray"
    push $P157, ""
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_caparray"("hexint")
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
    if_null rx162_debug, debug_350
    rx162_cur."!cursor_debug"("START", "hexints")
  debug_350:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan165_done:
.annotate 'line', 61
  # rx rxquantr166 ** 1..*
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(0, -1, $I10)
  rxquantr166_loop:
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."hexint"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx162_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
    set_addr $I10, rxquantr166_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
  # rx literal  ","
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 44, rx162_fail
    add rx162_pos, 1
    goto rxquantr166_loop
  rxquantr166_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "hexints")
    if_null rx162_debug, debug_351
    rx162_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx162_pos)
  debug_351:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 42
    if_null rx162_debug, debug_352
    rx162_cur."!cursor_debug"("NEXT", "hexints")
  debug_352:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_353
    rx162_cur."!cursor_debug"("FAIL", "hexints")
  debug_353:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303857419.487") :method
.annotate 'line', 42
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_debug
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    gt rx168_pos, rx168_eos, rx168_done
    set rx168_off, 0
    lt rx168_pos, 2, rx168_start
    sub rx168_off, rx168_pos, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
    eq $I10, 1, rx168_restart
    if_null rx168_debug, debug_354
    rx168_cur."!cursor_debug"("START", "octint")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan171_done
    goto rxscan171_scan
  rxscan171_loop:
    (rx168_pos) = rx168_cur."from"()
    inc rx168_pos
    rx168_cur."!cursor_from"(rx168_pos)
    ge rx168_pos, rx168_eos, rxscan171_done
  rxscan171_scan:
    set_addr $I10, rxscan171_loop
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  rxscan171_done:
.annotate 'line', 63
  # rx rxquantr172 ** 1..*
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(0, -1, $I10)
  rxquantr172_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx168_pos, rx168_off
    set rx168_rep, 0
    sub $I12, rx168_eos, rx168_pos
  rxenumcharlistq173_loop:
    le $I12, 0, rxenumcharlistq173_done
    substr $S10, rx168_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq173_done
    inc rx168_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq173_loop
  rxenumcharlistq173_done:
    lt rx168_rep, 1, rx168_fail
    add rx168_pos, rx168_pos, rx168_rep
    set_addr $I10, rxquantr172_done
    (rx168_rep) = rx168_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(rx168_rep, rx168_pos, $I10)
  # rx literal  "_"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    ord $I11, rx168_tgt, $I11
    ne $I11, 95, rx168_fail
    add rx168_pos, 1
    goto rxquantr172_loop
  rxquantr172_done:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "octint")
    if_null rx168_debug, debug_355
    rx168_cur."!cursor_debug"("PASS", "octint", " at pos=", rx168_pos)
  debug_355:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 42
    if_null rx168_debug, debug_356
    rx168_cur."!cursor_debug"("NEXT", "octint")
  debug_356:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_357
    rx168_cur."!cursor_debug"("FAIL", "octint")
  debug_357:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303857419.487") :method
.annotate 'line', 42
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    rx175_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx175_cur
    .local pmc match
    .lex "$/", match
    length rx175_eos, rx175_tgt
    gt rx175_pos, rx175_eos, rx175_done
    set rx175_off, 0
    lt rx175_pos, 2, rx175_start
    sub rx175_off, rx175_pos, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
    eq $I10, 1, rx175_restart
    if_null rx175_debug, debug_358
    rx175_cur."!cursor_debug"("START", "octints")
  debug_358:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    (rx175_pos) = rx175_cur."from"()
    inc rx175_pos
    rx175_cur."!cursor_from"(rx175_pos)
    ge rx175_pos, rx175_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan178_done:
.annotate 'line', 64
  # rx rxquantr179 ** 1..*
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(0, -1, $I10)
  rxquantr179_loop:
  # rx subrule "ws" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."ws"()
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."octint"()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx175_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."ws"()
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
    set_addr $I10, rxquantr179_done
    (rx175_rep) = rx175_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(rx175_rep, rx175_pos, $I10)
  # rx literal  ","
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 44, rx175_fail
    add rx175_pos, 1
    goto rxquantr179_loop
  rxquantr179_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "octints")
    if_null rx175_debug, debug_359
    rx175_cur."!cursor_debug"("PASS", "octints", " at pos=", rx175_pos)
  debug_359:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 42
    if_null rx175_debug, debug_360
    rx175_cur."!cursor_debug"("NEXT", "octints")
  debug_360:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_361
    rx175_cur."!cursor_debug"("FAIL", "octints")
  debug_361:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303857419.487") :method
.annotate 'line', 42
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx181_tgt
    .local int rx181_pos
    .local int rx181_off
    .local int rx181_eos
    .local int rx181_rep
    .local pmc rx181_cur
    .local pmc rx181_debug
    (rx181_cur, rx181_pos, rx181_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx181_cur
    .local pmc match
    .lex "$/", match
    length rx181_eos, rx181_tgt
    gt rx181_pos, rx181_eos, rx181_done
    set rx181_off, 0
    lt rx181_pos, 2, rx181_start
    sub rx181_off, rx181_pos, 1
    substr rx181_tgt, rx181_tgt, rx181_off
  rx181_start:
    eq $I10, 1, rx181_restart
    if_null rx181_debug, debug_362
    rx181_cur."!cursor_debug"("START", "binint")
  debug_362:
    $I10 = self.'from'()
    ne $I10, -1, rxscan184_done
    goto rxscan184_scan
  rxscan184_loop:
    (rx181_pos) = rx181_cur."from"()
    inc rx181_pos
    rx181_cur."!cursor_from"(rx181_pos)
    ge rx181_pos, rx181_eos, rxscan184_done
  rxscan184_scan:
    set_addr $I10, rxscan184_loop
    rx181_cur."!mark_push"(0, rx181_pos, $I10)
  rxscan184_done:
.annotate 'line', 66
  # rx rxquantr185 ** 1..*
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(0, -1, $I10)
  rxquantr185_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx181_pos, rx181_off
    set rx181_rep, 0
    sub $I12, rx181_eos, rx181_pos
  rxenumcharlistq186_loop:
    le $I12, 0, rxenumcharlistq186_done
    substr $S10, rx181_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq186_done
    inc rx181_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq186_loop
  rxenumcharlistq186_done:
    lt rx181_rep, 1, rx181_fail
    add rx181_pos, rx181_pos, rx181_rep
    set_addr $I10, rxquantr185_done
    (rx181_rep) = rx181_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(rx181_rep, rx181_pos, $I10)
  # rx literal  "_"
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail
    sub $I11, rx181_pos, rx181_off
    ord $I11, rx181_tgt, $I11
    ne $I11, 95, rx181_fail
    add rx181_pos, 1
    goto rxquantr185_loop
  rxquantr185_done:
  # rx pass
    rx181_cur."!cursor_pass"(rx181_pos, "binint")
    if_null rx181_debug, debug_363
    rx181_cur."!cursor_debug"("PASS", "binint", " at pos=", rx181_pos)
  debug_363:
    .return (rx181_cur)
  rx181_restart:
.annotate 'line', 42
    if_null rx181_debug, debug_364
    rx181_cur."!cursor_debug"("NEXT", "binint")
  debug_364:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_365
    rx181_cur."!cursor_debug"("FAIL", "binint")
  debug_365:
    .return (rx181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303857419.487") :method
.annotate 'line', 42
    new $P183, "ResizablePMCArray"
    push $P183, ""
    .return ($P183)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx188_cur
    .local pmc match
    .lex "$/", match
    length rx188_eos, rx188_tgt
    gt rx188_pos, rx188_eos, rx188_done
    set rx188_off, 0
    lt rx188_pos, 2, rx188_start
    sub rx188_off, rx188_pos, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
    eq $I10, 1, rx188_restart
    if_null rx188_debug, debug_366
    rx188_cur."!cursor_debug"("START", "binints")
  debug_366:
    $I10 = self.'from'()
    ne $I10, -1, rxscan191_done
    goto rxscan191_scan
  rxscan191_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan191_done
  rxscan191_scan:
    set_addr $I10, rxscan191_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan191_done:
.annotate 'line', 67
  # rx rxquantr192 ** 1..*
    set_addr $I10, rxquantr192_done
    rx188_cur."!mark_push"(0, -1, $I10)
  rxquantr192_loop:
  # rx subrule "ws" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."ws"()
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."binint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx188_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."ws"()
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
    set_addr $I10, rxquantr192_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr192_done
    rx188_cur."!mark_push"(rx188_rep, rx188_pos, $I10)
  # rx literal  ","
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 44, rx188_fail
    add rx188_pos, 1
    goto rxquantr192_loop
  rxquantr192_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "binints")
    if_null rx188_debug, debug_367
    rx188_cur."!cursor_debug"("PASS", "binints", " at pos=", rx188_pos)
  debug_367:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 42
    if_null rx188_debug, debug_368
    rx188_cur."!cursor_debug"("NEXT", "binints")
  debug_368:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_369
    rx188_cur."!cursor_debug"("FAIL", "binints")
  debug_369:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303857419.487") :method
.annotate 'line', 42
    new $P190, "ResizablePMCArray"
    push $P190, ""
    .return ($P190)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx194_debug, debug_370
    rx194_cur."!cursor_debug"("START", "integer")
  debug_370:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan202_done:
  alt203_0:
.annotate 'line', 70
    set_addr $I10, alt203_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 71
  # rx literal  "0"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 48, rx194_fail
    add rx194_pos, 1
  alt204_0:
    set_addr $I10, alt204_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx literal  "b"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 98, rx194_fail
    add rx194_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."binint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx194_pos = $P10."pos"()
    goto alt204_end
  alt204_1:
    set_addr $I10, alt204_2
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 72
  # rx literal  "o"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 111, rx194_fail
    add rx194_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."octint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx194_pos = $P10."pos"()
    goto alt204_end
  alt204_2:
    set_addr $I10, alt204_3
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 73
  # rx literal  "x"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 120, rx194_fail
    add rx194_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."hexint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx194_pos = $P10."pos"()
    goto alt204_end
  alt204_3:
.annotate 'line', 74
  # rx literal  "d"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 100, rx194_fail
    add rx194_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt204_end:
.annotate 'line', 71
    goto alt203_end
  alt203_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt203_end:
.annotate 'line', 69
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "integer")
    if_null rx194_debug, debug_371
    rx194_cur."!cursor_debug"("PASS", "integer", " at pos=", rx194_pos)
  debug_371:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 42
    if_null rx194_debug, debug_372
    rx194_cur."!cursor_debug"("NEXT", "integer")
  debug_372:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_373
    rx194_cur."!cursor_debug"("FAIL", "integer")
  debug_373:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303857419.487") :method
.annotate 'line', 42
    $P196 = self."!PREFIX__!subrule"("decint", "")
    $P197 = self."!PREFIX__!subrule"("decint", "0d")
    $P198 = self."!PREFIX__!subrule"("hexint", "0x")
    $P199 = self."!PREFIX__!subrule"("octint", "0o")
    $P200 = self."!PREFIX__!subrule"("binint", "0b")
    new $P201, "ResizablePMCArray"
    push $P201, $P196
    push $P201, $P197
    push $P201, $P198
    push $P201, $P199
    push $P201, $P200
    .return ($P201)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    .local pmc rx206_debug
    (rx206_cur, rx206_pos, rx206_tgt, $I10) = self."!cursor_start"()
    rx206_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx206_cur
    .local pmc match
    .lex "$/", match
    length rx206_eos, rx206_tgt
    gt rx206_pos, rx206_eos, rx206_done
    set rx206_off, 0
    lt rx206_pos, 2, rx206_start
    sub rx206_off, rx206_pos, 1
    substr rx206_tgt, rx206_tgt, rx206_off
  rx206_start:
    eq $I10, 1, rx206_restart
    if_null rx206_debug, debug_374
    rx206_cur."!cursor_debug"("START", "dec_number")
  debug_374:
    $I10 = self.'from'()
    ne $I10, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    (rx206_pos) = rx206_cur."from"()
    inc rx206_pos
    rx206_cur."!cursor_from"(rx206_pos)
    ge rx206_pos, rx206_eos, rxscan209_done
  rxscan209_scan:
    set_addr $I10, rxscan209_loop
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxscan209_done:
  alt210_0:
.annotate 'line', 80
    set_addr $I10, alt210_1
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_211_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx literal  "."
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    ord $I11, rx206_tgt, $I11
    ne $I11, 46, rx206_fail
    add rx206_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx206_fail
  rxcap_211_done:
  # rx rxquantr212 ** 0..1
    set_addr $I10, rxquantr212_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr212_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule213_pass
  rxsubrule213_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule213_pass:
    set_addr $I10, rxsubrule213_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr212_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr212_done:
    goto alt210_end
  alt210_1:
    set_addr $I10, alt210_2
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 82
  # rx subcapture "coeff"
    set_addr $I10, rxcap_214_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
  # rx literal  "."
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    ord $I11, rx206_tgt, $I11
    ne $I11, 46, rx206_fail
    add rx206_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_214_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_214_done
  rxcap_214_fail:
    goto rx206_fail
  rxcap_214_done:
  # rx rxquantr215 ** 0..1
    set_addr $I10, rxquantr215_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr215_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule216_pass
  rxsubrule216_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule216_pass:
    set_addr $I10, rxsubrule216_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr215_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr215_done:
    goto alt210_end
  alt210_2:
.annotate 'line', 83
  # rx subcapture "coeff"
    set_addr $I10, rxcap_217_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_217_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_217_done
  rxcap_217_fail:
    goto rx206_fail
  rxcap_217_done:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
  alt210_end:
.annotate 'line', 80
  # rx pass
    rx206_cur."!cursor_pass"(rx206_pos, "dec_number")
    if_null rx206_debug, debug_375
    rx206_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx206_pos)
  debug_375:
    .return (rx206_cur)
  rx206_restart:
.annotate 'line', 42
    if_null rx206_debug, debug_376
    rx206_cur."!cursor_debug"("NEXT", "dec_number")
  debug_376:
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    if_null rx206_debug, debug_377
    rx206_cur."!cursor_debug"("FAIL", "dec_number")
  debug_377:
    .return (rx206_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303857419.487") :method
.annotate 'line', 42
    new $P208, "ResizablePMCArray"
    push $P208, ""
    push $P208, ""
    push $P208, "."
    .return ($P208)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx219_tgt
    .local int rx219_pos
    .local int rx219_off
    .local int rx219_eos
    .local int rx219_rep
    .local pmc rx219_cur
    .local pmc rx219_debug
    (rx219_cur, rx219_pos, rx219_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx219_cur
    .local pmc match
    .lex "$/", match
    length rx219_eos, rx219_tgt
    gt rx219_pos, rx219_eos, rx219_done
    set rx219_off, 0
    lt rx219_pos, 2, rx219_start
    sub rx219_off, rx219_pos, 1
    substr rx219_tgt, rx219_tgt, rx219_off
  rx219_start:
    eq $I10, 1, rx219_restart
    if_null rx219_debug, debug_378
    rx219_cur."!cursor_debug"("START", "escale")
  debug_378:
    $I10 = self.'from'()
    ne $I10, -1, rxscan222_done
    goto rxscan222_scan
  rxscan222_loop:
    (rx219_pos) = rx219_cur."from"()
    inc rx219_pos
    rx219_cur."!cursor_from"(rx219_pos)
    ge rx219_pos, rx219_eos, rxscan222_done
  rxscan222_scan:
    set_addr $I10, rxscan222_loop
    rx219_cur."!mark_push"(0, rx219_pos, $I10)
  rxscan222_done:
.annotate 'line', 86
  # rx enumcharlist negate=0 
    ge rx219_pos, rx219_eos, rx219_fail
    sub $I10, rx219_pos, rx219_off
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx219_fail
    inc rx219_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx219_pos, rx219_off
    set rx219_rep, 0
    sub $I12, rx219_eos, rx219_pos
    le $I12, 1, rxenumcharlistq223_loop
    set $I12, 1
  rxenumcharlistq223_loop:
    le $I12, 0, rxenumcharlistq223_done
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq223_done
    inc rx219_rep
  rxenumcharlistq223_done:
    add rx219_pos, rx219_pos, rx219_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx219_pos, rx219_off
    find_not_cclass $I11, 8, rx219_tgt, $I10, rx219_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx219_fail
    add rx219_pos, rx219_off, $I11
  # rx pass
    rx219_cur."!cursor_pass"(rx219_pos, "escale")
    if_null rx219_debug, debug_379
    rx219_cur."!cursor_debug"("PASS", "escale", " at pos=", rx219_pos)
  debug_379:
    .return (rx219_cur)
  rx219_restart:
.annotate 'line', 42
    if_null rx219_debug, debug_380
    rx219_cur."!cursor_debug"("NEXT", "escale")
  debug_380:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_381
    rx219_cur."!cursor_debug"("FAIL", "escale")
  debug_381:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303857419.487") :method
.annotate 'line', 42
    new $P221, "ResizablePMCArray"
    push $P221, "e"
    push $P221, "E"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303857419.487")
    .param pmc param_225
.annotate 'line', 88
    .lex "self", param_225
    $P226 = param_225."!protoregex"("quote_escape")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303857419.487")
    .param pmc param_228
.annotate 'line', 88
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("quote_escape")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx231_debug, debug_382
    rx231_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_382:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    (rx231_pos) = rx231_cur."from"()
    inc rx231_pos
    rx231_cur."!cursor_from"(rx231_pos)
    ge rx231_pos, rx231_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan234_done:
.annotate 'line', 89
  # rx literal  "\\\\"
    add $I11, rx231_pos, 2
    gt $I11, rx231_eos, rx231_fail
    sub $I11, rx231_pos, rx231_off
    substr $S10, rx231_tgt, $I11, 2
    ne $S10, "\\\\", rx231_fail
    add rx231_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."quotemod_check"("q")
    unless $P10, rx231_fail
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "quote_escape:sym<backslash>")
    if_null rx231_debug, debug_383
    rx231_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx231_pos)
  debug_383:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 42
    if_null rx231_debug, debug_384
    rx231_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_384:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_385
    rx231_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_385:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303857419.487") :method
.annotate 'line', 42
    new $P233, "ResizablePMCArray"
    push $P233, "\\\\"
    .return ($P233)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    .local pmc rx236_debug
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    gt rx236_pos, rx236_eos, rx236_done
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    eq $I10, 1, rx236_restart
    if_null rx236_debug, debug_386
    rx236_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_386:
    $I10 = self.'from'()
    ne $I10, -1, rxscan239_done
    goto rxscan239_scan
  rxscan239_loop:
    (rx236_pos) = rx236_cur."from"()
    inc rx236_pos
    rx236_cur."!cursor_from"(rx236_pos)
    ge rx236_pos, rx236_eos, rxscan239_done
  rxscan239_scan:
    set_addr $I10, rxscan239_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan239_done:
.annotate 'line', 90
  # rx literal  "\\"
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    ord $I11, rx236_tgt, $I11
    ne $I11, 92, rx236_fail
    add rx236_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."quotemod_check"("q")
    unless $P10, rx236_fail
  # rx subrule "stopper" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."stopper"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx236_pos = $P10."pos"()
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "quote_escape:sym<stopper>")
    if_null rx236_debug, debug_387
    rx236_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx236_pos)
  debug_387:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 42
    if_null rx236_debug, debug_388
    rx236_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_388:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_389
    rx236_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_389:
    .return (rx236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303857419.487") :method
.annotate 'line', 42
    new $P238, "ResizablePMCArray"
    push $P238, "\\"
    .return ($P238)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    .local pmc rx241_debug
    (rx241_cur, rx241_pos, rx241_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx241_cur
    .local pmc match
    .lex "$/", match
    length rx241_eos, rx241_tgt
    gt rx241_pos, rx241_eos, rx241_done
    set rx241_off, 0
    lt rx241_pos, 2, rx241_start
    sub rx241_off, rx241_pos, 1
    substr rx241_tgt, rx241_tgt, rx241_off
  rx241_start:
    eq $I10, 1, rx241_restart
    if_null rx241_debug, debug_390
    rx241_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_390:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    (rx241_pos) = rx241_cur."from"()
    inc rx241_pos
    rx241_cur."!cursor_from"(rx241_pos)
    ge rx241_pos, rx241_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx241_cur."!mark_push"(0, rx241_pos, $I10)
  rxscan244_done:
.annotate 'line', 92
  # rx literal  "\\b"
    add $I11, rx241_pos, 2
    gt $I11, rx241_eos, rx241_fail
    sub $I11, rx241_pos, rx241_off
    substr $S10, rx241_tgt, $I11, 2
    ne $S10, "\\b", rx241_fail
    add rx241_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx241_cur."!cursor_pos"(rx241_pos)
    $P10 = rx241_cur."quotemod_check"("b")
    unless $P10, rx241_fail
  # rx pass
    rx241_cur."!cursor_pass"(rx241_pos, "quote_escape:sym<bs>")
    if_null rx241_debug, debug_391
    rx241_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx241_pos)
  debug_391:
    .return (rx241_cur)
  rx241_restart:
.annotate 'line', 42
    if_null rx241_debug, debug_392
    rx241_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_392:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_393
    rx241_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_393:
    .return (rx241_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303857419.487") :method
.annotate 'line', 42
    new $P243, "ResizablePMCArray"
    push $P243, "\\b"
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx246_debug, debug_394
    rx246_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_394:
    $I10 = self.'from'()
    ne $I10, -1, rxscan249_done
    goto rxscan249_scan
  rxscan249_loop:
    (rx246_pos) = rx246_cur."from"()
    inc rx246_pos
    rx246_cur."!cursor_from"(rx246_pos)
    ge rx246_pos, rx246_eos, rxscan249_done
  rxscan249_scan:
    set_addr $I10, rxscan249_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan249_done:
.annotate 'line', 93
  # rx literal  "\\n"
    add $I11, rx246_pos, 2
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 2
    ne $S10, "\\n", rx246_fail
    add rx246_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."quotemod_check"("b")
    unless $P10, rx246_fail
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "quote_escape:sym<nl>")
    if_null rx246_debug, debug_395
    rx246_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx246_pos)
  debug_395:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 42
    if_null rx246_debug, debug_396
    rx246_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_396:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_397
    rx246_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_397:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303857419.487") :method
.annotate 'line', 42
    new $P248, "ResizablePMCArray"
    push $P248, "\\n"
    .return ($P248)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_debug
    (rx251_cur, rx251_pos, rx251_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    gt rx251_pos, rx251_eos, rx251_done
    set rx251_off, 0
    lt rx251_pos, 2, rx251_start
    sub rx251_off, rx251_pos, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
    eq $I10, 1, rx251_restart
    if_null rx251_debug, debug_398
    rx251_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_398:
    $I10 = self.'from'()
    ne $I10, -1, rxscan254_done
    goto rxscan254_scan
  rxscan254_loop:
    (rx251_pos) = rx251_cur."from"()
    inc rx251_pos
    rx251_cur."!cursor_from"(rx251_pos)
    ge rx251_pos, rx251_eos, rxscan254_done
  rxscan254_scan:
    set_addr $I10, rxscan254_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan254_done:
.annotate 'line', 94
  # rx literal  "\\r"
    add $I11, rx251_pos, 2
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I11, 2
    ne $S10, "\\r", rx251_fail
    add rx251_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."quotemod_check"("b")
    unless $P10, rx251_fail
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "quote_escape:sym<cr>")
    if_null rx251_debug, debug_399
    rx251_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx251_pos)
  debug_399:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 42
    if_null rx251_debug, debug_400
    rx251_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_400:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_401
    rx251_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_401:
    .return (rx251_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303857419.487") :method
.annotate 'line', 42
    new $P253, "ResizablePMCArray"
    push $P253, "\\r"
    .return ($P253)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    .local pmc rx256_debug
    (rx256_cur, rx256_pos, rx256_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx256_cur
    .local pmc match
    .lex "$/", match
    length rx256_eos, rx256_tgt
    gt rx256_pos, rx256_eos, rx256_done
    set rx256_off, 0
    lt rx256_pos, 2, rx256_start
    sub rx256_off, rx256_pos, 1
    substr rx256_tgt, rx256_tgt, rx256_off
  rx256_start:
    eq $I10, 1, rx256_restart
    if_null rx256_debug, debug_402
    rx256_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_402:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    (rx256_pos) = rx256_cur."from"()
    inc rx256_pos
    rx256_cur."!cursor_from"(rx256_pos)
    ge rx256_pos, rx256_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxscan259_done:
.annotate 'line', 95
  # rx literal  "\\t"
    add $I11, rx256_pos, 2
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    substr $S10, rx256_tgt, $I11, 2
    ne $S10, "\\t", rx256_fail
    add rx256_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."quotemod_check"("b")
    unless $P10, rx256_fail
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "quote_escape:sym<tab>")
    if_null rx256_debug, debug_403
    rx256_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx256_pos)
  debug_403:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 42
    if_null rx256_debug, debug_404
    rx256_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_404:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_405
    rx256_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_405:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303857419.487") :method
.annotate 'line', 42
    new $P258, "ResizablePMCArray"
    push $P258, "\\t"
    .return ($P258)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx261_tgt
    .local int rx261_pos
    .local int rx261_off
    .local int rx261_eos
    .local int rx261_rep
    .local pmc rx261_cur
    .local pmc rx261_debug
    (rx261_cur, rx261_pos, rx261_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx261_cur
    .local pmc match
    .lex "$/", match
    length rx261_eos, rx261_tgt
    gt rx261_pos, rx261_eos, rx261_done
    set rx261_off, 0
    lt rx261_pos, 2, rx261_start
    sub rx261_off, rx261_pos, 1
    substr rx261_tgt, rx261_tgt, rx261_off
  rx261_start:
    eq $I10, 1, rx261_restart
    if_null rx261_debug, debug_406
    rx261_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_406:
    $I10 = self.'from'()
    ne $I10, -1, rxscan264_done
    goto rxscan264_scan
  rxscan264_loop:
    (rx261_pos) = rx261_cur."from"()
    inc rx261_pos
    rx261_cur."!cursor_from"(rx261_pos)
    ge rx261_pos, rx261_eos, rxscan264_done
  rxscan264_scan:
    set_addr $I10, rxscan264_loop
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  rxscan264_done:
.annotate 'line', 96
  # rx literal  "\\f"
    add $I11, rx261_pos, 2
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I11, 2
    ne $S10, "\\f", rx261_fail
    add rx261_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx261_cur."!cursor_pos"(rx261_pos)
    $P10 = rx261_cur."quotemod_check"("b")
    unless $P10, rx261_fail
  # rx pass
    rx261_cur."!cursor_pass"(rx261_pos, "quote_escape:sym<ff>")
    if_null rx261_debug, debug_407
    rx261_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx261_pos)
  debug_407:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 42
    if_null rx261_debug, debug_408
    rx261_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_408:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_409
    rx261_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_409:
    .return (rx261_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303857419.487") :method
.annotate 'line', 42
    new $P263, "ResizablePMCArray"
    push $P263, "\\f"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    .local pmc rx266_debug
    (rx266_cur, rx266_pos, rx266_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    gt rx266_pos, rx266_eos, rx266_done
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    eq $I10, 1, rx266_restart
    if_null rx266_debug, debug_410
    rx266_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_410:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    (rx266_pos) = rx266_cur."from"()
    inc rx266_pos
    rx266_cur."!cursor_from"(rx266_pos)
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
.annotate 'line', 97
  # rx literal  "\\e"
    add $I11, rx266_pos, 2
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 2
    ne $S10, "\\e", rx266_fail
    add rx266_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."quotemod_check"("b")
    unless $P10, rx266_fail
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "quote_escape:sym<esc>")
    if_null rx266_debug, debug_411
    rx266_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx266_pos)
  debug_411:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 42
    if_null rx266_debug, debug_412
    rx266_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_412:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_413
    rx266_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_413:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303857419.487") :method
.annotate 'line', 42
    new $P268, "ResizablePMCArray"
    push $P268, "\\e"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx271_debug, debug_414
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_414:
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
.annotate 'line', 99
  # rx literal  unicode:"\\x"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx271_fail
    add rx271_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."quotemod_check"("b")
    unless $P10, rx271_fail
  alt275_0:
.annotate 'line', 100
    set_addr $I10, alt275_1
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexint"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx271_pos = $P10."pos"()
    goto alt275_end
  alt275_1:
  # rx literal  "["
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 91, rx271_fail
    add rx271_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexints"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx271_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 93, rx271_fail
    add rx271_pos, 1
  alt275_end:
.annotate 'line', 98
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<hex>")
    if_null rx271_debug, debug_415
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx271_pos)
  debug_415:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 42
    if_null rx271_debug, debug_416
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_416:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_417
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_417:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303857419.487") :method
.annotate 'line', 42
    new $P273, "ResizablePMCArray"
    push $P273, unicode:"\\x"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx277_debug, debug_418
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_418:
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
.annotate 'line', 103
  # rx literal  "\\o"
    add $I11, rx277_pos, 2
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 2
    ne $S10, "\\o", rx277_fail
    add rx277_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."quotemod_check"("b")
    unless $P10, rx277_fail
  alt281_0:
.annotate 'line', 104
    set_addr $I10, alt281_1
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octint"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx277_pos = $P10."pos"()
    goto alt281_end
  alt281_1:
  # rx literal  "["
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 91, rx277_fail
    add rx277_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octints"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx277_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 93, rx277_fail
    add rx277_pos, 1
  alt281_end:
.annotate 'line', 102
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<oct>")
    if_null rx277_debug, debug_419
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx277_pos)
  debug_419:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 42
    if_null rx277_debug, debug_420
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_420:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_421
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_421:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303857419.487") :method
.annotate 'line', 42
    new $P279, "ResizablePMCArray"
    push $P279, "\\o"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
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
    if_null rx283_debug, debug_422
    rx283_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_422:
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
.annotate 'line', 106
  # rx literal  "\\c"
    add $I11, rx283_pos, 2
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 2
    ne $S10, "\\c", rx283_fail
    add rx283_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."quotemod_check"("b")
    unless $P10, rx283_fail
  # rx subrule "charspec" subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."charspec"()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx283_pos = $P10."pos"()
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "quote_escape:sym<chr>")
    if_null rx283_debug, debug_423
    rx283_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx283_pos)
  debug_423:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 42
    if_null rx283_debug, debug_424
    rx283_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_424:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_425
    rx283_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_425:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303857419.487") :method
.annotate 'line', 42
    new $P285, "ResizablePMCArray"
    push $P285, "\\c"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    .local pmc rx288_debug
    (rx288_cur, rx288_pos, rx288_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx288_cur
    .local pmc match
    .lex "$/", match
    length rx288_eos, rx288_tgt
    gt rx288_pos, rx288_eos, rx288_done
    set rx288_off, 0
    lt rx288_pos, 2, rx288_start
    sub rx288_off, rx288_pos, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
    eq $I10, 1, rx288_restart
    if_null rx288_debug, debug_426
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_426:
    $I10 = self.'from'()
    ne $I10, -1, rxscan291_done
    goto rxscan291_scan
  rxscan291_loop:
    (rx288_pos) = rx288_cur."from"()
    inc rx288_pos
    rx288_cur."!cursor_from"(rx288_pos)
    ge rx288_pos, rx288_eos, rxscan291_done
  rxscan291_scan:
    set_addr $I10, rxscan291_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan291_done:
.annotate 'line', 107
  # rx literal  "\\"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 92, rx288_fail
    add rx288_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_292_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx literal  "0"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 48, rx288_fail
    add rx288_pos, 1
    set_addr $I10, rxcap_292_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_292_done
  rxcap_292_fail:
    goto rx288_fail
  rxcap_292_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."quotemod_check"("b")
    unless $P10, rx288_fail
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "quote_escape:sym<0>")
    if_null rx288_debug, debug_427
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx288_pos)
  debug_427:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 42
    if_null rx288_debug, debug_428
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_428:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_429
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_429:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303857419.487") :method
.annotate 'line', 42
    new $P290, "ResizablePMCArray"
    push $P290, "\\0"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .const 'Sub' $P313 = "97_1303857419.487" 
    capture_lex $P313
    .const 'Sub' $P306 = "96_1303857419.487" 
    capture_lex $P306
    .const 'Sub' $P301 = "95_1303857419.487" 
    capture_lex $P301
    .local string rx294_tgt
    .local int rx294_pos
    .local int rx294_off
    .local int rx294_eos
    .local int rx294_rep
    .local pmc rx294_cur
    .local pmc rx294_debug
    (rx294_cur, rx294_pos, rx294_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx294_cur
    .local pmc match
    .lex "$/", match
    length rx294_eos, rx294_tgt
    gt rx294_pos, rx294_eos, rx294_done
    set rx294_off, 0
    lt rx294_pos, 2, rx294_start
    sub rx294_off, rx294_pos, 1
    substr rx294_tgt, rx294_tgt, rx294_off
  rx294_start:
    eq $I10, 1, rx294_restart
    if_null rx294_debug, debug_430
    rx294_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan297_done
    goto rxscan297_scan
  rxscan297_loop:
    (rx294_pos) = rx294_cur."from"()
    inc rx294_pos
    rx294_cur."!cursor_from"(rx294_pos)
    ge rx294_pos, rx294_eos, rxscan297_done
  rxscan297_scan:
    set_addr $I10, rxscan297_loop
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  rxscan297_done:
.annotate 'line', 109
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P298, unicode:"$\x{a2}"
    $P299 = $P298."MATCH"()
    store_lex "$/", $P299
    .const 'Sub' $P301 = "95_1303857419.487" 
    capture_lex $P301
    $P302 = $P301()
  # rx literal  "\\"
    add $I11, rx294_pos, 1
    gt $I11, rx294_eos, rx294_fail
    sub $I11, rx294_pos, rx294_off
    ord $I11, rx294_tgt, $I11
    ne $I11, 92, rx294_fail
    add rx294_pos, 1
  alt303_0:
.annotate 'line', 110
    set_addr $I10, alt303_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    $P10 = rx294_cur."quotemod_check"("b")
    unless $P10, rx294_fail
  alt304_0:
.annotate 'line', 112
    set_addr $I10, alt304_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 113
  # rx subrule $P306 subtype=capture negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    .const 'Sub' $P306 = "96_1303857419.487" 
    capture_lex $P306
    $P10 = rx294_cur.$P306()
    unless $P10, rx294_fail
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx294_pos = $P10."pos"()
    goto alt304_end
  alt304_1:
.annotate 'line', 114
  # rx subcapture "x"
    set_addr $I10, rxcap_309_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass w
    ge rx294_pos, rx294_eos, rx294_fail
    sub $I10, rx294_pos, rx294_off
    is_cclass $I11, 8192, rx294_tgt, $I10
    unless $I11, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_309_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_309_done
  rxcap_309_fail:
    goto rx294_fail
  rxcap_309_done:
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P310, unicode:"$\x{a2}"
    $P311 = $P310."MATCH"()
    store_lex "$/", $P311
    .const 'Sub' $P313 = "97_1303857419.487" 
    capture_lex $P313
    $P323 = $P313()
  alt304_end:
.annotate 'line', 111
    goto alt303_end
  alt303_1:
.annotate 'line', 116
  # rx subcapture "textq"
    set_addr $I10, rxcap_324_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass .
    ge rx294_pos, rx294_eos, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_324_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_324_done
  rxcap_324_fail:
    goto rx294_fail
  rxcap_324_done:
  alt303_end:
.annotate 'line', 108
  # rx pass
    rx294_cur."!cursor_pass"(rx294_pos, "quote_escape:sym<misc>")
    if_null rx294_debug, debug_438
    rx294_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx294_pos)
  debug_438:
    .return (rx294_cur)
  rx294_restart:
.annotate 'line', 42
    if_null rx294_debug, debug_439
    rx294_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_439:
  rx294_fail:
    (rx294_rep, rx294_pos, $I10, $P10) = rx294_cur."!mark_fail"(0)
    lt rx294_pos, -1, rx294_done
    eq rx294_pos, -1, rx294_fail
    jump $I10
  rx294_done:
    rx294_cur."!cursor_fail"()
    if_null rx294_debug, debug_440
    rx294_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_440:
    .return (rx294_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303857419.487") :method
.annotate 'line', 42
    new $P296, "ResizablePMCArray"
    push $P296, ""
    .return ($P296)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block300"  :anon :subid("95_1303857419.487") :outer("93_1303857419.487")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block305"  :anon :subid("96_1303857419.487") :method :outer("93_1303857419.487")
.annotate 'line', 113
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    .local pmc rx307_debug
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx307_cur
    .local pmc match
    .lex "$/", match
    length rx307_eos, rx307_tgt
    gt rx307_pos, rx307_eos, rx307_done
    set rx307_off, 0
    lt rx307_pos, 2, rx307_start
    sub rx307_off, rx307_pos, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
    eq $I10, 1, rx307_restart
    if_null rx307_debug, debug_431
    rx307_cur."!cursor_debug"("START", "")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan308_done
    goto rxscan308_scan
  rxscan308_loop:
    (rx307_pos) = rx307_cur."from"()
    inc rx307_pos
    rx307_cur."!cursor_from"(rx307_pos)
    ge rx307_pos, rx307_eos, rxscan308_done
  rxscan308_scan:
    set_addr $I10, rxscan308_loop
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  rxscan308_done:
  # rx charclass W
    ge rx307_pos, rx307_eos, rx307_fail
    sub $I10, rx307_pos, rx307_off
    is_cclass $I11, 8192, rx307_tgt, $I10
    if $I11, rx307_fail
    inc rx307_pos
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "")
    if_null rx307_debug, debug_432
    rx307_cur."!cursor_debug"("PASS", "", " at pos=", rx307_pos)
  debug_432:
    .return (rx307_cur)
  rx307_restart:
    if_null rx307_debug, debug_433
    rx307_cur."!cursor_debug"("NEXT", "")
  debug_433:
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    if_null rx307_debug, debug_434
    rx307_cur."!cursor_debug"("FAIL", "")
  debug_434:
    .return (rx307_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block312"  :anon :subid("97_1303857419.487") :outer("93_1303857419.487")
.annotate 'line', 114
    find_lex $P314, "$/"
    unless_null $P314, vivify_435
    new $P314, "Undef"
  vivify_435:
    $P315 = $P314."CURSOR"()
    new $P316, "String"
    assign $P316, "Unrecognized backslash sequence: '\\"
    find_lex $P317, "$/"
    unless_null $P317, vivify_436
    $P317 = root_new ['parrot';'Hash']
  vivify_436:
    set $P318, $P317["x"]
    unless_null $P318, vivify_437
    new $P318, "Undef"
  vivify_437:
    $S319 = $P318."Str"()
    concat $P320, $P316, $S319
    concat $P321, $P320, "'"
    $P322 = $P315."panic"($P321)
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .const 'Sub' $P335 = "100_1303857419.487" 
    capture_lex $P335
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
    if_null rx326_debug, debug_441
    rx326_cur."!cursor_debug"("START", "charname")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx326_pos) = rx326_cur."from"()
    inc rx326_pos
    rx326_cur."!cursor_from"(rx326_pos)
    ge rx326_pos, rx326_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  rxscan330_done:
  alt331_0:
.annotate 'line', 120
    set_addr $I10, alt331_1
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."integer"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx326_pos = $P10."pos"()
    goto alt331_end
  alt331_1:
.annotate 'line', 122
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
  # rx rxquantf332 ** 0..*
    set_addr $I10, rxquantf332_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
    goto rxquantf332_done
  rxquantf332_loop:
  # rx enumcharlist negate=1 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx326_fail
    inc rx326_pos
    set_addr $I10, rxquantf332_loop
    rx326_cur."!mark_push"(rx326_rep, rx326_pos, $I10)
  rxquantf332_done:
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
.annotate 'line', 123
  # rx subrule "before" subtype=zerowidth negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    .const 'Sub' $P335 = "100_1303857419.487" 
    capture_lex $P335
    $P10 = rx326_cur."before"($P335)
    unless $P10, rx326_fail
  alt331_end:
.annotate 'line', 120
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "charname")
    if_null rx326_debug, debug_446
    rx326_cur."!cursor_debug"("PASS", "charname", " at pos=", rx326_pos)
  debug_446:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 42
    if_null rx326_debug, debug_447
    rx326_cur."!cursor_debug"("NEXT", "charname")
  debug_447:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_448
    rx326_cur."!cursor_debug"("FAIL", "charname")
  debug_448:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303857419.487") :method
.annotate 'line', 42
    $P328 = self."!PREFIX__!subrule"("integer", "")
    new $P329, "ResizablePMCArray"
    push $P329, "Z"
    push $P329, "Y"
    push $P329, "X"
    push $P329, "W"
    push $P329, "V"
    push $P329, "U"
    push $P329, "T"
    push $P329, "S"
    push $P329, "R"
    push $P329, "Q"
    push $P329, "P"
    push $P329, "O"
    push $P329, "N"
    push $P329, "M"
    push $P329, "L"
    push $P329, "K"
    push $P329, "J"
    push $P329, "I"
    push $P329, "H"
    push $P329, "G"
    push $P329, "F"
    push $P329, "E"
    push $P329, "D"
    push $P329, "C"
    push $P329, "B"
    push $P329, "A"
    push $P329, "z"
    push $P329, "y"
    push $P329, "x"
    push $P329, "w"
    push $P329, "v"
    push $P329, "u"
    push $P329, "t"
    push $P329, "s"
    push $P329, "r"
    push $P329, "q"
    push $P329, "p"
    push $P329, "o"
    push $P329, "n"
    push $P329, "m"
    push $P329, "l"
    push $P329, "k"
    push $P329, "j"
    push $P329, "i"
    push $P329, "h"
    push $P329, "g"
    push $P329, "f"
    push $P329, "e"
    push $P329, "d"
    push $P329, "c"
    push $P329, "b"
    push $P329, "a"
    push $P329, $P328
    .return ($P329)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block334"  :anon :subid("100_1303857419.487") :method :outer("98_1303857419.487")
.annotate 'line', 123
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    .local pmc rx336_debug
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    gt rx336_pos, rx336_eos, rx336_done
    set rx336_off, 0
    lt rx336_pos, 2, rx336_start
    sub rx336_off, rx336_pos, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
    eq $I10, 1, rx336_restart
    if_null rx336_debug, debug_442
    rx336_cur."!cursor_debug"("START", "")
  debug_442:
    $I10 = self.'from'()
    ne $I10, -1, rxscan337_done
    goto rxscan337_scan
  rxscan337_loop:
    (rx336_pos) = rx336_cur."from"()
    inc rx336_pos
    rx336_cur."!cursor_from"(rx336_pos)
    ge rx336_pos, rx336_eos, rxscan337_done
  rxscan337_scan:
    set_addr $I10, rxscan337_loop
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxscan337_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx336_pos, rx336_off
    find_not_cclass $I11, 32, rx336_tgt, $I10, rx336_eos
    add rx336_pos, rx336_off, $I11
  # rx enumcharlist negate=0 
    ge rx336_pos, rx336_eos, rx336_fail
    sub $I10, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx336_fail
    inc rx336_pos
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "")
    if_null rx336_debug, debug_443
    rx336_cur."!cursor_debug"("PASS", "", " at pos=", rx336_pos)
  debug_443:
    .return (rx336_cur)
  rx336_restart:
    if_null rx336_debug, debug_444
    rx336_cur."!cursor_debug"("NEXT", "")
  debug_444:
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    if_null rx336_debug, debug_445
    rx336_cur."!cursor_debug"("FAIL", "")
  debug_445:
    .return (rx336_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    rx339_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    gt rx339_pos, rx339_eos, rx339_done
    set rx339_off, 0
    lt rx339_pos, 2, rx339_start
    sub rx339_off, rx339_pos, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
    eq $I10, 1, rx339_restart
    if_null rx339_debug, debug_449
    rx339_cur."!cursor_debug"("START", "charnames")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan342_done
    goto rxscan342_scan
  rxscan342_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan342_done
  rxscan342_scan:
    set_addr $I10, rxscan342_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan342_done:
.annotate 'line', 125
  # rx rxquantr343 ** 1..*
    set_addr $I10, rxquantr343_done
    rx339_cur."!mark_push"(0, -1, $I10)
  rxquantr343_loop:
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."charname"()
    unless $P10, rx339_fail
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx339_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
    set_addr $I10, rxquantr343_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr343_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
  # rx literal  ","
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 44, rx339_fail
    add rx339_pos, 1
    goto rxquantr343_loop
  rxquantr343_done:
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "charnames")
    if_null rx339_debug, debug_450
    rx339_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx339_pos)
  debug_450:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 42
    if_null rx339_debug, debug_451
    rx339_cur."!cursor_debug"("NEXT", "charnames")
  debug_451:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_452
    rx339_cur."!cursor_debug"("FAIL", "charnames")
  debug_452:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303857419.487") :method
.annotate 'line', 42
    new $P341, "ResizablePMCArray"
    push $P341, ""
    .return ($P341)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303857419.487") :method :outer("11_1303857419.487")
.annotate 'line', 42
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    .local pmc rx345_debug
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx345_cur
    .local pmc match
    .lex "$/", match
    length rx345_eos, rx345_tgt
    gt rx345_pos, rx345_eos, rx345_done
    set rx345_off, 0
    lt rx345_pos, 2, rx345_start
    sub rx345_off, rx345_pos, 1
    substr rx345_tgt, rx345_tgt, rx345_off
  rx345_start:
    eq $I10, 1, rx345_restart
    if_null rx345_debug, debug_453
    rx345_cur."!cursor_debug"("START", "charspec")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan350_done
    goto rxscan350_scan
  rxscan350_loop:
    (rx345_pos) = rx345_cur."from"()
    inc rx345_pos
    rx345_cur."!cursor_from"(rx345_pos)
    ge rx345_pos, rx345_eos, rxscan350_done
  rxscan350_scan:
    set_addr $I10, rxscan350_loop
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxscan350_done:
  alt351_0:
.annotate 'line', 127
    set_addr $I10, alt351_1
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 128
  # rx literal  "["
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 91, rx345_fail
    add rx345_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."charnames"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx345_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 93, rx345_fail
    add rx345_pos, 1
    goto alt351_end
  alt351_1:
    set_addr $I10, alt351_2
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 129
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
  # rx rxquantr352 ** 0..*
    set_addr $I10, rxquantr352_done
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxquantr352_loop:
  # rx literal  "_"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 95, rx345_fail
    add rx345_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
    set_addr $I10, rxquantr352_done
    (rx345_rep) = rx345_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr352_done
    rx345_cur."!mark_push"(rx345_rep, rx345_pos, $I10)
    goto rxquantr352_loop
  rxquantr352_done:
    goto alt351_end
  alt351_2:
    set_addr $I10, alt351_3
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx345_pos, rx345_eos, rx345_fail
    sub $I10, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx345_fail
    inc rx345_pos
    goto alt351_end
  alt351_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."panic"("Unrecognized \\c character")
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  alt351_end:
.annotate 'line', 126
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "charspec")
    if_null rx345_debug, debug_454
    rx345_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx345_pos)
  debug_454:
    .return (rx345_cur)
  rx345_restart:
.annotate 'line', 42
    if_null rx345_debug, debug_455
    rx345_cur."!cursor_debug"("NEXT", "charspec")
  debug_455:
  rx345_fail:
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    if_null rx345_debug, debug_456
    rx345_cur."!cursor_debug"("FAIL", "charspec")
  debug_456:
    .return (rx345_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303857419.487") :method
.annotate 'line', 42
    $P347 = self."!PREFIX__!subrule"("panic", "")
    $P348 = self."!PREFIX__!subrule"("charnames", "[")
    new $P349, "ResizablePMCArray"
    push $P349, $P347
    push $P349, "Z"
    push $P349, "Y"
    push $P349, "X"
    push $P349, "W"
    push $P349, "V"
    push $P349, "U"
    push $P349, "T"
    push $P349, "S"
    push $P349, "R"
    push $P349, "Q"
    push $P349, "P"
    push $P349, "O"
    push $P349, "N"
    push $P349, "M"
    push $P349, "L"
    push $P349, "K"
    push $P349, "J"
    push $P349, "I"
    push $P349, "H"
    push $P349, "G"
    push $P349, "F"
    push $P349, "E"
    push $P349, "D"
    push $P349, "C"
    push $P349, "B"
    push $P349, "A"
    push $P349, "@"
    push $P349, "?"
    push $P349, ""
    push $P349, $P348
    .return ($P349)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356 :optional
    .param int has_param_356 :opt_flag
.annotate 'line', 177
    .lex "self", param_354
    .lex "$spec", param_355
    if has_param_356, optparam_457
    new $P357, "Undef"
    set param_356, $P357
  optparam_457:
    .lex "$save", param_356
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
.sub "panic"  :subid("106_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_359
    .param pmc param_360 :slurpy
.annotate 'line', 325
    .lex "self", param_359
    .lex "@args", param_360
.annotate 'line', 326
    new $P361, "Undef"
    .lex "$pos", $P361
.annotate 'line', 327
    new $P362, "Undef"
    .lex "$target", $P362
.annotate 'line', 326
    find_lex $P363, "self"
    $P364 = $P363."pos"()
    store_lex "$pos", $P364
.annotate 'line', 327
    find_lex $P365, "self"
    get_hll_global $P366, "GLOBAL"
    nqp_get_package_through_who $P367, $P366, "Regex"
    get_who $P368, $P367
    set $P369, $P368["Cursor"]
    getattribute $P370, $P365, $P369, "$!target"
    store_lex "$target", $P370
.annotate 'line', 328
    find_lex $P371, "@args"
    unless_null $P371, vivify_458
    $P371 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    $P371."push"(" at line ")
.annotate 'line', 329
    find_lex $P372, "@args"
    unless_null $P372, vivify_459
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
    get_hll_global $P373, "GLOBAL"
    nqp_get_package_through_who $P374, $P373, "HLL"
    get_who $P375, $P374
    set $P376, $P375["Compiler"]
    find_lex $P377, "$target"
    unless_null $P377, vivify_460
    new $P377, "Undef"
  vivify_460:
    find_lex $P378, "$pos"
    unless_null $P378, vivify_461
    new $P378, "Undef"
  vivify_461:
    $P379 = $P376."lineof"($P377, $P378)
    add $P380, $P379, 1
    $P372."push"($P380)
.annotate 'line', 330
    find_lex $P381, "@args"
    unless_null $P381, vivify_462
    $P381 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    $P381."push"(", near \"")
.annotate 'line', 331
    find_lex $P382, "@args"
    unless_null $P382, vivify_463
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_463:
    find_lex $P383, "$target"
    unless_null $P383, vivify_464
    new $P383, "Undef"
  vivify_464:
    set $S384, $P383
    find_lex $P385, "$pos"
    unless_null $P385, vivify_465
    new $P385, "Undef"
  vivify_465:
    set $I386, $P385
    substr $S387, $S384, $I386, 10
    escape $S388, $S387
    $P382."push"($S388)
.annotate 'line', 332
    find_lex $P389, "@args"
    unless_null $P389, vivify_466
    $P389 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    $P389."push"("\"")
.annotate 'line', 333
    find_lex $P390, "@args"
    unless_null $P390, vivify_467
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
    join $S391, "", $P390
    die $S391
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_393
    .param pmc param_394
    .param pmc param_395
.annotate 'line', 346
    .lex "self", param_393
    .lex "$target", param_394
    .lex "$pos", param_395
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
.sub "quote_EXPR"  :subid("108_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_397
    .param pmc param_398 :slurpy
.annotate 'line', 408
    .lex "self", param_397
    .lex "@args", param_398
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
.sub "quotemod_check"  :subid("109_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 479
    .lex "self", param_400
    .lex "$mod", param_401
    find_lex $P402, "$mod"
    unless_null $P402, vivify_468
    new $P402, "Undef"
  vivify_468:
    find_dynamic_lex $P405, "%*QUOTEMOD"
    unless_null $P405, vivify_469
    get_hll_global $P403, "GLOBAL"
    get_who $P404, $P403
    set $P405, $P404["%QUOTEMOD"]
    unless_null $P405, vivify_470
    die "Contextual %*QUOTEMOD not found"
  vivify_470:
  vivify_469:
    set $P406, $P405[$P402]
    unless_null $P406, vivify_471
    new $P406, "Undef"
  vivify_471:
    .return ($P406)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_408
.annotate 'line', 483
    .lex "self", param_408
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
.sub "stopper"  :subid("111_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_410
.annotate 'line', 506
    .lex "self", param_410
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
.sub "split_words"  :subid("112_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_412
    .param pmc param_413
.annotate 'line', 529
    .lex "self", param_412
    .lex "$words", param_413
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
.sub "EXPR"  :subid("113_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_415
    .param pmc param_416 :optional
    .param int has_param_416 :opt_flag
.annotate 'line', 561
    .lex "self", param_415
    if has_param_416, optparam_472
    new $P417, "String"
    assign $P417, ""
    set param_416, $P417
  optparam_472:
    .lex "$preclim", param_416
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
.sub "EXPR_reduce"  :subid("114_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_419
    .param pmc param_420
    .param pmc param_421
.annotate 'line', 739
    .lex "self", param_419
    .lex "$termstack", param_420
    .lex "$opstack", param_421
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
.sub "ternary"  :subid("115_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 811
    .lex "self", param_423
    .lex "$match", param_424
.annotate 'line', 812
    find_lex $P425, "$match"
    unless_null $P425, vivify_473
    $P425 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
    set $P426, $P425[1]
    unless_null $P426, vivify_474
    new $P426, "Undef"
  vivify_474:
    find_lex $P427, "$match"
    unless_null $P427, vivify_475
    $P427 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P427
  vivify_475:
    set $P427[2], $P426
.annotate 'line', 813
    find_lex $P428, "$match"
    unless_null $P428, vivify_476
    $P428 = root_new ['parrot';'Hash']
  vivify_476:
    set $P429, $P428["infix"]
    unless_null $P429, vivify_477
    $P429 = root_new ['parrot';'Hash']
  vivify_477:
    set $P430, $P429["EXPR"]
    unless_null $P430, vivify_478
    new $P430, "Undef"
  vivify_478:
    find_lex $P431, "$match"
    unless_null $P431, vivify_479
    $P431 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P431
  vivify_479:
    set $P431[1], $P430
.annotate 'line', 811
    .return ($P430)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_433
    .param pmc param_434
.annotate 'line', 816
    .lex "self", param_433
    .lex "$markname", param_434
.annotate 'line', 817
    new $P435, "Undef"
    .lex "$pos", $P435
.annotate 'line', 819
    $P436 = root_new ['parrot';'Hash']
    .lex "%markhash", $P436
.annotate 'line', 817
    find_lex $P437, "self"
    $P438 = $P437."pos"()
    store_lex "$pos", $P438
.annotate 'line', 818
    find_lex $P439, "self"
    find_lex $P440, "$markname"
    unless_null $P440, vivify_480
    new $P440, "Undef"
  vivify_480:
    find_lex $P441, "$pos"
    unless_null $P441, vivify_481
    new $P441, "Undef"
  vivify_481:
    $P439."!cursor_debug"("START", "MARKER name=", $P440, ", pos=", $P441)
.annotate 'line', 819

            $P442 = get_global '%!MARKHASH'
            unless null $P442 goto have_markhash
            $P442 = new ['Hash']
            set_global '%!MARKHASH', $P442
          have_markhash:
        
    store_lex "%markhash", $P442
.annotate 'line', 826
    find_lex $P443, "$pos"
    unless_null $P443, vivify_482
    new $P443, "Undef"
  vivify_482:
    find_lex $P444, "$markname"
    unless_null $P444, vivify_483
    new $P444, "Undef"
  vivify_483:
    find_lex $P445, "%markhash"
    unless_null $P445, vivify_484
    $P445 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P445
  vivify_484:
    set $P445[$P444], $P443
.annotate 'line', 827
    find_lex $P446, "self"
    $P446."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_448
    .param pmc param_449
.annotate 'line', 831
    .lex "self", param_448
    .lex "$markname", param_449
.annotate 'line', 832
    find_lex $P450, "self"
    find_lex $P451, "$markname"
    unless_null $P451, vivify_485
    new $P451, "Undef"
  vivify_485:
    $P450."!cursor_debug"("START", "MARKED name=", $P451)
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
.sub "LANG"  :subid("118_1303857419.487") :outer("11_1303857419.487")
    .param pmc param_453
    .param pmc param_454
    .param pmc param_455
.annotate 'line', 851
    .lex "self", param_453
    .lex "$lang", param_454
    .lex "$regex", param_455
.annotate 'line', 852
    new $P456, "Undef"
    .lex "$lang_cursor", $P456
.annotate 'line', 853
    new $P457, "Undef"
    .lex "$*ACTIONS", $P457
.annotate 'line', 854
    new $P458, "Undef"
    .lex "$cur", $P458
.annotate 'line', 852
    find_lex $P459, "$lang"
    unless_null $P459, vivify_486
    new $P459, "Undef"
  vivify_486:
    find_dynamic_lex $P462, "%*LANG"
    unless_null $P462, vivify_487
    get_hll_global $P460, "GLOBAL"
    get_who $P461, $P460
    set $P462, $P461["%LANG"]
    unless_null $P462, vivify_488
    die "Contextual %*LANG not found"
  vivify_488:
  vivify_487:
    set $P463, $P462[$P459]
    unless_null $P463, vivify_489
    new $P463, "Undef"
  vivify_489:
    store_lex "$lang_cursor", $P463
.annotate 'line', 853
    find_lex $P464, "$lang"
    unless_null $P464, vivify_490
    new $P464, "Undef"
  vivify_490:
    concat $P465, $P464, "-actions"
    find_dynamic_lex $P468, "%*LANG"
    unless_null $P468, vivify_491
    get_hll_global $P466, "GLOBAL"
    get_who $P467, $P466
    set $P468, $P467["%LANG"]
    unless_null $P468, vivify_492
    die "Contextual %*LANG not found"
  vivify_492:
  vivify_491:
    set $P469, $P468[$P465]
    unless_null $P469, vivify_493
    new $P469, "Undef"
  vivify_493:
    store_lex "$*ACTIONS", $P469
.annotate 'line', 854

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P470, pos) = self.'!cursor_start'($P0)
            $P470.'!cursor_pos'(pos)
        
    store_lex "$cur", $P470
.annotate 'line', 862
    find_lex $P471, "$cur"
    unless_null $P471, vivify_494
    new $P471, "Undef"
  vivify_494:
    find_lex $P472, "$regex"
    unless_null $P472, vivify_495
    new $P472, "Undef"
  vivify_495:
    set $S473, $P472
    $P474 = $P471.$S473()
.annotate 'line', 851
    .return ($P474)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block687"  :subid("120_1303857419.487") :outer("10_1303857419.487")
.annotate 'line', 867
    .const 'Sub' $P1373 = "166_1303857419.487" 
    capture_lex $P1373
    .const 'Sub' $P1356 = "165_1303857419.487" 
    capture_lex $P1356
    .const 'Sub' $P1333 = "163_1303857419.487" 
    capture_lex $P1333
    .const 'Sub' $P1305 = "162_1303857419.487" 
    capture_lex $P1305
    .const 'Sub' $P1288 = "161_1303857419.487" 
    capture_lex $P1288
    .const 'Sub' $P1283 = "160_1303857419.487" 
    capture_lex $P1283
    .const 'Sub' $P1275 = "159_1303857419.487" 
    capture_lex $P1275
    .const 'Sub' $P1260 = "158_1303857419.487" 
    capture_lex $P1260
    .const 'Sub' $P1245 = "157_1303857419.487" 
    capture_lex $P1245
    .const 'Sub' $P1240 = "156_1303857419.487" 
    capture_lex $P1240
    .const 'Sub' $P1235 = "155_1303857419.487" 
    capture_lex $P1235
    .const 'Sub' $P1230 = "154_1303857419.487" 
    capture_lex $P1230
    .const 'Sub' $P1225 = "153_1303857419.487" 
    capture_lex $P1225
    .const 'Sub' $P1220 = "152_1303857419.487" 
    capture_lex $P1220
    .const 'Sub' $P1215 = "151_1303857419.487" 
    capture_lex $P1215
    .const 'Sub' $P1207 = "150_1303857419.487" 
    capture_lex $P1207
    .const 'Sub' $P1202 = "149_1303857419.487" 
    capture_lex $P1202
    .const 'Sub' $P1188 = "148_1303857419.487" 
    capture_lex $P1188
    .const 'Sub' $P1106 = "146_1303857419.487" 
    capture_lex $P1106
    .const 'Sub' $P1029 = "143_1303857419.487" 
    capture_lex $P1029
    .const 'Sub' $P1022 = "142_1303857419.487" 
    capture_lex $P1022
    .const 'Sub' $P1015 = "141_1303857419.487" 
    capture_lex $P1015
    .const 'Sub' $P1008 = "140_1303857419.487" 
    capture_lex $P1008
    .const 'Sub' $P1001 = "139_1303857419.487" 
    capture_lex $P1001
    .const 'Sub' $P994 = "138_1303857419.487" 
    capture_lex $P994
    .const 'Sub' $P986 = "137_1303857419.487" 
    capture_lex $P986
    .const 'Sub' $P978 = "136_1303857419.487" 
    capture_lex $P978
    .const 'Sub' $P972 = "135_1303857419.487" 
    capture_lex $P972
    .const 'Sub' $P964 = "134_1303857419.487" 
    capture_lex $P964
    .const 'Sub' $P956 = "133_1303857419.487" 
    capture_lex $P956
    .const 'Sub' $P848 = "130_1303857419.487" 
    capture_lex $P848
    .const 'Sub' $P808 = "127_1303857419.487" 
    capture_lex $P808
    .const 'Sub' $P800 = "126_1303857419.487" 
    capture_lex $P800
    .const 'Sub' $P761 = "123_1303857419.487" 
    capture_lex $P761
    .const 'Sub' $P689 = "121_1303857419.487" 
    capture_lex $P689
.annotate 'line', 868
    .const 'Sub' $P689 = "121_1303857419.487" 
    newclosure $P757, $P689
    .lex "string_to_int", $P757
.annotate 'line', 867
    find_lex $P758, "string_to_int"
    find_lex $P759, "$?PACKAGE"
    get_who $P760, $P759
    set $P760["string_to_int"], $P758
.annotate 'line', 887
    .const 'Sub' $P761 = "123_1303857419.487" 
    newclosure $P792, $P761
    .lex "ints_to_string", $P792
.annotate 'line', 867
    find_lex $P793, "ints_to_string"
    find_lex $P794, "$?PACKAGE"
    get_who $P795, $P794
    set $P795["ints_to_string"], $P793
    .lex "$?PACKAGE", $P796
    .lex "$?CLASS", $P797
    find_lex $P798, "string_to_int"
    find_lex $P799, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1356 = "165_1303857419.487" 
    newclosure $P1371, $P1356
.annotate 'line', 867
    .return ($P1371)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post496") :outer("120_1303857419.487")
.annotate 'line', 867
    .const 'Sub' $P688 = "120_1303857419.487" 
    .local pmc block
    set block, $P688
    .const 'Sub' $P1373 = "166_1303857419.487" 
    capture_lex $P1373
    $P1373()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1372"  :anon :subid("166_1303857419.487") :outer("120_1303857419.487")
.annotate 'line', 867
    nqp_get_sc_object $P1374, "1303857411.111", 2
    .local pmc type_obj
    set type_obj, $P1374
    get_how $P1375, type_obj
    .const 'Sub' $P1376 = "126_1303857419.487" 
    $P1375."add_method"(type_obj, "CTXSAVE", $P1376)
    get_how $P1377, type_obj
    .const 'Sub' $P1378 = "127_1303857419.487" 
    $P1377."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1378)
    get_how $P1379, type_obj
    .const 'Sub' $P1380 = "130_1303857419.487" 
    $P1379."add_method"(type_obj, "EXPR", $P1380)
    get_how $P1381, type_obj
    .const 'Sub' $P1382 = "133_1303857419.487" 
    $P1381."add_method"(type_obj, "term:sym<circumfix>", $P1382)
    get_how $P1383, type_obj
    .const 'Sub' $P1384 = "134_1303857419.487" 
    $P1383."add_method"(type_obj, "termish", $P1384)
    get_how $P1385, type_obj
    .const 'Sub' $P1386 = "135_1303857419.487" 
    $P1385."add_method"(type_obj, "nullterm", $P1386)
    get_how $P1387, type_obj
    .const 'Sub' $P1388 = "136_1303857419.487" 
    $P1387."add_method"(type_obj, "nullterm_alt", $P1388)
    get_how $P1389, type_obj
    .const 'Sub' $P1390 = "137_1303857419.487" 
    $P1389."add_method"(type_obj, "integer", $P1390)
    get_how $P1391, type_obj
    .const 'Sub' $P1392 = "138_1303857419.487" 
    $P1391."add_method"(type_obj, "dec_number", $P1392)
    get_how $P1393, type_obj
    .const 'Sub' $P1394 = "139_1303857419.487" 
    $P1393."add_method"(type_obj, "decint", $P1394)
    get_how $P1395, type_obj
    .const 'Sub' $P1396 = "140_1303857419.487" 
    $P1395."add_method"(type_obj, "hexint", $P1396)
    get_how $P1397, type_obj
    .const 'Sub' $P1398 = "141_1303857419.487" 
    $P1397."add_method"(type_obj, "octint", $P1398)
    get_how $P1399, type_obj
    .const 'Sub' $P1400 = "142_1303857419.487" 
    $P1399."add_method"(type_obj, "binint", $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "143_1303857419.487" 
    $P1401."add_method"(type_obj, "quote_EXPR", $P1402)
    get_how $P1403, type_obj
    .const 'Sub' $P1404 = "146_1303857419.487" 
    $P1403."add_method"(type_obj, "quote_delimited", $P1404)
    get_how $P1405, type_obj
    .const 'Sub' $P1406 = "148_1303857419.487" 
    $P1405."add_method"(type_obj, "quote_atom", $P1406)
    get_how $P1407, type_obj
    .const 'Sub' $P1408 = "149_1303857419.487" 
    $P1407."add_method"(type_obj, "quote_escape:sym<backslash>", $P1408)
    get_how $P1409, type_obj
    .const 'Sub' $P1410 = "150_1303857419.487" 
    $P1409."add_method"(type_obj, "quote_escape:sym<stopper>", $P1410)
    get_how $P1411, type_obj
    .const 'Sub' $P1412 = "151_1303857419.487" 
    $P1411."add_method"(type_obj, "quote_escape:sym<bs>", $P1412)
    get_how $P1413, type_obj
    .const 'Sub' $P1414 = "152_1303857419.487" 
    $P1413."add_method"(type_obj, "quote_escape:sym<nl>", $P1414)
    get_how $P1415, type_obj
    .const 'Sub' $P1416 = "153_1303857419.487" 
    $P1415."add_method"(type_obj, "quote_escape:sym<cr>", $P1416)
    get_how $P1417, type_obj
    .const 'Sub' $P1418 = "154_1303857419.487" 
    $P1417."add_method"(type_obj, "quote_escape:sym<tab>", $P1418)
    get_how $P1419, type_obj
    .const 'Sub' $P1420 = "155_1303857419.487" 
    $P1419."add_method"(type_obj, "quote_escape:sym<ff>", $P1420)
    get_how $P1421, type_obj
    .const 'Sub' $P1422 = "156_1303857419.487" 
    $P1421."add_method"(type_obj, "quote_escape:sym<esc>", $P1422)
    get_how $P1423, type_obj
    .const 'Sub' $P1424 = "157_1303857419.487" 
    $P1423."add_method"(type_obj, "quote_escape:sym<hex>", $P1424)
    get_how $P1425, type_obj
    .const 'Sub' $P1426 = "158_1303857419.487" 
    $P1425."add_method"(type_obj, "quote_escape:sym<oct>", $P1426)
    get_how $P1427, type_obj
    .const 'Sub' $P1428 = "159_1303857419.487" 
    $P1427."add_method"(type_obj, "quote_escape:sym<chr>", $P1428)
    get_how $P1429, type_obj
    .const 'Sub' $P1430 = "160_1303857419.487" 
    $P1429."add_method"(type_obj, "quote_escape:sym<0>", $P1430)
    get_how $P1431, type_obj
    .const 'Sub' $P1432 = "161_1303857419.487" 
    $P1431."add_method"(type_obj, "quote_escape:sym<misc>", $P1432)
    get_how $P1433, type_obj
    .const 'Sub' $P1434 = "162_1303857419.487" 
    $P1433."add_method"(type_obj, "charname", $P1434)
    get_how $P1435, type_obj
    .const 'Sub' $P1436 = "163_1303857419.487" 
    $P1435."add_method"(type_obj, "charnames", $P1436)
    get_how $P1437, type_obj
    .const 'Sub' $P1438 = "165_1303857419.487" 
    $P1437."add_method"(type_obj, "charspec", $P1438)
    get_how $P1439, type_obj
    $P1440 = $P1439."compose"(type_obj)
    .return ($P1440)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_690
    .param pmc param_691
.annotate 'line', 868
    .const 'Sub' $P707 = "122_1303857419.487" 
    capture_lex $P707
    .lex "$src", param_690
    .lex "$base", param_691
.annotate 'line', 869
    new $P692, "Undef"
    .lex "$len", $P692
.annotate 'line', 870
    new $P693, "Undef"
    .lex "$i", $P693
.annotate 'line', 871
    new $P694, "Undef"
    .lex "$result", $P694
.annotate 'line', 869
    find_lex $P695, "$src"
    unless_null $P695, vivify_497
    new $P695, "Undef"
  vivify_497:
    set $S696, $P695
    length $I697, $S696
    new $P698, 'Integer'
    set $P698, $I697
    store_lex "$len", $P698
.annotate 'line', 870
    new $P699, "Integer"
    assign $P699, 0
    store_lex "$i", $P699
.annotate 'line', 871
    new $P700, "Integer"
    assign $P700, 0
    store_lex "$result", $P700
.annotate 'line', 873
    new $P754, 'ExceptionHandler'
    set_label $P754, loop753_handler
    $P754."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P754
  loop753_test:
    find_lex $P701, "$i"
    unless_null $P701, vivify_498
    new $P701, "Undef"
  vivify_498:
    set $N702, $P701
    find_lex $P703, "$len"
    unless_null $P703, vivify_499
    new $P703, "Undef"
  vivify_499:
    set $N704, $P703
    islt $I705, $N702, $N704
    unless $I705, loop753_done
  loop753_redo:
    .const 'Sub' $P707 = "122_1303857419.487" 
    capture_lex $P707
    $P707()
  loop753_next:
    goto loop753_test
  loop753_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P755, exception, 'type'
    eq $P755, .CONTROL_LOOP_NEXT, loop753_next
    eq $P755, .CONTROL_LOOP_REDO, loop753_redo
  loop753_done:
    pop_eh 
    find_lex $P756, "$result"
    unless_null $P756, vivify_514
    new $P756, "Undef"
  vivify_514:
.annotate 'line', 868
    .return ($P756)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block706"  :anon :subid("122_1303857419.487") :outer("121_1303857419.487")
.annotate 'line', 874
    new $P708, "Undef"
    .lex "$char", $P708
.annotate 'line', 876
    new $P709, "Undef"
    .lex "$digitval", $P709
.annotate 'line', 874
    find_lex $P710, "$src"
    unless_null $P710, vivify_500
    new $P710, "Undef"
  vivify_500:
    set $S711, $P710
    find_lex $P712, "$i"
    unless_null $P712, vivify_501
    new $P712, "Undef"
  vivify_501:
    set $I713, $P712
    substr $S714, $S711, $I713, 1
    new $P715, 'String'
    set $P715, $S714
    store_lex "$char", $P715
.annotate 'line', 875
    find_lex $P717, "$char"
    unless_null $P717, vivify_502
    new $P717, "Undef"
  vivify_502:
    set $S718, $P717
    iseq $I719, $S718, "_"
    unless $I719, if_716_end
    set $I720, .CONTROL_LOOP_NEXT
    die 0, $I720
  if_716_end:
.annotate 'line', 876
    find_lex $P721, "$char"
    unless_null $P721, vivify_503
    new $P721, "Undef"
  vivify_503:
    set $S722, $P721
    index $I723, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S722
    new $P724, 'Integer'
    set $P724, $I723
    store_lex "$digitval", $P724
.annotate 'line', 877
    find_lex $P725, "$digitval"
    unless_null $P725, vivify_504
    new $P725, "Undef"
  vivify_504:
    div $P726, $P725, 2
    set $I727, $P726
    new $P728, 'Integer'
    set $P728, $I727
    store_lex "$digitval", $P728
.annotate 'line', 878
    find_lex $P732, "$digitval"
    unless_null $P732, vivify_505
    new $P732, "Undef"
  vivify_505:
    set $N733, $P732
    islt $I734, $N733, 0.0
    unless $I734, unless_731
    new $P730, 'Integer'
    set $P730, $I734
    goto unless_731_end
  unless_731:
    find_lex $P735, "$digitval"
    unless_null $P735, vivify_506
    new $P735, "Undef"
  vivify_506:
    set $N736, $P735
    find_lex $P737, "$base"
    unless_null $P737, vivify_507
    new $P737, "Undef"
  vivify_507:
    set $N738, $P737
    isge $I739, $N736, $N738
    new $P730, 'Integer'
    set $P730, $I739
  unless_731_end:
    unless $P730, if_729_end
.annotate 'line', 879
    find_lex $P740, "$src"
    unless_null $P740, vivify_508
    new $P740, "Undef"
  vivify_508:
    new $P741, 'String'
    set $P741, "Invalid radix conversion of character '"
    find_lex $P742, "$char"
    unless_null $P742, vivify_509
    new $P742, "Undef"
  vivify_509:
    concat $P743, $P741, $P742
    concat $P744, $P743, "'"
    $P740."panic"($P744)
  if_729_end:
.annotate 'line', 881
    find_lex $P745, "$base"
    unless_null $P745, vivify_510
    new $P745, "Undef"
  vivify_510:
    find_lex $P746, "$result"
    unless_null $P746, vivify_511
    new $P746, "Undef"
  vivify_511:
    mul $P747, $P745, $P746
    find_lex $P748, "$digitval"
    unless_null $P748, vivify_512
    new $P748, "Undef"
  vivify_512:
    add $P749, $P747, $P748
    store_lex "$result", $P749
.annotate 'line', 882
    find_lex $P750, "$i"
    unless_null $P750, vivify_513
    new $P750, "Undef"
  vivify_513:
    add $P751, $P750, 1
    store_lex "$i", $P751
    new $P752, "ResizablePMCArray"
    push $P752, $P749
    push $P752, $P751
.annotate 'line', 873
    .return ($P752)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_762
.annotate 'line', 887
    .const 'Sub' $P768 = "124_1303857419.487" 
    capture_lex $P768
    .lex "$ints", param_762
.annotate 'line', 888
    find_lex $P765, "$ints"
    unless_null $P765, vivify_515
    new $P765, "Undef"
  vivify_515:
    does $I766, $P765, "array"
    if $I766, if_764
.annotate 'line', 895
    find_lex $P788, "$ints"
    unless_null $P788, vivify_516
    new $P788, "Undef"
  vivify_516:
    $I789 = $P788."ast"()
    chr $S790, $I789
    new $P791, 'String'
    set $P791, $S790
.annotate 'line', 894
    set $P763, $P791
.annotate 'line', 888
    goto if_764_end
  if_764:
    .const 'Sub' $P768 = "124_1303857419.487" 
    capture_lex $P768
    $P787 = $P768()
    set $P763, $P787
  if_764_end:
.annotate 'line', 887
    .return ($P763)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block767"  :anon :subid("124_1303857419.487") :outer("123_1303857419.487")
.annotate 'line', 888
    .const 'Sub' $P776 = "125_1303857419.487" 
    capture_lex $P776
.annotate 'line', 889
    new $P769, "Undef"
    .lex "$result", $P769
    new $P770, "String"
    assign $P770, ""
    store_lex "$result", $P770
.annotate 'line', 890
    find_lex $P772, "$ints"
    unless_null $P772, vivify_517
    new $P772, "Undef"
  vivify_517:
    defined $I773, $P772
    unless $I773, for_undef_518
    iter $P771, $P772
    new $P784, 'ExceptionHandler'
    set_label $P784, loop783_handler
    $P784."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P784
  loop783_test:
    unless $P771, loop783_done
    shift $P774, $P771
  loop783_redo:
    .const 'Sub' $P776 = "125_1303857419.487" 
    capture_lex $P776
    $P776($P774)
  loop783_next:
    goto loop783_test
  loop783_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P785, exception, 'type'
    eq $P785, .CONTROL_LOOP_NEXT, loop783_next
    eq $P785, .CONTROL_LOOP_REDO, loop783_redo
  loop783_done:
    pop_eh 
  for_undef_518:
    find_lex $P786, "$result"
    unless_null $P786, vivify_521
    new $P786, "Undef"
  vivify_521:
.annotate 'line', 888
    .return ($P786)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block775"  :anon :subid("125_1303857419.487") :outer("124_1303857419.487")
    .param pmc param_777
.annotate 'line', 890
    .lex "$_", param_777
.annotate 'line', 891
    find_lex $P778, "$result"
    unless_null $P778, vivify_519
    new $P778, "Undef"
  vivify_519:
    find_lex $P779, "$_"
    unless_null $P779, vivify_520
    new $P779, "Undef"
  vivify_520:
    $I780 = $P779."ast"()
    chr $S781, $I780
    concat $P782, $P778, $S781
    store_lex "$result", $P782
.annotate 'line', 890
    .return ($P782)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_801
.annotate 'line', 900
    .lex "self", param_801
.annotate 'line', 901
    get_hll_global $P802, "GLOBAL"
    nqp_get_package_through_who $P803, $P802, "PAST"
    get_who $P804, $P803
    set $P805, $P804["Op"]
.annotate 'line', 907
    new $P806, "ResizablePMCArray"
    push $P806, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P806, "    if null $P0 goto ctxsave_done"
    push $P806, "    $I0 = can $P0, \"ctxsave\""
    push $P806, "    unless $I0 goto ctxsave_done"
    push $P806, "    $P0.\"ctxsave\"()"
    push $P806, "  ctxsave_done:"
    $P807 = $P805."new"($P806 :named("inline"))
.annotate 'line', 900
    .return ($P807)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_809
    .param pmc param_810
.annotate 'line', 914
    .const 'Sub' $P822 = "128_1303857419.487" 
    capture_lex $P822
    .lex "self", param_809
    .lex "$block", param_810
.annotate 'line', 915
    new $P811, "Undef"
    .lex "$outer_ctx", $P811
    find_dynamic_lex $P814, "%*COMPILING"
    unless_null $P814, vivify_522
    get_hll_global $P812, "GLOBAL"
    get_who $P813, $P812
    set $P814, $P813["%COMPILING"]
    unless_null $P814, vivify_523
    die "Contextual %*COMPILING not found"
  vivify_523:
  vivify_522:
    set $P815, $P814["%?OPTIONS"]
    unless_null $P815, vivify_524
    $P815 = root_new ['parrot';'Hash']
  vivify_524:
    set $P816, $P815["outer_ctx"]
    unless_null $P816, vivify_525
    new $P816, "Undef"
  vivify_525:
    store_lex "$outer_ctx", $P816
.annotate 'line', 916
    find_lex $P819, "$outer_ctx"
    unless_null $P819, vivify_526
    new $P819, "Undef"
  vivify_526:
    defined $I820, $P819
    if $I820, if_818
    new $P817, 'Integer'
    set $P817, $I820
    goto if_818_end
  if_818:
    .const 'Sub' $P822 = "128_1303857419.487" 
    capture_lex $P822
    $P847 = $P822()
    set $P817, $P847
  if_818_end:
.annotate 'line', 914
    .return ($P817)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block821"  :anon :subid("128_1303857419.487") :outer("127_1303857419.487")
.annotate 'line', 916
    .const 'Sub' $P836 = "129_1303857419.487" 
    capture_lex $P836
.annotate 'line', 917
    $P823 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P823
    find_lex $P824, "$outer_ctx"
    unless_null $P824, vivify_527
    new $P824, "Undef"
  vivify_527:
    getattribute $P825, $P824, "current_namespace"
    $P826 = $P825."get_name"()
    store_lex "@ns", $P826
.annotate 'line', 918
    find_lex $P827, "@ns"
    unless_null $P827, vivify_528
    $P827 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    $P827."shift"()
.annotate 'line', 919
    find_lex $P828, "$block"
    unless_null $P828, vivify_529
    new $P828, "Undef"
  vivify_529:
    find_lex $P829, "@ns"
    unless_null $P829, vivify_530
    $P829 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    $P828."namespace"($P829)
.annotate 'line', 920
    find_lex $P831, "$outer_ctx"
    unless_null $P831, vivify_531
    new $P831, "Undef"
  vivify_531:
    $P832 = $P831."lexpad_full"()
    defined $I833, $P832
    unless $I833, for_undef_532
    iter $P830, $P832
    new $P845, 'ExceptionHandler'
    set_label $P845, loop844_handler
    $P845."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P845
  loop844_test:
    unless $P830, loop844_done
    shift $P834, $P830
  loop844_redo:
    .const 'Sub' $P836 = "129_1303857419.487" 
    capture_lex $P836
    $P836($P834)
  loop844_next:
    goto loop844_test
  loop844_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P846, exception, 'type'
    eq $P846, .CONTROL_LOOP_NEXT, loop844_next
    eq $P846, .CONTROL_LOOP_REDO, loop844_redo
  loop844_done:
    pop_eh 
  for_undef_532:
.annotate 'line', 916
    .return ($P830)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block835"  :anon :subid("129_1303857419.487") :outer("128_1303857419.487")
    .param pmc param_837
.annotate 'line', 920
    .lex "$_", param_837
.annotate 'line', 921
    find_lex $P838, "$block"
    unless_null $P838, vivify_533
    new $P838, "Undef"
  vivify_533:
    find_lex $P839, "$_"
    unless_null $P839, vivify_534
    new $P839, "Undef"
  vivify_534:
    $P840 = $P839."key"()
    find_lex $P841, "$_"
    unless_null $P841, vivify_535
    new $P841, "Undef"
  vivify_535:
    $P842 = $P841."value"()
    $P843 = $P838."symbol"($P840, "lexical" :named("scope"), $P842 :named("value"))
.annotate 'line', 920
    .return ($P843)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_851
    .param pmc param_852
    .param pmc param_853 :optional
    .param int has_param_853 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P938 = "132_1303857419.487" 
    capture_lex $P938
    .const 'Sub' $P902 = "131_1303857419.487" 
    capture_lex $P902
    new $P850, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P850, control_849
    push_eh $P850
    .lex "self", param_851
    .lex "$/", param_852
    if has_param_853, optparam_536
    new $P854, "Undef"
    set param_853, $P854
  optparam_536:
    .lex "$key", param_853
.annotate 'line', 929
    new $P855, "Undef"
    .lex "$past", $P855
.annotate 'line', 928
    find_lex $P857, "$key"
    unless_null $P857, vivify_537
    new $P857, "Undef"
  vivify_537:
    if $P857, unless_856_end
    new $P858, "Exception"
    set $P858['type'], .CONTROL_RETURN
    new $P859, "Integer"
    assign $P859, 0
    setattribute $P858, 'payload', $P859
    throw $P858
  unless_856_end:
.annotate 'line', 929
    find_lex $P861, "$/"
    unless_null $P861, vivify_538
    new $P861, "Undef"
  vivify_538:
    $P862 = $P861."ast"()
    set $P860, $P862
    defined $I864, $P860
    if $I864, default_863
    find_lex $P865, "$/"
    unless_null $P865, vivify_539
    $P865 = root_new ['parrot';'Hash']
  vivify_539:
    set $P866, $P865["OPER"]
    unless_null $P866, vivify_540
    new $P866, "Undef"
  vivify_540:
    $P867 = $P866."ast"()
    set $P860, $P867
  default_863:
    store_lex "$past", $P860
.annotate 'line', 930
    find_lex $P869, "$past"
    unless_null $P869, vivify_541
    new $P869, "Undef"
  vivify_541:
    if $P869, unless_868_end
.annotate 'line', 931
    get_hll_global $P870, "GLOBAL"
    nqp_get_package_through_who $P871, $P870, "PAST"
    get_who $P872, $P871
    set $P873, $P872["Op"]
    find_lex $P874, "$/"
    unless_null $P874, vivify_542
    new $P874, "Undef"
  vivify_542:
    $P875 = $P873."new"($P874 :named("node"))
    store_lex "$past", $P875
.annotate 'line', 932
    find_lex $P877, "$/"
    unless_null $P877, vivify_543
    $P877 = root_new ['parrot';'Hash']
  vivify_543:
    set $P878, $P877["OPER"]
    unless_null $P878, vivify_544
    $P878 = root_new ['parrot';'Hash']
  vivify_544:
    set $P879, $P878["O"]
    unless_null $P879, vivify_545
    $P879 = root_new ['parrot';'Hash']
  vivify_545:
    set $P880, $P879["pasttype"]
    unless_null $P880, vivify_546
    new $P880, "Undef"
  vivify_546:
    if $P880, if_876
.annotate 'line', 933
    find_lex $P888, "$/"
    unless_null $P888, vivify_547
    $P888 = root_new ['parrot';'Hash']
  vivify_547:
    set $P889, $P888["OPER"]
    unless_null $P889, vivify_548
    $P889 = root_new ['parrot';'Hash']
  vivify_548:
    set $P890, $P889["O"]
    unless_null $P890, vivify_549
    $P890 = root_new ['parrot';'Hash']
  vivify_549:
    set $P891, $P890["pirop"]
    unless_null $P891, vivify_550
    new $P891, "Undef"
  vivify_550:
    unless $P891, if_887_end
    find_lex $P892, "$past"
    unless_null $P892, vivify_551
    new $P892, "Undef"
  vivify_551:
    find_lex $P893, "$/"
    unless_null $P893, vivify_552
    $P893 = root_new ['parrot';'Hash']
  vivify_552:
    set $P894, $P893["OPER"]
    unless_null $P894, vivify_553
    $P894 = root_new ['parrot';'Hash']
  vivify_553:
    set $P895, $P894["O"]
    unless_null $P895, vivify_554
    $P895 = root_new ['parrot';'Hash']
  vivify_554:
    set $P896, $P895["pirop"]
    unless_null $P896, vivify_555
    new $P896, "Undef"
  vivify_555:
    set $S897, $P896
    $P892."pirop"($S897)
  if_887_end:
    goto if_876_end
  if_876:
.annotate 'line', 932
    find_lex $P881, "$past"
    unless_null $P881, vivify_556
    new $P881, "Undef"
  vivify_556:
    find_lex $P882, "$/"
    unless_null $P882, vivify_557
    $P882 = root_new ['parrot';'Hash']
  vivify_557:
    set $P883, $P882["OPER"]
    unless_null $P883, vivify_558
    $P883 = root_new ['parrot';'Hash']
  vivify_558:
    set $P884, $P883["O"]
    unless_null $P884, vivify_559
    $P884 = root_new ['parrot';'Hash']
  vivify_559:
    set $P885, $P884["pasttype"]
    unless_null $P885, vivify_560
    new $P885, "Undef"
  vivify_560:
    set $S886, $P885
    $P881."pasttype"($S886)
  if_876_end:
.annotate 'line', 934
    find_lex $P899, "$past"
    unless_null $P899, vivify_561
    new $P899, "Undef"
  vivify_561:
    $P900 = $P899."name"()
    if $P900, unless_898_end
    .const 'Sub' $P902 = "131_1303857419.487" 
    capture_lex $P902
    $P902()
  unless_898_end:
  unless_868_end:
.annotate 'line', 940
    find_lex $P925, "$key"
    unless_null $P925, vivify_569
    new $P925, "Undef"
  vivify_569:
    set $S926, $P925
    iseq $I927, $S926, "POSTFIX"
    if $I927, if_924
.annotate 'line', 942
    find_lex $P933, "$/"
    unless_null $P933, vivify_570
    new $P933, "Undef"
  vivify_570:
    $P934 = $P933."list"()
    defined $I935, $P934
    unless $I935, for_undef_571
    iter $P932, $P934
    new $P950, 'ExceptionHandler'
    set_label $P950, loop949_handler
    $P950."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P950
  loop949_test:
    unless $P932, loop949_done
    shift $P936, $P932
  loop949_redo:
    .const 'Sub' $P938 = "132_1303857419.487" 
    capture_lex $P938
    $P938($P936)
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
  for_undef_571:
.annotate 'line', 941
    goto if_924_end
  if_924:
.annotate 'line', 940
    find_lex $P928, "$past"
    unless_null $P928, vivify_575
    new $P928, "Undef"
  vivify_575:
    find_lex $P929, "$/"
    unless_null $P929, vivify_576
    $P929 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    set $P930, $P929[0]
    unless_null $P930, vivify_577
    new $P930, "Undef"
  vivify_577:
    $P931 = $P930."ast"()
    $P928."unshift"($P931)
  if_924_end:
.annotate 'line', 944
    find_lex $P952, "$/"
    find_lex $P953, "$past"
    unless_null $P953, vivify_578
    new $P953, "Undef"
  vivify_578:
    $P954 = $P952."!make"($P953)
.annotate 'line', 927
    .return ($P954)
  control_849:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P955, exception, "payload"
    .return ($P955)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block901"  :anon :subid("131_1303857419.487") :outer("130_1303857419.487")
.annotate 'line', 936
    new $P903, "Undef"
    .lex "$name", $P903
.annotate 'line', 935
    find_lex $P905, "$key"
    unless_null $P905, vivify_562
    new $P905, "Undef"
  vivify_562:
    set $S906, $P905
    iseq $I907, $S906, "LIST"
    unless $I907, if_904_end
    new $P908, "String"
    assign $P908, "infix"
    store_lex "$key", $P908
  if_904_end:
.annotate 'line', 936
    find_lex $P909, "$key"
    unless_null $P909, vivify_563
    new $P909, "Undef"
  vivify_563:
    set $S910, $P909
    downcase $S911, $S910
    new $P912, 'String'
    set $P912, $S911
    concat $P913, $P912, ":<"
    find_lex $P914, "$/"
    unless_null $P914, vivify_564
    $P914 = root_new ['parrot';'Hash']
  vivify_564:
    set $P915, $P914["OPER"]
    unless_null $P915, vivify_565
    $P915 = root_new ['parrot';'Hash']
  vivify_565:
    set $P916, $P915["sym"]
    unless_null $P916, vivify_566
    new $P916, "Undef"
  vivify_566:
    concat $P917, $P913, $P916
    concat $P918, $P917, ">"
    store_lex "$name", $P918
.annotate 'line', 937
    find_lex $P919, "$past"
    unless_null $P919, vivify_567
    new $P919, "Undef"
  vivify_567:
    new $P920, "String"
    assign $P920, "&"
    find_lex $P921, "$name"
    unless_null $P921, vivify_568
    new $P921, "Undef"
  vivify_568:
    concat $P922, $P920, $P921
    $P923 = $P919."name"($P922)
.annotate 'line', 934
    .return ($P923)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block937"  :anon :subid("132_1303857419.487") :outer("130_1303857419.487")
    .param pmc param_939
.annotate 'line', 942
    .lex "$_", param_939
    find_lex $P942, "$_"
    unless_null $P942, vivify_572
    new $P942, "Undef"
  vivify_572:
    $P943 = $P942."ast"()
    defined $I944, $P943
    if $I944, if_941
    new $P940, 'Integer'
    set $P940, $I944
    goto if_941_end
  if_941:
    find_lex $P945, "$past"
    unless_null $P945, vivify_573
    new $P945, "Undef"
  vivify_573:
    find_lex $P946, "$_"
    unless_null $P946, vivify_574
    new $P946, "Undef"
  vivify_574:
    $P947 = $P946."ast"()
    $P948 = $P945."push"($P947)
    set $P940, $P948
  if_941_end:
    .return ($P940)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_957
    .param pmc param_958
.annotate 'line', 947
    .lex "self", param_957
    .lex "$/", param_958
    find_lex $P959, "$/"
    find_lex $P960, "$/"
    unless_null $P960, vivify_579
    $P960 = root_new ['parrot';'Hash']
  vivify_579:
    set $P961, $P960["circumfix"]
    unless_null $P961, vivify_580
    new $P961, "Undef"
  vivify_580:
    $P962 = $P961."ast"()
    $P963 = $P959."!make"($P962)
    .return ($P963)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_965
    .param pmc param_966
.annotate 'line', 949
    .lex "self", param_965
    .lex "$/", param_966
    find_lex $P967, "$/"
    find_lex $P968, "$/"
    unless_null $P968, vivify_581
    $P968 = root_new ['parrot';'Hash']
  vivify_581:
    set $P969, $P968["term"]
    unless_null $P969, vivify_582
    new $P969, "Undef"
  vivify_582:
    $P970 = $P969."ast"()
    $P971 = $P967."!make"($P970)
    .return ($P971)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_973
    .param pmc param_974
.annotate 'line', 950
    .lex "self", param_973
    .lex "$/", param_974
    find_lex $P975, "$/"
    new $P976, "Undef"
    $P977 = $P975."!make"($P976)
    .return ($P977)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 951
    .lex "self", param_979
    .lex "$/", param_980
    find_lex $P981, "$/"
    find_lex $P982, "$/"
    unless_null $P982, vivify_583
    $P982 = root_new ['parrot';'Hash']
  vivify_583:
    set $P983, $P982["term"]
    unless_null $P983, vivify_584
    new $P983, "Undef"
  vivify_584:
    $P984 = $P983."ast"()
    $P985 = $P981."!make"($P984)
    .return ($P985)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_987
    .param pmc param_988
.annotate 'line', 953
    .lex "self", param_987
    .lex "$/", param_988
    find_lex $P989, "$/"
    find_lex $P990, "$/"
    unless_null $P990, vivify_585
    $P990 = root_new ['parrot';'Hash']
  vivify_585:
    set $P991, $P990["VALUE"]
    unless_null $P991, vivify_586
    new $P991, "Undef"
  vivify_586:
    $P992 = $P991."ast"()
    $P993 = $P989."!make"($P992)
    .return ($P993)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_995
    .param pmc param_996
.annotate 'line', 955
    .lex "self", param_995
    .lex "$/", param_996
    find_lex $P997, "$/"
    find_lex $P998, "$/"
    unless_null $P998, vivify_587
    new $P998, "Undef"
  vivify_587:
    set $N999, $P998
    $P1000 = $P997."!make"($N999)
    .return ($P1000)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1002
    .param pmc param_1003
.annotate 'line', 957
    .lex "self", param_1002
    .lex "$/", param_1003
    find_lex $P1004, "$/"
    find_lex $P1005, "$/"
    unless_null $P1005, vivify_588
    new $P1005, "Undef"
  vivify_588:
    $P1006 = "string_to_int"($P1005, 10)
    $P1007 = $P1004."!make"($P1006)
    .return ($P1007)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1009
    .param pmc param_1010
.annotate 'line', 958
    .lex "self", param_1009
    .lex "$/", param_1010
    find_lex $P1011, "$/"
    find_lex $P1012, "$/"
    unless_null $P1012, vivify_589
    new $P1012, "Undef"
  vivify_589:
    $P1013 = "string_to_int"($P1012, 16)
    $P1014 = $P1011."!make"($P1013)
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 959
    .lex "self", param_1016
    .lex "$/", param_1017
    find_lex $P1018, "$/"
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_590
    new $P1019, "Undef"
  vivify_590:
    $P1020 = "string_to_int"($P1019, 8)
    $P1021 = $P1018."!make"($P1020)
    .return ($P1021)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1023
    .param pmc param_1024
.annotate 'line', 960
    .lex "self", param_1023
    .lex "$/", param_1024
    find_lex $P1025, "$/"
    find_lex $P1026, "$/"
    unless_null $P1026, vivify_591
    new $P1026, "Undef"
  vivify_591:
    $P1027 = "string_to_int"($P1026, 2)
    $P1028 = $P1025."!make"($P1027)
    .return ($P1028)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1030
    .param pmc param_1031
.annotate 'line', 962
    .const 'Sub' $P1050 = "144_1303857419.487" 
    capture_lex $P1050
    .lex "self", param_1030
    .lex "$/", param_1031
.annotate 'line', 963
    new $P1032, "Undef"
    .lex "$past", $P1032
    find_lex $P1033, "$/"
    unless_null $P1033, vivify_592
    $P1033 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1034, $P1033["quote_delimited"]
    unless_null $P1034, vivify_593
    new $P1034, "Undef"
  vivify_593:
    $P1035 = $P1034."ast"()
    store_lex "$past", $P1035
.annotate 'line', 964
    find_lex $P1037, "$/"
    unless_null $P1037, vivify_594
    new $P1037, "Undef"
  vivify_594:
    $P1038 = $P1037."CURSOR"()
    $P1039 = $P1038."quotemod_check"("w")
    unless $P1039, if_1036_end
.annotate 'line', 965
    get_hll_global $P1041, "GLOBAL"
    nqp_get_package_through_who $P1042, $P1041, "PAST"
    get_who $P1043, $P1042
    set $P1044, $P1043["Node"]
    find_lex $P1045, "$past"
    unless_null $P1045, vivify_595
    new $P1045, "Undef"
  vivify_595:
    $P1046 = $P1044."ACCEPTS"($P1045)
    if $P1046, if_1040
.annotate 'line', 968
    .const 'Sub' $P1050 = "144_1303857419.487" 
    capture_lex $P1050
    $P1050()
    goto if_1040_end
  if_1040:
.annotate 'line', 966
    find_lex $P1047, "$/"
    unless_null $P1047, vivify_606
    new $P1047, "Undef"
  vivify_606:
    $P1048 = $P1047."CURSOR"()
    $P1048."panic"("Can't form :w list from non-constant strings (yet)")
  if_1040_end:
  if_1036_end:
.annotate 'line', 979
    get_hll_global $P1089, "GLOBAL"
    nqp_get_package_through_who $P1090, $P1089, "PAST"
    get_who $P1091, $P1090
    set $P1092, $P1091["Node"]
    find_lex $P1093, "$past"
    unless_null $P1093, vivify_607
    new $P1093, "Undef"
  vivify_607:
    $P1094 = $P1092."ACCEPTS"($P1093)
    isfalse $I1095, $P1094
    unless $I1095, if_1088_end
.annotate 'line', 980
    get_hll_global $P1096, "GLOBAL"
    nqp_get_package_through_who $P1097, $P1096, "PAST"
    get_who $P1098, $P1097
    set $P1099, $P1098["Val"]
    find_lex $P1100, "$past"
    unless_null $P1100, vivify_608
    new $P1100, "Undef"
  vivify_608:
    set $S1101, $P1100
    $P1102 = $P1099."new"($S1101 :named("value"))
    store_lex "$past", $P1102
  if_1088_end:
.annotate 'line', 982
    find_lex $P1103, "$/"
    find_lex $P1104, "$past"
    unless_null $P1104, vivify_609
    new $P1104, "Undef"
  vivify_609:
    $P1105 = $P1103."!make"($P1104)
.annotate 'line', 962
    .return ($P1105)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1049"  :anon :subid("144_1303857419.487") :outer("143_1303857419.487")
.annotate 'line', 968
    .const 'Sub' $P1076 = "145_1303857419.487" 
    capture_lex $P1076
.annotate 'line', 969
    $P1051 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1051
    get_hll_global $P1052, "GLOBAL"
    nqp_get_package_through_who $P1053, $P1052, "HLL"
    nqp_get_package_through_who $P1054, $P1053, "Grammar"
    get_who $P1055, $P1054
    set $P1056, $P1055["split_words"]
    find_lex $P1057, "$/"
    unless_null $P1057, vivify_596
    new $P1057, "Undef"
  vivify_596:
    find_lex $P1058, "$past"
    unless_null $P1058, vivify_597
    new $P1058, "Undef"
  vivify_597:
    $P1059 = $P1056($P1057, $P1058)
    store_lex "@words", $P1059
.annotate 'line', 970
    find_lex $P1062, "@words"
    unless_null $P1062, vivify_598
    $P1062 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    set $N1063, $P1062
    isne $I1064, $N1063, 1.0
    if $I1064, if_1061
.annotate 'line', 975
    find_lex $P1084, "@words"
    unless_null $P1084, vivify_599
    $P1084 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    set $P1085, $P1084[0]
    unless_null $P1085, vivify_600
    new $P1085, "Undef"
  vivify_600:
    set $S1086, $P1085
    new $P1087, 'String'
    set $P1087, $S1086
    store_lex "$past", $P1087
.annotate 'line', 974
    set $P1060, $P1087
.annotate 'line', 970
    goto if_1061_end
  if_1061:
.annotate 'line', 971
    get_hll_global $P1065, "GLOBAL"
    nqp_get_package_through_who $P1066, $P1065, "PAST"
    get_who $P1067, $P1066
    set $P1068, $P1067["Op"]
    find_lex $P1069, "$/"
    unless_null $P1069, vivify_601
    new $P1069, "Undef"
  vivify_601:
    $P1070 = $P1068."new"("list" :named("pasttype"), $P1069 :named("node"))
    store_lex "$past", $P1070
.annotate 'line', 972
    find_lex $P1072, "@words"
    unless_null $P1072, vivify_602
    $P1072 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    defined $I1073, $P1072
    unless $I1073, for_undef_603
    iter $P1071, $P1072
    new $P1082, 'ExceptionHandler'
    set_label $P1082, loop1081_handler
    $P1082."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1082
  loop1081_test:
    unless $P1071, loop1081_done
    shift $P1074, $P1071
  loop1081_redo:
    .const 'Sub' $P1076 = "145_1303857419.487" 
    capture_lex $P1076
    $P1076($P1074)
  loop1081_next:
    goto loop1081_test
  loop1081_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1083, exception, 'type'
    eq $P1083, .CONTROL_LOOP_NEXT, loop1081_next
    eq $P1083, .CONTROL_LOOP_REDO, loop1081_redo
  loop1081_done:
    pop_eh 
  for_undef_603:
.annotate 'line', 970
    set $P1060, $P1071
  if_1061_end:
.annotate 'line', 968
    .return ($P1060)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1075"  :anon :subid("145_1303857419.487") :outer("144_1303857419.487")
    .param pmc param_1077
.annotate 'line', 972
    .lex "$_", param_1077
    find_lex $P1078, "$past"
    unless_null $P1078, vivify_604
    new $P1078, "Undef"
  vivify_604:
    find_lex $P1079, "$_"
    unless_null $P1079, vivify_605
    new $P1079, "Undef"
  vivify_605:
    $P1080 = $P1078."push"($P1079)
    .return ($P1080)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1107
    .param pmc param_1108
.annotate 'line', 985
    .const 'Sub' $P1120 = "147_1303857419.487" 
    capture_lex $P1120
    .lex "self", param_1107
    .lex "$/", param_1108
.annotate 'line', 986
    $P1109 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1109
.annotate 'line', 987
    new $P1110, "Undef"
    .lex "$lastlit", $P1110
.annotate 'line', 1003
    new $P1111, "Undef"
    .lex "$past", $P1111
.annotate 'line', 985
    find_lex $P1112, "@parts"
    unless_null $P1112, vivify_610
    $P1112 = root_new ['parrot';'ResizablePMCArray']
  vivify_610:
.annotate 'line', 987
    new $P1113, "String"
    assign $P1113, ""
    store_lex "$lastlit", $P1113
.annotate 'line', 988
    find_lex $P1115, "$/"
    unless_null $P1115, vivify_611
    $P1115 = root_new ['parrot';'Hash']
  vivify_611:
    set $P1116, $P1115["quote_atom"]
    unless_null $P1116, vivify_612
    new $P1116, "Undef"
  vivify_612:
    defined $I1117, $P1116
    unless $I1117, for_undef_613
    iter $P1114, $P1116
    new $P1159, 'ExceptionHandler'
    set_label $P1159, loop1158_handler
    $P1159."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1159
  loop1158_test:
    unless $P1114, loop1158_done
    shift $P1118, $P1114
  loop1158_redo:
    .const 'Sub' $P1120 = "147_1303857419.487" 
    capture_lex $P1120
    $P1120($P1118)
  loop1158_next:
    goto loop1158_test
  loop1158_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1160, exception, 'type'
    eq $P1160, .CONTROL_LOOP_NEXT, loop1158_next
    eq $P1160, .CONTROL_LOOP_REDO, loop1158_redo
  loop1158_done:
    pop_eh 
  for_undef_613:
.annotate 'line', 1002
    find_lex $P1162, "$lastlit"
    unless_null $P1162, vivify_626
    new $P1162, "Undef"
  vivify_626:
    set $S1163, $P1162
    isgt $I1164, $S1163, ""
    unless $I1164, if_1161_end
    find_lex $P1165, "@parts"
    unless_null $P1165, vivify_627
    $P1165 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    find_lex $P1166, "$lastlit"
    unless_null $P1166, vivify_628
    new $P1166, "Undef"
  vivify_628:
    $P1165."push"($P1166)
  if_1161_end:
.annotate 'line', 1003
    find_lex $P1169, "@parts"
    unless_null $P1169, vivify_629
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    if $P1169, if_1168
    new $P1172, "String"
    assign $P1172, ""
    set $P1167, $P1172
    goto if_1168_end
  if_1168:
    find_lex $P1170, "@parts"
    unless_null $P1170, vivify_630
    $P1170 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    $P1171 = $P1170."shift"()
    set $P1167, $P1171
  if_1168_end:
    store_lex "$past", $P1167
.annotate 'line', 1004
    new $P1183, 'ExceptionHandler'
    set_label $P1183, loop1182_handler
    $P1183."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1183
  loop1182_test:
    find_lex $P1173, "@parts"
    unless_null $P1173, vivify_631
    $P1173 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    unless $P1173, loop1182_done
  loop1182_redo:
.annotate 'line', 1005
    get_hll_global $P1174, "GLOBAL"
    nqp_get_package_through_who $P1175, $P1174, "PAST"
    get_who $P1176, $P1175
    set $P1177, $P1176["Op"]
    find_lex $P1178, "$past"
    unless_null $P1178, vivify_632
    new $P1178, "Undef"
  vivify_632:
    find_lex $P1179, "@parts"
    unless_null $P1179, vivify_633
    $P1179 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    $P1180 = $P1179."shift"()
    $P1181 = $P1177."new"($P1178, $P1180, "concat" :named("pirop"))
    store_lex "$past", $P1181
  loop1182_next:
.annotate 'line', 1004
    goto loop1182_test
  loop1182_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1184, exception, 'type'
    eq $P1184, .CONTROL_LOOP_NEXT, loop1182_next
    eq $P1184, .CONTROL_LOOP_REDO, loop1182_redo
  loop1182_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P1185, "$/"
    find_lex $P1186, "$past"
    unless_null $P1186, vivify_634
    new $P1186, "Undef"
  vivify_634:
    $P1187 = $P1185."!make"($P1186)
.annotate 'line', 985
    .return ($P1187)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1119"  :anon :subid("147_1303857419.487") :outer("146_1303857419.487")
    .param pmc param_1122
.annotate 'line', 989
    new $P1121, "Undef"
    .lex "$ast", $P1121
    .lex "$_", param_1122
    find_lex $P1123, "$_"
    unless_null $P1123, vivify_614
    new $P1123, "Undef"
  vivify_614:
    $P1124 = $P1123."ast"()
    store_lex "$ast", $P1124
.annotate 'line', 990
    get_hll_global $P1127, "GLOBAL"
    nqp_get_package_through_who $P1128, $P1127, "PAST"
    get_who $P1129, $P1128
    set $P1130, $P1129["Node"]
    find_lex $P1131, "$ast"
    unless_null $P1131, vivify_615
    new $P1131, "Undef"
  vivify_615:
    $P1132 = $P1130."ACCEPTS"($P1131)
    isfalse $I1133, $P1132
    if $I1133, if_1126
.annotate 'line', 993
    find_lex $P1139, "$ast"
    unless_null $P1139, vivify_616
    new $P1139, "Undef"
  vivify_616:
    get_hll_global $P1140, "GLOBAL"
    nqp_get_package_through_who $P1141, $P1140, "PAST"
    get_who $P1142, $P1141
    set $P1143, $P1142["Val"]
    $P1144 = $P1139."isa"($P1143)
    if $P1144, if_1138
.annotate 'line', 997
    find_lex $P1150, "$lastlit"
    unless_null $P1150, vivify_617
    new $P1150, "Undef"
  vivify_617:
    set $S1151, $P1150
    isgt $I1152, $S1151, ""
    unless $I1152, if_1149_end
    find_lex $P1153, "@parts"
    unless_null $P1153, vivify_618
    $P1153 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    find_lex $P1154, "$lastlit"
    unless_null $P1154, vivify_619
    new $P1154, "Undef"
  vivify_619:
    $P1153."push"($P1154)
  if_1149_end:
.annotate 'line', 998
    find_lex $P1155, "@parts"
    unless_null $P1155, vivify_620
    $P1155 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    find_lex $P1156, "$ast"
    unless_null $P1156, vivify_621
    new $P1156, "Undef"
  vivify_621:
    $P1155."push"($P1156)
.annotate 'line', 999
    new $P1157, "String"
    assign $P1157, ""
    store_lex "$lastlit", $P1157
.annotate 'line', 996
    set $P1137, $P1157
.annotate 'line', 993
    goto if_1138_end
  if_1138:
.annotate 'line', 994
    find_lex $P1145, "$lastlit"
    unless_null $P1145, vivify_622
    new $P1145, "Undef"
  vivify_622:
    find_lex $P1146, "$ast"
    unless_null $P1146, vivify_623
    new $P1146, "Undef"
  vivify_623:
    $S1147 = $P1146."value"()
    concat $P1148, $P1145, $S1147
    store_lex "$lastlit", $P1148
.annotate 'line', 993
    set $P1137, $P1148
  if_1138_end:
    set $P1125, $P1137
.annotate 'line', 990
    goto if_1126_end
  if_1126:
.annotate 'line', 991
    find_lex $P1134, "$lastlit"
    unless_null $P1134, vivify_624
    new $P1134, "Undef"
  vivify_624:
    find_lex $P1135, "$ast"
    unless_null $P1135, vivify_625
    new $P1135, "Undef"
  vivify_625:
    concat $P1136, $P1134, $P1135
    store_lex "$lastlit", $P1136
.annotate 'line', 990
    set $P1125, $P1136
  if_1126_end:
.annotate 'line', 988
    .return ($P1125)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1189
    .param pmc param_1190
.annotate 'line', 1010
    .lex "self", param_1189
    .lex "$/", param_1190
.annotate 'line', 1011
    find_lex $P1191, "$/"
    find_lex $P1194, "$/"
    unless_null $P1194, vivify_635
    $P1194 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1195, $P1194["quote_escape"]
    unless_null $P1195, vivify_636
    new $P1195, "Undef"
  vivify_636:
    if $P1195, if_1193
    find_lex $P1199, "$/"
    unless_null $P1199, vivify_637
    new $P1199, "Undef"
  vivify_637:
    set $S1200, $P1199
    new $P1192, 'String'
    set $P1192, $S1200
    goto if_1193_end
  if_1193:
    find_lex $P1196, "$/"
    unless_null $P1196, vivify_638
    $P1196 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1197, $P1196["quote_escape"]
    unless_null $P1197, vivify_639
    new $P1197, "Undef"
  vivify_639:
    $P1198 = $P1197."ast"()
    set $P1192, $P1198
  if_1193_end:
    $P1201 = $P1191."!make"($P1192)
.annotate 'line', 1010
    .return ($P1201)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1203
    .param pmc param_1204
.annotate 'line', 1014
    .lex "self", param_1203
    .lex "$/", param_1204
    find_lex $P1205, "$/"
    $P1206 = $P1205."!make"("\\")
    .return ($P1206)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1208
    .param pmc param_1209
.annotate 'line', 1015
    .lex "self", param_1208
    .lex "$/", param_1209
    find_lex $P1210, "$/"
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_640
    $P1211 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1212, $P1211["stopper"]
    unless_null $P1212, vivify_641
    new $P1212, "Undef"
  vivify_641:
    set $S1213, $P1212
    $P1214 = $P1210."!make"($S1213)
    .return ($P1214)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1216
    .param pmc param_1217
.annotate 'line', 1017
    .lex "self", param_1216
    .lex "$/", param_1217
    find_lex $P1218, "$/"
    $P1219 = $P1218."!make"("\b")
    .return ($P1219)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1221
    .param pmc param_1222
.annotate 'line', 1018
    .lex "self", param_1221
    .lex "$/", param_1222
    find_lex $P1223, "$/"
    $P1224 = $P1223."!make"("\n")
    .return ($P1224)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1226
    .param pmc param_1227
.annotate 'line', 1019
    .lex "self", param_1226
    .lex "$/", param_1227
    find_lex $P1228, "$/"
    $P1229 = $P1228."!make"("\r")
    .return ($P1229)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1231
    .param pmc param_1232
.annotate 'line', 1020
    .lex "self", param_1231
    .lex "$/", param_1232
    find_lex $P1233, "$/"
    $P1234 = $P1233."!make"("\t")
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1236
    .param pmc param_1237
.annotate 'line', 1021
    .lex "self", param_1236
    .lex "$/", param_1237
    find_lex $P1238, "$/"
    $P1239 = $P1238."!make"("\f")
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1241
    .param pmc param_1242
.annotate 'line', 1022
    .lex "self", param_1241
    .lex "$/", param_1242
    find_lex $P1243, "$/"
    $P1244 = $P1243."!make"("\e")
    .return ($P1244)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1246
    .param pmc param_1247
.annotate 'line', 1024
    .lex "self", param_1246
    .lex "$/", param_1247
.annotate 'line', 1025
    find_lex $P1248, "$/"
    find_lex $P1251, "$/"
    unless_null $P1251, vivify_642
    $P1251 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1252, $P1251["hexint"]
    unless_null $P1252, vivify_643
    new $P1252, "Undef"
  vivify_643:
    if $P1252, if_1250
    find_lex $P1255, "$/"
    unless_null $P1255, vivify_644
    $P1255 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1256, $P1255["hexints"]
    unless_null $P1256, vivify_645
    $P1256 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1257, $P1256["hexint"]
    unless_null $P1257, vivify_646
    new $P1257, "Undef"
  vivify_646:
    set $P1249, $P1257
    goto if_1250_end
  if_1250:
    find_lex $P1253, "$/"
    unless_null $P1253, vivify_647
    $P1253 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1254, $P1253["hexint"]
    unless_null $P1254, vivify_648
    new $P1254, "Undef"
  vivify_648:
    set $P1249, $P1254
  if_1250_end:
    $P1258 = "ints_to_string"($P1249)
    $P1259 = $P1248."!make"($P1258)
.annotate 'line', 1024
    .return ($P1259)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1261
    .param pmc param_1262
.annotate 'line', 1028
    .lex "self", param_1261
    .lex "$/", param_1262
.annotate 'line', 1029
    find_lex $P1263, "$/"
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_649
    $P1266 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1267, $P1266["octint"]
    unless_null $P1267, vivify_650
    new $P1267, "Undef"
  vivify_650:
    if $P1267, if_1265
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_651
    $P1270 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1271, $P1270["octints"]
    unless_null $P1271, vivify_652
    $P1271 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1272, $P1271["octint"]
    unless_null $P1272, vivify_653
    new $P1272, "Undef"
  vivify_653:
    set $P1264, $P1272
    goto if_1265_end
  if_1265:
    find_lex $P1268, "$/"
    unless_null $P1268, vivify_654
    $P1268 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1269, $P1268["octint"]
    unless_null $P1269, vivify_655
    new $P1269, "Undef"
  vivify_655:
    set $P1264, $P1269
  if_1265_end:
    $P1273 = "ints_to_string"($P1264)
    $P1274 = $P1263."!make"($P1273)
.annotate 'line', 1028
    .return ($P1274)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1276
    .param pmc param_1277
.annotate 'line', 1032
    .lex "self", param_1276
    .lex "$/", param_1277
.annotate 'line', 1033
    find_lex $P1278, "$/"
    find_lex $P1279, "$/"
    unless_null $P1279, vivify_656
    $P1279 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1280, $P1279["charspec"]
    unless_null $P1280, vivify_657
    new $P1280, "Undef"
  vivify_657:
    $P1281 = $P1280."ast"()
    $P1282 = $P1278."!make"($P1281)
.annotate 'line', 1032
    .return ($P1282)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1284
    .param pmc param_1285
.annotate 'line', 1036
    .lex "self", param_1284
    .lex "$/", param_1285
.annotate 'line', 1037
    find_lex $P1286, "$/"
    $P1287 = $P1286."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1287)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1289
    .param pmc param_1290
.annotate 'line', 1040
    .lex "self", param_1289
    .lex "$/", param_1290
.annotate 'line', 1041
    find_lex $P1291, "$/"
    find_lex $P1294, "$/"
    unless_null $P1294, vivify_658
    $P1294 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1295, $P1294["textq"]
    unless_null $P1295, vivify_659
    new $P1295, "Undef"
  vivify_659:
    if $P1295, if_1293
    find_lex $P1301, "$/"
    unless_null $P1301, vivify_660
    $P1301 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1302, $P1301["textqq"]
    unless_null $P1302, vivify_661
    new $P1302, "Undef"
  vivify_661:
    $P1303 = $P1302."Str"()
    set $P1292, $P1303
    goto if_1293_end
  if_1293:
    new $P1296, "String"
    assign $P1296, "\\"
    find_lex $P1297, "$/"
    unless_null $P1297, vivify_662
    $P1297 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1298, $P1297["textq"]
    unless_null $P1298, vivify_663
    new $P1298, "Undef"
  vivify_663:
    $S1299 = $P1298."Str"()
    concat $P1300, $P1296, $S1299
    set $P1292, $P1300
  if_1293_end:
    $P1304 = $P1291."!make"($P1292)
.annotate 'line', 1040
    .return ($P1304)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1306
    .param pmc param_1307
.annotate 'line', 1044
    .lex "self", param_1306
    .lex "$/", param_1307
.annotate 'line', 1045
    new $P1308, "Undef"
    .lex "$codepoint", $P1308
.annotate 'line', 1046
    find_lex $P1311, "$/"
    unless_null $P1311, vivify_664
    $P1311 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1312, $P1311["integer"]
    unless_null $P1312, vivify_665
    new $P1312, "Undef"
  vivify_665:
    if $P1312, if_1310
.annotate 'line', 1047
    find_lex $P1316, "$/"
    unless_null $P1316, vivify_666
    new $P1316, "Undef"
  vivify_666:
    set $S1317, $P1316
    find_codepoint $I1318, $S1317
    new $P1309, 'Integer'
    set $P1309, $I1318
.annotate 'line', 1046
    goto if_1310_end
  if_1310:
    find_lex $P1313, "$/"
    unless_null $P1313, vivify_667
    $P1313 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1314, $P1313["integer"]
    unless_null $P1314, vivify_668
    new $P1314, "Undef"
  vivify_668:
    $P1315 = $P1314."ast"()
    set $P1309, $P1315
  if_1310_end:
    store_lex "$codepoint", $P1309
.annotate 'line', 1048
    find_lex $P1320, "$codepoint"
    unless_null $P1320, vivify_669
    new $P1320, "Undef"
  vivify_669:
    set $N1321, $P1320
    islt $I1322, $N1321, 0.0
    unless $I1322, if_1319_end
    find_lex $P1323, "$/"
    unless_null $P1323, vivify_670
    new $P1323, "Undef"
  vivify_670:
    $P1324 = $P1323."CURSOR"()
    new $P1325, 'String'
    set $P1325, "Unrecognized character name "
    find_lex $P1326, "$/"
    unless_null $P1326, vivify_671
    new $P1326, "Undef"
  vivify_671:
    concat $P1327, $P1325, $P1326
    $P1324."panic"($P1327)
  if_1319_end:
.annotate 'line', 1049
    find_lex $P1328, "$/"
    find_lex $P1329, "$codepoint"
    unless_null $P1329, vivify_672
    new $P1329, "Undef"
  vivify_672:
    set $I1330, $P1329
    chr $S1331, $I1330
    $P1332 = $P1328."!make"($S1331)
.annotate 'line', 1044
    .return ($P1332)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1334
    .param pmc param_1335
.annotate 'line', 1052
    .const 'Sub' $P1344 = "164_1303857419.487" 
    capture_lex $P1344
    .lex "self", param_1334
    .lex "$/", param_1335
.annotate 'line', 1053
    new $P1336, "Undef"
    .lex "$str", $P1336
    new $P1337, "String"
    assign $P1337, ""
    store_lex "$str", $P1337
.annotate 'line', 1054
    find_lex $P1339, "$/"
    unless_null $P1339, vivify_673
    $P1339 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1340, $P1339["charname"]
    unless_null $P1340, vivify_674
    new $P1340, "Undef"
  vivify_674:
    defined $I1341, $P1340
    unless $I1341, for_undef_675
    iter $P1338, $P1340
    new $P1351, 'ExceptionHandler'
    set_label $P1351, loop1350_handler
    $P1351."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1351
  loop1350_test:
    unless $P1338, loop1350_done
    shift $P1342, $P1338
  loop1350_redo:
    .const 'Sub' $P1344 = "164_1303857419.487" 
    capture_lex $P1344
    $P1344($P1342)
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
  for_undef_675:
.annotate 'line', 1055
    find_lex $P1353, "$/"
    find_lex $P1354, "$str"
    unless_null $P1354, vivify_678
    new $P1354, "Undef"
  vivify_678:
    $P1355 = $P1353."!make"($P1354)
.annotate 'line', 1052
    .return ($P1355)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1343"  :anon :subid("164_1303857419.487") :outer("163_1303857419.487")
    .param pmc param_1345
.annotate 'line', 1054
    .lex "$_", param_1345
    find_lex $P1346, "$str"
    unless_null $P1346, vivify_676
    new $P1346, "Undef"
  vivify_676:
    find_lex $P1347, "$_"
    unless_null $P1347, vivify_677
    new $P1347, "Undef"
  vivify_677:
    $S1348 = $P1347."ast"()
    concat $P1349, $P1346, $S1348
    store_lex "$str", $P1349
    .return ($P1349)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303857419.487") :outer("120_1303857419.487")
    .param pmc param_1357
    .param pmc param_1358
.annotate 'line', 1058
    .lex "self", param_1357
    .lex "$/", param_1358
.annotate 'line', 1059
    find_lex $P1359, "$/"
    find_lex $P1362, "$/"
    unless_null $P1362, vivify_679
    $P1362 = root_new ['parrot';'Hash']
  vivify_679:
    set $P1363, $P1362["charnames"]
    unless_null $P1363, vivify_680
    new $P1363, "Undef"
  vivify_680:
    if $P1363, if_1361
    find_lex $P1367, "$/"
    unless_null $P1367, vivify_681
    new $P1367, "Undef"
  vivify_681:
    $I1368 = "string_to_int"($P1367, 10)
    chr $S1369, $I1368
    new $P1360, 'String'
    set $P1360, $S1369
    goto if_1361_end
  if_1361:
    find_lex $P1364, "$/"
    unless_null $P1364, vivify_682
    $P1364 = root_new ['parrot';'Hash']
  vivify_682:
    set $P1365, $P1364["charnames"]
    unless_null $P1365, vivify_683
    new $P1365, "Undef"
  vivify_683:
    $P1366 = $P1365."ast"()
    set $P1360, $P1366
  if_1361_end:
    $P1370 = $P1359."!make"($P1360)
.annotate 'line', 1058
    .return ($P1370)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1441"  :subid("167_1303857419.487") :outer("10_1303857419.487")
.annotate 'line', 1072
    .const 'Sub' $P2610 = "233_1303857419.487" 
    capture_lex $P2610
    .const 'Sub' $P2602 = "232_1303857419.487" 
    capture_lex $P2602
    .const 'Sub' $P2549 = "230_1303857419.487" 
    capture_lex $P2549
    .const 'Sub' $P2476 = "227_1303857419.487" 
    capture_lex $P2476
    .const 'Sub' $P2446 = "225_1303857419.487" 
    capture_lex $P2446
    .const 'Sub' $P2441 = "224_1303857419.487" 
    capture_lex $P2441
    .const 'Sub' $P2431 = "223_1303857419.487" 
    capture_lex $P2431
    .const 'Sub' $P2402 = "221_1303857419.487" 
    capture_lex $P2402
    .const 'Sub' $P2393 = "220_1303857419.487" 
    capture_lex $P2393
    .const 'Sub' $P2385 = "219_1303857419.487" 
    capture_lex $P2385
    .const 'Sub' $P2377 = "218_1303857419.487" 
    capture_lex $P2377
    .const 'Sub' $P2373 = "217_1303857419.487" 
    capture_lex $P2373
    .const 'Sub' $P2369 = "216_1303857419.487" 
    capture_lex $P2369
    .const 'Sub' $P2300 = "214_1303857419.487" 
    capture_lex $P2300
    .const 'Sub' $P2204 = "210_1303857419.487" 
    capture_lex $P2204
    .const 'Sub' $P2164 = "207_1303857419.487" 
    capture_lex $P2164
    .const 'Sub' $P2116 = "205_1303857419.487" 
    capture_lex $P2116
    .const 'Sub' $P2103 = "204_1303857419.487" 
    capture_lex $P2103
    .const 'Sub' $P2090 = "203_1303857419.487" 
    capture_lex $P2090
    .const 'Sub' $P2077 = "202_1303857419.487" 
    capture_lex $P2077
    .const 'Sub' $P2064 = "201_1303857419.487" 
    capture_lex $P2064
    .const 'Sub' $P2051 = "200_1303857419.487" 
    capture_lex $P2051
    .const 'Sub' $P2038 = "199_1303857419.487" 
    capture_lex $P2038
    .const 'Sub' $P2025 = "198_1303857419.487" 
    capture_lex $P2025
    .const 'Sub' $P2012 = "197_1303857419.487" 
    capture_lex $P2012
    .const 'Sub' $P2007 = "196_1303857419.487" 
    capture_lex $P2007
    .const 'Sub' $P2003 = "195_1303857419.487" 
    capture_lex $P2003
    .const 'Sub' $P1963 = "193_1303857419.487" 
    capture_lex $P1963
    .const 'Sub' $P1804 = "186_1303857419.487" 
    capture_lex $P1804
    .const 'Sub' $P1789 = "185_1303857419.487" 
    capture_lex $P1789
    .const 'Sub' $P1696 = "180_1303857419.487" 
    capture_lex $P1696
    .const 'Sub' $P1663 = "178_1303857419.487" 
    capture_lex $P1663
    .const 'Sub' $P1648 = "177_1303857419.487" 
    capture_lex $P1648
    .const 'Sub' $P1633 = "176_1303857419.487" 
    capture_lex $P1633
    .const 'Sub' $P1546 = "173_1303857419.487" 
    capture_lex $P1546
    .const 'Sub' $P1487 = "171_1303857419.487" 
    capture_lex $P1487
    .const 'Sub' $P1480 = "170_1303857419.487" 
    capture_lex $P1480
    .const 'Sub' $P1460 = "169_1303857419.487" 
    capture_lex $P1460
    .const 'Sub' $P1443 = "168_1303857419.487" 
    capture_lex $P1443
.annotate 'line', 1132
    .const 'Sub' $P1443 = "168_1303857419.487" 
    newclosure $P1456, $P1443
    .lex "value_type", $P1456
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1457
    .lex "$?CLASS", $P1458
.annotate 'line', 1094
    .const 'Sub' $P1460 = "169_1303857419.487" 
    capture_lex $P1460
    $P1460()
.annotate 'line', 1072
    find_lex $P1474, "$?PACKAGE"
    get_who $P1475, $P1474
    set $P1476, $P1475["$interactive_ctx"]
    unless_null $P1476, vivify_691
    new $P1476, "Undef"
  vivify_691:
    find_lex $P1477, "$?PACKAGE"
    get_who $P1478, $P1477
    set $P1479, $P1478["%interactive_pad"]
    unless_null $P1479, vivify_692
    $P1479 = root_new ['parrot';'Hash']
  vivify_692:
.annotate 'line', 1112
    find_lex $P1545, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2602 = "232_1303857419.487" 
    newclosure $P2608, $P2602
.annotate 'line', 1072
    .return ($P2608)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post684") :outer("167_1303857419.487")
.annotate 'line', 1072
    .const 'Sub' $P1442 = "167_1303857419.487" 
    .local pmc block
    set block, $P1442
    .const 'Sub' $P2610 = "233_1303857419.487" 
    capture_lex $P2610
    $P2610()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2609"  :anon :subid("233_1303857419.487") :outer("167_1303857419.487")
.annotate 'line', 1072
    nqp_get_sc_object $P2611, "1303857411.111", 3
    .local pmc type_obj
    set type_obj, $P2611
    get_how $P2612, type_obj
    get_hll_global $P2613, "NQPAttribute"
    $P2614 = $P2613."new"("@!stages" :named("name"))
    $P2612."add_attribute"(type_obj, $P2614)
    get_how $P2615, type_obj
    get_hll_global $P2616, "NQPAttribute"
    $P2617 = $P2616."new"("$!parsegrammar" :named("name"))
    $P2615."add_attribute"(type_obj, $P2617)
    get_how $P2618, type_obj
    get_hll_global $P2619, "NQPAttribute"
    $P2620 = $P2619."new"("$!parseactions" :named("name"))
    $P2618."add_attribute"(type_obj, $P2620)
    get_how $P2621, type_obj
    get_hll_global $P2622, "NQPAttribute"
    $P2623 = $P2622."new"("$!astgrammar" :named("name"))
    $P2621."add_attribute"(type_obj, $P2623)
    get_how $P2624, type_obj
    get_hll_global $P2625, "NQPAttribute"
    $P2626 = $P2625."new"("$!commandline_banner" :named("name"))
    $P2624."add_attribute"(type_obj, $P2626)
    get_how $P2627, type_obj
    get_hll_global $P2628, "NQPAttribute"
    $P2629 = $P2628."new"("$!commandline_prompt" :named("name"))
    $P2627."add_attribute"(type_obj, $P2629)
    get_how $P2630, type_obj
    get_hll_global $P2631, "NQPAttribute"
    $P2632 = $P2631."new"("@!cmdoptions" :named("name"))
    $P2630."add_attribute"(type_obj, $P2632)
    get_how $P2633, type_obj
    get_hll_global $P2634, "NQPAttribute"
    $P2635 = $P2634."new"("$!usage" :named("name"))
    $P2633."add_attribute"(type_obj, $P2635)
    get_how $P2636, type_obj
    get_hll_global $P2637, "NQPAttribute"
    $P2638 = $P2637."new"("$!version" :named("name"))
    $P2636."add_attribute"(type_obj, $P2638)
    get_how $P2639, type_obj
    get_hll_global $P2640, "NQPAttribute"
    $P2641 = $P2640."new"("$!compiler_progname" :named("name"))
    $P2639."add_attribute"(type_obj, $P2641)
    get_how $P2642, type_obj
    get_hll_global $P2643, "NQPAttribute"
    $P2644 = $P2643."new"("$!language" :named("name"))
    $P2642."add_attribute"(type_obj, $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "170_1303857419.487" 
    $P2645."add_method"(type_obj, "new", $P2646)
    get_how $P2647, type_obj
    .const 'Sub' $P2648 = "171_1303857419.487" 
    $P2647."add_method"(type_obj, "BUILD", $P2648)
    get_how $P2649, type_obj
    .const 'Sub' $P2650 = "173_1303857419.487" 
    $P2649."add_method"(type_obj, "get_exports", $P2650)
    get_how $P2651, type_obj
    .const 'Sub' $P2652 = "176_1303857419.487" 
    $P2651."add_method"(type_obj, "get_module", $P2652)
    get_how $P2653, type_obj
    .const 'Sub' $P2654 = "177_1303857419.487" 
    $P2653."add_method"(type_obj, "language", $P2654)
    get_how $P2655, type_obj
    .const 'Sub' $P2656 = "178_1303857419.487" 
    $P2655."add_method"(type_obj, "load_module", $P2656)
    get_how $P2657, type_obj
    .const 'Sub' $P2658 = "180_1303857419.487" 
    $P2657."add_method"(type_obj, "import", $P2658)
    get_how $P2659, type_obj
    .const 'Sub' $P2660 = "185_1303857419.487" 
    $P2659."add_method"(type_obj, "autoprint", $P2660)
    get_how $P2661, type_obj
    .const 'Sub' $P2662 = "186_1303857419.487" 
    $P2661."add_method"(type_obj, "interactive", $P2662)
    get_how $P2663, type_obj
    .const 'Sub' $P2664 = "193_1303857419.487" 
    $P2663."add_method"(type_obj, "eval", $P2664)
    get_how $P2665, type_obj
    .const 'Sub' $P2666 = "195_1303857419.487" 
    $P2665."add_method"(type_obj, "ctxsave", $P2666)
    get_how $P2667, type_obj
    .const 'Sub' $P2668 = "196_1303857419.487" 
    $P2667."add_method"(type_obj, "panic", $P2668)
    get_how $P2669, type_obj
    .const 'Sub' $P2670 = "197_1303857419.487" 
    $P2669."add_method"(type_obj, "stages", $P2670)
    get_how $P2671, type_obj
    .const 'Sub' $P2672 = "198_1303857419.487" 
    $P2671."add_method"(type_obj, "parsegrammar", $P2672)
    get_how $P2673, type_obj
    .const 'Sub' $P2674 = "199_1303857419.487" 
    $P2673."add_method"(type_obj, "parseactions", $P2674)
    get_how $P2675, type_obj
    .const 'Sub' $P2676 = "200_1303857419.487" 
    $P2675."add_method"(type_obj, "astgrammar", $P2676)
    get_how $P2677, type_obj
    .const 'Sub' $P2678 = "201_1303857419.487" 
    $P2677."add_method"(type_obj, "commandline_banner", $P2678)
    get_how $P2679, type_obj
    .const 'Sub' $P2680 = "202_1303857419.487" 
    $P2679."add_method"(type_obj, "commandline_prompt", $P2680)
    get_how $P2681, type_obj
    .const 'Sub' $P2682 = "203_1303857419.487" 
    $P2681."add_method"(type_obj, "compiler_progname", $P2682)
    get_how $P2683, type_obj
    .const 'Sub' $P2684 = "204_1303857419.487" 
    $P2683."add_method"(type_obj, "commandline_options", $P2684)
    get_how $P2685, type_obj
    .const 'Sub' $P2686 = "205_1303857419.487" 
    $P2685."add_method"(type_obj, "command_line", $P2686)
    get_how $P2687, type_obj
    .const 'Sub' $P2688 = "207_1303857419.487" 
    $P2687."add_method"(type_obj, "process_args", $P2688)
    get_how $P2689, type_obj
    .const 'Sub' $P2690 = "210_1303857419.487" 
    $P2689."add_method"(type_obj, "evalfiles", $P2690)
    get_how $P2691, type_obj
    .const 'Sub' $P2692 = "214_1303857419.487" 
    $P2691."add_method"(type_obj, "compile", $P2692)
    get_how $P2693, type_obj
    .const 'Sub' $P2694 = "216_1303857419.487" 
    $P2693."add_method"(type_obj, "parse", $P2694)
    get_how $P2695, type_obj
    .const 'Sub' $P2696 = "217_1303857419.487" 
    $P2695."add_method"(type_obj, "past", $P2696)
    get_how $P2697, type_obj
    .const 'Sub' $P2698 = "218_1303857419.487" 
    $P2697."add_method"(type_obj, "post", $P2698)
    get_how $P2699, type_obj
    .const 'Sub' $P2700 = "219_1303857419.487" 
    $P2699."add_method"(type_obj, "pir", $P2700)
    get_how $P2701, type_obj
    .const 'Sub' $P2702 = "220_1303857419.487" 
    $P2701."add_method"(type_obj, "evalpmc", $P2702)
    get_how $P2703, type_obj
    .const 'Sub' $P2704 = "221_1303857419.487" 
    $P2703."add_method"(type_obj, "dumper", $P2704)
    get_how $P2705, type_obj
    .const 'Sub' $P2706 = "223_1303857419.487" 
    $P2705."add_method"(type_obj, "usage", $P2706)
    get_how $P2707, type_obj
    .const 'Sub' $P2708 = "224_1303857419.487" 
    $P2707."add_method"(type_obj, "version", $P2708)
    get_how $P2709, type_obj
    .const 'Sub' $P2710 = "225_1303857419.487" 
    $P2709."add_method"(type_obj, "removestage", $P2710)
    get_how $P2711, type_obj
    .const 'Sub' $P2712 = "227_1303857419.487" 
    $P2711."add_method"(type_obj, "addstage", $P2712)
    get_how $P2713, type_obj
    .const 'Sub' $P2714 = "230_1303857419.487" 
    $P2713."add_method"(type_obj, "parse_name", $P2714)
    get_how $P2715, type_obj
    .const 'Sub' $P2716 = "232_1303857419.487" 
    $P2715."add_method"(type_obj, "lineof", $P2716)
    get_how $P2717, type_obj
    $P2718 = $P2717."compose"(type_obj)
    .return ($P2718)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1444
.annotate 'line', 1132
    .lex "$value", param_1444
.annotate 'line', 1133
    find_lex $P1447, "$value"
    unless_null $P1447, vivify_685
    new $P1447, "Undef"
  vivify_685:
    isa $I1448, $P1447, "NameSpace"
    if $I1448, if_1446
.annotate 'line', 1135
    find_lex $P1452, "$value"
    unless_null $P1452, vivify_686
    new $P1452, "Undef"
  vivify_686:
    isa $I1453, $P1452, "Sub"
    if $I1453, if_1451
    new $P1455, "String"
    assign $P1455, "var"
    set $P1450, $P1455
    goto if_1451_end
  if_1451:
    new $P1454, "String"
    assign $P1454, "sub"
    set $P1450, $P1454
  if_1451_end:
    set $P1445, $P1450
.annotate 'line', 1133
    goto if_1446_end
  if_1446:
    new $P1449, "String"
    assign $P1449, "namespace"
    set $P1445, $P1449
  if_1446_end:
.annotate 'line', 1132
    .return ($P1445)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1459"  :anon :subid("169_1303857419.487") :outer("167_1303857419.487")
.annotate 'line', 1099
    $P1461 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1461
.annotate 'line', 1096
    getinterp $P1462
    set $P1463, $P1462["context"]
    unless_null $P1463, vivify_687
    new $P1463, "Undef"
  vivify_687:
    find_lex $P1464, "$?PACKAGE"
    get_who $P1465, $P1464
    set $P1465["$interactive_ctx"], $P1463
    find_lex $P1466, "%pad_contents"
    unless_null $P1466, vivify_688
    $P1466 = root_new ['parrot';'Hash']
  vivify_688:
.annotate 'line', 1101
    find_lex $P1467, "$?PACKAGE"
    get_who $P1468, $P1467
    set $P1469, $P1468["$interactive_ctx"]
    unless_null $P1469, vivify_689
    new $P1469, "Undef"
  vivify_689:
    getattribute $P1470, $P1469, "lex_pad"
    find_lex $P1471, "%pad_contents"
    unless_null $P1471, vivify_690
    $P1471 = root_new ['parrot';'Hash']
  vivify_690:
    copy $P1470, $P1471
.annotate 'line', 1100
    find_lex $P1472, "$?PACKAGE"
    get_who $P1473, $P1472
    set $P1473["%interactive_pad"], $P1470
.annotate 'line', 1094
    .return ($P1470)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1481
.annotate 'line', 1106
    .lex "self", param_1481
.annotate 'line', 1107
    new $P1482, "Undef"
    .lex "$obj", $P1482
    find_lex $P1483, "self"
    repr_instance_of $P1484, $P1483
    store_lex "$obj", $P1484
.annotate 'line', 1108
    find_lex $P1485, "$obj"
    unless_null $P1485, vivify_693
    new $P1485, "Undef"
  vivify_693:
    $P1485."BUILD"()
    find_lex $P1486, "$obj"
    unless_null $P1486, vivify_694
    new $P1486, "Undef"
  vivify_694:
.annotate 'line', 1106
    .return ($P1486)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1488
.annotate 'line', 1112
    .const 'Sub' $P1509 = "172_1303857419.487" 
    capture_lex $P1509
    .lex "self", param_1488
.annotate 'line', 1122
    new $P1489, "Undef"
    .lex "$config_hash_idx", $P1489
.annotate 'line', 1126
    $P1490 = root_new ['parrot';'Hash']
    .lex "%config", $P1490
.annotate 'line', 1127
    new $P1491, "Undef"
    .lex "$version", $P1491
.annotate 'line', 1128
    new $P1492, "Undef"
    .lex "$revision", $P1492
.annotate 'line', 1114
    split $P1493, " ", "parse past post pir evalpmc"
    find_lex $P1494, "self"
    find_lex $P1495, "$?CLASS"
    setattribute $P1494, $P1495, "@!stages", $P1493
.annotate 'line', 1117
    split $P1496, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1497, "self"
    find_lex $P1498, "$?CLASS"
    setattribute $P1497, $P1498, "@!cmdoptions", $P1496
.annotate 'line', 1118
    new $P1499, "String"
    assign $P1499, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1500, "self"
    find_lex $P1501, "$?CLASS"
    setattribute $P1500, $P1501, "$!usage", $P1499
.annotate 'line', 1119
    find_lex $P1503, "self"
    find_lex $P1504, "$?CLASS"
    getattribute $P1505, $P1503, $P1504, "@!cmdoptions"
    unless_null $P1505, vivify_695
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    defined $I1506, $P1505
    unless $I1506, for_undef_696
    iter $P1502, $P1505
    new $P1522, 'ExceptionHandler'
    set_label $P1522, loop1521_handler
    $P1522."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1522
  loop1521_test:
    unless $P1502, loop1521_done
    shift $P1507, $P1502
  loop1521_redo:
    .const 'Sub' $P1509 = "172_1303857419.487" 
    capture_lex $P1509
    $P1509($P1507)
  loop1521_next:
    goto loop1521_test
  loop1521_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1523, exception, 'type'
    eq $P1523, .CONTROL_LOOP_NEXT, loop1521_next
    eq $P1523, .CONTROL_LOOP_REDO, loop1521_redo
  loop1521_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1524 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1524
.annotate 'line', 1126
    find_lex $P1525, "$config_hash_idx"
    unless_null $P1525, vivify_699
    new $P1525, "Undef"
  vivify_699:
    set $I1526, $P1525
    getinterp $P1527
    set $P1528, $P1527[$I1526]
    unless_null $P1528, vivify_700
    new $P1528, "Undef"
  vivify_700:
    store_lex "%config", $P1528
.annotate 'line', 1127
    find_lex $P1529, "%config"
    unless_null $P1529, vivify_701
    $P1529 = root_new ['parrot';'Hash']
  vivify_701:
    set $P1530, $P1529["VERSION"]
    unless_null $P1530, vivify_702
    new $P1530, "Undef"
  vivify_702:
    store_lex "$version", $P1530
.annotate 'line', 1128
    find_lex $P1532, "%config"
    unless_null $P1532, vivify_703
    $P1532 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1533, $P1532["git_describe"]
    unless_null $P1533, vivify_704
    new $P1533, "Undef"
  vivify_704:
    set $P1531, $P1533
    defined $I1535, $P1531
    if $I1535, default_1534
    new $P1536, "String"
    assign $P1536, "(unknown)"
    set $P1531, $P1536
  default_1534:
    store_lex "$revision", $P1531
.annotate 'line', 1129
    new $P1537, 'String'
    set $P1537, "This compiler is built with NQP, parrot "
    find_lex $P1538, "$version"
    unless_null $P1538, vivify_705
    new $P1538, "Undef"
  vivify_705:
    concat $P1539, $P1537, $P1538
    concat $P1540, $P1539, ", revision "
    find_lex $P1541, "$revision"
    unless_null $P1541, vivify_706
    new $P1541, "Undef"
  vivify_706:
    concat $P1542, $P1540, $P1541
    find_lex $P1543, "self"
    find_lex $P1544, "$?CLASS"
    setattribute $P1543, $P1544, "$!version", $P1542
.annotate 'line', 1112
    .return ($P1542)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1508"  :anon :subid("172_1303857419.487") :outer("171_1303857419.487")
    .param pmc param_1510
.annotate 'line', 1119
    .lex "$_", param_1510
.annotate 'line', 1120
    find_lex $P1511, "self"
    find_lex $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "$!usage"
    unless_null $P1513, vivify_697
    new $P1513, "Undef"
  vivify_697:
    new $P1514, 'String'
    set $P1514, "    "
    find_lex $P1515, "$_"
    unless_null $P1515, vivify_698
    new $P1515, "Undef"
  vivify_698:
    concat $P1516, $P1514, $P1515
    concat $P1517, $P1516, "\n"
    concat $P1518, $P1513, $P1517
    find_lex $P1519, "self"
    find_lex $P1520, "$?CLASS"
    setattribute $P1519, $P1520, "$!usage", $P1518
.annotate 'line', 1119
    .return ($P1518)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1547
    .param pmc param_1548
    .param pmc param_1551 :slurpy
    .param pmc param_1549 :optional :named("tagset")
    .param int has_param_1549 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1617 = "175_1303857419.487" 
    capture_lex $P1617
    .const 'Sub' $P1596 = "174_1303857419.487" 
    capture_lex $P1596
    .lex "self", param_1547
    .lex "$module", param_1548
    if has_param_1549, optparam_707
    new $P1550, "Undef"
    set param_1549, $P1550
  optparam_707:
    .lex "$tagset", param_1549
    .lex "@symbols", param_1551
.annotate 'line', 1145
    $P1552 = root_new ['parrot';'Hash']
    .lex "%exports", $P1552
.annotate 'line', 1146
    $P1553 = root_new ['parrot';'Hash']
    .lex "%source", $P1553
.annotate 'line', 1140
    find_lex $P1555, "$module"
    unless_null $P1555, vivify_708
    new $P1555, "Undef"
  vivify_708:
    does $I1556, $P1555, "hash"
    new $P1557, 'Integer'
    set $P1557, $I1556
    isfalse $I1558, $P1557
    unless $I1558, if_1554_end
.annotate 'line', 1141
    find_lex $P1559, "self"
    find_lex $P1560, "$module"
    unless_null $P1560, vivify_709
    new $P1560, "Undef"
  vivify_709:
    $P1561 = $P1559."get_module"($P1560)
    store_lex "$module", $P1561
  if_1554_end:
.annotate 'line', 1144
    find_lex $P1563, "$tagset"
    unless_null $P1563, vivify_710
    new $P1563, "Undef"
  vivify_710:
    set $P1562, $P1563
    defined $I1565, $P1562
    if $I1565, default_1564
    find_lex $P1568, "@symbols"
    unless_null $P1568, vivify_711
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    if $P1568, if_1567
    new $P1570, "String"
    assign $P1570, "DEFAULT"
    set $P1566, $P1570
    goto if_1567_end
  if_1567:
    new $P1569, "String"
    assign $P1569, "ALL"
    set $P1566, $P1569
  if_1567_end:
    set $P1562, $P1566
  default_1564:
    store_lex "$tagset", $P1562
    find_lex $P1571, "%exports"
    unless_null $P1571, vivify_712
    $P1571 = root_new ['parrot';'Hash']
  vivify_712:
.annotate 'line', 1146
    find_lex $P1572, "$tagset"
    unless_null $P1572, vivify_713
    new $P1572, "Undef"
  vivify_713:
    set $S1573, $P1572
    find_lex $P1574, "$module"
    unless_null $P1574, vivify_714
    $P1574 = root_new ['parrot';'Hash']
  vivify_714:
    set $P1575, $P1574["EXPORT"]
    unless_null $P1575, vivify_715
    $P1575 = root_new ['parrot';'Hash']
  vivify_715:
    set $P1576, $P1575[$S1573]
    unless_null $P1576, vivify_716
    new $P1576, "Undef"
  vivify_716:
    store_lex "%source", $P1576
.annotate 'line', 1147
    find_lex $P1578, "%source"
    unless_null $P1578, vivify_717
    $P1578 = root_new ['parrot';'Hash']
  vivify_717:
    defined $I1579, $P1578
    new $P1580, 'Integer'
    set $P1580, $I1579
    isfalse $I1581, $P1580
    unless $I1581, if_1577_end
.annotate 'line', 1148
    find_lex $P1584, "$tagset"
    unless_null $P1584, vivify_718
    new $P1584, "Undef"
  vivify_718:
    set $S1585, $P1584
    iseq $I1586, $S1585, "ALL"
    if $I1586, if_1583
    $P1588 = root_new ['parrot';'Hash']
    set $P1582, $P1588
    goto if_1583_end
  if_1583:
    find_lex $P1587, "$module"
    unless_null $P1587, vivify_719
    new $P1587, "Undef"
  vivify_719:
    set $P1582, $P1587
  if_1583_end:
    store_lex "%source", $P1582
  if_1577_end:
.annotate 'line', 1150
    find_lex $P1590, "@symbols"
    unless_null $P1590, vivify_720
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
    if $P1590, if_1589
.annotate 'line', 1157
    find_lex $P1613, "%source"
    unless_null $P1613, vivify_721
    $P1613 = root_new ['parrot';'Hash']
  vivify_721:
    defined $I1614, $P1613
    unless $I1614, for_undef_722
    iter $P1612, $P1613
    new $P1630, 'ExceptionHandler'
    set_label $P1630, loop1629_handler
    $P1630."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1630
  loop1629_test:
    unless $P1612, loop1629_done
    shift $P1615, $P1612
  loop1629_redo:
    .const 'Sub' $P1617 = "175_1303857419.487" 
    capture_lex $P1617
    $P1617($P1615)
  loop1629_next:
    goto loop1629_test
  loop1629_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1631, exception, 'type'
    eq $P1631, .CONTROL_LOOP_NEXT, loop1629_next
    eq $P1631, .CONTROL_LOOP_REDO, loop1629_redo
  loop1629_done:
    pop_eh 
  for_undef_722:
.annotate 'line', 1156
    goto if_1589_end
  if_1589:
.annotate 'line', 1151
    find_lex $P1592, "@symbols"
    unless_null $P1592, vivify_729
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
    defined $I1593, $P1592
    unless $I1593, for_undef_730
    iter $P1591, $P1592
    new $P1610, 'ExceptionHandler'
    set_label $P1610, loop1609_handler
    $P1610."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1610
  loop1609_test:
    unless $P1591, loop1609_done
    shift $P1594, $P1591
  loop1609_redo:
    .const 'Sub' $P1596 = "174_1303857419.487" 
    capture_lex $P1596
    $P1596($P1594)
  loop1609_next:
    goto loop1609_test
  loop1609_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1611, exception, 'type'
    eq $P1611, .CONTROL_LOOP_NEXT, loop1609_next
    eq $P1611, .CONTROL_LOOP_REDO, loop1609_redo
  loop1609_done:
    pop_eh 
  for_undef_730:
  if_1589_end:
.annotate 'line', 1150
    find_lex $P1632, "%exports"
    unless_null $P1632, vivify_739
    $P1632 = root_new ['parrot';'Hash']
  vivify_739:
.annotate 'line', 1138
    .return ($P1632)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1616"  :anon :subid("175_1303857419.487") :outer("173_1303857419.487")
    .param pmc param_1619
.annotate 'line', 1158
    new $P1618, "Undef"
    .lex "$value", $P1618
    .lex "$_", param_1619
    find_lex $P1620, "$_"
    unless_null $P1620, vivify_723
    new $P1620, "Undef"
  vivify_723:
    $P1621 = $P1620."value"()
    store_lex "$value", $P1621
.annotate 'line', 1159
    find_lex $P1622, "$value"
    unless_null $P1622, vivify_724
    new $P1622, "Undef"
  vivify_724:
    find_lex $P1623, "$_"
    unless_null $P1623, vivify_725
    new $P1623, "Undef"
  vivify_725:
    $P1624 = $P1623."key"()
    find_lex $P1625, "$value"
    unless_null $P1625, vivify_726
    new $P1625, "Undef"
  vivify_726:
    $P1626 = "value_type"($P1625)
    find_lex $P1627, "%exports"
    unless_null $P1627, vivify_727
    $P1627 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1627
  vivify_727:
    set $P1628, $P1627[$P1626]
    unless_null $P1628, vivify_728
    $P1628 = root_new ['parrot';'Hash']
    set $P1627[$P1626], $P1628
  vivify_728:
    set $P1628[$P1624], $P1622
.annotate 'line', 1157
    .return ($P1622)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1595"  :anon :subid("174_1303857419.487") :outer("173_1303857419.487")
    .param pmc param_1598
.annotate 'line', 1152
    new $P1597, "Undef"
    .lex "$value", $P1597
    .lex "$_", param_1598
    find_lex $P1599, "$_"
    unless_null $P1599, vivify_731
    new $P1599, "Undef"
  vivify_731:
    set $S1600, $P1599
    find_lex $P1601, "%source"
    unless_null $P1601, vivify_732
    $P1601 = root_new ['parrot';'Hash']
  vivify_732:
    set $P1602, $P1601[$S1600]
    unless_null $P1602, vivify_733
    new $P1602, "Undef"
  vivify_733:
    store_lex "$value", $P1602
.annotate 'line', 1153
    find_lex $P1603, "$value"
    unless_null $P1603, vivify_734
    new $P1603, "Undef"
  vivify_734:
    find_lex $P1604, "$_"
    unless_null $P1604, vivify_735
    new $P1604, "Undef"
  vivify_735:
    find_lex $P1605, "$value"
    unless_null $P1605, vivify_736
    new $P1605, "Undef"
  vivify_736:
    $P1606 = "value_type"($P1605)
    find_lex $P1607, "%exports"
    unless_null $P1607, vivify_737
    $P1607 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1607
  vivify_737:
    set $P1608, $P1607[$P1606]
    unless_null $P1608, vivify_738
    $P1608 = root_new ['parrot';'Hash']
    set $P1607[$P1606], $P1608
  vivify_738:
    set $P1608[$P1604], $P1603
.annotate 'line', 1151
    .return ($P1603)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1634
    .param pmc param_1635
.annotate 'line', 1165
    .lex "self", param_1634
    .lex "$name", param_1635
.annotate 'line', 1166
    $P1636 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1636
    find_lex $P1637, "self"
    find_lex $P1638, "$name"
    unless_null $P1638, vivify_740
    new $P1638, "Undef"
  vivify_740:
    $P1639 = $P1637."parse_name"($P1638)
    store_lex "@name", $P1639
.annotate 'line', 1167
    find_lex $P1640, "@name"
    unless_null $P1640, vivify_741
    $P1640 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1641, "self"
    find_lex $P1642, "$?CLASS"
    getattribute $P1643, $P1641, $P1642, "$!language"
    unless_null $P1643, vivify_742
    new $P1643, "Undef"
  vivify_742:
    set $S1644, $P1643
    downcase $S1645, $S1644
    $P1640."unshift"($S1645)
.annotate 'line', 1168
    find_lex $P1646, "@name"
    unless_null $P1646, vivify_743
    $P1646 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    get_root_namespace $P1647, $P1646
.annotate 'line', 1165
    .return ($P1647)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1649
    .param pmc param_1650 :optional
    .param int has_param_1650 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1649
    if has_param_1650, optparam_744
    new $P1651, "Undef"
    set param_1650, $P1651
  optparam_744:
    .lex "$name", param_1650
.annotate 'line', 1172
    find_lex $P1653, "$name"
    unless_null $P1653, vivify_745
    new $P1653, "Undef"
  vivify_745:
    unless $P1653, if_1652_end
.annotate 'line', 1173
    find_lex $P1654, "$name"
    unless_null $P1654, vivify_746
    new $P1654, "Undef"
  vivify_746:
    find_lex $P1655, "self"
    find_lex $P1656, "$?CLASS"
    setattribute $P1655, $P1656, "$!language", $P1654
.annotate 'line', 1174
    find_lex $P1657, "$name"
    unless_null $P1657, vivify_747
    new $P1657, "Undef"
  vivify_747:
    set $S1658, $P1657
    find_lex $P1659, "self"
    compreg $S1658, $P1659
  if_1652_end:
.annotate 'line', 1172
    find_lex $P1660, "self"
    find_lex $P1661, "$?CLASS"
    getattribute $P1662, $P1660, $P1661, "$!language"
    unless_null $P1662, vivify_748
    new $P1662, "Undef"
  vivify_748:
.annotate 'line', 1171
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1664
    .param pmc param_1665
.annotate 'line', 1179
    .const 'Sub' $P1675 = "179_1303857419.487" 
    capture_lex $P1675
    .lex "self", param_1664
    .lex "$name", param_1665
.annotate 'line', 1180
    new $P1666, "Undef"
    .lex "$base", $P1666
.annotate 'line', 1181
    new $P1667, "Undef"
    .lex "$loaded", $P1667
.annotate 'line', 1180
    find_lex $P1668, "self"
    find_lex $P1669, "$name"
    unless_null $P1669, vivify_749
    new $P1669, "Undef"
  vivify_749:
    $P1670 = $P1668."parse_name"($P1669)
    join $S1671, "/", $P1670
    new $P1672, 'String'
    set $P1672, $S1671
    store_lex "$base", $P1672
.annotate 'line', 1181
    new $P1673, "Integer"
    assign $P1673, 0
    store_lex "$loaded", $P1673
.annotate 'line', 1182
    .const 'Sub' $P1675 = "179_1303857419.487" 
    capture_lex $P1675
    $P1675()
.annotate 'line', 1183
    find_lex $P1688, "$loaded"
    unless_null $P1688, vivify_751
    new $P1688, "Undef"
  vivify_751:
    if $P1688, unless_1687_end
    find_lex $P1689, "$base"
    unless_null $P1689, vivify_752
    new $P1689, "Undef"
  vivify_752:
    concat $P1690, $P1689, ".pir"
    set $S1691, $P1690
    load_bytecode $S1691
    new $P1692, "Integer"
    assign $P1692, 1
    store_lex "$loaded", $P1692
  unless_1687_end:
.annotate 'line', 1184
    find_lex $P1693, "self"
    find_lex $P1694, "$name"
    unless_null $P1694, vivify_753
    new $P1694, "Undef"
  vivify_753:
    $P1695 = $P1693."get_module"($P1694)
.annotate 'line', 1179
    .return ($P1695)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1674"  :anon :subid("179_1303857419.487") :outer("178_1303857419.487")
.annotate 'line', 1182
    new $P1682, 'ExceptionHandler'
    set_label $P1682, control_1681
    $P1682."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1682
    find_lex $P1676, "$base"
    unless_null $P1676, vivify_750
    new $P1676, "Undef"
  vivify_750:
    concat $P1677, $P1676, ".pbc"
    set $S1678, $P1677
    load_bytecode $S1678
    new $P1679, "Integer"
    assign $P1679, 1
    store_lex "$loaded", $P1679
    pop_eh 
    goto skip_handler_1680
  control_1681:
    .local pmc exception 
    .get_results (exception) 
    new $P1685, 'Integer'
    set $P1685, 1
    set exception["handled"], $P1685
    set $I1686, exception["handled"]
    ne $I1686, 1, nothandled_1684
  handled_1683:
    .return (exception)
  nothandled_1684:
    rethrow exception
  skip_handler_1680:
    .return ($P1679)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1697
    .param pmc param_1698
    .param pmc param_1699
.annotate 'line', 1187
    .const 'Sub' $P1705 = "181_1303857419.487" 
    capture_lex $P1705
    .lex "self", param_1697
    .lex "$target", param_1698
    .lex "%exports", param_1699
.annotate 'line', 1188
    find_lex $P1701, "%exports"
    unless_null $P1701, vivify_754
    $P1701 = root_new ['parrot';'Hash']
  vivify_754:
    defined $I1702, $P1701
    unless $I1702, for_undef_755
    iter $P1700, $P1701
    new $P1787, 'ExceptionHandler'
    set_label $P1787, loop1786_handler
    $P1787."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1787
  loop1786_test:
    unless $P1700, loop1786_done
    shift $P1703, $P1700
  loop1786_redo:
    .const 'Sub' $P1705 = "181_1303857419.487" 
    capture_lex $P1705
    $P1705($P1703)
  loop1786_next:
    goto loop1786_test
  loop1786_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1788, exception, 'type'
    eq $P1788, .CONTROL_LOOP_NEXT, loop1786_next
    eq $P1788, .CONTROL_LOOP_REDO, loop1786_redo
  loop1786_done:
    pop_eh 
  for_undef_755:
.annotate 'line', 1187
    .return ($P1700)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1704"  :anon :subid("181_1303857419.487") :outer("180_1303857419.487")
    .param pmc param_1708
.annotate 'line', 1188
    .const 'Sub' $P1775 = "184_1303857419.487" 
    capture_lex $P1775
    .const 'Sub' $P1755 = "183_1303857419.487" 
    capture_lex $P1755
    .const 'Sub' $P1726 = "182_1303857419.487" 
    capture_lex $P1726
.annotate 'line', 1189
    new $P1706, "Undef"
    .lex "$type", $P1706
.annotate 'line', 1190
    $P1707 = root_new ['parrot';'Hash']
    .lex "%items", $P1707
    .lex "$_", param_1708
.annotate 'line', 1189
    find_lex $P1709, "$_"
    unless_null $P1709, vivify_756
    new $P1709, "Undef"
  vivify_756:
    $P1710 = $P1709."key"()
    store_lex "$type", $P1710
.annotate 'line', 1190
    find_lex $P1711, "$_"
    unless_null $P1711, vivify_757
    new $P1711, "Undef"
  vivify_757:
    $P1712 = $P1711."value"()
    store_lex "%items", $P1712
.annotate 'line', 1191
    find_lex $P1715, "self"
    new $P1716, 'String'
    set $P1716, "import_"
    find_lex $P1717, "$type"
    unless_null $P1717, vivify_758
    new $P1717, "Undef"
  vivify_758:
    concat $P1718, $P1716, $P1717
    set $S1719, $P1718
    can $I1720, $P1715, $S1719
    if $I1720, if_1714
.annotate 'line', 1194
    find_lex $P1744, "$target"
    unless_null $P1744, vivify_759
    new $P1744, "Undef"
  vivify_759:
    new $P1745, 'String'
    set $P1745, "add_"
    find_lex $P1746, "$type"
    unless_null $P1746, vivify_760
    new $P1746, "Undef"
  vivify_760:
    concat $P1747, $P1745, $P1746
    set $S1748, $P1747
    can $I1749, $P1744, $S1748
    if $I1749, if_1743
.annotate 'line', 1198
    find_lex $P1771, "%items"
    unless_null $P1771, vivify_761
    $P1771 = root_new ['parrot';'Hash']
  vivify_761:
    defined $I1772, $P1771
    unless $I1772, for_undef_762
    iter $P1770, $P1771
    new $P1784, 'ExceptionHandler'
    set_label $P1784, loop1783_handler
    $P1784."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1784
  loop1783_test:
    unless $P1770, loop1783_done
    shift $P1773, $P1770
  loop1783_redo:
    .const 'Sub' $P1775 = "184_1303857419.487" 
    capture_lex $P1775
    $P1775($P1773)
  loop1783_next:
    goto loop1783_test
  loop1783_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1785, exception, 'type'
    eq $P1785, .CONTROL_LOOP_NEXT, loop1783_next
    eq $P1785, .CONTROL_LOOP_REDO, loop1783_redo
  loop1783_done:
    pop_eh 
  for_undef_762:
.annotate 'line', 1197
    set $P1742, $P1770
.annotate 'line', 1194
    goto if_1743_end
  if_1743:
.annotate 'line', 1195
    find_lex $P1751, "%items"
    unless_null $P1751, vivify_766
    $P1751 = root_new ['parrot';'Hash']
  vivify_766:
    defined $I1752, $P1751
    unless $I1752, for_undef_767
    iter $P1750, $P1751
    new $P1768, 'ExceptionHandler'
    set_label $P1768, loop1767_handler
    $P1768."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1768
  loop1767_test:
    unless $P1750, loop1767_done
    shift $P1753, $P1750
  loop1767_redo:
    .const 'Sub' $P1755 = "183_1303857419.487" 
    capture_lex $P1755
    $P1755($P1753)
  loop1767_next:
    goto loop1767_test
  loop1767_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1769, exception, 'type'
    eq $P1769, .CONTROL_LOOP_NEXT, loop1767_next
    eq $P1769, .CONTROL_LOOP_REDO, loop1767_redo
  loop1767_done:
    pop_eh 
  for_undef_767:
.annotate 'line', 1194
    set $P1742, $P1750
  if_1743_end:
    set $P1713, $P1742
.annotate 'line', 1191
    goto if_1714_end
  if_1714:
.annotate 'line', 1192
    find_lex $P1722, "%items"
    unless_null $P1722, vivify_772
    $P1722 = root_new ['parrot';'Hash']
  vivify_772:
    defined $I1723, $P1722
    unless $I1723, for_undef_773
    iter $P1721, $P1722
    new $P1740, 'ExceptionHandler'
    set_label $P1740, loop1739_handler
    $P1740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1740
  loop1739_test:
    unless $P1721, loop1739_done
    shift $P1724, $P1721
  loop1739_redo:
    .const 'Sub' $P1726 = "182_1303857419.487" 
    capture_lex $P1726
    $P1726($P1724)
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
  for_undef_773:
.annotate 'line', 1191
    set $P1713, $P1721
  if_1714_end:
.annotate 'line', 1188
    .return ($P1713)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1774"  :anon :subid("184_1303857419.487") :outer("181_1303857419.487")
    .param pmc param_1776
.annotate 'line', 1198
    .lex "$_", param_1776
    find_lex $P1777, "$_"
    unless_null $P1777, vivify_763
    new $P1777, "Undef"
  vivify_763:
    $P1778 = $P1777."value"()
    find_lex $P1779, "$_"
    unless_null $P1779, vivify_764
    new $P1779, "Undef"
  vivify_764:
    $P1780 = $P1779."key"()
    set $S1781, $P1780
    find_lex $P1782, "$target"
    unless_null $P1782, vivify_765
    $P1782 = root_new ['parrot';'Hash']
    store_lex "$target", $P1782
  vivify_765:
    set $P1782[$S1781], $P1778
    .return ($P1778)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1754"  :anon :subid("183_1303857419.487") :outer("181_1303857419.487")
    .param pmc param_1756
.annotate 'line', 1195
    .lex "$_", param_1756
    find_lex $P1757, "$target"
    unless_null $P1757, vivify_768
    new $P1757, "Undef"
  vivify_768:
    find_lex $P1758, "$_"
    unless_null $P1758, vivify_769
    new $P1758, "Undef"
  vivify_769:
    $P1759 = $P1758."key"()
    find_lex $P1760, "$_"
    unless_null $P1760, vivify_770
    new $P1760, "Undef"
  vivify_770:
    $P1761 = $P1760."value"()
    new $P1762, 'String'
    set $P1762, "add_"
    find_lex $P1763, "$type"
    unless_null $P1763, vivify_771
    new $P1763, "Undef"
  vivify_771:
    concat $P1764, $P1762, $P1763
    set $S1765, $P1764
    $P1766 = $P1757.$S1765($P1759, $P1761)
    .return ($P1766)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1725"  :anon :subid("182_1303857419.487") :outer("181_1303857419.487")
    .param pmc param_1727
.annotate 'line', 1192
    .lex "$_", param_1727
    find_lex $P1728, "self"
    find_lex $P1729, "$target"
    unless_null $P1729, vivify_774
    new $P1729, "Undef"
  vivify_774:
    find_lex $P1730, "$_"
    unless_null $P1730, vivify_775
    new $P1730, "Undef"
  vivify_775:
    $P1731 = $P1730."key"()
    find_lex $P1732, "$_"
    unless_null $P1732, vivify_776
    new $P1732, "Undef"
  vivify_776:
    $P1733 = $P1732."value"()
    new $P1734, 'String'
    set $P1734, "import_"
    find_lex $P1735, "$type"
    unless_null $P1735, vivify_777
    new $P1735, "Undef"
  vivify_777:
    concat $P1736, $P1734, $P1735
    set $S1737, $P1736
    $P1738 = $P1728.$S1737($P1729, $P1731, $P1733)
    .return ($P1738)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1790
    .param pmc param_1791
.annotate 'line', 1203
    .lex "self", param_1790
    .lex "$value", param_1791
.annotate 'line', 1205
    getinterp $P1794
    $P1795 = $P1794."stdout_handle"()
    $N1796 = $P1795."tell"()
    find_dynamic_lex $P1799, "$*AUTOPRINTPOS"
    unless_null $P1799, vivify_778
    get_hll_global $P1797, "GLOBAL"
    get_who $P1798, $P1797
    set $P1799, $P1798["$AUTOPRINTPOS"]
    unless_null $P1799, vivify_779
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_779:
  vivify_778:
    set $N1800, $P1799
    isgt $I1801, $N1796, $N1800
    unless $I1801, unless_1793
    new $P1792, 'Integer'
    set $P1792, $I1801
    goto unless_1793_end
  unless_1793:
.annotate 'line', 1204
    find_lex $P1802, "$value"
    unless_null $P1802, vivify_780
    new $P1802, "Undef"
  vivify_780:
    set $S1803, $P1802
    say $S1803
  unless_1793_end:
.annotate 'line', 1203
    .return ($P1792)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1805
    .param pmc param_1806 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1838 = "187_1303857419.487" 
    capture_lex $P1838
    .lex "self", param_1805
    .lex "%adverbs", param_1806
.annotate 'line', 1209
    new $P1807, "Undef"
    .lex "$target", $P1807
.annotate 'line', 1213
    new $P1808, "Undef"
    .lex "$stdin", $P1808
.annotate 'line', 1214
    new $P1809, "Undef"
    .lex "$encoding", $P1809
.annotate 'line', 1219
    new $P1810, "Undef"
    .lex "$save_ctx", $P1810
.annotate 'line', 1209
    find_lex $P1811, "%adverbs"
    unless_null $P1811, vivify_781
    $P1811 = root_new ['parrot';'Hash']
  vivify_781:
    set $P1812, $P1811["target"]
    unless_null $P1812, vivify_782
    new $P1812, "Undef"
  vivify_782:
    set $S1813, $P1812
    downcase $S1814, $S1813
    new $P1815, 'String'
    set $P1815, $S1814
    store_lex "$target", $P1815
.annotate 'line', 1211
    getinterp $P1816
    $P1817 = $P1816."stderr_handle"()
    find_lex $P1818, "self"
    $S1819 = $P1818."commandline_banner"()
    print $P1817, $S1819
.annotate 'line', 1213
    getinterp $P1820
    $P1821 = $P1820."stdin_handle"()
    store_lex "$stdin", $P1821
.annotate 'line', 1214
    find_lex $P1822, "%adverbs"
    unless_null $P1822, vivify_783
    $P1822 = root_new ['parrot';'Hash']
  vivify_783:
    set $P1823, $P1822["encoding"]
    unless_null $P1823, vivify_784
    new $P1823, "Undef"
  vivify_784:
    set $S1824, $P1823
    new $P1825, 'String'
    set $P1825, $S1824
    store_lex "$encoding", $P1825
.annotate 'line', 1215
    find_lex $P1829, "$encoding"
    unless_null $P1829, vivify_785
    new $P1829, "Undef"
  vivify_785:
    if $P1829, if_1828
    set $P1827, $P1829
    goto if_1828_end
  if_1828:
    find_lex $P1830, "$encoding"
    unless_null $P1830, vivify_786
    new $P1830, "Undef"
  vivify_786:
    set $S1831, $P1830
    isne $I1832, $S1831, "fixed_8"
    new $P1827, 'Integer'
    set $P1827, $I1832
  if_1828_end:
    unless $P1827, if_1826_end
.annotate 'line', 1216
    find_lex $P1833, "$stdin"
    unless_null $P1833, vivify_787
    new $P1833, "Undef"
  vivify_787:
    find_lex $P1834, "$encoding"
    unless_null $P1834, vivify_788
    new $P1834, "Undef"
  vivify_788:
    $P1833."encoding"($P1834)
  if_1826_end:
.annotate 'line', 1215
    find_lex $P1835, "$save_ctx"
    unless_null $P1835, vivify_789
    new $P1835, "Undef"
  vivify_789:
.annotate 'line', 1220
    new $P1961, 'ExceptionHandler'
    set_label $P1961, loop1960_handler
    $P1961."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1961
  loop1960_test:
    new $P1836, "Integer"
    assign $P1836, 1
    unless $P1836, loop1960_done
  loop1960_redo:
    .const 'Sub' $P1838 = "187_1303857419.487" 
    capture_lex $P1838
    $P1838()
  loop1960_next:
    goto loop1960_test
  loop1960_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1962, exception, 'type'
    eq $P1962, .CONTROL_LOOP_NEXT, loop1960_next
    eq $P1962, .CONTROL_LOOP_REDO, loop1960_redo
  loop1960_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1837"  :anon :subid("187_1303857419.487") :outer("186_1303857419.487")
.annotate 'line', 1220
    .const 'Sub' $P1872 = "188_1303857419.487" 
    capture_lex $P1872
.annotate 'line', 1223
    new $P1839, "Undef"
    .lex "$prompt", $P1839
.annotate 'line', 1224
    new $P1840, "Undef"
    .lex "$code", $P1840
.annotate 'line', 1229
    new $P1841, "Undef"
    .lex "$*AUTOPRINTPOS", $P1841
.annotate 'line', 1230
    new $P1842, "Undef"
    .lex "$*CTXSAVE", $P1842
.annotate 'line', 1231
    new $P1843, "Undef"
    .lex "$*MAIN_CTX", $P1843
.annotate 'line', 1221
    find_lex $P1845, "$stdin"
    unless_null $P1845, vivify_790
    new $P1845, "Undef"
  vivify_790:
    if $P1845, unless_1844_end
    set $I1846, .CONTROL_LOOP_LAST
    die 0, $I1846
  unless_1844_end:
.annotate 'line', 1223
    find_lex $P1848, "self"
    $P1849 = $P1848."commandline_prompt"()
    set $P1847, $P1849
    defined $I1851, $P1847
    if $I1851, default_1850
    new $P1852, "String"
    assign $P1852, "> "
    set $P1847, $P1852
  default_1850:
    store_lex "$prompt", $P1847
.annotate 'line', 1224
    find_lex $P1853, "$stdin"
    unless_null $P1853, vivify_791
    new $P1853, "Undef"
  vivify_791:
    find_lex $P1854, "$prompt"
    unless_null $P1854, vivify_792
    new $P1854, "Undef"
  vivify_792:
    set $S1855, $P1854
    $P1856 = $P1853."readline_interactive"($S1855)
    store_lex "$code", $P1856
.annotate 'line', 1226
    find_lex $P1858, "$code"
    unless_null $P1858, vivify_793
    new $P1858, "Undef"
  vivify_793:
    isnull $I1859, $P1858
    unless $I1859, if_1857_end
    set $I1860, .CONTROL_LOOP_LAST
    die 0, $I1860
  if_1857_end:
.annotate 'line', 1229
    getinterp $P1861
    $P1862 = $P1861."stdout_handle"()
    $P1863 = $P1862."tell"()
    store_lex "$*AUTOPRINTPOS", $P1863
.annotate 'line', 1230
    find_lex $P1864, "self"
    store_lex "$*CTXSAVE", $P1864
    find_lex $P1867, "$*MAIN_CTX"
    unless_null $P1867, vivify_794
    get_hll_global $P1865, "GLOBAL"
    get_who $P1866, $P1865
    set $P1867, $P1866["$MAIN_CTX"]
    unless_null $P1867, vivify_795
    die "Contextual $*MAIN_CTX not found"
  vivify_795:
  vivify_794:
.annotate 'line', 1233
    find_lex $P1870, "$code"
    unless_null $P1870, vivify_796
    new $P1870, "Undef"
  vivify_796:
    if $P1870, if_1869
    set $P1868, $P1870
    goto if_1869_end
  if_1869:
    .const 'Sub' $P1872 = "188_1303857419.487" 
    capture_lex $P1872
    $P1959 = $P1872()
    set $P1868, $P1959
  if_1869_end:
.annotate 'line', 1220
    .return ($P1868)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1871"  :anon :subid("188_1303857419.487") :outer("187_1303857419.487")
.annotate 'line', 1233
    .const 'Sub' $P1907 = "191_1303857419.487" 
    capture_lex $P1907
    .const 'Sub' $P1878 = "189_1303857419.487" 
    capture_lex $P1878
.annotate 'line', 1235
    new $P1873, "Undef"
    .lex "$output", $P1873
.annotate 'line', 1234
    find_lex $P1874, "$code"
    unless_null $P1874, vivify_797
    new $P1874, "Undef"
  vivify_797:
    concat $P1875, $P1874, "\n"
    store_lex "$code", $P1875
    find_lex $P1876, "$output"
    unless_null $P1876, vivify_798
    new $P1876, "Undef"
  vivify_798:
.annotate 'line', 1236
    .const 'Sub' $P1878 = "189_1303857419.487" 
    capture_lex $P1878
    $P1878()
.annotate 'line', 1243
    find_dynamic_lex $P1904, "$*MAIN_CTX"
    unless_null $P1904, vivify_803
    get_hll_global $P1902, "GLOBAL"
    get_who $P1903, $P1902
    set $P1904, $P1903["$MAIN_CTX"]
    unless_null $P1904, vivify_804
    die "Contextual $*MAIN_CTX not found"
  vivify_804:
  vivify_803:
    defined $I1905, $P1904
    unless $I1905, if_1901_end
    .const 'Sub' $P1907 = "191_1303857419.487" 
    capture_lex $P1907
    $P1907()
  if_1901_end:
.annotate 'line', 1251
    find_lex $P1938, "$output"
    unless_null $P1938, vivify_814
    new $P1938, "Undef"
  vivify_814:
    isnull $I1939, $P1938
    unless $I1939, if_1937_end
    set $I1940, .CONTROL_LOOP_NEXT
    die 0, $I1940
  if_1937_end:
.annotate 'line', 1253
    find_lex $P1943, "$target"
    unless_null $P1943, vivify_815
    new $P1943, "Undef"
  vivify_815:
    isfalse $I1944, $P1943
    if $I1944, if_1942
.annotate 'line', 1255
    find_lex $P1950, "$target"
    unless_null $P1950, vivify_816
    new $P1950, "Undef"
  vivify_816:
    set $S1951, $P1950
    iseq $I1952, $S1951, "pir"
    if $I1952, if_1949
.annotate 'line', 1258
    find_lex $P1954, "self"
    find_lex $P1955, "$output"
    unless_null $P1955, vivify_817
    new $P1955, "Undef"
  vivify_817:
    find_lex $P1956, "$target"
    unless_null $P1956, vivify_818
    new $P1956, "Undef"
  vivify_818:
    find_lex $P1957, "%adverbs"
    unless_null $P1957, vivify_819
    $P1957 = root_new ['parrot';'Hash']
  vivify_819:
    $P1958 = $P1954."dumper"($P1955, $P1956, $P1957 :flat)
.annotate 'line', 1257
    set $P1948, $P1958
.annotate 'line', 1255
    goto if_1949_end
  if_1949:
.annotate 'line', 1256
    find_lex $P1953, "$output"
    unless_null $P1953, vivify_820
    new $P1953, "Undef"
  vivify_820:
    say $P1953
  if_1949_end:
.annotate 'line', 1255
    set $P1941, $P1948
.annotate 'line', 1253
    goto if_1942_end
  if_1942:
.annotate 'line', 1254
    find_lex $P1945, "self"
    find_lex $P1946, "$output"
    unless_null $P1946, vivify_821
    new $P1946, "Undef"
  vivify_821:
    $P1947 = $P1945."autoprint"($P1946)
.annotate 'line', 1253
    set $P1941, $P1947
  if_1942_end:
.annotate 'line', 1233
    .return ($P1941)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1877"  :anon :subid("189_1303857419.487") :outer("188_1303857419.487")
.annotate 'line', 1236
    .const 'Sub' $P1890 = "190_1303857419.487" 
    capture_lex $P1890
    new $P1886, 'ExceptionHandler'
    set_label $P1886, control_1885
    $P1886."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1886
.annotate 'line', 1237
    find_lex $P1879, "self"
    find_lex $P1880, "$code"
    unless_null $P1880, vivify_799
    new $P1880, "Undef"
  vivify_799:
    find_lex $P1881, "$save_ctx"
    unless_null $P1881, vivify_800
    new $P1881, "Undef"
  vivify_800:
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_801
    $P1882 = root_new ['parrot';'Hash']
  vivify_801:
    $P1883 = $P1879."eval"($P1880, $P1882 :flat, $P1881 :named("outer_ctx"))
    store_lex "$output", $P1883
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1884
  control_1885:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1890 = "190_1303857419.487" 
    newclosure $P1898, $P1890
    $P1898(exception)
    new $P1899, 'Integer'
    set $P1899, 1
    set exception["handled"], $P1899
    set $I1900, exception["handled"]
    ne $I1900, 1, nothandled_1888
  handled_1887:
    .return (exception)
  nothandled_1888:
    rethrow exception
  skip_handler_1884:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1889"  :anon :subid("190_1303857419.487") :outer("189_1303857419.487")
    .param pmc param_1891
.annotate 'line', 1238
    .lex "$_", param_1891
    find_lex $P1892, "$_"
    .lex "$!", $P1892
.annotate 'line', 1239
    find_lex $P1893, "$!"
    unless_null $P1893, vivify_802
    new $P1893, "Undef"
  vivify_802:
    set $S1894, $P1893
    new $P1895, 'String'
    set $P1895, $S1894
    concat $P1896, $P1895, "\n"
    print $P1896
.annotate 'line', 1240
    set $I1897, .CONTROL_LOOP_NEXT
    die 0, $I1897
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1906"  :anon :subid("191_1303857419.487") :outer("188_1303857419.487")
.annotate 'line', 1243
    .const 'Sub' $P1922 = "192_1303857419.487" 
    capture_lex $P1922
    find_lex $P1908, "$?PACKAGE"
    get_who $P1909, $P1908
    set $P1910, $P1909["$interactive_ctx"]
    unless_null $P1910, vivify_805
    new $P1910, "Undef"
  vivify_805:
    find_lex $P1911, "$?PACKAGE"
    get_who $P1912, $P1911
    set $P1913, $P1912["%interactive_pad"]
    unless_null $P1913, vivify_806
    $P1913 = root_new ['parrot';'Hash']
  vivify_806:
.annotate 'line', 1246
    find_dynamic_lex $P1917, "$*MAIN_CTX"
    unless_null $P1917, vivify_807
    get_hll_global $P1915, "GLOBAL"
    get_who $P1916, $P1915
    set $P1917, $P1916["$MAIN_CTX"]
    unless_null $P1917, vivify_808
    die "Contextual $*MAIN_CTX not found"
  vivify_808:
  vivify_807:
    $P1918 = $P1917."lexpad_full"()
    defined $I1919, $P1918
    unless $I1919, for_undef_809
    iter $P1914, $P1918
    new $P1932, 'ExceptionHandler'
    set_label $P1932, loop1931_handler
    $P1932."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1932
  loop1931_test:
    unless $P1914, loop1931_done
    shift $P1920, $P1914
  loop1931_redo:
    .const 'Sub' $P1922 = "192_1303857419.487" 
    capture_lex $P1922
    $P1922($P1920)
  loop1931_next:
    goto loop1931_test
  loop1931_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1933, exception, 'type'
    eq $P1933, .CONTROL_LOOP_NEXT, loop1931_next
    eq $P1933, .CONTROL_LOOP_REDO, loop1931_redo
  loop1931_done:
    pop_eh 
  for_undef_809:
.annotate 'line', 1249
    find_lex $P1934, "$?PACKAGE"
    get_who $P1935, $P1934
    set $P1936, $P1935["$interactive_ctx"]
    unless_null $P1936, vivify_813
    new $P1936, "Undef"
  vivify_813:
    store_lex "$save_ctx", $P1936
.annotate 'line', 1243
    .return ($P1936)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1921"  :anon :subid("192_1303857419.487") :outer("191_1303857419.487")
    .param pmc param_1923
.annotate 'line', 1246
    .lex "$_", param_1923
.annotate 'line', 1247
    find_lex $P1924, "$_"
    unless_null $P1924, vivify_810
    new $P1924, "Undef"
  vivify_810:
    $P1925 = $P1924."value"()
    find_lex $P1926, "$_"
    unless_null $P1926, vivify_811
    new $P1926, "Undef"
  vivify_811:
    $P1927 = $P1926."key"()
    find_lex $P1928, "$?PACKAGE"
    get_who $P1929, $P1928
    set $P1930, $P1929["%interactive_pad"]
    unless_null $P1930, vivify_812
    $P1930 = root_new ['parrot';'Hash']
    set $P1929["%interactive_pad"], $P1930
  vivify_812:
    set $P1930[$P1927], $P1925
.annotate 'line', 1246
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_1964
    .param pmc param_1965
    .param pmc param_1966 :slurpy
    .param pmc param_1967 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1986 = "194_1303857419.487" 
    capture_lex $P1986
    .lex "self", param_1964
    .lex "$code", param_1965
    .lex "@args", param_1966
    .lex "%adverbs", param_1967
.annotate 'line', 1265
    new $P1968, "Undef"
    .lex "$output", $P1968
.annotate 'line', 1264
    find_lex $P1969, "$output"
    unless_null $P1969, vivify_822
    new $P1969, "Undef"
  vivify_822:
.annotate 'line', 1266
    find_lex $P1970, "self"
    find_lex $P1971, "$code"
    unless_null $P1971, vivify_823
    new $P1971, "Undef"
  vivify_823:
    find_lex $P1972, "%adverbs"
    unless_null $P1972, vivify_824
    $P1972 = root_new ['parrot';'Hash']
  vivify_824:
    $P1973 = $P1970."compile"($P1971, $P1972 :flat)
    store_lex "$output", $P1973
.annotate 'line', 1268
    find_lex $P1977, "$output"
    unless_null $P1977, vivify_825
    new $P1977, "Undef"
  vivify_825:
    isa $I1978, $P1977, "String"
    new $P1979, 'Integer'
    set $P1979, $I1978
    isfalse $I1980, $P1979
    if $I1980, if_1976
    new $P1975, 'Integer'
    set $P1975, $I1980
    goto if_1976_end
  if_1976:
.annotate 'line', 1269
    find_lex $P1981, "%adverbs"
    unless_null $P1981, vivify_826
    $P1981 = root_new ['parrot';'Hash']
  vivify_826:
    set $P1982, $P1981["target"]
    unless_null $P1982, vivify_827
    new $P1982, "Undef"
  vivify_827:
    set $S1983, $P1982
    iseq $I1984, $S1983, ""
    new $P1975, 'Integer'
    set $P1975, $I1984
  if_1976_end:
    unless $P1975, if_1974_end
    .const 'Sub' $P1986 = "194_1303857419.487" 
    capture_lex $P1986
    $P1986()
  if_1974_end:
.annotate 'line', 1268
    find_lex $P2002, "$output"
    unless_null $P2002, vivify_838
    new $P2002, "Undef"
  vivify_838:
.annotate 'line', 1264
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1985"  :anon :subid("194_1303857419.487") :outer("193_1303857419.487")
.annotate 'line', 1270
    new $P1987, "Undef"
    .lex "$outer_ctx", $P1987
    find_lex $P1988, "%adverbs"
    unless_null $P1988, vivify_828
    $P1988 = root_new ['parrot';'Hash']
  vivify_828:
    set $P1989, $P1988["outer_ctx"]
    unless_null $P1989, vivify_829
    new $P1989, "Undef"
  vivify_829:
    store_lex "$outer_ctx", $P1989
.annotate 'line', 1271
    find_lex $P1991, "$outer_ctx"
    unless_null $P1991, vivify_830
    new $P1991, "Undef"
  vivify_830:
    defined $I1992, $P1991
    unless $I1992, if_1990_end
.annotate 'line', 1272
    find_lex $P1993, "$output"
    unless_null $P1993, vivify_831
    $P1993 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $P1994, $P1993[0]
    unless_null $P1994, vivify_832
    new $P1994, "Undef"
  vivify_832:
    find_lex $P1995, "$outer_ctx"
    unless_null $P1995, vivify_833
    new $P1995, "Undef"
  vivify_833:
    $P1994."set_outer_ctx"($P1995)
  if_1990_end:
.annotate 'line', 1275
    find_lex $P1996, "%adverbs"
    unless_null $P1996, vivify_834
    $P1996 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1997, $P1996["trace"]
    unless_null $P1997, vivify_835
    new $P1997, "Undef"
  vivify_835:
    set $I1998, $P1997
    trace $I1998
.annotate 'line', 1276
    find_lex $P1999, "$output"
    unless_null $P1999, vivify_836
    new $P1999, "Undef"
  vivify_836:
    find_lex $P2000, "@args"
    unless_null $P2000, vivify_837
    $P2000 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    $P2001 = $P1999($P2000 :flat)
    store_lex "$output", $P2001
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2004
.annotate 'line', 1283
    .lex "self", param_2004
.annotate 'line', 1285

                $P0 = getinterp
                $P2005 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P2005
.annotate 'line', 1289
    new $P2006, "Integer"
    assign $P2006, 0
    store_dynamic_lex "$*CTXSAVE", $P2006
.annotate 'line', 1283
    .return ($P2006)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2008
    .param pmc param_2009 :slurpy
.annotate 'line', 1292
    .lex "self", param_2008
    .lex "@args", param_2009
.annotate 'line', 1293
    find_lex $P2010, "@args"
    unless_null $P2010, vivify_839
    $P2010 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    join $S2011, "", $P2010
    die $S2011
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2013
    .param pmc param_2014 :optional
    .param int has_param_2014 :opt_flag
.annotate 'line', 1296
    .lex "self", param_2013
    if has_param_2014, optparam_840
    $P2015 = root_new ['parrot';'ResizablePMCArray']
    set param_2014, $P2015
  optparam_840:
    .lex "@value", param_2014
.annotate 'line', 1297
    find_lex $P2017, "@value"
    unless_null $P2017, vivify_841
    $P2017 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N2018, $P2017
    unless $N2018, if_2016_end
.annotate 'line', 1298
    find_lex $P2019, "@value"
    unless_null $P2019, vivify_842
    $P2019 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    find_lex $P2020, "self"
    find_lex $P2021, "$?CLASS"
    setattribute $P2020, $P2021, "@!stages", $P2019
  if_2016_end:
.annotate 'line', 1297
    find_lex $P2022, "self"
    find_lex $P2023, "$?CLASS"
    getattribute $P2024, $P2022, $P2023, "@!stages"
    unless_null $P2024, vivify_843
    $P2024 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
.annotate 'line', 1296
    .return ($P2024)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2026
    .param pmc param_2027 :slurpy
.annotate 'line', 1303
    .lex "self", param_2026
    .lex "@value", param_2027
.annotate 'line', 1304
    find_lex $P2029, "@value"
    unless_null $P2029, vivify_844
    $P2029 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $N2030, $P2029
    unless $N2030, if_2028_end
.annotate 'line', 1305
    find_lex $P2031, "@value"
    unless_null $P2031, vivify_845
    $P2031 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P2032, $P2031[0]
    unless_null $P2032, vivify_846
    new $P2032, "Undef"
  vivify_846:
    find_lex $P2033, "self"
    find_lex $P2034, "$?CLASS"
    setattribute $P2033, $P2034, "$!parsegrammar", $P2032
  if_2028_end:
.annotate 'line', 1304
    find_lex $P2035, "self"
    find_lex $P2036, "$?CLASS"
    getattribute $P2037, $P2035, $P2036, "$!parsegrammar"
    unless_null $P2037, vivify_847
    new $P2037, "Undef"
  vivify_847:
.annotate 'line', 1303
    .return ($P2037)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2039
    .param pmc param_2040 :slurpy
.annotate 'line', 1310
    .lex "self", param_2039
    .lex "@value", param_2040
.annotate 'line', 1311
    find_lex $P2042, "@value"
    unless_null $P2042, vivify_848
    $P2042 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $N2043, $P2042
    unless $N2043, if_2041_end
.annotate 'line', 1312
    find_lex $P2044, "@value"
    unless_null $P2044, vivify_849
    $P2044 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P2045, $P2044[0]
    unless_null $P2045, vivify_850
    new $P2045, "Undef"
  vivify_850:
    find_lex $P2046, "self"
    find_lex $P2047, "$?CLASS"
    setattribute $P2046, $P2047, "$!parseactions", $P2045
  if_2041_end:
.annotate 'line', 1311
    find_lex $P2048, "self"
    find_lex $P2049, "$?CLASS"
    getattribute $P2050, $P2048, $P2049, "$!parseactions"
    unless_null $P2050, vivify_851
    new $P2050, "Undef"
  vivify_851:
.annotate 'line', 1310
    .return ($P2050)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2052
    .param pmc param_2053 :slurpy
.annotate 'line', 1317
    .lex "self", param_2052
    .lex "@value", param_2053
.annotate 'line', 1318
    find_lex $P2055, "@value"
    unless_null $P2055, vivify_852
    $P2055 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $N2056, $P2055
    unless $N2056, if_2054_end
.annotate 'line', 1319
    find_lex $P2057, "@value"
    unless_null $P2057, vivify_853
    $P2057 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    set $P2058, $P2057[0]
    unless_null $P2058, vivify_854
    new $P2058, "Undef"
  vivify_854:
    find_lex $P2059, "self"
    find_lex $P2060, "$?CLASS"
    setattribute $P2059, $P2060, "$!astgrammar", $P2058
  if_2054_end:
.annotate 'line', 1318
    find_lex $P2061, "self"
    find_lex $P2062, "$?CLASS"
    getattribute $P2063, $P2061, $P2062, "$!astgrammar"
    unless_null $P2063, vivify_855
    new $P2063, "Undef"
  vivify_855:
.annotate 'line', 1317
    .return ($P2063)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2065
    .param pmc param_2066 :optional
    .param int has_param_2066 :opt_flag
.annotate 'line', 1324
    .lex "self", param_2065
    if has_param_2066, optparam_856
    new $P2067, "Undef"
    set param_2066, $P2067
  optparam_856:
    .lex "$value", param_2066
.annotate 'line', 1325
    find_lex $P2069, "$value"
    unless_null $P2069, vivify_857
    new $P2069, "Undef"
  vivify_857:
    defined $I2070, $P2069
    unless $I2070, if_2068_end
.annotate 'line', 1326
    find_lex $P2071, "$value"
    unless_null $P2071, vivify_858
    new $P2071, "Undef"
  vivify_858:
    find_lex $P2072, "self"
    find_lex $P2073, "$?CLASS"
    setattribute $P2072, $P2073, "$!commandline_banner", $P2071
  if_2068_end:
.annotate 'line', 1325
    find_lex $P2074, "self"
    find_lex $P2075, "$?CLASS"
    getattribute $P2076, $P2074, $P2075, "$!commandline_banner"
    unless_null $P2076, vivify_859
    new $P2076, "Undef"
  vivify_859:
.annotate 'line', 1324
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2078
    .param pmc param_2079 :optional
    .param int has_param_2079 :opt_flag
.annotate 'line', 1331
    .lex "self", param_2078
    if has_param_2079, optparam_860
    new $P2080, "Undef"
    set param_2079, $P2080
  optparam_860:
    .lex "$value", param_2079
.annotate 'line', 1332
    find_lex $P2082, "$value"
    unless_null $P2082, vivify_861
    new $P2082, "Undef"
  vivify_861:
    defined $I2083, $P2082
    unless $I2083, if_2081_end
.annotate 'line', 1333
    find_lex $P2084, "$value"
    unless_null $P2084, vivify_862
    new $P2084, "Undef"
  vivify_862:
    find_lex $P2085, "self"
    find_lex $P2086, "$?CLASS"
    setattribute $P2085, $P2086, "$!commandline_prompt", $P2084
  if_2081_end:
.annotate 'line', 1332
    find_lex $P2087, "self"
    find_lex $P2088, "$?CLASS"
    getattribute $P2089, $P2087, $P2088, "$!commandline_prompt"
    unless_null $P2089, vivify_863
    new $P2089, "Undef"
  vivify_863:
.annotate 'line', 1331
    .return ($P2089)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2091
    .param pmc param_2092 :optional
    .param int has_param_2092 :opt_flag
.annotate 'line', 1338
    .lex "self", param_2091
    if has_param_2092, optparam_864
    new $P2093, "Undef"
    set param_2092, $P2093
  optparam_864:
    .lex "$value", param_2092
.annotate 'line', 1339
    find_lex $P2095, "$value"
    unless_null $P2095, vivify_865
    new $P2095, "Undef"
  vivify_865:
    defined $I2096, $P2095
    unless $I2096, if_2094_end
.annotate 'line', 1340
    find_lex $P2097, "$value"
    unless_null $P2097, vivify_866
    new $P2097, "Undef"
  vivify_866:
    find_lex $P2098, "self"
    find_lex $P2099, "$?CLASS"
    setattribute $P2098, $P2099, "$!compiler_progname", $P2097
  if_2094_end:
.annotate 'line', 1339
    find_lex $P2100, "self"
    find_lex $P2101, "$?CLASS"
    getattribute $P2102, $P2100, $P2101, "$!compiler_progname"
    unless_null $P2102, vivify_867
    new $P2102, "Undef"
  vivify_867:
.annotate 'line', 1338
    .return ($P2102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2104
    .param pmc param_2105 :optional
    .param int has_param_2105 :opt_flag
.annotate 'line', 1345
    .lex "self", param_2104
    if has_param_2105, optparam_868
    $P2106 = root_new ['parrot';'ResizablePMCArray']
    set param_2105, $P2106
  optparam_868:
    .lex "@value", param_2105
.annotate 'line', 1346
    find_lex $P2108, "@value"
    unless_null $P2108, vivify_869
    $P2108 = root_new ['parrot';'ResizablePMCArray']
  vivify_869:
    set $N2109, $P2108
    unless $N2109, if_2107_end
.annotate 'line', 1347
    find_lex $P2110, "@value"
    unless_null $P2110, vivify_870
    $P2110 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    find_lex $P2111, "self"
    find_lex $P2112, "$?CLASS"
    setattribute $P2111, $P2112, "@!cmdoptions", $P2110
  if_2107_end:
.annotate 'line', 1346
    find_lex $P2113, "self"
    find_lex $P2114, "$?CLASS"
    getattribute $P2115, $P2113, $P2114, "@!cmdoptions"
    unless_null $P2115, vivify_871
    $P2115 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
.annotate 'line', 1345
    .return ($P2115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2117
    .param pmc param_2118
    .param pmc param_2119 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P2145 = "206_1303857419.487" 
    capture_lex $P2145
    .lex "self", param_2117
    .lex "@args", param_2118
    .lex "%adverbs", param_2119
.annotate 'line', 1365
    new $P2120, "Undef"
    .lex "$program-name", $P2120
.annotate 'line', 1366
    new $P2121, "Undef"
    .lex "$res", $P2121
.annotate 'line', 1367
    $P2122 = root_new ['parrot';'Hash']
    .lex "%opts", $P2122
.annotate 'line', 1368
    $P2123 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2123
.annotate 'line', 1361
    find_lex $P2125, "@args"
    unless_null $P2125, vivify_872
    $P2125 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    set $P2126, $P2125[2]
    unless_null $P2126, vivify_873
    new $P2126, "Undef"
  vivify_873:
    set $S2127, $P2126
    index $I2128, $S2127, "@INC"
    set $N2129, $I2128
    isge $I2130, $N2129, 0.0
    unless $I2130, if_2124_end
.annotate 'line', 1362
    exit 0
  if_2124_end:
.annotate 'line', 1365
    find_lex $P2131, "@args"
    unless_null $P2131, vivify_874
    $P2131 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P2132, $P2131[0]
    unless_null $P2132, vivify_875
    new $P2132, "Undef"
  vivify_875:
    store_lex "$program-name", $P2132
.annotate 'line', 1366
    find_lex $P2133, "self"
    find_lex $P2134, "@args"
    unless_null $P2134, vivify_876
    $P2134 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    $P2135 = $P2133."process_args"($P2134)
    store_lex "$res", $P2135
.annotate 'line', 1367
    find_lex $P2136, "$res"
    unless_null $P2136, vivify_877
    new $P2136, "Undef"
  vivify_877:
    $P2137 = $P2136."options"()
    store_lex "%opts", $P2137
.annotate 'line', 1368
    find_lex $P2138, "$res"
    unless_null $P2138, vivify_878
    new $P2138, "Undef"
  vivify_878:
    $P2139 = $P2138."arguments"()
    store_lex "@a", $P2139
.annotate 'line', 1370
    find_lex $P2141, "%opts"
    unless_null $P2141, vivify_879
    $P2141 = root_new ['parrot';'Hash']
  vivify_879:
    defined $I2142, $P2141
    unless $I2142, for_undef_880
    iter $P2140, $P2141
    new $P2153, 'ExceptionHandler'
    set_label $P2153, loop2152_handler
    $P2153."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2153
  loop2152_test:
    unless $P2140, loop2152_done
    shift $P2143, $P2140
  loop2152_redo:
    .const 'Sub' $P2145 = "206_1303857419.487" 
    capture_lex $P2145
    $P2145($P2143)
  loop2152_next:
    goto loop2152_test
  loop2152_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2154, exception, 'type'
    eq $P2154, .CONTROL_LOOP_NEXT, loop2152_next
    eq $P2154, .CONTROL_LOOP_REDO, loop2152_redo
  loop2152_done:
    pop_eh 
  for_undef_880:
.annotate 'line', 1373
    find_lex $P2156, "%adverbs"
    unless_null $P2156, vivify_886
    $P2156 = root_new ['parrot';'Hash']
  vivify_886:
    set $P2157, $P2156["help"]
    unless_null $P2157, vivify_887
    new $P2157, "Undef"
  vivify_887:
    unless $P2157, if_2155_end
    find_lex $P2158, "self"
    find_lex $P2159, "$program-name"
    unless_null $P2159, vivify_888
    new $P2159, "Undef"
  vivify_888:
    $P2158."usage"($P2159)
  if_2155_end:
.annotate 'line', 1374
    find_lex $P2161, "%adverbs"
    unless_null $P2161, vivify_889
    $P2161 = root_new ['parrot';'Hash']
  vivify_889:
    set $P2162, $P2161["version"]
    unless_null $P2162, vivify_890
    new $P2162, "Undef"
  vivify_890:
    unless $P2162, if_2160_end
    find_lex $P2163, "self"
    $P2163."version"()
  if_2160_end:
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
.sub "_block2144"  :anon :subid("206_1303857419.487") :outer("205_1303857419.487")
    .param pmc param_2146
.annotate 'line', 1370
    .lex "$k", param_2146
.annotate 'line', 1371
    find_lex $P2147, "$k"
    unless_null $P2147, vivify_881
    new $P2147, "Undef"
  vivify_881:
    find_lex $P2148, "%opts"
    unless_null $P2148, vivify_882
    $P2148 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2149, $P2148[$P2147]
    unless_null $P2149, vivify_883
    new $P2149, "Undef"
  vivify_883:
    find_lex $P2150, "$k"
    unless_null $P2150, vivify_884
    new $P2150, "Undef"
  vivify_884:
    find_lex $P2151, "%adverbs"
    unless_null $P2151, vivify_885
    $P2151 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2151
  vivify_885:
    set $P2151[$P2150], $P2149
.annotate 'line', 1370
    .return ($P2149)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2165
    .param pmc param_2166
.annotate 'line', 1470
    .const 'Sub' $P2185 = "208_1303857419.487" 
    capture_lex $P2185
    .lex "self", param_2165
    .lex "@args", param_2166
.annotate 'line', 1474
    new $P2167, "Undef"
    .lex "$p", $P2167
.annotate 'line', 1477
    new $P2168, "Undef"
    .lex "$res", $P2168
.annotate 'line', 1472
    find_lex $P2169, "self"
    find_lex $P2170, "@args"
    unless_null $P2170, vivify_891
    $P2170 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    $P2171 = $P2170."shift"()
    $P2169."compiler_progname"($P2171)
.annotate 'line', 1474
    get_hll_global $P2172, "GLOBAL"
    nqp_get_package_through_who $P2173, $P2172, "HLL"
    nqp_get_package_through_who $P2174, $P2173, "CommandLine"
    get_who $P2175, $P2174
    set $P2176, $P2175["Parser"]
    find_lex $P2177, "self"
    find_lex $P2178, "$?CLASS"
    getattribute $P2179, $P2177, $P2178, "@!cmdoptions"
    unless_null $P2179, vivify_892
    $P2179 = root_new ['parrot';'ResizablePMCArray']
  vivify_892:
    $P2180 = $P2176."new"($P2179)
    store_lex "$p", $P2180
.annotate 'line', 1475
    find_lex $P2181, "$p"
    unless_null $P2181, vivify_893
    new $P2181, "Undef"
  vivify_893:
    $P2181."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P2182, "$p"
    unless_null $P2182, vivify_894
    new $P2182, "Undef"
  vivify_894:
    $P2182."stop-after-first-arg"()
    find_lex $P2183, "$res"
    unless_null $P2183, vivify_895
    new $P2183, "Undef"
  vivify_895:
.annotate 'line', 1478
    .const 'Sub' $P2185 = "208_1303857419.487" 
    capture_lex $P2185
    $P2185()
    find_lex $P2203, "$res"
    unless_null $P2203, vivify_899
    new $P2203, "Undef"
  vivify_899:
.annotate 'line', 1470
    .return ($P2203)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2184"  :anon :subid("208_1303857419.487") :outer("207_1303857419.487")
.annotate 'line', 1478
    .const 'Sub' $P2195 = "209_1303857419.487" 
    capture_lex $P2195
    new $P2191, 'ExceptionHandler'
    set_label $P2191, control_2190
    $P2191."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2191
.annotate 'line', 1479
    find_lex $P2186, "$p"
    unless_null $P2186, vivify_896
    new $P2186, "Undef"
  vivify_896:
    find_lex $P2187, "@args"
    unless_null $P2187, vivify_897
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_897:
    $P2188 = $P2186."parse"($P2187)
    store_lex "$res", $P2188
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_2189
  control_2190:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2195 = "209_1303857419.487" 
    newclosure $P2200, $P2195
    $P2200(exception)
    new $P2201, 'Integer'
    set $P2201, 1
    set exception["handled"], $P2201
    set $I2202, exception["handled"]
    ne $I2202, 1, nothandled_2193
  handled_2192:
    .return (exception)
  nothandled_2193:
    rethrow exception
  skip_handler_2189:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2194"  :anon :subid("209_1303857419.487") :outer("208_1303857419.487")
    .param pmc param_2196
.annotate 'line', 1480
    .lex "$_", param_2196
    find_lex $P2197, "$_"
    .lex "$!", $P2197
.annotate 'line', 1481
    find_lex $P2198, "$_"
    unless_null $P2198, vivify_898
    new $P2198, "Undef"
  vivify_898:
    say $P2198
.annotate 'line', 1482
    find_lex $P2199, "self"
    $P2199."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2207
    .param pmc param_2208
    .param pmc param_2209 :slurpy
    .param pmc param_2210 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P2235 = "211_1303857419.487" 
    capture_lex $P2235
    new $P2206, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2206, control_2205
    push_eh $P2206
    .lex "self", param_2207
    .lex "$files", param_2208
    .lex "@args", param_2209
    .lex "%adverbs", param_2210
.annotate 'line', 1490
    new $P2211, "Undef"
    .lex "$target", $P2211
.annotate 'line', 1491
    new $P2212, "Undef"
    .lex "$encoding", $P2212
.annotate 'line', 1492
    $P2213 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2213
.annotate 'line', 1493
    $P2214 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2214
.annotate 'line', 1490
    find_lex $P2215, "%adverbs"
    unless_null $P2215, vivify_900
    $P2215 = root_new ['parrot';'Hash']
  vivify_900:
    set $P2216, $P2215["target"]
    unless_null $P2216, vivify_901
    new $P2216, "Undef"
  vivify_901:
    set $S2217, $P2216
    downcase $S2218, $S2217
    new $P2219, 'String'
    set $P2219, $S2218
    store_lex "$target", $P2219
.annotate 'line', 1491
    find_lex $P2220, "%adverbs"
    unless_null $P2220, vivify_902
    $P2220 = root_new ['parrot';'Hash']
  vivify_902:
    set $P2221, $P2220["encoding"]
    unless_null $P2221, vivify_903
    new $P2221, "Undef"
  vivify_903:
    store_lex "$encoding", $P2221
.annotate 'line', 1492
    find_lex $P2224, "$files"
    unless_null $P2224, vivify_904
    new $P2224, "Undef"
  vivify_904:
    does $I2225, $P2224, "array"
    if $I2225, if_2223
    find_lex $P2227, "$files"
    unless_null $P2227, vivify_905
    new $P2227, "Undef"
  vivify_905:
    new $P2228, "ResizablePMCArray"
    push $P2228, $P2227
    set $P2222, $P2228
    goto if_2223_end
  if_2223:
    find_lex $P2226, "$files"
    unless_null $P2226, vivify_906
    new $P2226, "Undef"
  vivify_906:
    set $P2222, $P2226
  if_2223_end:
    store_lex "@files", $P2222
    find_lex $P2229, "@codes"
    unless_null $P2229, vivify_907
    $P2229 = root_new ['parrot';'ResizablePMCArray']
  vivify_907:
.annotate 'line', 1494
    find_lex $P2231, "@files"
    unless_null $P2231, vivify_908
    $P2231 = root_new ['parrot';'ResizablePMCArray']
  vivify_908:
    defined $I2232, $P2231
    unless $I2232, for_undef_909
    iter $P2230, $P2231
    new $P2297, 'ExceptionHandler'
    set_label $P2297, loop2296_handler
    $P2297."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2297
  loop2296_test:
    unless $P2230, loop2296_done
    shift $P2233, $P2230
  loop2296_redo:
    .const 'Sub' $P2235 = "211_1303857419.487" 
    capture_lex $P2235
    $P2235($P2233)
  loop2296_next:
    goto loop2296_test
  loop2296_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2298, exception, 'type'
    eq $P2298, .CONTROL_LOOP_NEXT, loop2296_next
    eq $P2298, .CONTROL_LOOP_REDO, loop2296_redo
  loop2296_done:
    pop_eh 
  for_undef_909:
.annotate 'line', 1489
    .return ($P2230)
  control_2205:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2299, exception, "payload"
    .return ($P2299)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2234"  :anon :subid("211_1303857419.487") :outer("210_1303857419.487")
    .param pmc param_2240
.annotate 'line', 1494
    .const 'Sub' $P2244 = "212_1303857419.487" 
    capture_lex $P2244
.annotate 'line', 1495
    new $P2236, "Undef"
    .lex "$in-handle", $P2236
.annotate 'line', 1496
    new $P2237, "Undef"
    .lex "$err", $P2237
.annotate 'line', 1509
    new $P2238, "Undef"
    .lex "$code", $P2238
.annotate 'line', 1511
    new $P2239, "Undef"
    .lex "$r", $P2239
    .lex "$_", param_2240
.annotate 'line', 1495
    new $P2241, "FileHandle"
    store_lex "$in-handle", $P2241
.annotate 'line', 1496
    new $P2242, "Integer"
    assign $P2242, 0
    store_lex "$err", $P2242
.annotate 'line', 1497
    .const 'Sub' $P2244 = "212_1303857419.487" 
    capture_lex $P2244
    $P2244()
.annotate 'line', 1508
    find_lex $P2268, "$err"
    unless_null $P2268, vivify_917
    new $P2268, "Undef"
  vivify_917:
    unless $P2268, if_2267_end
    find_lex $P2269, "$err"
    unless_null $P2269, vivify_918
    new $P2269, "Undef"
  vivify_918:
    die $P2269
  if_2267_end:
.annotate 'line', 1509
    find_lex $P2270, "@codes"
    unless_null $P2270, vivify_919
    $P2270 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    join $S2271, "", $P2270
    new $P2272, 'String'
    set $P2272, $S2271
    store_lex "$code", $P2272
.annotate 'line', 1511
    find_lex $P2273, "self"
    find_lex $P2274, "$code"
    unless_null $P2274, vivify_920
    new $P2274, "Undef"
  vivify_920:
    find_lex $P2275, "@args"
    unless_null $P2275, vivify_921
    $P2275 = root_new ['parrot';'ResizablePMCArray']
  vivify_921:
    find_lex $P2276, "%adverbs"
    unless_null $P2276, vivify_922
    $P2276 = root_new ['parrot';'Hash']
  vivify_922:
    $P2277 = $P2273."eval"($P2274, $P2275 :flat, $P2276 :flat)
    store_lex "$r", $P2277
.annotate 'line', 1512
    find_lex $P2282, "$target"
    unless_null $P2282, vivify_923
    new $P2282, "Undef"
  vivify_923:
    set $S2283, $P2282
    iseq $I2284, $S2283, ""
    unless $I2284, unless_2281
    new $P2280, 'Integer'
    set $P2280, $I2284
    goto unless_2281_end
  unless_2281:
    find_lex $P2285, "$target"
    unless_null $P2285, vivify_924
    new $P2285, "Undef"
  vivify_924:
    set $S2286, $P2285
    iseq $I2287, $S2286, "pir"
    new $P2280, 'Integer'
    set $P2280, $I2287
  unless_2281_end:
    if $P2280, if_2279
.annotate 'line', 1515
    new $P2290, "Exception"
    set $P2290['type'], .CONTROL_RETURN
    find_lex $P2291, "self"
    find_lex $P2292, "$r"
    unless_null $P2292, vivify_925
    new $P2292, "Undef"
  vivify_925:
    find_lex $P2293, "$target"
    unless_null $P2293, vivify_926
    new $P2293, "Undef"
  vivify_926:
    find_lex $P2294, "%adverbs"
    unless_null $P2294, vivify_927
    $P2294 = root_new ['parrot';'Hash']
  vivify_927:
    $P2295 = $P2291."dumper"($P2292, $P2293, $P2294 :flat)
    setattribute $P2290, 'payload', $P2295
    throw $P2290
.annotate 'line', 1514
    goto if_2279_end
  if_2279:
.annotate 'line', 1513
    new $P2288, "Exception"
    set $P2288['type'], .CONTROL_RETURN
    find_lex $P2289, "$r"
    unless_null $P2289, vivify_928
    new $P2289, "Undef"
  vivify_928:
    setattribute $P2288, 'payload', $P2289
    throw $P2288
  if_2279_end:
.annotate 'line', 1494
    .return ($P2278)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2243"  :anon :subid("212_1303857419.487") :outer("211_1303857419.487")
.annotate 'line', 1497
    .const 'Sub' $P2258 = "213_1303857419.487" 
    capture_lex $P2258
    new $P2254, 'ExceptionHandler'
    set_label $P2254, control_2253
    $P2254."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2254
.annotate 'line', 1501
    find_lex $P2245, "$in-handle"
    unless_null $P2245, vivify_910
    new $P2245, "Undef"
  vivify_910:
    find_lex $P2246, "$encoding"
    unless_null $P2246, vivify_911
    new $P2246, "Undef"
  vivify_911:
    $P2245."encoding"($P2246)
.annotate 'line', 1502
    find_lex $P2247, "@codes"
    unless_null $P2247, vivify_912
    $P2247 = root_new ['parrot';'ResizablePMCArray']
  vivify_912:
    find_lex $P2248, "$in-handle"
    unless_null $P2248, vivify_913
    new $P2248, "Undef"
  vivify_913:
    find_lex $P2249, "$_"
    unless_null $P2249, vivify_914
    new $P2249, "Undef"
  vivify_914:
    $P2250 = $P2248."readall"($P2249)
    push $P2247, $P2250
.annotate 'line', 1503
    find_lex $P2251, "$in-handle"
    unless_null $P2251, vivify_915
    new $P2251, "Undef"
  vivify_915:
    $P2251."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_2252
  control_2253:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2258 = "213_1303857419.487" 
    newclosure $P2264, $P2258
    $P2264(exception)
    new $P2265, 'Integer'
    set $P2265, 1
    set exception["handled"], $P2265
    set $I2266, exception["handled"]
    ne $I2266, 1, nothandled_2256
  handled_2255:
    .return (exception)
  nothandled_2256:
    rethrow exception
  skip_handler_2252:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2257"  :anon :subid("213_1303857419.487") :outer("212_1303857419.487")
    .param pmc param_2259
.annotate 'line', 1504
    .lex "$_", param_2259
    find_lex $P2260, "$_"
    .lex "$!", $P2260
.annotate 'line', 1505
    new $P2261, 'String'
    set $P2261, "Error while reading from file: "
    find_lex $P2262, "$_"
    unless_null $P2262, vivify_916
    new $P2262, "Undef"
  vivify_916:
    concat $P2263, $P2261, $P2262
    store_lex "$err", $P2263
.annotate 'line', 1504
    .return ($P2263)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2303
    .param pmc param_2304
    .param pmc param_2305 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2328 = "215_1303857419.487" 
    capture_lex $P2328
    new $P2302, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2302, control_2301
    push_eh $P2302
    .lex "self", param_2303
    .lex "$source", param_2304
    .lex "%adverbs", param_2305
.annotate 'line', 1522
    $P2306 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2306
.annotate 'line', 1524
    new $P2307, "Undef"
    .lex "$target", $P2307
.annotate 'line', 1525
    new $P2308, "Undef"
    .lex "$result", $P2308
.annotate 'line', 1526
    new $P2309, "Undef"
    .lex "$stderr", $P2309
.annotate 'line', 1522
    find_lex $P2310, "%adverbs"
    unless_null $P2310, vivify_929
    $P2310 = root_new ['parrot';'Hash']
  vivify_929:
    find_lex $P2313, "%*COMPILING"
    unless_null $P2313, vivify_930
    get_hll_global $P2311, "GLOBAL"
    get_who $P2312, $P2311
    set $P2313, $P2312["%COMPILING"]
    unless_null $P2313, vivify_931
    die "Contextual %*COMPILING not found"
  vivify_931:
    store_lex "%*COMPILING", $P2313
  vivify_930:
    set $P2313["%?OPTIONS"], $P2310
.annotate 'line', 1524
    find_lex $P2314, "%adverbs"
    unless_null $P2314, vivify_932
    $P2314 = root_new ['parrot';'Hash']
  vivify_932:
    set $P2315, $P2314["target"]
    unless_null $P2315, vivify_933
    new $P2315, "Undef"
  vivify_933:
    set $S2316, $P2315
    downcase $S2317, $S2316
    new $P2318, 'String'
    set $P2318, $S2317
    store_lex "$target", $P2318
.annotate 'line', 1525
    find_lex $P2319, "$source"
    unless_null $P2319, vivify_934
    new $P2319, "Undef"
  vivify_934:
    store_lex "$result", $P2319
.annotate 'line', 1526
    getinterp $P2320
    $P2321 = $P2320."stderr_handle"()
    store_lex "$stderr", $P2321
.annotate 'line', 1527
    find_lex $P2323, "self"
    $P2324 = $P2323."stages"()
    defined $I2325, $P2324
    unless $I2325, for_undef_935
    iter $P2322, $P2324
    new $P2364, 'ExceptionHandler'
    set_label $P2364, loop2363_handler
    $P2364."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2364
  loop2363_test:
    unless $P2322, loop2363_done
    shift $P2326, $P2322
  loop2363_redo:
    .const 'Sub' $P2328 = "215_1303857419.487" 
    capture_lex $P2328
    $P2328($P2326)
  loop2363_next:
    goto loop2363_test
  loop2363_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2365, exception, 'type'
    eq $P2365, .CONTROL_LOOP_NEXT, loop2363_next
    eq $P2365, .CONTROL_LOOP_REDO, loop2363_redo
  loop2363_done:
    pop_eh 
  for_undef_935:
.annotate 'line', 1537
    new $P2366, "Exception"
    set $P2366['type'], .CONTROL_RETURN
    find_lex $P2367, "$result"
    unless_null $P2367, vivify_947
    new $P2367, "Undef"
  vivify_947:
    setattribute $P2366, 'payload', $P2367
    throw $P2366
.annotate 'line', 1521
    .return ()
  control_2301:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2368, exception, "payload"
    .return ($P2368)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2327"  :anon :subid("215_1303857419.487") :outer("214_1303857419.487")
    .param pmc param_2331
.annotate 'line', 1528
    new $P2329, "Undef"
    .lex "$timestamp", $P2329
.annotate 'line', 1530
    new $P2330, "Undef"
    .lex "$diff", $P2330
    .lex "$_", param_2331
.annotate 'line', 1528
    time $N2332
    new $P2333, 'Float'
    set $P2333, $N2332
    store_lex "$timestamp", $P2333
.annotate 'line', 1529
    find_lex $P2334, "self"
    find_lex $P2335, "$result"
    unless_null $P2335, vivify_936
    new $P2335, "Undef"
  vivify_936:
    find_lex $P2336, "%adverbs"
    unless_null $P2336, vivify_937
    $P2336 = root_new ['parrot';'Hash']
  vivify_937:
    find_lex $P2337, "$_"
    unless_null $P2337, vivify_938
    new $P2337, "Undef"
  vivify_938:
    set $S2338, $P2337
    $P2339 = $P2334.$S2338($P2335, $P2336 :flat)
    store_lex "$result", $P2339
.annotate 'line', 1530
    time $N2340
    new $P2341, 'Float'
    set $P2341, $N2340
    find_lex $P2342, "$timestamp"
    unless_null $P2342, vivify_939
    new $P2342, "Undef"
  vivify_939:
    sub $P2343, $P2341, $P2342
    store_lex "$diff", $P2343
.annotate 'line', 1531
    find_lex $P2345, "%adverbs"
    unless_null $P2345, vivify_940
    $P2345 = root_new ['parrot';'Hash']
  vivify_940:
    set $P2346, $P2345["stagestats"]
    unless_null $P2346, vivify_941
    new $P2346, "Undef"
  vivify_941:
    unless $P2346, if_2344_end
.annotate 'line', 1533
    find_lex $P2347, "$stderr"
    unless_null $P2347, vivify_942
    new $P2347, "Undef"
  vivify_942:
    new $P2348, 'String'
    set $P2348, "Stage "
    find_lex $P2349, "$_"
    unless_null $P2349, vivify_943
    new $P2349, "Undef"
  vivify_943:
    concat $P2350, $P2348, $P2349
    concat $P2351, $P2350, ": "
    find_lex $P2352, "$diff"
    unless_null $P2352, vivify_944
    new $P2352, "Undef"
  vivify_944:
    concat $P2353, $P2351, $P2352
    concat $P2354, $P2353, "\n"
    $P2347."print__N"($P2354)
  if_2344_end:
.annotate 'line', 1535
    find_lex $P2357, "$_"
    unless_null $P2357, vivify_945
    new $P2357, "Undef"
  vivify_945:
    set $S2358, $P2357
    find_lex $P2359, "$target"
    unless_null $P2359, vivify_946
    new $P2359, "Undef"
  vivify_946:
    set $S2360, $P2359
    iseq $I2361, $S2358, $S2360
    if $I2361, if_2356
    new $P2355, 'Integer'
    set $P2355, $I2361
    goto if_2356_end
  if_2356:
    set $I2362, .CONTROL_LOOP_LAST
    die 0, $I2362
  if_2356_end:
.annotate 'line', 1527
    .return ($P2355)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2370
    .param pmc param_2371
    .param pmc param_2372 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2370
    .lex "$source", param_2371
    .lex "%adverbs", param_2372
.annotate 'line', 1541

            .local pmc source, options, self
            source = find_lex '$source'
            options = find_lex '%adverbs'
            self = find_lex 'self'

            .local string tcode
            tcode = options['transcode']
            unless tcode goto transcode_done
            .local pmc tcode_it
            $P0 = split ' ', tcode
            tcode_it = iter $P0
          tcode_loop:
            unless tcode_it goto transcode_done
            tcode = shift tcode_it
            push_eh tcode_fail
            $I0 = find_encoding tcode
            $S0 = source
            $S0 = trans_encoding $S0, $I0
            assign source, $S0
            pop_eh
            goto transcode_done
          tcode_fail:
            pop_eh
            goto tcode_loop
          transcode_done:

            .local pmc parsegrammar, parseactions, match
            parsegrammar = self.'parsegrammar'()

            null parseactions
            $S0 = options['target']
            if $S0 == 'parse' goto have_parseactions
            parseactions = self.'parseactions'()
          have_parseactions:

            .local int rxtrace
            rxtrace = options['parsetrace']
            match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
            unless match goto err_parsefail
            .return (match)

          err_parsefail:
            self.'panic'('Unable to parse source')
            .return (match)
        
.annotate 'line', 1540
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("217_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2374
    .param pmc param_2375
    .param pmc param_2376 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2374
    .lex "$source", param_2375
    .lex "%adverbs", param_2376
.annotate 'line', 1590

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
        
.annotate 'line', 1589
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post"  :subid("218_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2378
    .param pmc param_2379
    .param pmc param_2380 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2378
    .lex "$source", param_2379
    .lex "%adverbs", param_2380
.annotate 'line', 1630
    compreg $P2381, "PAST"
    find_lex $P2382, "$source"
    unless_null $P2382, vivify_948
    new $P2382, "Undef"
  vivify_948:
    find_lex $P2383, "%adverbs"
    unless_null $P2383, vivify_949
    $P2383 = root_new ['parrot';'Hash']
  vivify_949:
    $P2384 = $P2381."to_post"($P2382, $P2383 :flat)
.annotate 'line', 1629
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2386
    .param pmc param_2387
    .param pmc param_2388 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2386
    .lex "$source", param_2387
    .lex "%adverbs", param_2388
.annotate 'line', 1634
    compreg $P2389, "POST"
    find_lex $P2390, "$source"
    unless_null $P2390, vivify_950
    new $P2390, "Undef"
  vivify_950:
    find_lex $P2391, "%adverbs"
    unless_null $P2391, vivify_951
    $P2391 = root_new ['parrot';'Hash']
  vivify_951:
    $P2392 = $P2389."to_pir"($P2390, $P2391 :flat)
.annotate 'line', 1633
    .return ($P2392)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2394
    .param pmc param_2395
    .param pmc param_2396 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2394
    .lex "$source", param_2395
    .lex "%adverbs", param_2396
.annotate 'line', 1638
    new $P2397, "Undef"
    .lex "$compiler", $P2397
    compreg $P2398, "PIR"
    store_lex "$compiler", $P2398
.annotate 'line', 1639
    find_lex $P2399, "$compiler"
    unless_null $P2399, vivify_952
    new $P2399, "Undef"
  vivify_952:
    find_lex $P2400, "$source"
    unless_null $P2400, vivify_953
    new $P2400, "Undef"
  vivify_953:
    $P2401 = $P2399($P2400)
.annotate 'line', 1637
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2403
    .param pmc param_2404
    .param pmc param_2405
    .param pmc param_2406 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2412 = "222_1303857419.487" 
    capture_lex $P2412
    .lex "self", param_2403
    .lex "$obj", param_2404
    .lex "$name", param_2405
    .lex "%options", param_2406
.annotate 'line', 1643
    find_lex $P2409, "%options"
    unless_null $P2409, vivify_954
    $P2409 = root_new ['parrot';'Hash']
  vivify_954:
    set $P2410, $P2409["dumper"]
    unless_null $P2410, vivify_955
    new $P2410, "Undef"
  vivify_955:
    if $P2410, if_2408
.annotate 'line', 1649
    find_lex $P2428, "$obj"
    unless_null $P2428, vivify_956
    new $P2428, "Undef"
  vivify_956:
    find_lex $P2429, "$name"
    unless_null $P2429, vivify_957
    new $P2429, "Undef"
  vivify_957:
    $P2430 = "_dumper"($P2428, $P2429)
.annotate 'line', 1648
    set $P2407, $P2430
.annotate 'line', 1643
    goto if_2408_end
  if_2408:
    .const 'Sub' $P2412 = "222_1303857419.487" 
    capture_lex $P2412
    $P2427 = $P2412()
    set $P2407, $P2427
  if_2408_end:
.annotate 'line', 1642
    .return ($P2407)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2411"  :anon :subid("222_1303857419.487") :outer("221_1303857419.487")
.annotate 'line', 1645
    new $P2413, "Undef"
    .lex "$dumper", $P2413
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2414, "%options"
    unless_null $P2414, vivify_958
    $P2414 = root_new ['parrot';'Hash']
  vivify_958:
    set $P2415, $P2414["dumper"]
    unless_null $P2415, vivify_959
    new $P2415, "Undef"
  vivify_959:
    set $S2416, $P2415
    downcase $S2417, $S2416
    get_hll_global $P2418, "GLOBAL"
    nqp_get_package_through_who $P2419, $P2418, "PCT"
    get_who $P2420, $P2419
    set $P2421, $P2420["Dumper"]
    unless_null $P2421, vivify_960
    $P2421 = root_new ['parrot';'Hash']
  vivify_960:
    set $P2422, $P2421[$S2417]
    unless_null $P2422, vivify_961
    new $P2422, "Undef"
  vivify_961:
    store_lex "$dumper", $P2422
.annotate 'line', 1646
    find_lex $P2423, "$dumper"
    unless_null $P2423, vivify_962
    new $P2423, "Undef"
  vivify_962:
    find_lex $P2424, "$obj"
    unless_null $P2424, vivify_963
    new $P2424, "Undef"
  vivify_963:
    find_lex $P2425, "$name"
    unless_null $P2425, vivify_964
    new $P2425, "Undef"
  vivify_964:
    $P2426 = $P2423($P2424, $P2425)
.annotate 'line', 1643
    .return ($P2426)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2432
    .param pmc param_2433 :optional
    .param int has_param_2433 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2432
    if has_param_2433, optparam_965
    new $P2434, "Undef"
    set param_2433, $P2434
  optparam_965:
    .lex "$name", param_2433
.annotate 'line', 1654
    find_lex $P2436, "$name"
    unless_null $P2436, vivify_966
    new $P2436, "Undef"
  vivify_966:
    unless $P2436, if_2435_end
.annotate 'line', 1655
    find_lex $P2437, "$name"
    unless_null $P2437, vivify_967
    new $P2437, "Undef"
  vivify_967:
    "say"($P2437)
  if_2435_end:
.annotate 'line', 1657
    find_lex $P2438, "self"
    find_lex $P2439, "$?CLASS"
    getattribute $P2440, $P2438, $P2439, "$!usage"
    unless_null $P2440, vivify_968
    new $P2440, "Undef"
  vivify_968:
    say $P2440
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2442
.annotate 'line', 1661
    .lex "self", param_2442
.annotate 'line', 1662
    find_lex $P2443, "self"
    find_lex $P2444, "$?CLASS"
    getattribute $P2445, $P2443, $P2444, "$!version"
    unless_null $P2445, vivify_969
    new $P2445, "Undef"
  vivify_969:
    say $P2445
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2447
    .param pmc param_2448
.annotate 'line', 1666
    .const 'Sub' $P2458 = "226_1303857419.487" 
    capture_lex $P2458
    .lex "self", param_2447
    .lex "$stagename", param_2448
.annotate 'line', 1667
    $P2449 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2449
    new $P2450, "ResizableStringArray"
    store_lex "@new_stages", $P2450
.annotate 'line', 1668
    find_lex $P2452, "self"
    find_lex $P2453, "$?CLASS"
    getattribute $P2454, $P2452, $P2453, "@!stages"
    unless_null $P2454, vivify_970
    $P2454 = root_new ['parrot';'ResizablePMCArray']
  vivify_970:
    defined $I2455, $P2454
    unless $I2455, for_undef_971
    iter $P2451, $P2454
    new $P2471, 'ExceptionHandler'
    set_label $P2471, loop2470_handler
    $P2471."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2471
  loop2470_test:
    unless $P2451, loop2470_done
    shift $P2456, $P2451
  loop2470_redo:
    .const 'Sub' $P2458 = "226_1303857419.487" 
    capture_lex $P2458
    $P2458($P2456)
  loop2470_next:
    goto loop2470_test
  loop2470_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2472, exception, 'type'
    eq $P2472, .CONTROL_LOOP_NEXT, loop2470_next
    eq $P2472, .CONTROL_LOOP_REDO, loop2470_redo
  loop2470_done:
    pop_eh 
  for_undef_971:
.annotate 'line', 1673
    find_lex $P2473, "@new_stages"
    unless_null $P2473, vivify_976
    $P2473 = root_new ['parrot';'ResizablePMCArray']
  vivify_976:
    find_lex $P2474, "self"
    find_lex $P2475, "$?CLASS"
    setattribute $P2474, $P2475, "@!stages", $P2473
.annotate 'line', 1666
    .return ($P2473)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2457"  :anon :subid("226_1303857419.487") :outer("225_1303857419.487")
    .param pmc param_2459
.annotate 'line', 1668
    .lex "$_", param_2459
.annotate 'line', 1669
    find_lex $P2462, "$_"
    unless_null $P2462, vivify_972
    new $P2462, "Undef"
  vivify_972:
    set $S2463, $P2462
    find_lex $P2464, "$stagename"
    unless_null $P2464, vivify_973
    new $P2464, "Undef"
  vivify_973:
    set $S2465, $P2464
    isne $I2466, $S2463, $S2465
    if $I2466, if_2461
    new $P2460, 'Integer'
    set $P2460, $I2466
    goto if_2461_end
  if_2461:
.annotate 'line', 1670
    find_lex $P2467, "@new_stages"
    unless_null $P2467, vivify_974
    $P2467 = root_new ['parrot';'ResizablePMCArray']
  vivify_974:
    find_lex $P2468, "$_"
    unless_null $P2468, vivify_975
    new $P2468, "Undef"
  vivify_975:
    $P2469 = $P2467."push"($P2468)
.annotate 'line', 1669
    set $P2460, $P2469
  if_2461_end:
.annotate 'line', 1668
    .return ($P2460)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2479
    .param pmc param_2480
    .param pmc param_2481 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2518 = "229_1303857419.487" 
    capture_lex $P2518
    .const 'Sub' $P2500 = "228_1303857419.487" 
    capture_lex $P2500
    new $P2478, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2478, control_2477
    push_eh $P2478
    .lex "self", param_2479
    .lex "$stagename", param_2480
    .lex "%adverbs", param_2481
.annotate 'line', 1677
    new $P2482, "Undef"
    .lex "$position", $P2482
.annotate 'line', 1678
    new $P2483, "Undef"
    .lex "$where", $P2483
.annotate 'line', 1691
    $P2484 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2484
.annotate 'line', 1676
    find_lex $P2485, "$position"
    unless_null $P2485, vivify_977
    new $P2485, "Undef"
  vivify_977:
    find_lex $P2486, "$where"
    unless_null $P2486, vivify_978
    new $P2486, "Undef"
  vivify_978:
.annotate 'line', 1679
    find_lex $P2488, "%adverbs"
    unless_null $P2488, vivify_979
    $P2488 = root_new ['parrot';'Hash']
  vivify_979:
    set $P2489, $P2488["before"]
    unless_null $P2489, vivify_980
    new $P2489, "Undef"
  vivify_980:
    if $P2489, if_2487
.annotate 'line', 1682
    find_lex $P2494, "%adverbs"
    unless_null $P2494, vivify_981
    $P2494 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2495, $P2494["after"]
    unless_null $P2495, vivify_982
    new $P2495, "Undef"
  vivify_982:
    if $P2495, if_2493
.annotate 'line', 1685
    .const 'Sub' $P2500 = "228_1303857419.487" 
    capture_lex $P2500
    $P2500()
    goto if_2493_end
  if_2493:
.annotate 'line', 1683
    find_lex $P2496, "%adverbs"
    unless_null $P2496, vivify_986
    $P2496 = root_new ['parrot';'Hash']
  vivify_986:
    set $P2497, $P2496["after"]
    unless_null $P2497, vivify_987
    new $P2497, "Undef"
  vivify_987:
    store_lex "$where", $P2497
.annotate 'line', 1684
    new $P2498, "String"
    assign $P2498, "after"
    store_lex "$position", $P2498
  if_2493_end:
.annotate 'line', 1682
    goto if_2487_end
  if_2487:
.annotate 'line', 1680
    find_lex $P2490, "%adverbs"
    unless_null $P2490, vivify_988
    $P2490 = root_new ['parrot';'Hash']
  vivify_988:
    set $P2491, $P2490["before"]
    unless_null $P2491, vivify_989
    new $P2491, "Undef"
  vivify_989:
    store_lex "$where", $P2491
.annotate 'line', 1681
    new $P2492, "String"
    assign $P2492, "before"
    store_lex "$position", $P2492
  if_2487_end:
.annotate 'line', 1691
    new $P2511, "ResizableStringArray"
    store_lex "@new-stages", $P2511
.annotate 'line', 1692
    find_lex $P2513, "self"
    $P2514 = $P2513."stages"()
    defined $I2515, $P2514
    unless $I2515, for_undef_990
    iter $P2512, $P2514
    new $P2543, 'ExceptionHandler'
    set_label $P2543, loop2542_handler
    $P2543."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2543
  loop2542_test:
    unless $P2512, loop2542_done
    shift $P2516, $P2512
  loop2542_redo:
    .const 'Sub' $P2518 = "229_1303857419.487" 
    capture_lex $P2518
    $P2518($P2516)
  loop2542_next:
    goto loop2542_test
  loop2542_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2544, exception, 'type'
    eq $P2544, .CONTROL_LOOP_NEXT, loop2542_next
    eq $P2544, .CONTROL_LOOP_REDO, loop2542_redo
  loop2542_done:
    pop_eh 
  for_undef_990:
.annotate 'line', 1705
    find_lex $P2545, "self"
    find_lex $P2546, "@new-stages"
    unless_null $P2546, vivify_1004
    $P2546 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    $P2547 = $P2545."stages"($P2546)
.annotate 'line', 1676
    .return ($P2547)
  control_2477:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2548, exception, "payload"
    .return ($P2548)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2499"  :anon :subid("228_1303857419.487") :outer("227_1303857419.487")
.annotate 'line', 1686
    $P2501 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2501
    find_lex $P2502, "self"
    $P2503 = $P2502."stages"()
    clone $P2504, $P2503
    store_lex "@new-stages", $P2504
.annotate 'line', 1687
    find_lex $P2505, "@new-stages"
    unless_null $P2505, vivify_983
    $P2505 = root_new ['parrot';'ResizablePMCArray']
  vivify_983:
    find_lex $P2506, "$stagename"
    unless_null $P2506, vivify_984
    new $P2506, "Undef"
  vivify_984:
    push $P2505, $P2506
.annotate 'line', 1688
    find_lex $P2507, "self"
    find_lex $P2508, "@new-stages"
    unless_null $P2508, vivify_985
    $P2508 = root_new ['parrot';'ResizablePMCArray']
  vivify_985:
    $P2507."stages"($P2508)
.annotate 'line', 1689
    new $P2509, "Exception"
    set $P2509['type'], .CONTROL_RETURN
    new $P2510, "Integer"
    assign $P2510, 1
    setattribute $P2509, 'payload', $P2510
    throw $P2509
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2517"  :anon :subid("229_1303857419.487") :outer("227_1303857419.487")
    .param pmc param_2519
.annotate 'line', 1692
    .lex "$_", param_2519
.annotate 'line', 1693
    find_lex $P2522, "$_"
    unless_null $P2522, vivify_991
    new $P2522, "Undef"
  vivify_991:
    set $S2523, $P2522
    find_lex $P2524, "$where"
    unless_null $P2524, vivify_992
    new $P2524, "Undef"
  vivify_992:
    set $S2525, $P2524
    iseq $I2526, $S2523, $S2525
    if $I2526, if_2521
.annotate 'line', 1702
    find_lex $P2540, "@new-stages"
    unless_null $P2540, vivify_993
    $P2540 = root_new ['parrot';'ResizablePMCArray']
  vivify_993:
    find_lex $P2541, "$_"
    unless_null $P2541, vivify_994
    new $P2541, "Undef"
  vivify_994:
    push $P2540, $P2541
.annotate 'line', 1701
    set $P2520, $P2540
.annotate 'line', 1693
    goto if_2521_end
  if_2521:
.annotate 'line', 1694
    find_lex $P2529, "$position"
    unless_null $P2529, vivify_995
    new $P2529, "Undef"
  vivify_995:
    set $S2530, $P2529
    iseq $I2531, $S2530, "before"
    if $I2531, if_2528
.annotate 'line', 1698
    find_lex $P2536, "@new-stages"
    unless_null $P2536, vivify_996
    $P2536 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    find_lex $P2537, "$_"
    unless_null $P2537, vivify_997
    new $P2537, "Undef"
  vivify_997:
    push $P2536, $P2537
.annotate 'line', 1699
    find_lex $P2538, "@new-stages"
    unless_null $P2538, vivify_998
    $P2538 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2539, "$stagename"
    unless_null $P2539, vivify_999
    new $P2539, "Undef"
  vivify_999:
    push $P2538, $P2539
.annotate 'line', 1697
    set $P2527, $P2538
.annotate 'line', 1694
    goto if_2528_end
  if_2528:
.annotate 'line', 1695
    find_lex $P2532, "@new-stages"
    unless_null $P2532, vivify_1000
    $P2532 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    find_lex $P2533, "$stagename"
    unless_null $P2533, vivify_1001
    new $P2533, "Undef"
  vivify_1001:
    push $P2532, $P2533
.annotate 'line', 1696
    find_lex $P2534, "@new-stages"
    unless_null $P2534, vivify_1002
    $P2534 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    find_lex $P2535, "$_"
    unless_null $P2535, vivify_1003
    new $P2535, "Undef"
  vivify_1003:
    push $P2534, $P2535
.annotate 'line', 1694
    set $P2527, $P2534
  if_2528_end:
.annotate 'line', 1693
    set $P2520, $P2527
  if_2521_end:
.annotate 'line', 1692
    .return ($P2520)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2550
    .param pmc param_2551
.annotate 'line', 1708
    .const 'Sub' $P2589 = "231_1303857419.487" 
    capture_lex $P2589
    .lex "self", param_2550
    .lex "$name", param_2551
.annotate 'line', 1709
    $P2552 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2552
.annotate 'line', 1710
    new $P2553, "Undef"
    .lex "$sigil", $P2553
.annotate 'line', 1713
    new $P2554, "Undef"
    .lex "$idx", $P2554
.annotate 'line', 1721
    $P2555 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2555
.annotate 'line', 1709
    find_lex $P2556, "$name"
    unless_null $P2556, vivify_1005
    new $P2556, "Undef"
  vivify_1005:
    set $S2557, $P2556
    split $P2558, "::", $S2557
    store_lex "@ns", $P2558
.annotate 'line', 1710
    find_lex $P2559, "@ns"
    unless_null $P2559, vivify_1006
    $P2559 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    set $P2560, $P2559[0]
    unless_null $P2560, vivify_1007
    new $P2560, "Undef"
  vivify_1007:
    set $S2561, $P2560
    substr $S2562, $S2561, 0, 1
    new $P2563, 'String'
    set $P2563, $S2562
    store_lex "$sigil", $P2563
.annotate 'line', 1713
    find_lex $P2564, "$sigil"
    unless_null $P2564, vivify_1008
    new $P2564, "Undef"
  vivify_1008:
    set $S2565, $P2564
    index $I2566, "$@%&", $S2565
    new $P2567, 'Integer'
    set $P2567, $I2566
    store_lex "$idx", $P2567
.annotate 'line', 1714
    find_lex $P2569, "$idx"
    unless_null $P2569, vivify_1009
    new $P2569, "Undef"
  vivify_1009:
    set $N2570, $P2569
    isge $I2571, $N2570, 0.0
    unless $I2571, if_2568_end
.annotate 'line', 1715
    find_lex $P2572, "@ns"
    unless_null $P2572, vivify_1010
    $P2572 = root_new ['parrot';'ResizablePMCArray']
  vivify_1010:
    set $P2573, $P2572[0]
    unless_null $P2573, vivify_1011
    new $P2573, "Undef"
  vivify_1011:
    set $S2574, $P2573
    substr $S2575, $S2574, 1
    new $P2576, 'String'
    set $P2576, $S2575
    find_lex $P2577, "@ns"
    unless_null $P2577, vivify_1012
    $P2577 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2577
  vivify_1012:
    set $P2577[0], $P2576
.annotate 'line', 1716
    find_lex $P2578, "$sigil"
    unless_null $P2578, vivify_1013
    new $P2578, "Undef"
  vivify_1013:
    find_lex $P2579, "@ns"
    unless_null $P2579, vivify_1014
    $P2579 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
    set $P2580, $P2579[-1]
    unless_null $P2580, vivify_1015
    new $P2580, "Undef"
  vivify_1015:
    concat $P2581, $P2578, $P2580
    find_lex $P2582, "@ns"
    unless_null $P2582, vivify_1016
    $P2582 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2582
  vivify_1016:
    set $P2582[-1], $P2581
  if_2568_end:
.annotate 'line', 1714
    find_lex $P2583, "@actual_ns"
    unless_null $P2583, vivify_1017
    $P2583 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
.annotate 'line', 1722
    find_lex $P2585, "@ns"
    unless_null $P2585, vivify_1018
    $P2585 = root_new ['parrot';'ResizablePMCArray']
  vivify_1018:
    defined $I2586, $P2585
    unless $I2586, for_undef_1019
    iter $P2584, $P2585
    new $P2599, 'ExceptionHandler'
    set_label $P2599, loop2598_handler
    $P2599."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2599
  loop2598_test:
    unless $P2584, loop2598_done
    shift $P2587, $P2584
  loop2598_redo:
    .const 'Sub' $P2589 = "231_1303857419.487" 
    capture_lex $P2589
    $P2589($P2587)
  loop2598_next:
    goto loop2598_test
  loop2598_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2600, exception, 'type'
    eq $P2600, .CONTROL_LOOP_NEXT, loop2598_next
    eq $P2600, .CONTROL_LOOP_REDO, loop2598_redo
  loop2598_done:
    pop_eh 
  for_undef_1019:
    find_lex $P2601, "@actual_ns"
    unless_null $P2601, vivify_1023
    $P2601 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
.annotate 'line', 1708
    .return ($P2601)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2588"  :anon :subid("231_1303857419.487") :outer("230_1303857419.487")
    .param pmc param_2590
.annotate 'line', 1722
    .lex "$_", param_2590
.annotate 'line', 1723
    find_lex $P2593, "$_"
    unless_null $P2593, vivify_1020
    new $P2593, "Undef"
  vivify_1020:
    set $S2594, $P2593
    iseq $I2595, $S2594, ""
    unless $I2595, unless_2592
    new $P2591, 'Integer'
    set $P2591, $I2595
    goto unless_2592_end
  unless_2592:
    find_lex $P2596, "@actual_ns"
    unless_null $P2596, vivify_1021
    $P2596 = root_new ['parrot';'ResizablePMCArray']
  vivify_1021:
    find_lex $P2597, "$_"
    unless_null $P2597, vivify_1022
    new $P2597, "Undef"
  vivify_1022:
    push $P2596, $P2597
    set $P2591, $P2596
  unless_2592_end:
.annotate 'line', 1722
    .return ($P2591)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303857419.487") :outer("167_1303857419.487")
    .param pmc param_2603
    .param pmc param_2604
    .param pmc param_2605
    .param pmc param_2606 :optional :named("cache")
    .param int has_param_2606 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2603
    .lex "$target", param_2604
    .lex "$pos", param_2605
    if has_param_2606, optparam_1024
    new $P2607, "Undef"
    set param_2606, $P2607
  optparam_1024:
    .lex "$cache", param_2606
.annotate 'line', 1729

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
        
.annotate 'line', 1728
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2725"  :subid("234_1303857419.487") :outer("10_1303857419.487")
.annotate 'line', 1885
    .const 'Sub' $P2804 = "241_1303857419.487" 
    capture_lex $P2804
    .const 'Sub' $P2754 = "239_1303857419.487" 
    capture_lex $P2754
    .const 'Sub' $P2747 = "238_1303857419.487" 
    capture_lex $P2747
    .const 'Sub' $P2742 = "237_1303857419.487" 
    capture_lex $P2742
    .const 'Sub' $P2737 = "236_1303857419.487" 
    capture_lex $P2737
    .const 'Sub' $P2729 = "235_1303857419.487" 
    capture_lex $P2729
    .lex "$?PACKAGE", $P2727
    .lex "$?CLASS", $P2728
.annotate 'line', 1901
    .const 'Sub' $P2754 = "239_1303857419.487" 
    newclosure $P2802, $P2754
.annotate 'line', 1885
    .return ($P2802)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1026") :outer("234_1303857419.487")
.annotate 'line', 1885
    .const 'Sub' $P2726 = "234_1303857419.487" 
    .local pmc block
    set block, $P2726
    .const 'Sub' $P2804 = "241_1303857419.487" 
    capture_lex $P2804
    $P2804()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2803"  :anon :subid("241_1303857419.487") :outer("234_1303857419.487")
.annotate 'line', 1885
    nqp_get_sc_object $P2805, "1303857411.111", 4
    .local pmc type_obj
    set type_obj, $P2805
    get_how $P2806, type_obj
    get_hll_global $P2807, "NQPAttribute"
    $P2808 = $P2807."new"("@!arguments" :named("name"))
    $P2806."add_attribute"(type_obj, $P2808)
    get_how $P2809, type_obj
    get_hll_global $P2810, "NQPAttribute"
    $P2811 = $P2810."new"("%!options" :named("name"))
    $P2809."add_attribute"(type_obj, $P2811)
    get_how $P2812, type_obj
    .const 'Sub' $P2813 = "235_1303857419.487" 
    $P2812."add_method"(type_obj, "init", $P2813)
    get_how $P2814, type_obj
    .const 'Sub' $P2815 = "236_1303857419.487" 
    $P2814."add_method"(type_obj, "arguments", $P2815)
    get_how $P2816, type_obj
    .const 'Sub' $P2817 = "237_1303857419.487" 
    $P2816."add_method"(type_obj, "options", $P2817)
    get_how $P2818, type_obj
    .const 'Sub' $P2819 = "238_1303857419.487" 
    $P2818."add_method"(type_obj, "add-argument", $P2819)
    get_how $P2820, type_obj
    .const 'Sub' $P2821 = "239_1303857419.487" 
    $P2820."add_method"(type_obj, "add-option", $P2821)
    get_how $P2822, type_obj
    $P2823 = $P2822."compose"(type_obj)
    .return ($P2823)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303857419.487") :outer("234_1303857419.487")
    .param pmc param_2730
.annotate 'line', 1889
    .lex "self", param_2730
.annotate 'line', 1890
    new $P2731, "ResizablePMCArray"
    find_lex $P2732, "self"
    find_lex $P2733, "$?CLASS"
    setattribute $P2732, $P2733, "@!arguments", $P2731
.annotate 'line', 1891
    new $P2734, "Hash"
    find_lex $P2735, "self"
    find_lex $P2736, "$?CLASS"
    setattribute $P2735, $P2736, "%!options", $P2734
.annotate 'line', 1889
    .return ($P2734)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303857419.487") :outer("234_1303857419.487")
    .param pmc param_2738
.annotate 'line', 1894
    .lex "self", param_2738
    find_lex $P2739, "self"
    find_lex $P2740, "$?CLASS"
    getattribute $P2741, $P2739, $P2740, "@!arguments"
    unless_null $P2741, vivify_1027
    $P2741 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    .return ($P2741)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303857419.487") :outer("234_1303857419.487")
    .param pmc param_2743
.annotate 'line', 1895
    .lex "self", param_2743
    find_lex $P2744, "self"
    find_lex $P2745, "$?CLASS"
    getattribute $P2746, $P2744, $P2745, "%!options"
    unless_null $P2746, vivify_1028
    $P2746 = root_new ['parrot';'Hash']
  vivify_1028:
    .return ($P2746)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303857419.487") :outer("234_1303857419.487")
    .param pmc param_2748
    .param pmc param_2749
.annotate 'line', 1897
    .lex "self", param_2748
    .lex "$x", param_2749
.annotate 'line', 1898
    find_lex $P2750, "self"
    find_lex $P2751, "$?CLASS"
    getattribute $P2752, $P2750, $P2751, "@!arguments"
    unless_null $P2752, vivify_1029
    $P2752 = root_new ['parrot';'ResizablePMCArray']
  vivify_1029:
    find_lex $P2753, "$x"
    unless_null $P2753, vivify_1030
    new $P2753, "Undef"
  vivify_1030:
    push $P2752, $P2753
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303857419.487") :outer("234_1303857419.487")
    .param pmc param_2755
    .param pmc param_2756
    .param pmc param_2757
.annotate 'line', 1901
    .const 'Sub' $P2766 = "240_1303857419.487" 
    capture_lex $P2766
    .lex "self", param_2755
    .lex "$name", param_2756
    .lex "$value", param_2757
.annotate 'line', 1904
    find_lex $P2763, "$name"
    unless_null $P2763, vivify_1031
    new $P2763, "Undef"
  vivify_1031:
    find_lex $P2760, "self"
    find_lex $P2761, "$?CLASS"
    getattribute $P2762, $P2760, $P2761, "%!options"
    unless_null $P2762, vivify_1032
    $P2762 = root_new ['parrot';'Hash']
  vivify_1032:
    exists $I2764, $P2762[$P2763]
    if $I2764, if_2759
.annotate 'line', 1913
    find_lex $P2797, "$value"
    unless_null $P2797, vivify_1033
    new $P2797, "Undef"
  vivify_1033:
    find_lex $P2798, "$name"
    unless_null $P2798, vivify_1034
    new $P2798, "Undef"
  vivify_1034:
    find_lex $P2799, "self"
    find_lex $P2800, "$?CLASS"
    getattribute $P2801, $P2799, $P2800, "%!options"
    unless_null $P2801, vivify_1035
    $P2801 = root_new ['parrot';'Hash']
    setattribute $P2799, $P2800, "%!options", $P2801
  vivify_1035:
    set $P2801[$P2798], $P2797
.annotate 'line', 1912
    set $P2758, $P2797
.annotate 'line', 1904
    goto if_2759_end
  if_2759:
    .const 'Sub' $P2766 = "240_1303857419.487" 
    capture_lex $P2766
    $P2796 = $P2766()
    set $P2758, $P2796
  if_2759_end:
.annotate 'line', 1901
    .return ($P2758)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2765"  :anon :subid("240_1303857419.487") :outer("239_1303857419.487")
.annotate 'line', 1905
    new $P2767, "Undef"
    .lex "$t", $P2767
    find_lex $P2768, "self"
    find_lex $P2769, "$?CLASS"
    getattribute $P2770, $P2768, $P2769, "%!options"
    unless_null $P2770, vivify_1036
    $P2770 = root_new ['parrot';'Hash']
  vivify_1036:
    typeof $S2771, $P2770
    new $P2772, 'String'
    set $P2772, $S2771
    store_lex "$t", $P2772
.annotate 'line', 1906
    find_lex $P2773, "$t"
    unless_null $P2773, vivify_1037
    new $P2773, "Undef"
  vivify_1037:
    "say"($P2773)
.annotate 'line', 1907
    find_lex $P2776, "$t"
    unless_null $P2776, vivify_1038
    new $P2776, "Undef"
  vivify_1038:
    set $S2777, $P2776
    iseq $I2778, $S2777, "ResizablePMCArray"
    if $I2778, if_2775
.annotate 'line', 1910
    find_lex $P2785, "$name"
    unless_null $P2785, vivify_1039
    new $P2785, "Undef"
  vivify_1039:
    find_lex $P2786, "self"
    find_lex $P2787, "$?CLASS"
    getattribute $P2788, $P2786, $P2787, "%!options"
    unless_null $P2788, vivify_1040
    $P2788 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2789, $P2788[$P2785]
    unless_null $P2789, vivify_1041
    new $P2789, "Undef"
  vivify_1041:
    find_lex $P2790, "$name"
    unless_null $P2790, vivify_1042
    new $P2790, "Undef"
  vivify_1042:
    new $P2791, "ResizablePMCArray"
    push $P2791, $P2789
    push $P2791, $P2790
    find_lex $P2792, "$name"
    unless_null $P2792, vivify_1043
    new $P2792, "Undef"
  vivify_1043:
    find_lex $P2793, "self"
    find_lex $P2794, "$?CLASS"
    getattribute $P2795, $P2793, $P2794, "%!options"
    unless_null $P2795, vivify_1044
    $P2795 = root_new ['parrot';'Hash']
    setattribute $P2793, $P2794, "%!options", $P2795
  vivify_1044:
    set $P2795[$P2792], $P2791
.annotate 'line', 1909
    set $P2774, $P2791
.annotate 'line', 1907
    goto if_2775_end
  if_2775:
.annotate 'line', 1908
    find_lex $P2779, "$name"
    unless_null $P2779, vivify_1045
    new $P2779, "Undef"
  vivify_1045:
    find_lex $P2780, "self"
    find_lex $P2781, "$?CLASS"
    getattribute $P2782, $P2780, $P2781, "%!options"
    unless_null $P2782, vivify_1046
    $P2782 = root_new ['parrot';'Hash']
  vivify_1046:
    set $P2783, $P2782[$P2779]
    unless_null $P2783, vivify_1047
    new $P2783, "Undef"
  vivify_1047:
    find_lex $P2784, "$value"
    unless_null $P2784, vivify_1048
    new $P2784, "Undef"
  vivify_1048:
    push $P2783, $P2784
.annotate 'line', 1907
    set $P2774, $P2783
  if_2775_end:
.annotate 'line', 1904
    .return ($P2774)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2824"  :subid("242_1303857419.487") :outer("10_1303857419.487")
.annotate 'line', 1918
    .const 'Sub' $P3254 = "261_1303857419.487" 
    capture_lex $P3254
    .const 'Sub' $P2965 = "253_1303857419.487" 
    capture_lex $P2965
    .const 'Sub' $P2953 = "252_1303857419.487" 
    capture_lex $P2953
    .const 'Sub' $P2929 = "251_1303857419.487" 
    capture_lex $P2929
    .const 'Sub' $P2880 = "249_1303857419.487" 
    capture_lex $P2880
    .const 'Sub' $P2874 = "248_1303857419.487" 
    capture_lex $P2874
    .const 'Sub' $P2866 = "247_1303857419.487" 
    capture_lex $P2866
    .const 'Sub' $P2842 = "245_1303857419.487" 
    capture_lex $P2842
    .const 'Sub' $P2837 = "244_1303857419.487" 
    capture_lex $P2837
    .const 'Sub' $P2828 = "243_1303857419.487" 
    capture_lex $P2828
    .lex "$?PACKAGE", $P2826
    .lex "$?CLASS", $P2827
.annotate 'line', 1978
    .const 'Sub' $P2965 = "253_1303857419.487" 
    newclosure $P3252, $P2965
.annotate 'line', 1918
    .return ($P3252)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1049") :outer("242_1303857419.487")
.annotate 'line', 1918
    .const 'Sub' $P2825 = "242_1303857419.487" 
    .local pmc block
    set block, $P2825
    .const 'Sub' $P3254 = "261_1303857419.487" 
    capture_lex $P3254
    $P3254()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3253"  :anon :subid("261_1303857419.487") :outer("242_1303857419.487")
.annotate 'line', 1918
    nqp_get_sc_object $P3255, "1303857411.111", 5
    .local pmc type_obj
    set type_obj, $P3255
    get_how $P3256, type_obj
    get_hll_global $P3257, "NQPAttribute"
    $P3258 = $P3257."new"("@!specs" :named("name"))
    $P3256."add_attribute"(type_obj, $P3258)
    get_how $P3259, type_obj
    get_hll_global $P3260, "NQPAttribute"
    $P3261 = $P3260."new"("%!options" :named("name"))
    $P3259."add_attribute"(type_obj, $P3261)
    get_how $P3262, type_obj
    get_hll_global $P3263, "NQPAttribute"
    $P3264 = $P3263."new"("%!stopper" :named("name"))
    $P3262."add_attribute"(type_obj, $P3264)
    get_how $P3265, type_obj
    get_hll_global $P3266, "NQPAttribute"
    $P3267 = $P3266."new"("$!stop-after-first-arg" :named("name"))
    $P3265."add_attribute"(type_obj, $P3267)
    get_how $P3268, type_obj
    .const 'Sub' $P3269 = "243_1303857419.487" 
    $P3268."add_method"(type_obj, "new", $P3269)
    get_how $P3270, type_obj
    .const 'Sub' $P3271 = "244_1303857419.487" 
    $P3270."add_method"(type_obj, "stop-after-first-arg", $P3271)
    get_how $P3272, type_obj
    .const 'Sub' $P3273 = "245_1303857419.487" 
    $P3272."add_method"(type_obj, "BUILD", $P3273)
    get_how $P3274, type_obj
    .const 'Sub' $P3275 = "247_1303857419.487" 
    $P3274."add_method"(type_obj, "add-stopper", $P3275)
    get_how $P3276, type_obj
    .const 'Sub' $P3277 = "248_1303857419.487" 
    $P3276."add_method"(type_obj, "split-option-aliases", $P3277)
    get_how $P3278, type_obj
    .const 'Sub' $P3279 = "249_1303857419.487" 
    $P3278."add_method"(type_obj, "add-spec", $P3279)
    get_how $P3280, type_obj
    .const 'Sub' $P3281 = "251_1303857419.487" 
    $P3280."add_method"(type_obj, "is-option", $P3281)
    get_how $P3282, type_obj
    .const 'Sub' $P3283 = "252_1303857419.487" 
    $P3282."add_method"(type_obj, "wants-value", $P3283)
    get_how $P3284, type_obj
    .const 'Sub' $P3285 = "253_1303857419.487" 
    $P3284."add_method"(type_obj, "parse", $P3285)
    get_how $P3286, type_obj
    $P3287 = $P3286."compose"(type_obj)
    .return ($P3287)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2829
    .param pmc param_2830
.annotate 'line', 1924
    .lex "self", param_2829
    .lex "@specs", param_2830
.annotate 'line', 1925
    new $P2831, "Undef"
    .lex "$obj", $P2831
    find_lex $P2832, "self"
    $P2833 = $P2832."CREATE"()
    store_lex "$obj", $P2833
.annotate 'line', 1926
    find_lex $P2834, "$obj"
    unless_null $P2834, vivify_1050
    new $P2834, "Undef"
  vivify_1050:
    find_lex $P2835, "@specs"
    unless_null $P2835, vivify_1051
    $P2835 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    $P2834."BUILD"($P2835 :named("specs"))
    find_lex $P2836, "$obj"
    unless_null $P2836, vivify_1052
    new $P2836, "Undef"
  vivify_1052:
.annotate 'line', 1924
    .return ($P2836)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2838
.annotate 'line', 1930
    .lex "self", param_2838
.annotate 'line', 1931
    new $P2839, "Integer"
    assign $P2839, 1
    find_lex $P2840, "self"
    find_lex $P2841, "$?CLASS"
    setattribute $P2840, $P2841, "$!stop-after-first-arg", $P2839
.annotate 'line', 1930
    .return ($P2839)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2843
    .param pmc param_2844 :optional :named("specs")
    .param int has_param_2844 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2858 = "246_1303857419.487" 
    capture_lex $P2858
    .lex "self", param_2843
    if has_param_2844, optparam_1053
    $P2845 = root_new ['parrot';'ResizablePMCArray']
    set param_2844, $P2845
  optparam_1053:
    .lex "@specs", param_2844
.annotate 'line', 1935
    new $P2846, "Integer"
    assign $P2846, 1
    find_lex $P2847, "self"
    find_lex $P2848, "$?CLASS"
    getattribute $P2849, $P2847, $P2848, "%!stopper"
    unless_null $P2849, vivify_1054
    $P2849 = root_new ['parrot';'Hash']
    setattribute $P2847, $P2848, "%!stopper", $P2849
  vivify_1054:
    set $P2849["--"], $P2846
.annotate 'line', 1936
    new $P2850, "Integer"
    assign $P2850, 0
    find_lex $P2851, "self"
    find_lex $P2852, "$?CLASS"
    setattribute $P2851, $P2852, "$!stop-after-first-arg", $P2850
.annotate 'line', 1937
    find_lex $P2854, "@specs"
    unless_null $P2854, vivify_1055
    $P2854 = root_new ['parrot';'ResizablePMCArray']
  vivify_1055:
    defined $I2855, $P2854
    unless $I2855, for_undef_1056
    iter $P2853, $P2854
    new $P2864, 'ExceptionHandler'
    set_label $P2864, loop2863_handler
    $P2864."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2864
  loop2863_test:
    unless $P2853, loop2863_done
    shift $P2856, $P2853
  loop2863_redo:
    .const 'Sub' $P2858 = "246_1303857419.487" 
    capture_lex $P2858
    $P2858($P2856)
  loop2863_next:
    goto loop2863_test
  loop2863_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2865, exception, 'type'
    eq $P2865, .CONTROL_LOOP_NEXT, loop2863_next
    eq $P2865, .CONTROL_LOOP_REDO, loop2863_redo
  loop2863_done:
    pop_eh 
  for_undef_1056:
.annotate 'line', 1934
    .return ($P2853)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2857"  :anon :subid("246_1303857419.487") :outer("245_1303857419.487")
    .param pmc param_2859
.annotate 'line', 1937
    .lex "$_", param_2859
.annotate 'line', 1938
    find_lex $P2860, "self"
    find_lex $P2861, "$_"
    unless_null $P2861, vivify_1057
    new $P2861, "Undef"
  vivify_1057:
    $P2862 = $P2860."add-spec"($P2861)
.annotate 'line', 1937
    .return ($P2862)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2867
    .param pmc param_2868
.annotate 'line', 1941
    .lex "self", param_2867
    .lex "$x", param_2868
.annotate 'line', 1942
    new $P2869, "Integer"
    assign $P2869, 1
    find_lex $P2870, "$x"
    unless_null $P2870, vivify_1058
    new $P2870, "Undef"
  vivify_1058:
    find_lex $P2871, "self"
    find_lex $P2872, "$?CLASS"
    getattribute $P2873, $P2871, $P2872, "%!stopper"
    unless_null $P2873, vivify_1059
    $P2873 = root_new ['parrot';'Hash']
    setattribute $P2871, $P2872, "%!stopper", $P2873
  vivify_1059:
    set $P2873[$P2870], $P2869
.annotate 'line', 1941
    .return ($P2869)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2875
    .param pmc param_2876
.annotate 'line', 1945
    .lex "self", param_2875
    .lex "$s", param_2876
.annotate 'line', 1946
    find_lex $P2877, "$s"
    unless_null $P2877, vivify_1060
    new $P2877, "Undef"
  vivify_1060:
    set $S2878, $P2877
    split $P2879, "|", $S2878
.annotate 'line', 1945
    .return ($P2879)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2881
    .param pmc param_2882
.annotate 'line', 1950
    .const 'Sub' $P2919 = "250_1303857419.487" 
    capture_lex $P2919
    .lex "self", param_2881
    .lex "$s", param_2882
.annotate 'line', 1951
    new $P2883, "Undef"
    .lex "$i", $P2883
.annotate 'line', 1952
    new $P2884, "Undef"
    .lex "$type", $P2884
.annotate 'line', 1953
    $P2885 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2885
.annotate 'line', 1951
    find_lex $P2886, "$s"
    unless_null $P2886, vivify_1061
    new $P2886, "Undef"
  vivify_1061:
    set $S2887, $P2886
    index $I2888, $S2887, "="
    new $P2889, 'Integer'
    set $P2889, $I2888
    store_lex "$i", $P2889
    find_lex $P2890, "$type"
    unless_null $P2890, vivify_1062
    new $P2890, "Undef"
  vivify_1062:
    find_lex $P2891, "@options"
    unless_null $P2891, vivify_1063
    $P2891 = root_new ['parrot';'ResizablePMCArray']
  vivify_1063:
.annotate 'line', 1954
    find_lex $P2893, "$i"
    unless_null $P2893, vivify_1064
    new $P2893, "Undef"
  vivify_1064:
    set $N2894, $P2893
    islt $I2895, $N2894, 0.0
    if $I2895, if_2892
.annotate 'line', 1958
    find_lex $P2900, "$s"
    unless_null $P2900, vivify_1065
    new $P2900, "Undef"
  vivify_1065:
    set $S2901, $P2900
    find_lex $P2902, "$i"
    unless_null $P2902, vivify_1066
    new $P2902, "Undef"
  vivify_1066:
    add $P2903, $P2902, 1
    set $I2904, $P2903
    substr $S2905, $S2901, $I2904
    new $P2906, 'String'
    set $P2906, $S2905
    store_lex "$type", $P2906
.annotate 'line', 1959
    find_lex $P2907, "self"
    find_lex $P2908, "$s"
    unless_null $P2908, vivify_1067
    new $P2908, "Undef"
  vivify_1067:
    set $S2909, $P2908
    find_lex $P2910, "$i"
    unless_null $P2910, vivify_1068
    new $P2910, "Undef"
  vivify_1068:
    set $I2911, $P2910
    substr $S2912, $S2909, 0, $I2911
    $P2913 = $P2907."split-option-aliases"($S2912)
    store_lex "@options", $P2913
.annotate 'line', 1957
    goto if_2892_end
  if_2892:
.annotate 'line', 1955
    new $P2896, "String"
    assign $P2896, "b"
    store_lex "$type", $P2896
.annotate 'line', 1956
    find_lex $P2897, "self"
    find_lex $P2898, "$s"
    unless_null $P2898, vivify_1069
    new $P2898, "Undef"
  vivify_1069:
    $P2899 = $P2897."split-option-aliases"($P2898)
    store_lex "@options", $P2899
  if_2892_end:
.annotate 'line', 1961
    find_lex $P2915, "@options"
    unless_null $P2915, vivify_1070
    $P2915 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    defined $I2916, $P2915
    unless $I2916, for_undef_1071
    iter $P2914, $P2915
    new $P2927, 'ExceptionHandler'
    set_label $P2927, loop2926_handler
    $P2927."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2927
  loop2926_test:
    unless $P2914, loop2926_done
    shift $P2917, $P2914
  loop2926_redo:
    .const 'Sub' $P2919 = "250_1303857419.487" 
    capture_lex $P2919
    $P2919($P2917)
  loop2926_next:
    goto loop2926_test
  loop2926_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2928, exception, 'type'
    eq $P2928, .CONTROL_LOOP_NEXT, loop2926_next
    eq $P2928, .CONTROL_LOOP_REDO, loop2926_redo
  loop2926_done:
    pop_eh 
  for_undef_1071:
.annotate 'line', 1950
    .return ($P2914)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2918"  :anon :subid("250_1303857419.487") :outer("249_1303857419.487")
    .param pmc param_2920
.annotate 'line', 1961
    .lex "$_", param_2920
.annotate 'line', 1962
    find_lex $P2921, "$type"
    unless_null $P2921, vivify_1072
    new $P2921, "Undef"
  vivify_1072:
    find_lex $P2922, "$_"
    unless_null $P2922, vivify_1073
    new $P2922, "Undef"
  vivify_1073:
    find_lex $P2923, "self"
    find_lex $P2924, "$?CLASS"
    getattribute $P2925, $P2923, $P2924, "%!options"
    unless_null $P2925, vivify_1074
    $P2925 = root_new ['parrot';'Hash']
    setattribute $P2923, $P2924, "%!options", $P2925
  vivify_1074:
    set $P2925[$P2922], $P2921
.annotate 'line', 1961
    .return ($P2921)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2932
    .param pmc param_2933
.annotate 'line', 1967
    new $P2931, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2931, control_2930
    push_eh $P2931
    .lex "self", param_2932
    .lex "$x", param_2933
.annotate 'line', 1968
    find_lex $P2937, "$x"
    unless_null $P2937, vivify_1075
    new $P2937, "Undef"
  vivify_1075:
    set $S2938, $P2937
    iseq $I2939, $S2938, "-"
    unless $I2939, unless_2936
    new $P2935, 'Integer'
    set $P2935, $I2939
    goto unless_2936_end
  unless_2936:
    find_lex $P2940, "$x"
    unless_null $P2940, vivify_1076
    new $P2940, "Undef"
  vivify_1076:
    set $S2941, $P2940
    iseq $I2942, $S2941, "--"
    new $P2935, 'Integer'
    set $P2935, $I2942
  unless_2936_end:
    unless $P2935, if_2934_end
    new $P2943, "Exception"
    set $P2943['type'], .CONTROL_RETURN
    new $P2944, "Integer"
    assign $P2944, 0
    setattribute $P2943, 'payload', $P2944
    throw $P2943
  if_2934_end:
.annotate 'line', 1969
    find_lex $P2946, "$x"
    unless_null $P2946, vivify_1077
    new $P2946, "Undef"
  vivify_1077:
    set $S2947, $P2946
    substr $S2948, $S2947, 0, 1
    iseq $I2949, $S2948, "-"
    unless $I2949, if_2945_end
    new $P2950, "Exception"
    set $P2950['type'], .CONTROL_RETURN
    new $P2951, "Integer"
    assign $P2951, 1
    setattribute $P2950, 'payload', $P2951
    throw $P2950
  if_2945_end:
.annotate 'line', 1967
    .return (0)
  control_2930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2952, exception, "payload"
    .return ($P2952)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2954
    .param pmc param_2955
.annotate 'line', 1973
    .lex "self", param_2954
    .lex "$x", param_2955
.annotate 'line', 1974
    new $P2956, "Undef"
    .lex "$spec", $P2956
    find_lex $P2957, "$x"
    unless_null $P2957, vivify_1078
    new $P2957, "Undef"
  vivify_1078:
    find_lex $P2958, "self"
    find_lex $P2959, "$?CLASS"
    getattribute $P2960, $P2958, $P2959, "%!options"
    unless_null $P2960, vivify_1079
    $P2960 = root_new ['parrot';'Hash']
  vivify_1079:
    set $P2961, $P2960[$P2957]
    unless_null $P2961, vivify_1080
    new $P2961, "Undef"
  vivify_1080:
    store_lex "$spec", $P2961
.annotate 'line', 1975
    find_lex $P2962, "$spec"
    unless_null $P2962, vivify_1081
    new $P2962, "Undef"
  vivify_1081:
    set $S2963, $P2962
    iseq $I2964, $S2963, "s"
.annotate 'line', 1973
    .return ($I2964)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303857419.487") :outer("242_1303857419.487")
    .param pmc param_2968
    .param pmc param_2969
.annotate 'line', 1978
    .const 'Sub' $P3060 = "256_1303857419.487" 
    capture_lex $P3060
    .const 'Sub' $P3022 = "255_1303857419.487" 
    capture_lex $P3022
    .const 'Sub' $P2973 = "254_1303857419.487" 
    capture_lex $P2973
    new $P2967, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2967, control_2966
    push_eh $P2967
    .lex "self", param_2968
    .lex "@args", param_2969
.annotate 'line', 1979
    new $P2970, "Undef"
    .lex "$i", $P2970
.annotate 'line', 1980
    new $P2971, "Undef"
    .lex "$arg-count", $P2971
.annotate 'line', 1982
    new $P2972, "Undef"
    .lex "$result", $P2972
.annotate 'line', 1986
    .const 'Sub' $P2973 = "254_1303857419.487" 
    newclosure $P3021, $P2973
    .lex "get-value", $P3021
.annotate 'line', 2001
    .const 'Sub' $P3022 = "255_1303857419.487" 
    newclosure $P3040, $P3022
    .lex "slurp-rest", $P3040
.annotate 'line', 1979
    new $P3041, "Integer"
    assign $P3041, 0
    store_lex "$i", $P3041
.annotate 'line', 1980
    find_lex $P3042, "@args"
    unless_null $P3042, vivify_1107
    $P3042 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $N3043, $P3042
    new $P3044, 'Float'
    set $P3044, $N3043
    store_lex "$arg-count", $P3044
.annotate 'line', 1982
    get_hll_global $P3045, "GLOBAL"
    nqp_get_package_through_who $P3046, $P3045, "HLL"
    nqp_get_package_through_who $P3047, $P3046, "CommandLine"
    get_who $P3048, $P3047
    set $P3049, $P3048["Result"]
    $P3050 = $P3049."new"()
    store_lex "$result", $P3050
.annotate 'line', 1983
    find_lex $P3051, "$result"
    unless_null $P3051, vivify_1108
    new $P3051, "Undef"
  vivify_1108:
    $P3051."init"()
    find_lex $P3052, "get-value"
    find_lex $P3053, "slurp-rest"
.annotate 'line', 2009
    new $P3247, 'ExceptionHandler'
    set_label $P3247, loop3246_handler
    $P3247."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3247
  loop3246_test:
    find_lex $P3054, "$i"
    unless_null $P3054, vivify_1109
    new $P3054, "Undef"
  vivify_1109:
    set $N3055, $P3054
    find_lex $P3056, "$arg-count"
    unless_null $P3056, vivify_1110
    new $P3056, "Undef"
  vivify_1110:
    set $N3057, $P3056
    islt $I3058, $N3055, $N3057
    unless $I3058, loop3246_done
  loop3246_redo:
    .const 'Sub' $P3060 = "256_1303857419.487" 
    capture_lex $P3060
    $P3060()
  loop3246_next:
    goto loop3246_test
  loop3246_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3248, exception, 'type'
    eq $P3248, .CONTROL_LOOP_NEXT, loop3246_next
    eq $P3248, .CONTROL_LOOP_REDO, loop3246_redo
  loop3246_done:
    pop_eh 
.annotate 'line', 2061
    new $P3249, "Exception"
    set $P3249['type'], .CONTROL_RETURN
    find_lex $P3250, "$result"
    unless_null $P3250, vivify_1171
    new $P3250, "Undef"
  vivify_1171:
    setattribute $P3249, 'payload', $P3250
    throw $P3249
.annotate 'line', 1978
    .return ()
  control_2966:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3251, exception, "payload"
    .return ($P3251)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303857419.487") :outer("253_1303857419.487")
    .param pmc param_2974
.annotate 'line', 1986
    .lex "$opt", param_2974
.annotate 'line', 1987
    find_lex $P2977, "$i"
    unless_null $P2977, vivify_1082
    new $P2977, "Undef"
  vivify_1082:
    set $N2978, $P2977
    find_lex $P2979, "$arg-count"
    unless_null $P2979, vivify_1083
    new $P2979, "Undef"
  vivify_1083:
    sub $P2980, $P2979, 1
    set $N2981, $P2980
    iseq $I2982, $N2978, $N2981
    if $I2982, if_2976
.annotate 'line', 1989
    find_lex $P2989, "self"
    find_lex $P2990, "$i"
    unless_null $P2990, vivify_1084
    new $P2990, "Undef"
  vivify_1084:
    add $P2991, $P2990, 1
    set $I2992, $P2991
    find_lex $P2993, "@args"
    unless_null $P2993, vivify_1085
    $P2993 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2994, $P2993[$I2992]
    unless_null $P2994, vivify_1086
    new $P2994, "Undef"
  vivify_1086:
    $P2995 = $P2989."is-option"($P2994)
    if $P2995, if_2988
.annotate 'line', 1991
    find_lex $P3002, "$i"
    unless_null $P3002, vivify_1087
    new $P3002, "Undef"
  vivify_1087:
    add $P3003, $P3002, 1
    set $I3004, $P3003
    find_lex $P3005, "@args"
    unless_null $P3005, vivify_1088
    $P3005 = root_new ['parrot';'ResizablePMCArray']
  vivify_1088:
    set $P3006, $P3005[$I3004]
    unless_null $P3006, vivify_1089
    new $P3006, "Undef"
  vivify_1089:
    find_lex $P3007, "self"
    find_lex $P3008, "$?CLASS"
    getattribute $P3009, $P3007, $P3008, "%!stopper"
    unless_null $P3009, vivify_1090
    $P3009 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P3010, $P3009[$P3006]
    unless_null $P3010, vivify_1091
    new $P3010, "Undef"
  vivify_1091:
    if $P3010, if_3001
.annotate 'line', 1993
    find_lex $P3015, "$i"
    unless_null $P3015, vivify_1092
    new $P3015, "Undef"
  vivify_1092:
    clone $P3016, $P3015
    inc $P3015
    find_lex $P3017, "$i"
    unless_null $P3017, vivify_1093
    new $P3017, "Undef"
  vivify_1093:
    set $I3018, $P3017
    find_lex $P3019, "@args"
    unless_null $P3019, vivify_1094
    $P3019 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P3020, $P3019[$I3018]
    unless_null $P3020, vivify_1095
    new $P3020, "Undef"
  vivify_1095:
    set $P3000, $P3020
.annotate 'line', 1991
    goto if_3001_end
  if_3001:
.annotate 'line', 1992
    new $P3011, 'String'
    set $P3011, "Option "
    find_lex $P3012, "$opt"
    unless_null $P3012, vivify_1096
    new $P3012, "Undef"
  vivify_1096:
    concat $P3013, $P3011, $P3012
    concat $P3014, $P3013, " needs a value, but is followed by a stopper"
    die $P3014
  if_3001_end:
.annotate 'line', 1991
    set $P2987, $P3000
.annotate 'line', 1989
    goto if_2988_end
  if_2988:
.annotate 'line', 1990
    new $P2996, 'String'
    set $P2996, "Option "
    find_lex $P2997, "$opt"
    unless_null $P2997, vivify_1097
    new $P2997, "Undef"
  vivify_1097:
    concat $P2998, $P2996, $P2997
    concat $P2999, $P2998, " needs a value, but is followed by an option"
    die $P2999
  if_2988_end:
.annotate 'line', 1989
    set $P2975, $P2987
.annotate 'line', 1987
    goto if_2976_end
  if_2976:
.annotate 'line', 1988
    new $P2983, 'String'
    set $P2983, "Option "
    find_lex $P2984, "$opt"
    unless_null $P2984, vivify_1098
    new $P2984, "Undef"
  vivify_1098:
    concat $P2985, $P2983, $P2984
    concat $P2986, $P2985, " needs a value"
    die $P2986
  if_2976_end:
.annotate 'line', 1986
    .return ($P2975)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303857419.487") :outer("253_1303857419.487")
.annotate 'line', 2001
    find_lex $P3023, "$i"
    unless_null $P3023, vivify_1099
    new $P3023, "Undef"
  vivify_1099:
    clone $P3024, $P3023
    inc $P3023
.annotate 'line', 2003
    new $P3038, 'ExceptionHandler'
    set_label $P3038, loop3037_handler
    $P3038."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3038
  loop3037_test:
    find_lex $P3025, "$i"
    unless_null $P3025, vivify_1100
    new $P3025, "Undef"
  vivify_1100:
    set $N3026, $P3025
    find_lex $P3027, "$arg-count"
    unless_null $P3027, vivify_1101
    new $P3027, "Undef"
  vivify_1101:
    set $N3028, $P3027
    islt $I3029, $N3026, $N3028
    unless $I3029, loop3037_done
  loop3037_redo:
.annotate 'line', 2004
    find_lex $P3030, "$result"
    unless_null $P3030, vivify_1102
    new $P3030, "Undef"
  vivify_1102:
    find_lex $P3031, "$i"
    unless_null $P3031, vivify_1103
    new $P3031, "Undef"
  vivify_1103:
    set $I3032, $P3031
    find_lex $P3033, "@args"
    unless_null $P3033, vivify_1104
    $P3033 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $P3034, $P3033[$I3032]
    unless_null $P3034, vivify_1105
    new $P3034, "Undef"
  vivify_1105:
    $P3030."add-argument"($P3034)
    find_lex $P3035, "$i"
    unless_null $P3035, vivify_1106
    new $P3035, "Undef"
  vivify_1106:
    clone $P3036, $P3035
    inc $P3035
  loop3037_next:
.annotate 'line', 2003
    goto loop3037_test
  loop3037_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3039, exception, 'type'
    eq $P3039, .CONTROL_LOOP_NEXT, loop3037_next
    eq $P3039, .CONTROL_LOOP_REDO, loop3037_redo
  loop3037_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I3029)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3059"  :anon :subid("256_1303857419.487") :outer("253_1303857419.487")
.annotate 'line', 2009
    .const 'Sub' $P3162 = "258_1303857419.487" 
    capture_lex $P3162
    .const 'Sub' $P3076 = "257_1303857419.487" 
    capture_lex $P3076
.annotate 'line', 2010
    new $P3061, "Undef"
    .lex "$cur", $P3061
    find_lex $P3062, "$i"
    unless_null $P3062, vivify_1111
    new $P3062, "Undef"
  vivify_1111:
    set $I3063, $P3062
    find_lex $P3064, "@args"
    unless_null $P3064, vivify_1112
    $P3064 = root_new ['parrot';'ResizablePMCArray']
  vivify_1112:
    set $P3065, $P3064[$I3063]
    unless_null $P3065, vivify_1113
    new $P3065, "Undef"
  vivify_1113:
    store_lex "$cur", $P3065
.annotate 'line', 2011
    find_lex $P3067, "self"
    find_lex $P3068, "$cur"
    unless_null $P3068, vivify_1114
    new $P3068, "Undef"
  vivify_1114:
    $P3069 = $P3067."is-option"($P3068)
    if $P3069, if_3066
.annotate 'line', 2053
    find_lex $P3233, "$cur"
    unless_null $P3233, vivify_1115
    new $P3233, "Undef"
  vivify_1115:
    find_lex $P3234, "self"
    find_lex $P3235, "$?CLASS"
    getattribute $P3236, $P3234, $P3235, "%!stopper"
    unless_null $P3236, vivify_1116
    $P3236 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P3237, $P3236[$P3233]
    unless_null $P3237, vivify_1117
    new $P3237, "Undef"
  vivify_1117:
    if $P3237, if_3232
.annotate 'line', 2056
    find_lex $P3238, "$result"
    unless_null $P3238, vivify_1118
    new $P3238, "Undef"
  vivify_1118:
    find_lex $P3239, "$cur"
    unless_null $P3239, vivify_1119
    new $P3239, "Undef"
  vivify_1119:
    $P3238."add-argument"($P3239)
.annotate 'line', 2057
    find_lex $P3241, "self"
    find_lex $P3242, "$?CLASS"
    getattribute $P3243, $P3241, $P3242, "$!stop-after-first-arg"
    unless_null $P3243, vivify_1120
    new $P3243, "Undef"
  vivify_1120:
    unless $P3243, if_3240_end
    "slurp-rest"()
  if_3240_end:
.annotate 'line', 2055
    goto if_3232_end
  if_3232:
.annotate 'line', 2054
    "slurp-rest"()
  if_3232_end:
.annotate 'line', 2053
    goto if_3066_end
  if_3066:
.annotate 'line', 2012
    find_lex $P3071, "$cur"
    unless_null $P3071, vivify_1121
    new $P3071, "Undef"
  vivify_1121:
    set $S3072, $P3071
    substr $S3073, $S3072, 0, 2
    iseq $I3074, $S3073, "--"
    if $I3074, if_3070
.annotate 'line', 2031
    .const 'Sub' $P3162 = "258_1303857419.487" 
    capture_lex $P3162
    $P3162()
    goto if_3070_end
  if_3070:
.annotate 'line', 2012
    .const 'Sub' $P3076 = "257_1303857419.487" 
    capture_lex $P3076
    $P3076()
  if_3070_end:
  if_3066_end:
.annotate 'line', 2011
    find_lex $P3244, "$i"
    unless_null $P3244, vivify_1170
    new $P3244, "Undef"
  vivify_1170:
    clone $P3245, $P3244
    inc $P3244
.annotate 'line', 2009
    .return ($P3245)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3161"  :anon :subid("258_1303857419.487") :outer("256_1303857419.487")
.annotate 'line', 2031
    .const 'Sub' $P3207 = "259_1303857419.487" 
    capture_lex $P3207
.annotate 'line', 2032
    new $P3163, "Undef"
    .lex "$opt", $P3163
    find_lex $P3164, "$cur"
    unless_null $P3164, vivify_1122
    new $P3164, "Undef"
  vivify_1122:
    set $S3165, $P3164
    substr $S3166, $S3165, 1
    new $P3167, 'String'
    set $P3167, $S3166
    store_lex "$opt", $P3167
.annotate 'line', 2033
    find_lex $P3170, "$opt"
    unless_null $P3170, vivify_1123
    new $P3170, "Undef"
  vivify_1123:
    set $S3171, $P3170
    length $I3172, $S3171
    set $N3173, $I3172
    iseq $I3174, $N3173, 1.0
    if $I3174, if_3169
.annotate 'line', 2043
    .const 'Sub' $P3207 = "259_1303857419.487" 
    capture_lex $P3207
    $P3231 = $P3207()
    set $P3168, $P3231
.annotate 'line', 2033
    goto if_3169_end
  if_3169:
.annotate 'line', 2035
    find_lex $P3176, "$opt"
    unless_null $P3176, vivify_1131
    new $P3176, "Undef"
  vivify_1131:
    find_lex $P3177, "self"
    find_lex $P3178, "$?CLASS"
    getattribute $P3179, $P3177, $P3178, "%!options"
    unless_null $P3179, vivify_1132
    $P3179 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P3180, $P3179[$P3176]
    unless_null $P3180, vivify_1133
    new $P3180, "Undef"
  vivify_1133:
    if $P3180, unless_3175_end
    new $P3181, 'String'
    set $P3181, "No such option -"
    find_lex $P3182, "$opt"
    unless_null $P3182, vivify_1134
    new $P3182, "Undef"
  vivify_1134:
    concat $P3183, $P3181, $P3182
    die $P3183
  unless_3175_end:
.annotate 'line', 2036
    find_lex $P3185, "self"
    find_lex $P3186, "$opt"
    unless_null $P3186, vivify_1135
    new $P3186, "Undef"
  vivify_1135:
    $P3187 = $P3185."wants-value"($P3186)
    if $P3187, if_3184
.annotate 'line', 2040
    find_lex $P3194, "$result"
    unless_null $P3194, vivify_1136
    new $P3194, "Undef"
  vivify_1136:
    find_lex $P3195, "$opt"
    unless_null $P3195, vivify_1137
    new $P3195, "Undef"
  vivify_1137:
    $P3194."add-option"($P3195, 1)
.annotate 'line', 2039
    goto if_3184_end
  if_3184:
.annotate 'line', 2037
    find_lex $P3188, "$result"
    unless_null $P3188, vivify_1138
    new $P3188, "Undef"
  vivify_1138:
    find_lex $P3189, "$opt"
    unless_null $P3189, vivify_1139
    new $P3189, "Undef"
  vivify_1139:
.annotate 'line', 2038
    new $P3190, 'String'
    set $P3190, "-"
    find_lex $P3191, "$opt"
    unless_null $P3191, vivify_1140
    new $P3191, "Undef"
  vivify_1140:
    concat $P3192, $P3190, $P3191
    $P3193 = "get-value"($P3192)
    $P3188."add-option"($P3189, $P3193)
  if_3184_end:
.annotate 'line', 2042
    new $P3198, 'String'
    set $P3198, "-"
    find_lex $P3199, "$opt"
    unless_null $P3199, vivify_1141
    new $P3199, "Undef"
  vivify_1141:
    concat $P3200, $P3198, $P3199
    find_lex $P3201, "self"
    find_lex $P3202, "$?CLASS"
    getattribute $P3203, $P3201, $P3202, "%!stopper"
    unless_null $P3203, vivify_1142
    $P3203 = root_new ['parrot';'Hash']
  vivify_1142:
    set $P3204, $P3203[$P3200]
    unless_null $P3204, vivify_1143
    new $P3204, "Undef"
  vivify_1143:
    if $P3204, if_3197
    set $P3196, $P3204
    goto if_3197_end
  if_3197:
    $P3205 = "slurp-rest"()
    set $P3196, $P3205
  if_3197_end:
.annotate 'line', 2033
    set $P3168, $P3196
  if_3169_end:
.annotate 'line', 2031
    .return ($P3168)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3206"  :anon :subid("259_1303857419.487") :outer("258_1303857419.487")
.annotate 'line', 2043
    .const 'Sub' $P3213 = "260_1303857419.487" 
    capture_lex $P3213
.annotate 'line', 2045
    new $P3208, "Undef"
    .lex "$iter", $P3208
    find_lex $P3209, "$opt"
    unless_null $P3209, vivify_1124
    new $P3209, "Undef"
  vivify_1124:
    iter $P3210, $P3209
    store_lex "$iter", $P3210
.annotate 'line', 2046
    new $P3229, 'ExceptionHandler'
    set_label $P3229, loop3228_handler
    $P3229."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3229
  loop3228_test:
    find_lex $P3211, "$iter"
    unless_null $P3211, vivify_1125
    new $P3211, "Undef"
  vivify_1125:
    unless $P3211, loop3228_done
  loop3228_redo:
    .const 'Sub' $P3213 = "260_1303857419.487" 
    capture_lex $P3213
    $P3213()
  loop3228_next:
    goto loop3228_test
  loop3228_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3230, exception, 'type'
    eq $P3230, .CONTROL_LOOP_NEXT, loop3228_next
    eq $P3230, .CONTROL_LOOP_REDO, loop3228_redo
  loop3228_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P3211)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3212"  :anon :subid("260_1303857419.487") :outer("259_1303857419.487")
.annotate 'line', 2047
    new $P3214, "Undef"
    .lex "$o", $P3214
    find_lex $P3215, "$iter"
    unless_null $P3215, vivify_1126
    new $P3215, "Undef"
  vivify_1126:
    shift $P3216, $P3215
    store_lex "$o", $P3216
.annotate 'line', 2048
    find_lex $P3218, "self"
    find_lex $P3219, "$o"
    unless_null $P3219, vivify_1127
    new $P3219, "Undef"
  vivify_1127:
    $P3220 = $P3218."wants-value"($P3219)
    unless $P3220, if_3217_end
    new $P3221, 'String'
    set $P3221, "Option -"
    find_lex $P3222, "$o"
    unless_null $P3222, vivify_1128
    new $P3222, "Undef"
  vivify_1128:
    concat $P3223, $P3221, $P3222
    concat $P3224, $P3223, " requires a value and cannot be grouped"
    die $P3224
  if_3217_end:
.annotate 'line', 2049
    find_lex $P3225, "$result"
    unless_null $P3225, vivify_1129
    new $P3225, "Undef"
  vivify_1129:
    find_lex $P3226, "$o"
    unless_null $P3226, vivify_1130
    new $P3226, "Undef"
  vivify_1130:
    $P3227 = $P3225."add-option"($P3226, 1)
.annotate 'line', 2046
    .return ($P3227)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3075"  :anon :subid("257_1303857419.487") :outer("256_1303857419.487")
.annotate 'line', 2014
    new $P3077, "Undef"
    .lex "$opt", $P3077
.annotate 'line', 2015
    new $P3078, "Undef"
    .lex "$idx", $P3078
.annotate 'line', 2016
    new $P3079, "Undef"
    .lex "$value", $P3079
.annotate 'line', 2017
    new $P3080, "Undef"
    .lex "$has-value", $P3080
.annotate 'line', 2014
    find_lex $P3081, "$i"
    unless_null $P3081, vivify_1144
    new $P3081, "Undef"
  vivify_1144:
    set $I3082, $P3081
    find_lex $P3083, "@args"
    unless_null $P3083, vivify_1145
    $P3083 = root_new ['parrot';'ResizablePMCArray']
  vivify_1145:
    set $P3084, $P3083[$I3082]
    unless_null $P3084, vivify_1146
    new $P3084, "Undef"
  vivify_1146:
    set $S3085, $P3084
    substr $S3086, $S3085, 2
    new $P3087, 'String'
    set $P3087, $S3086
    store_lex "$opt", $P3087
.annotate 'line', 2015
    find_lex $P3088, "$opt"
    unless_null $P3088, vivify_1147
    new $P3088, "Undef"
  vivify_1147:
    set $S3089, $P3088
    index $I3090, $S3089, "="
    new $P3091, 'Integer'
    set $P3091, $I3090
    store_lex "$idx", $P3091
.annotate 'line', 2016
    new $P3092, "Integer"
    assign $P3092, 1
    store_lex "$value", $P3092
.annotate 'line', 2017
    new $P3093, "Integer"
    assign $P3093, 0
    store_lex "$has-value", $P3093
.annotate 'line', 2019
    find_lex $P3095, "$idx"
    unless_null $P3095, vivify_1148
    new $P3095, "Undef"
  vivify_1148:
    set $N3096, $P3095
    isge $I3097, $N3096, 0.0
    unless $I3097, if_3094_end
.annotate 'line', 2020
    find_lex $P3098, "$opt"
    unless_null $P3098, vivify_1149
    new $P3098, "Undef"
  vivify_1149:
    set $S3099, $P3098
    find_lex $P3100, "$idx"
    unless_null $P3100, vivify_1150
    new $P3100, "Undef"
  vivify_1150:
    add $P3101, $P3100, 1
    set $I3102, $P3101
    substr $S3103, $S3099, $I3102
    new $P3104, 'String'
    set $P3104, $S3103
    store_lex "$value", $P3104
.annotate 'line', 2021
    find_lex $P3105, "$opt"
    unless_null $P3105, vivify_1151
    new $P3105, "Undef"
  vivify_1151:
    set $S3106, $P3105
    find_lex $P3107, "$idx"
    unless_null $P3107, vivify_1152
    new $P3107, "Undef"
  vivify_1152:
    set $I3108, $P3107
    substr $S3109, $S3106, 0, $I3108
    new $P3110, 'String'
    set $P3110, $S3109
    store_lex "$opt", $P3110
.annotate 'line', 2022
    new $P3111, "Integer"
    assign $P3111, 1
    store_lex "$has-value", $P3111
  if_3094_end:
.annotate 'line', 2024
    find_lex $P3116, "$opt"
    unless_null $P3116, vivify_1153
    new $P3116, "Undef"
  vivify_1153:
    find_lex $P3113, "self"
    find_lex $P3114, "$?CLASS"
    getattribute $P3115, $P3113, $P3114, "%!options"
    unless_null $P3115, vivify_1154
    $P3115 = root_new ['parrot';'Hash']
  vivify_1154:
    exists $I3117, $P3115[$P3116]
    if $I3117, unless_3112_end
    new $P3118, 'String'
    set $P3118, "Illegal option --"
    find_lex $P3119, "$opt"
    unless_null $P3119, vivify_1155
    new $P3119, "Undef"
  vivify_1155:
    concat $P3120, $P3118, $P3119
    die $P3120
  unless_3112_end:
.annotate 'line', 2025
    find_lex $P3124, "$opt"
    unless_null $P3124, vivify_1156
    new $P3124, "Undef"
  vivify_1156:
    find_lex $P3125, "self"
    find_lex $P3126, "$?CLASS"
    getattribute $P3127, $P3125, $P3126, "%!options"
    unless_null $P3127, vivify_1157
    $P3127 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P3128, $P3127[$P3124]
    unless_null $P3128, vivify_1158
    new $P3128, "Undef"
  vivify_1158:
    set $S3129, $P3128
    isne $I3130, $S3129, "s"
    if $I3130, if_3123
    new $P3122, 'Integer'
    set $P3122, $I3130
    goto if_3123_end
  if_3123:
    find_lex $P3131, "$has-value"
    unless_null $P3131, vivify_1159
    new $P3131, "Undef"
  vivify_1159:
    set $P3122, $P3131
  if_3123_end:
    unless $P3122, if_3121_end
    new $P3132, 'String'
    set $P3132, "Option --"
    find_lex $P3133, "$opt"
    unless_null $P3133, vivify_1160
    new $P3133, "Undef"
  vivify_1160:
    concat $P3134, $P3132, $P3133
    concat $P3135, $P3134, " does not allow a value"
    die $P3135
  if_3121_end:
.annotate 'line', 2026
    find_lex $P3139, "$has-value"
    unless_null $P3139, vivify_1161
    new $P3139, "Undef"
  vivify_1161:
    isfalse $I3140, $P3139
    if $I3140, if_3138
    new $P3137, 'Integer'
    set $P3137, $I3140
    goto if_3138_end
  if_3138:
    find_lex $P3141, "self"
    find_lex $P3142, "$opt"
    unless_null $P3142, vivify_1162
    new $P3142, "Undef"
  vivify_1162:
    $P3143 = $P3141."wants-value"($P3142)
    set $P3137, $P3143
  if_3138_end:
    unless $P3137, if_3136_end
.annotate 'line', 2027
    new $P3144, 'String'
    set $P3144, "--"
    find_lex $P3145, "$opt"
    unless_null $P3145, vivify_1163
    new $P3145, "Undef"
  vivify_1163:
    concat $P3146, $P3144, $P3145
    $P3147 = "get-value"($P3146)
    store_lex "$value", $P3147
  if_3136_end:
.annotate 'line', 2029
    find_lex $P3148, "$result"
    unless_null $P3148, vivify_1164
    new $P3148, "Undef"
  vivify_1164:
    find_lex $P3149, "$opt"
    unless_null $P3149, vivify_1165
    new $P3149, "Undef"
  vivify_1165:
    find_lex $P3150, "$value"
    unless_null $P3150, vivify_1166
    new $P3150, "Undef"
  vivify_1166:
    $P3148."add-option"($P3149, $P3150)
.annotate 'line', 2030
    new $P3153, 'String'
    set $P3153, "--"
    find_lex $P3154, "$opt"
    unless_null $P3154, vivify_1167
    new $P3154, "Undef"
  vivify_1167:
    concat $P3155, $P3153, $P3154
    find_lex $P3156, "self"
    find_lex $P3157, "$?CLASS"
    getattribute $P3158, $P3156, $P3157, "%!stopper"
    unless_null $P3158, vivify_1168
    $P3158 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P3159, $P3158[$P3155]
    unless_null $P3159, vivify_1169
    new $P3159, "Undef"
  vivify_1169:
    if $P3159, if_3152
    set $P3151, $P3159
    goto if_3152_end
  if_3152:
    find_lex $P3160, "slurp-rest"
    set $P3151, $P3160
  if_3152_end:
.annotate 'line', 2012
    .return ($P3151)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3288"  :subid("262_1303857419.487") :outer("10_1303857419.487")
.annotate 'line', 2096
    .const 'Sub' $P4063 = "292_1303857419.487" 
    capture_lex $P4063
    .const 'Sub' $P3949 = "290_1303857419.487" 
    capture_lex $P3949
    .const 'Sub' $P3944 = "289_1303857419.487" 
    capture_lex $P3944
    .const 'Sub' $P3921 = "288_1303857419.487" 
    capture_lex $P3921
    .const 'Sub' $P3888 = "287_1303857419.487" 
    capture_lex $P3888
    .const 'Sub' $P3882 = "286_1303857419.487" 
    capture_lex $P3882
    .const 'Sub' $P3805 = "285_1303857419.487" 
    capture_lex $P3805
    .const 'Sub' $P3769 = "284_1303857419.487" 
    capture_lex $P3769
    .const 'Sub' $P3706 = "283_1303857419.487" 
    capture_lex $P3706
    .const 'Sub' $P3599 = "280_1303857419.487" 
    capture_lex $P3599
    .const 'Sub' $P3558 = "279_1303857419.487" 
    capture_lex $P3558
    .const 'Sub' $P3500 = "277_1303857419.487" 
    capture_lex $P3500
    .const 'Sub' $P3462 = "276_1303857419.487" 
    capture_lex $P3462
    .const 'Sub' $P3448 = "275_1303857419.487" 
    capture_lex $P3448
    .const 'Sub' $P3423 = "274_1303857419.487" 
    capture_lex $P3423
    .const 'Sub' $P3409 = "273_1303857419.487" 
    capture_lex $P3409
    .const 'Sub' $P3391 = "272_1303857419.487" 
    capture_lex $P3391
    .const 'Sub' $P3371 = "271_1303857419.487" 
    capture_lex $P3371
    .const 'Sub' $P3357 = "270_1303857419.487" 
    capture_lex $P3357
    .const 'Sub' $P3339 = "269_1303857419.487" 
    capture_lex $P3339
    .const 'Sub' $P3330 = "268_1303857419.487" 
    capture_lex $P3330
    .const 'Sub' $P3300 = "264_1303857419.487" 
    capture_lex $P3300
    .const 'Sub' $P3291 = "263_1303857419.487" 
    capture_lex $P3291
    .lex "Event", $P3290
.annotate 'line', 2117
    .const 'Sub' $P3291 = "263_1303857419.487" 
    newclosure $P3295, $P3291
    .lex "addr", $P3295
.annotate 'line', 2216
    new $P3296, "Undef"
    .lex "$loader", $P3296
    .lex "$?PACKAGE", $P3297
    .lex "$?CLASS", $P3298
.annotate 'line', 2098
    .const 'Sub' $P3300 = "264_1303857419.487" 
    capture_lex $P3300
    $P3300()
    find_lex $P3329, "addr"
.annotate 'line', 2216
    get_hll_global $P3499, "ModuleLoader"
    store_lex "$loader", $P3499
.annotate 'line', 2432
    .const 'Sub' $P3949 = "290_1303857419.487" 
    newclosure $P4061, $P3949
.annotate 'line', 2096
    .return ($P4061)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1172") :outer("262_1303857419.487")
.annotate 'line', 2096
    .const 'Sub' $P3289 = "262_1303857419.487" 
    .local pmc block
    set block, $P3289
    .const 'Sub' $P4063 = "292_1303857419.487" 
    capture_lex $P4063
    $P4063()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block4062"  :anon :subid("292_1303857419.487") :outer("262_1303857419.487")
.annotate 'line', 2096
    nqp_get_sc_object $P4064, "1303857411.111", 6
    .local pmc type_obj
    set type_obj, $P4064
    get_how $P4065, type_obj
    get_hll_global $P4066, "NQPAttribute"
    $P4067 = $P4066."new"("$!sc" :named("name"))
    $P4065."add_attribute"(type_obj, $P4067)
    get_how $P4068, type_obj
    get_hll_global $P4069, "NQPAttribute"
    $P4070 = $P4069."new"("$!handle" :named("name"))
    $P4068."add_attribute"(type_obj, $P4070)
    get_how $P4071, type_obj
    get_hll_global $P4072, "NQPAttribute"
    $P4073 = $P4072."new"("%!addr_to_slot" :named("name"))
    $P4071."add_attribute"(type_obj, $P4073)
    get_how $P4074, type_obj
    get_hll_global $P4075, "NQPAttribute"
    $P4076 = $P4075."new"("@!event_stream" :named("name"))
    $P4074."add_attribute"(type_obj, $P4076)
    get_how $P4077, type_obj
    .const 'Sub' $P4078 = "268_1303857419.487" 
    $P4077."add_method"(type_obj, "new", $P4078)
    get_how $P4079, type_obj
    .const 'Sub' $P4080 = "269_1303857419.487" 
    $P4079."add_method"(type_obj, "BUILD", $P4080)
    get_how $P4081, type_obj
    .const 'Sub' $P4082 = "270_1303857419.487" 
    $P4081."add_method"(type_obj, "slot_for_object", $P4082)
    get_how $P4083, type_obj
    .const 'Sub' $P4084 = "271_1303857419.487" 
    $P4083."add_method"(type_obj, "get_slot_past_for_object", $P4084)
    get_how $P4085, type_obj
    .const 'Sub' $P4086 = "272_1303857419.487" 
    $P4085."add_method"(type_obj, "set_slot_past", $P4086)
    get_how $P4087, type_obj
    .const 'Sub' $P4088 = "273_1303857419.487" 
    $P4087."add_method"(type_obj, "set_cur_sc", $P4088)
    get_how $P4089, type_obj
    .const 'Sub' $P4090 = "274_1303857419.487" 
    $P4089."add_method"(type_obj, "add_object", $P4090)
    get_how $P4091, type_obj
    .const 'Sub' $P4092 = "275_1303857419.487" 
    $P4091."add_method"(type_obj, "add_event", $P4092)
    get_how $P4093, type_obj
    .const 'Sub' $P4094 = "276_1303857419.487" 
    $P4093."add_method"(type_obj, "get_object_sc_ref_past", $P4094)
    get_how $P4095, type_obj
    .const 'Sub' $P4096 = "277_1303857419.487" 
    $P4095."add_method"(type_obj, "load_setting", $P4096)
    get_how $P4097, type_obj
    .const 'Sub' $P4098 = "279_1303857419.487" 
    $P4097."add_method"(type_obj, "load_module", $P4098)
    get_how $P4099, type_obj
    .const 'Sub' $P4100 = "280_1303857419.487" 
    $P4099."add_method"(type_obj, "install_package_symbol", $P4100)
    get_how $P4101, type_obj
    .const 'Sub' $P4102 = "283_1303857419.487" 
    $P4101."add_method"(type_obj, "install_lexical_symbol", $P4102)
    get_how $P4103, type_obj
    .const 'Sub' $P4104 = "284_1303857419.487" 
    $P4103."add_method"(type_obj, "install_package_routine", $P4104)
    get_how $P4105, type_obj
    .const 'Sub' $P4106 = "285_1303857419.487" 
    $P4105."add_method"(type_obj, "pkg_create_mo", $P4106)
    get_how $P4107, type_obj
    .const 'Sub' $P4108 = "286_1303857419.487" 
    $P4107."add_method"(type_obj, "pkg_add_method", $P4108)
    get_how $P4109, type_obj
    .const 'Sub' $P4110 = "287_1303857419.487" 
    $P4109."add_method"(type_obj, "pkg_add_parent_or_role", $P4110)
    get_how $P4111, type_obj
    .const 'Sub' $P4112 = "288_1303857419.487" 
    $P4111."add_method"(type_obj, "pkg_compose", $P4112)
    get_how $P4113, type_obj
    .const 'Sub' $P4114 = "289_1303857419.487" 
    $P4113."add_method"(type_obj, "sc", $P4114)
    get_how $P4115, type_obj
    .const 'Sub' $P4116 = "290_1303857419.487" 
    $P4115."add_method"(type_obj, "to_past", $P4116)
    get_how $P4117, type_obj
    $P4118 = $P4117."compose"(type_obj)
    .return ($P4118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("263_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3292
.annotate 'line', 2117
    .lex "$obj", param_3292
.annotate 'line', 2118
    find_lex $P3293, "$obj"
    unless_null $P3293, vivify_1173
    new $P3293, "Undef"
  vivify_1173:
    get_addr $I3294, $P3293
.annotate 'line', 2117
    .return ($I3294)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3299"  :anon :subid("264_1303857419.487") :outer("262_1303857419.487")
.annotate 'line', 2098
    .const 'Sub' $P3315 = "267_1303857419.487" 
    capture_lex $P3315
    .const 'Sub' $P3308 = "266_1303857419.487" 
    capture_lex $P3308
    .const 'Sub' $P3303 = "265_1303857419.487" 
    capture_lex $P3303
    .lex "$?PACKAGE", $P3301
    .lex "$?CLASS", $P3302
.annotate 'line', 2105
    .const 'Sub' $P3308 = "266_1303857419.487" 
    newclosure $P3313, $P3308
.annotate 'line', 2098
    .return ($P3313)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1174") :outer("264_1303857419.487")
.annotate 'line', 2098
    .const 'Sub' $P3300 = "264_1303857419.487" 
    .local pmc block
    set block, $P3300
    .const 'Sub' $P3315 = "267_1303857419.487" 
    capture_lex $P3315
    $P3315()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3314"  :anon :subid("267_1303857419.487") :outer("264_1303857419.487")
.annotate 'line', 2098
    nqp_get_sc_object $P3316, "1303857411.111", 7
    .local pmc type_obj
    set type_obj, $P3316
    get_how $P3317, type_obj
    get_hll_global $P3318, "NQPAttribute"
    $P3319 = $P3318."new"("$!deserialize_past" :named("name"))
    $P3317."add_attribute"(type_obj, $P3319)
    get_how $P3320, type_obj
    .const 'Sub' $P3321 = "265_1303857419.487" 
    $P3320."add_method"(type_obj, "deserialize_past", $P3321)
    get_how $P3322, type_obj
    get_hll_global $P3323, "NQPAttribute"
    $P3324 = $P3323."new"("$!fixup_past" :named("name"))
    $P3322."add_attribute"(type_obj, $P3324)
    get_how $P3325, type_obj
    .const 'Sub' $P3326 = "266_1303857419.487" 
    $P3325."add_method"(type_obj, "fixup_past", $P3326)
    get_how $P3327, type_obj
    $P3328 = $P3327."compose"(type_obj)
    .return ($P3328)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("265_1303857419.487") :outer("264_1303857419.487")
    .param pmc param_3304
.annotate 'line', 2101
    .lex "self", param_3304
    find_lex $P3305, "self"
    find_lex $P3306, "$?CLASS"
    getattribute $P3307, $P3305, $P3306, "$!deserialize_past"
    unless_null $P3307, vivify_1175
    new $P3307, "Undef"
  vivify_1175:
    .return ($P3307)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("266_1303857419.487") :outer("264_1303857419.487")
    .param pmc param_3309
.annotate 'line', 2105
    .lex "self", param_3309
    find_lex $P3310, "self"
    find_lex $P3311, "$?CLASS"
    getattribute $P3312, $P3310, $P3311, "$!fixup_past"
    unless_null $P3312, vivify_1176
    new $P3312, "Undef"
  vivify_1176:
    .return ($P3312)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3331
    .param pmc param_3332 :named("handle")
.annotate 'line', 2125
    .lex "self", param_3331
    .lex "$handle", param_3332
.annotate 'line', 2126
    new $P3333, "Undef"
    .lex "$obj", $P3333
    find_lex $P3334, "self"
    $P3335 = $P3334."CREATE"()
    store_lex "$obj", $P3335
.annotate 'line', 2127
    find_lex $P3336, "$obj"
    unless_null $P3336, vivify_1177
    new $P3336, "Undef"
  vivify_1177:
    find_lex $P3337, "$handle"
    unless_null $P3337, vivify_1178
    new $P3337, "Undef"
  vivify_1178:
    $P3336."BUILD"($P3337 :named("handle"))
    find_lex $P3338, "$obj"
    unless_null $P3338, vivify_1179
    new $P3338, "Undef"
  vivify_1179:
.annotate 'line', 2125
    .return ($P3338)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3340
    .param pmc param_3341 :optional :named("handle")
    .param int has_param_3341 :opt_flag
.annotate 'line', 2131
    .lex "self", param_3340
    if has_param_3341, optparam_1180
    new $P3342, "Undef"
    set param_3341, $P3342
  optparam_1180:
    .lex "$handle", param_3341
.annotate 'line', 2132
    find_lex $P3343, "$handle"
    unless_null $P3343, vivify_1181
    new $P3343, "Undef"
  vivify_1181:
    set $S3344, $P3343
    nqp_create_sc $P3345, $S3344
    find_lex $P3346, "self"
    find_lex $P3347, "$?CLASS"
    setattribute $P3346, $P3347, "$!sc", $P3345
.annotate 'line', 2133
    find_lex $P3348, "$handle"
    unless_null $P3348, vivify_1182
    new $P3348, "Undef"
  vivify_1182:
    find_lex $P3349, "self"
    find_lex $P3350, "$?CLASS"
    setattribute $P3349, $P3350, "$!handle", $P3348
.annotate 'line', 2134
    new $P3351, "Hash"
    find_lex $P3352, "self"
    find_lex $P3353, "$?CLASS"
    setattribute $P3352, $P3353, "%!addr_to_slot", $P3351
.annotate 'line', 2135
    new $P3354, "ResizablePMCArray"
    find_lex $P3355, "self"
    find_lex $P3356, "$?CLASS"
    setattribute $P3355, $P3356, "@!event_stream", $P3354
.annotate 'line', 2131
    .return ($P3354)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3358
    .param pmc param_3359
.annotate 'line', 2139
    .lex "self", param_3358
    .lex "$obj", param_3359
.annotate 'line', 2140
    new $P3360, "Undef"
    .lex "$slot", $P3360
    find_lex $P3361, "$obj"
    unless_null $P3361, vivify_1183
    new $P3361, "Undef"
  vivify_1183:
    $P3362 = "addr"($P3361)
    find_lex $P3363, "self"
    find_lex $P3364, "$?CLASS"
    getattribute $P3365, $P3363, $P3364, "%!addr_to_slot"
    unless_null $P3365, vivify_1184
    $P3365 = root_new ['parrot';'Hash']
  vivify_1184:
    set $P3366, $P3365[$P3362]
    unless_null $P3366, vivify_1185
    new $P3366, "Undef"
  vivify_1185:
    store_lex "$slot", $P3366
.annotate 'line', 2141
    find_lex $P3368, "$slot"
    unless_null $P3368, vivify_1186
    new $P3368, "Undef"
  vivify_1186:
    defined $I3369, $P3368
    if $I3369, unless_3367_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_3367_end:
.annotate 'line', 2141
    find_lex $P3370, "$slot"
    unless_null $P3370, vivify_1187
    new $P3370, "Undef"
  vivify_1187:
.annotate 'line', 2139
    .return ($P3370)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3374
    .param pmc param_3375
.annotate 'line', 2151
    new $P3373, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3373, control_3372
    push_eh $P3373
    .lex "self", param_3374
    .lex "$obj", param_3375
.annotate 'line', 2152
    new $P3376, "Undef"
    .lex "$slot", $P3376
    find_lex $P3377, "self"
    find_lex $P3378, "$obj"
    unless_null $P3378, vivify_1188
    new $P3378, "Undef"
  vivify_1188:
    $P3379 = $P3377."slot_for_object"($P3378)
    store_lex "$slot", $P3379
.annotate 'line', 2153
    new $P3380, "Exception"
    set $P3380['type'], .CONTROL_RETURN
    get_hll_global $P3381, "GLOBAL"
    nqp_get_package_through_who $P3382, $P3381, "PAST"
    get_who $P3383, $P3382
    set $P3384, $P3383["Op"]
    find_lex $P3385, "self"
    find_lex $P3386, "$?CLASS"
    getattribute $P3387, $P3385, $P3386, "$!handle"
    unless_null $P3387, vivify_1189
    new $P3387, "Undef"
  vivify_1189:
    find_lex $P3388, "$slot"
    unless_null $P3388, vivify_1190
    new $P3388, "Undef"
  vivify_1190:
    $P3389 = $P3384."new"($P3387, $P3388, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3380, 'payload', $P3389
    throw $P3380
.annotate 'line', 2151
    .return ()
  control_3372:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3390, exception, "payload"
    .return ($P3390)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3394
    .param pmc param_3395
    .param pmc param_3396
.annotate 'line', 2157
    new $P3393, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3393, control_3392
    push_eh $P3393
    .lex "self", param_3394
    .lex "$slot", param_3395
    .lex "$past_to_set", param_3396
.annotate 'line', 2158
    new $P3397, "Exception"
    set $P3397['type'], .CONTROL_RETURN
    get_hll_global $P3398, "GLOBAL"
    nqp_get_package_through_who $P3399, $P3398, "PAST"
    get_who $P3400, $P3399
    set $P3401, $P3400["Op"]
    find_lex $P3402, "self"
    find_lex $P3403, "$?CLASS"
    getattribute $P3404, $P3402, $P3403, "$!handle"
    unless_null $P3404, vivify_1191
    new $P3404, "Undef"
  vivify_1191:
    find_lex $P3405, "$slot"
    unless_null $P3405, vivify_1192
    new $P3405, "Undef"
  vivify_1192:
    find_lex $P3406, "$past_to_set"
    unless_null $P3406, vivify_1193
    new $P3406, "Undef"
  vivify_1193:
    $P3407 = $P3401."new"($P3404, $P3405, $P3406, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3397, 'payload', $P3407
    throw $P3397
.annotate 'line', 2157
    .return ()
  control_3392:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3408, exception, "payload"
    .return ($P3408)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3410
    .param pmc param_3411
.annotate 'line', 2164
    .lex "self", param_3410
    .lex "$to_wrap", param_3411
.annotate 'line', 2165
    get_hll_global $P3412, "GLOBAL"
    nqp_get_package_through_who $P3413, $P3412, "PAST"
    get_who $P3414, $P3413
    set $P3415, $P3414["Op"]
    find_lex $P3416, "$to_wrap"
    unless_null $P3416, vivify_1194
    new $P3416, "Undef"
  vivify_1194:
.annotate 'line', 2168
    get_hll_global $P3417, "GLOBAL"
    nqp_get_package_through_who $P3418, $P3417, "PAST"
    get_who $P3419, $P3418
    set $P3420, $P3419["Var"]
    $P3421 = $P3420."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3422 = $P3415."new"($P3416, $P3421, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P3422)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3424
    .param pmc param_3425
.annotate 'line', 2173
    .lex "self", param_3424
    .lex "$obj", param_3425
.annotate 'line', 2175
    new $P3426, "Undef"
    .lex "$idx", $P3426
.annotate 'line', 2174
    find_lex $P3427, "$obj"
    unless_null $P3427, vivify_1195
    new $P3427, "Undef"
  vivify_1195:
    find_lex $P3428, "self"
    find_lex $P3429, "$?CLASS"
    getattribute $P3430, $P3428, $P3429, "$!sc"
    unless_null $P3430, vivify_1196
    new $P3430, "Undef"
  vivify_1196:
    nqp_set_sc_for_object $P3427, $P3430
.annotate 'line', 2175
    find_lex $P3431, "self"
    find_lex $P3432, "$?CLASS"
    getattribute $P3433, $P3431, $P3432, "$!sc"
    unless_null $P3433, vivify_1197
    new $P3433, "Undef"
  vivify_1197:
    $P3434 = $P3433."elems"()
    store_lex "$idx", $P3434
.annotate 'line', 2176
    find_lex $P3435, "$obj"
    unless_null $P3435, vivify_1198
    new $P3435, "Undef"
  vivify_1198:
    find_lex $P3436, "$idx"
    unless_null $P3436, vivify_1199
    new $P3436, "Undef"
  vivify_1199:
    set $I3437, $P3436
    find_lex $P3438, "self"
    find_lex $P3439, "$?CLASS"
    getattribute $P3440, $P3438, $P3439, "$!sc"
    unless_null $P3440, vivify_1200
    $P3440 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3438, $P3439, "$!sc", $P3440
  vivify_1200:
    set $P3440[$I3437], $P3435
.annotate 'line', 2177
    find_lex $P3441, "$idx"
    unless_null $P3441, vivify_1201
    new $P3441, "Undef"
  vivify_1201:
    find_lex $P3442, "$obj"
    unless_null $P3442, vivify_1202
    new $P3442, "Undef"
  vivify_1202:
    $P3443 = "addr"($P3442)
    find_lex $P3444, "self"
    find_lex $P3445, "$?CLASS"
    getattribute $P3446, $P3444, $P3445, "%!addr_to_slot"
    unless_null $P3446, vivify_1203
    $P3446 = root_new ['parrot';'Hash']
    setattribute $P3444, $P3445, "%!addr_to_slot", $P3446
  vivify_1203:
    set $P3446[$P3443], $P3441
    find_lex $P3447, "$idx"
    unless_null $P3447, vivify_1204
    new $P3447, "Undef"
  vivify_1204:
.annotate 'line', 2173
    .return ($P3447)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3449
    .param pmc param_3450 :optional :named("deserialize_past")
    .param int has_param_3450 :opt_flag
    .param pmc param_3452 :optional :named("fixup_past")
    .param int has_param_3452 :opt_flag
.annotate 'line', 2182
    .lex "self", param_3449
    if has_param_3450, optparam_1205
    new $P3451, "Undef"
    set param_3450, $P3451
  optparam_1205:
    .lex "$deserialize_past", param_3450
    if has_param_3452, optparam_1206
    new $P3453, "Undef"
    set param_3452, $P3453
  optparam_1206:
    .lex "$fixup_past", param_3452
.annotate 'line', 2183
    find_lex $P3454, "self"
    find_lex $P3455, "$?CLASS"
    getattribute $P3456, $P3454, $P3455, "@!event_stream"
    unless_null $P3456, vivify_1207
    $P3456 = root_new ['parrot';'ResizablePMCArray']
  vivify_1207:
    find_lex $P3457, "Event"
    find_lex $P3458, "$deserialize_past"
    unless_null $P3458, vivify_1208
    new $P3458, "Undef"
  vivify_1208:
    find_lex $P3459, "$fixup_past"
    unless_null $P3459, vivify_1209
    new $P3459, "Undef"
  vivify_1209:
    $P3460 = $P3457."new"($P3458 :named("deserialize_past"), $P3459 :named("fixup_past"))
    $P3461 = $P3456."push"($P3460)
.annotate 'line', 2182
    .return ($P3461)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3463
    .param pmc param_3464
.annotate 'line', 2190
    .lex "self", param_3463
    .lex "$obj", param_3464
.annotate 'line', 2193
    new $P3465, "Undef"
    .lex "$sc", $P3465
    find_lex $P3466, "$obj"
    unless_null $P3466, vivify_1210
    new $P3466, "Undef"
  vivify_1210:
    nqp_get_sc_for_object $P3467, $P3466
    store_lex "$sc", $P3467
.annotate 'line', 2194
    find_lex $P3469, "$sc"
    unless_null $P3469, vivify_1211
    new $P3469, "Undef"
  vivify_1211:
    defined $I3470, $P3469
    if $I3470, unless_3468_end
.annotate 'line', 2195
    new $P3471, "String"
    assign $P3471, "Object of type '"
    find_lex $P3472, "$obj"
    unless_null $P3472, vivify_1212
    new $P3472, "Undef"
  vivify_1212:
    get_how $P3473, $P3472
    find_lex $P3474, "$obj"
    unless_null $P3474, vivify_1213
    new $P3474, "Undef"
  vivify_1213:
    $S3475 = $P3473."name"($P3474)
    concat $P3476, $P3471, $S3475
    concat $P3477, $P3476, "' cannot be referenced without having been "
    concat $P3478, $P3477, "assigned a serialization context"
.annotate 'line', 2196
    die $P3478
  unless_3468_end:
.annotate 'line', 2202
    find_lex $P3481, "$sc"
    unless_null $P3481, vivify_1214
    new $P3481, "Undef"
  vivify_1214:
    find_lex $P3482, "self"
    find_lex $P3483, "$?CLASS"
    getattribute $P3484, $P3482, $P3483, "$!sc"
    unless_null $P3484, vivify_1215
    new $P3484, "Undef"
  vivify_1215:
    issame $I3485, $P3481, $P3484
    if $I3485, if_3480
.annotate 'line', 2206
    get_hll_global $P3489, "GLOBAL"
    nqp_get_package_through_who $P3490, $P3489, "PAST"
    get_who $P3491, $P3490
    set $P3492, $P3491["Op"]
.annotate 'line', 2207
    find_lex $P3493, "$sc"
    unless_null $P3493, vivify_1216
    new $P3493, "Undef"
  vivify_1216:
    $P3494 = $P3493."handle"()
    find_lex $P3495, "$sc"
    unless_null $P3495, vivify_1217
    new $P3495, "Undef"
  vivify_1217:
    find_lex $P3496, "$obj"
    unless_null $P3496, vivify_1218
    new $P3496, "Undef"
  vivify_1218:
    $P3497 = $P3495."slot_index_for"($P3496)
    $P3498 = $P3492."new"($P3494, $P3497, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2205
    set $P3479, $P3498
.annotate 'line', 2202
    goto if_3480_end
  if_3480:
.annotate 'line', 2203
    find_lex $P3486, "self"
    find_lex $P3487, "$obj"
    unless_null $P3487, vivify_1219
    new $P3487, "Undef"
  vivify_1219:
    $P3488 = $P3486."get_slot_past_for_object"($P3487)
.annotate 'line', 2202
    set $P3479, $P3488
  if_3480_end:
.annotate 'line', 2190
    .return ($P3479)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("277_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3503
    .param pmc param_3504
.annotate 'line', 2219
    .const 'Sub' $P3511 = "278_1303857419.487" 
    capture_lex $P3511
    new $P3502, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3502, control_3501
    push_eh $P3502
    .lex "self", param_3503
    .lex "$setting_name", param_3504
.annotate 'line', 2221
    find_lex $P3507, "$setting_name"
    unless_null $P3507, vivify_1220
    new $P3507, "Undef"
  vivify_1220:
    set $S3508, $P3507
    isne $I3509, $S3508, "NULL"
    if $I3509, if_3506
    new $P3505, 'Integer'
    set $P3505, $I3509
    goto if_3506_end
  if_3506:
    .const 'Sub' $P3511 = "278_1303857419.487" 
    capture_lex $P3511
    $P3556 = $P3511()
    set $P3505, $P3556
  if_3506_end:
.annotate 'line', 2219
    .return ($P3505)
  control_3501:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3557, exception, "payload"
    .return ($P3557)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3510"  :anon :subid("278_1303857419.487") :outer("277_1303857419.487")
.annotate 'line', 2225
    new $P3512, "Undef"
    .lex "$setting", $P3512
.annotate 'line', 2226
    find_lex $P3513, "$loader"
    unless_null $P3513, vivify_1221
    new $P3513, "Undef"
  vivify_1221:
    find_lex $P3514, "$setting_name"
    unless_null $P3514, vivify_1222
    new $P3514, "Undef"
  vivify_1222:
    $P3515 = $P3513."load_setting"($P3514)
    find_dynamic_lex $P3518, "%*COMPILING"
    unless_null $P3518, vivify_1223
    get_hll_global $P3516, "GLOBAL"
    get_who $P3517, $P3516
    set $P3518, $P3517["%COMPILING"]
    unless_null $P3518, vivify_1224
    die "Contextual %*COMPILING not found"
  vivify_1224:
    store_dynamic_lex "%*COMPILING", $P3518
  vivify_1223:
    set $P3519, $P3518["%?OPTIONS"]
    unless_null $P3519, vivify_1225
    $P3519 = root_new ['parrot';'Hash']
    set $P3518["%?OPTIONS"], $P3519
  vivify_1225:
    set $P3519["outer_ctx"], $P3515
    store_lex "$setting", $P3515
.annotate 'line', 2229
    find_lex $P3520, "self"
    get_hll_global $P3521, "GLOBAL"
    nqp_get_package_through_who $P3522, $P3521, "PAST"
    get_who $P3523, $P3522
    set $P3524, $P3523["Stmts"]
.annotate 'line', 2230
    get_hll_global $P3525, "GLOBAL"
    nqp_get_package_through_who $P3526, $P3525, "PAST"
    get_who $P3527, $P3526
    set $P3528, $P3527["Op"]
    $P3529 = $P3528."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2233
    get_hll_global $P3530, "GLOBAL"
    nqp_get_package_through_who $P3531, $P3530, "PAST"
    get_who $P3532, $P3531
    set $P3533, $P3532["Op"]
.annotate 'line', 2235
    get_hll_global $P3534, "GLOBAL"
    nqp_get_package_through_who $P3535, $P3534, "PAST"
    get_who $P3536, $P3535
    set $P3537, $P3536["Var"]
    $P3538 = $P3537."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2236
    get_hll_global $P3539, "GLOBAL"
    nqp_get_package_through_who $P3540, $P3539, "PAST"
    get_who $P3541, $P3540
    set $P3542, $P3541["Op"]
.annotate 'line', 2238
    get_hll_global $P3543, "GLOBAL"
    nqp_get_package_through_who $P3544, $P3543, "PAST"
    get_who $P3545, $P3544
    set $P3546, $P3545["Var"]
    new $P3547, "ResizablePMCArray"
    $P3548 = $P3546."new"("ModuleLoader" :named("name"), $P3547 :named("namespace"), "package" :named("scope"))
    find_lex $P3549, "$setting_name"
    unless_null $P3549, vivify_1226
    new $P3549, "Undef"
  vivify_1226:
    $P3550 = $P3542."new"($P3548, $P3549, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2236
    $P3551 = $P3533."new"($P3538, $P3550, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2233
    $P3552 = $P3524."new"($P3529, $P3551)
.annotate 'line', 2229
    $P3520."add_event"($P3552 :named("deserialize_past"))
.annotate 'line', 2244
    new $P3553, "Exception"
    set $P3553['type'], .CONTROL_RETURN
    find_lex $P3554, "$setting"
    unless_null $P3554, vivify_1227
    new $P3554, "Undef"
  vivify_1227:
    getattribute $P3555, $P3554, "lex_pad"
    setattribute $P3553, 'payload', $P3555
    throw $P3553
.annotate 'line', 2221
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("279_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3561
    .param pmc param_3562
    .param pmc param_3563
.annotate 'line', 2250
    new $P3560, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3560, control_3559
    push_eh $P3560
    .lex "self", param_3561
    .lex "$module_name", param_3562
    .lex "$cur_GLOBALish", param_3563
.annotate 'line', 2252
    new $P3564, "Undef"
    .lex "$module", $P3564
    find_lex $P3565, "$loader"
    unless_null $P3565, vivify_1228
    new $P3565, "Undef"
  vivify_1228:
    find_lex $P3566, "$module_name"
    unless_null $P3566, vivify_1229
    new $P3566, "Undef"
  vivify_1229:
    find_lex $P3567, "$cur_GLOBALish"
    unless_null $P3567, vivify_1230
    new $P3567, "Undef"
  vivify_1230:
    $P3568 = $P3565."load_module"($P3566, $P3567)
    store_lex "$module", $P3568
.annotate 'line', 2255
    find_lex $P3569, "self"
    get_hll_global $P3570, "GLOBAL"
    nqp_get_package_through_who $P3571, $P3570, "PAST"
    get_who $P3572, $P3571
    set $P3573, $P3572["Stmts"]
.annotate 'line', 2256
    get_hll_global $P3574, "GLOBAL"
    nqp_get_package_through_who $P3575, $P3574, "PAST"
    get_who $P3576, $P3575
    set $P3577, $P3576["Op"]
    $P3578 = $P3577."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2259
    get_hll_global $P3579, "GLOBAL"
    nqp_get_package_through_who $P3580, $P3579, "PAST"
    get_who $P3581, $P3580
    set $P3582, $P3581["Op"]
.annotate 'line', 2261
    get_hll_global $P3583, "GLOBAL"
    nqp_get_package_through_who $P3584, $P3583, "PAST"
    get_who $P3585, $P3584
    set $P3586, $P3585["Var"]
    new $P3587, "ResizablePMCArray"
    $P3588 = $P3586."new"("ModuleLoader" :named("name"), $P3587 :named("namespace"), "package" :named("scope"))
    find_lex $P3589, "$module_name"
    unless_null $P3589, vivify_1231
    new $P3589, "Undef"
  vivify_1231:
.annotate 'line', 2263
    find_lex $P3590, "self"
    find_lex $P3591, "$cur_GLOBALish"
    unless_null $P3591, vivify_1232
    new $P3591, "Undef"
  vivify_1232:
    $P3592 = $P3590."get_slot_past_for_object"($P3591)
    $P3593 = $P3582."new"($P3588, $P3589, $P3592, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2259
    $P3594 = $P3573."new"($P3578, $P3593)
.annotate 'line', 2255
    $P3569."add_event"($P3594 :named("deserialize_past"))
.annotate 'line', 2266
    new $P3595, "Exception"
    set $P3595['type'], .CONTROL_RETURN
    find_lex $P3596, "$module"
    unless_null $P3596, vivify_1233
    new $P3596, "Undef"
  vivify_1233:
    getattribute $P3597, $P3596, "lex_pad"
    setattribute $P3595, 'payload', $P3597
    throw $P3595
.annotate 'line', 2250
    .return ()
  control_3559:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3598, exception, "payload"
    .return ($P3598)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3600
    .param pmc param_3601
    .param pmc param_3602
    .param pmc param_3603
.annotate 'line', 2271
    .const 'Sub' $P3640 = "282_1303857419.487" 
    capture_lex $P3640
    .const 'Sub' $P3619 = "281_1303857419.487" 
    capture_lex $P3619
    .lex "self", param_3600
    .lex "$package", param_3601
    .lex "@sym", param_3602
    .lex "$obj", param_3603
.annotate 'line', 2273
    new $P3604, "Undef"
    .lex "$name", $P3604
.annotate 'line', 2276
    new $P3605, "Undef"
    .lex "$target", $P3605
.annotate 'line', 2283
    new $P3606, "Undef"
    .lex "$path", $P3606
.annotate 'line', 2272
    find_lex $P3607, "@sym"
    unless_null $P3607, vivify_1234
    $P3607 = root_new ['parrot';'ResizablePMCArray']
  vivify_1234:
    clone $P3608, $P3607
    store_lex "@sym", $P3608
.annotate 'line', 2273
    find_lex $P3609, "@sym"
    unless_null $P3609, vivify_1235
    $P3609 = root_new ['parrot';'ResizablePMCArray']
  vivify_1235:
    $P3610 = $P3609."pop"()
    set $S3611, $P3610
    new $P3612, 'String'
    set $P3612, $S3611
    store_lex "$name", $P3612
.annotate 'line', 2276
    find_lex $P3613, "$package"
    unless_null $P3613, vivify_1236
    new $P3613, "Undef"
  vivify_1236:
    store_lex "$target", $P3613
.annotate 'line', 2277
    find_lex $P3615, "@sym"
    unless_null $P3615, vivify_1237
    $P3615 = root_new ['parrot';'ResizablePMCArray']
  vivify_1237:
    defined $I3616, $P3615
    unless $I3616, for_undef_1238
    iter $P3614, $P3615
    new $P3626, 'ExceptionHandler'
    set_label $P3626, loop3625_handler
    $P3626."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3626
  loop3625_test:
    unless $P3614, loop3625_done
    shift $P3617, $P3614
  loop3625_redo:
    .const 'Sub' $P3619 = "281_1303857419.487" 
    capture_lex $P3619
    $P3619($P3617)
  loop3625_next:
    goto loop3625_test
  loop3625_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3627, exception, 'type'
    eq $P3627, .CONTROL_LOOP_NEXT, loop3625_next
    eq $P3627, .CONTROL_LOOP_REDO, loop3625_redo
  loop3625_done:
    pop_eh 
  for_undef_1238:
.annotate 'line', 2280
    find_lex $P3628, "$obj"
    unless_null $P3628, vivify_1241
    new $P3628, "Undef"
  vivify_1241:
    find_lex $P3629, "$name"
    unless_null $P3629, vivify_1242
    new $P3629, "Undef"
  vivify_1242:
    find_lex $P3630, "$target"
    unless_null $P3630, vivify_1243
    new $P3630, "Undef"
    store_lex "$target", $P3630
  vivify_1243:
    get_who $P3631, $P3630
    set $P3631[$P3629], $P3628
.annotate 'line', 2283
    find_lex $P3632, "self"
    find_lex $P3633, "$package"
    unless_null $P3633, vivify_1244
    new $P3633, "Undef"
  vivify_1244:
    $P3634 = $P3632."get_slot_past_for_object"($P3633)
    store_lex "$path", $P3634
.annotate 'line', 2284
    find_lex $P3636, "@sym"
    unless_null $P3636, vivify_1245
    $P3636 = root_new ['parrot';'ResizablePMCArray']
  vivify_1245:
    defined $I3637, $P3636
    unless $I3637, for_undef_1246
    iter $P3635, $P3636
    new $P3651, 'ExceptionHandler'
    set_label $P3651, loop3650_handler
    $P3651."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3651
  loop3650_test:
    unless $P3635, loop3650_done
    shift $P3638, $P3635
  loop3650_redo:
    .const 'Sub' $P3640 = "282_1303857419.487" 
    capture_lex $P3640
    $P3640($P3638)
  loop3650_next:
    goto loop3650_test
  loop3650_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3652, exception, 'type'
    eq $P3652, .CONTROL_LOOP_NEXT, loop3650_next
    eq $P3652, .CONTROL_LOOP_REDO, loop3650_redo
  loop3650_done:
    pop_eh 
  for_undef_1246:
.annotate 'line', 2287
    find_lex $P3653, "self"
    get_hll_global $P3654, "GLOBAL"
    nqp_get_package_through_who $P3655, $P3654, "PAST"
    get_who $P3656, $P3655
    set $P3657, $P3656["Op"]
.annotate 'line', 2289
    get_hll_global $P3658, "GLOBAL"
    nqp_get_package_through_who $P3659, $P3658, "PAST"
    get_who $P3660, $P3659
    set $P3661, $P3660["Var"]
.annotate 'line', 2291
    get_hll_global $P3662, "GLOBAL"
    nqp_get_package_through_who $P3663, $P3662, "PAST"
    get_who $P3664, $P3663
    set $P3665, $P3664["Op"]
    find_lex $P3666, "$path"
    unless_null $P3666, vivify_1249
    new $P3666, "Undef"
  vivify_1249:
    $P3667 = $P3665."new"($P3666, "get_who PP" :named("pirop"))
    find_lex $P3668, "$name"
    unless_null $P3668, vivify_1250
    new $P3668, "Undef"
  vivify_1250:
    $P3669 = $P3661."new"($P3667, $P3668, "keyed" :named("scope"))
.annotate 'line', 2294
    find_lex $P3670, "self"
    find_lex $P3671, "$obj"
    unless_null $P3671, vivify_1251
    new $P3671, "Undef"
  vivify_1251:
    $P3672 = $P3670."get_slot_past_for_object"($P3671)
    $P3673 = $P3657."new"($P3669, $P3672, "bind" :named("pasttype"))
.annotate 'line', 2287
    $P3653."add_event"($P3673 :named("deserialize_past"))
.annotate 'line', 2298
    find_lex $P3674, "self"
.annotate 'line', 2299
    get_hll_global $P3675, "GLOBAL"
    nqp_get_package_through_who $P3676, $P3675, "PAST"
    get_who $P3677, $P3676
    set $P3678, $P3677["Op"]
.annotate 'line', 2301
    get_hll_global $P3679, "GLOBAL"
    nqp_get_package_through_who $P3680, $P3679, "PAST"
    get_who $P3681, $P3680
    set $P3682, $P3681["Var"]
    find_lex $P3683, "$name"
    unless_null $P3683, vivify_1252
    new $P3683, "Undef"
  vivify_1252:
    find_lex $P3684, "@sym"
    unless_null $P3684, vivify_1253
    $P3684 = root_new ['parrot';'ResizablePMCArray']
  vivify_1253:
    $P3685 = $P3682."new"($P3683 :named("name"), $P3684 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2302
    find_lex $P3686, "self"
    find_lex $P3687, "$obj"
    unless_null $P3687, vivify_1254
    new $P3687, "Undef"
  vivify_1254:
    $P3688 = $P3686."get_slot_past_for_object"($P3687)
    $P3689 = $P3678."new"($P3685, $P3688, "bind" :named("pasttype"))
.annotate 'line', 2304
    get_hll_global $P3690, "GLOBAL"
    nqp_get_package_through_who $P3691, $P3690, "PAST"
    get_who $P3692, $P3691
    set $P3693, $P3692["Op"]
.annotate 'line', 2306
    get_hll_global $P3694, "GLOBAL"
    nqp_get_package_through_who $P3695, $P3694, "PAST"
    get_who $P3696, $P3695
    set $P3697, $P3696["Var"]
    find_lex $P3698, "$name"
    unless_null $P3698, vivify_1255
    new $P3698, "Undef"
  vivify_1255:
    find_lex $P3699, "@sym"
    unless_null $P3699, vivify_1256
    $P3699 = root_new ['parrot';'ResizablePMCArray']
  vivify_1256:
    $P3700 = $P3697."new"($P3698 :named("name"), $P3699 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2307
    find_lex $P3701, "self"
    find_lex $P3702, "$obj"
    unless_null $P3702, vivify_1257
    new $P3702, "Undef"
  vivify_1257:
    $P3703 = $P3701."get_slot_past_for_object"($P3702)
    $P3704 = $P3693."new"($P3700, $P3703, "bind" :named("pasttype"))
.annotate 'line', 2304
    $P3705 = $P3674."add_event"($P3689 :named("deserialize_past"), $P3704 :named("fixup_past"))
.annotate 'line', 2271
    .return ($P3705)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3618"  :anon :subid("281_1303857419.487") :outer("280_1303857419.487")
    .param pmc param_3620
.annotate 'line', 2277
    .lex "$_", param_3620
.annotate 'line', 2278
    find_lex $P3621, "$target"
    unless_null $P3621, vivify_1239
    new $P3621, "Undef"
  vivify_1239:
    find_lex $P3622, "$_"
    unless_null $P3622, vivify_1240
    new $P3622, "Undef"
  vivify_1240:
    set $S3623, $P3622
    nqp_get_package_through_who $P3624, $P3621, $S3623
    store_lex "$target", $P3624
.annotate 'line', 2277
    .return ($P3624)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3639"  :anon :subid("282_1303857419.487") :outer("280_1303857419.487")
    .param pmc param_3641
.annotate 'line', 2284
    .lex "$_", param_3641
.annotate 'line', 2285
    get_hll_global $P3642, "GLOBAL"
    nqp_get_package_through_who $P3643, $P3642, "PAST"
    get_who $P3644, $P3643
    set $P3645, $P3644["Op"]
    find_lex $P3646, "$path"
    unless_null $P3646, vivify_1247
    new $P3646, "Undef"
  vivify_1247:
    find_lex $P3647, "$_"
    unless_null $P3647, vivify_1248
    new $P3647, "Undef"
  vivify_1248:
    set $S3648, $P3647
    $P3649 = $P3645."new"($P3646, $S3648, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3649
.annotate 'line', 2284
    .return ($P3649)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3707
    .param pmc param_3708
    .param pmc param_3709
    .param pmc param_3710
.annotate 'line', 2315
    .lex "self", param_3707
    .lex "$block", param_3708
    .lex "$name", param_3709
    .lex "$obj", param_3710
.annotate 'line', 2321
    new $P3711, "Undef"
    .lex "$fixup", $P3711
.annotate 'line', 2317
    find_lex $P3712, "$block"
    unless_null $P3712, vivify_1258
    new $P3712, "Undef"
  vivify_1258:
    find_lex $P3713, "$name"
    unless_null $P3713, vivify_1259
    new $P3713, "Undef"
  vivify_1259:
    find_lex $P3714, "$obj"
    unless_null $P3714, vivify_1260
    new $P3714, "Undef"
  vivify_1260:
    $P3712."symbol"($P3713, "lexical" :named("scope"), $P3714 :named("value"))
.annotate 'line', 2318
    find_lex $P3715, "$block"
    unless_null $P3715, vivify_1261
    $P3715 = root_new ['parrot';'ResizablePMCArray']
  vivify_1261:
    set $P3716, $P3715[0]
    unless_null $P3716, vivify_1262
    new $P3716, "Undef"
  vivify_1262:
    get_hll_global $P3717, "GLOBAL"
    nqp_get_package_through_who $P3718, $P3717, "PAST"
    get_who $P3719, $P3718
    set $P3720, $P3719["Var"]
    find_lex $P3721, "$name"
    unless_null $P3721, vivify_1263
    new $P3721, "Undef"
  vivify_1263:
    $P3722 = $P3720."new"("lexical" :named("scope"), $P3721 :named("name"), 1 :named("isdecl"))
    $P3716."push"($P3722)
.annotate 'line', 2321
    get_hll_global $P3723, "GLOBAL"
    nqp_get_package_through_who $P3724, $P3723, "PAST"
    get_who $P3725, $P3724
    set $P3726, $P3725["Stmts"]
.annotate 'line', 2322
    get_hll_global $P3727, "GLOBAL"
    nqp_get_package_through_who $P3728, $P3727, "PAST"
    get_who $P3729, $P3728
    set $P3730, $P3729["Op"]
.annotate 'line', 2324
    get_hll_global $P3731, "GLOBAL"
    nqp_get_package_through_who $P3732, $P3731, "PAST"
    get_who $P3733, $P3732
    set $P3734, $P3733["Op"]
.annotate 'line', 2326
    get_hll_global $P3735, "GLOBAL"
    nqp_get_package_through_who $P3736, $P3735, "PAST"
    get_who $P3737, $P3736
    set $P3738, $P3737["Val"]
    find_lex $P3739, "$block"
    unless_null $P3739, vivify_1264
    new $P3739, "Undef"
  vivify_1264:
    $P3740 = $P3738."new"($P3739 :named("value"))
    $P3741 = $P3734."new"($P3740, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2328
    find_lex $P3742, "$name"
    unless_null $P3742, vivify_1265
    new $P3742, "Undef"
  vivify_1265:
    set $S3743, $P3742
    find_lex $P3744, "self"
    find_lex $P3745, "$obj"
    unless_null $P3745, vivify_1266
    new $P3745, "Undef"
  vivify_1266:
    $P3746 = $P3744."get_slot_past_for_object"($P3745)
    $P3747 = $P3730."new"($P3741, $S3743, $P3746, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2332
    get_hll_global $P3748, "GLOBAL"
    nqp_get_package_through_who $P3749, $P3748, "PAST"
    get_who $P3750, $P3749
    set $P3751, $P3750["Op"]
.annotate 'line', 2334
    get_hll_global $P3752, "GLOBAL"
    nqp_get_package_through_who $P3753, $P3752, "PAST"
    get_who $P3754, $P3753
    set $P3755, $P3754["Op"]
.annotate 'line', 2336
    get_hll_global $P3756, "GLOBAL"
    nqp_get_package_through_who $P3757, $P3756, "PAST"
    get_who $P3758, $P3757
    set $P3759, $P3758["Val"]
    find_lex $P3760, "$block"
    unless_null $P3760, vivify_1267
    new $P3760, "Undef"
  vivify_1267:
    $P3761 = $P3759."new"($P3760 :named("value"))
    $P3762 = $P3755."new"($P3761, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2334
    $P3763 = $P3751."new"($P3762, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2332
    $P3764 = $P3726."new"($P3747, $P3763)
.annotate 'line', 2321
    store_lex "$fixup", $P3764
.annotate 'line', 2340
    find_lex $P3765, "self"
    find_lex $P3766, "$fixup"
    unless_null $P3766, vivify_1268
    new $P3766, "Undef"
  vivify_1268:
    find_lex $P3767, "$fixup"
    unless_null $P3767, vivify_1269
    new $P3767, "Undef"
  vivify_1269:
    $P3768 = $P3765."add_event"($P3766 :named("deserialize_past"), $P3767 :named("fixup_past"))
.annotate 'line', 2315
    .return ($P3768)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("284_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3770
    .param pmc param_3771
    .param pmc param_3772
    .param pmc param_3773
.annotate 'line', 2345
    .lex "self", param_3770
    .lex "$package", param_3771
    .lex "$name", param_3772
    .lex "$past_block", param_3773
.annotate 'line', 2346
    new $P3774, "Undef"
    .lex "$fixup", $P3774
    get_hll_global $P3775, "GLOBAL"
    nqp_get_package_through_who $P3776, $P3775, "PAST"
    get_who $P3777, $P3776
    set $P3778, $P3777["Op"]
.annotate 'line', 2348
    get_hll_global $P3779, "GLOBAL"
    nqp_get_package_through_who $P3780, $P3779, "PAST"
    get_who $P3781, $P3780
    set $P3782, $P3781["Var"]
.annotate 'line', 2350
    get_hll_global $P3783, "GLOBAL"
    nqp_get_package_through_who $P3784, $P3783, "PAST"
    get_who $P3785, $P3784
    set $P3786, $P3785["Op"]
    find_lex $P3787, "self"
    find_lex $P3788, "$package"
    unless_null $P3788, vivify_1270
    new $P3788, "Undef"
  vivify_1270:
    $P3789 = $P3787."get_slot_past_for_object"($P3788)
    $P3790 = $P3786."new"($P3789, "get_who PP" :named("pirop"))
.annotate 'line', 2351
    find_lex $P3791, "$name"
    unless_null $P3791, vivify_1271
    new $P3791, "Undef"
  vivify_1271:
    set $S3792, $P3791
    $P3793 = $P3782."new"($P3790, $S3792, "keyed" :named("scope"))
.annotate 'line', 2353
    get_hll_global $P3794, "GLOBAL"
    nqp_get_package_through_who $P3795, $P3794, "PAST"
    get_who $P3796, $P3795
    set $P3797, $P3796["Val"]
    find_lex $P3798, "$past_block"
    unless_null $P3798, vivify_1272
    new $P3798, "Undef"
  vivify_1272:
    $P3799 = $P3797."new"($P3798 :named("value"))
    $P3800 = $P3778."new"($P3793, $P3799, "bind" :named("pasttype"))
.annotate 'line', 2346
    store_lex "$fixup", $P3800
.annotate 'line', 2355
    find_lex $P3801, "self"
    find_lex $P3802, "$fixup"
    unless_null $P3802, vivify_1273
    new $P3802, "Undef"
  vivify_1273:
    find_lex $P3803, "$fixup"
    unless_null $P3803, vivify_1274
    new $P3803, "Undef"
  vivify_1274:
    $P3804 = $P3801."add_event"($P3802 :named("deserialize_past"), $P3803 :named("fixup_past"))
.annotate 'line', 2345
    .return ($P3804)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("285_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3808
    .param pmc param_3809
    .param pmc param_3810 :optional :named("name")
    .param int has_param_3810 :opt_flag
    .param pmc param_3812 :optional :named("repr")
    .param int has_param_3812 :opt_flag
.annotate 'line', 2360
    new $P3807, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3807, control_3806
    push_eh $P3807
    .lex "self", param_3808
    .lex "$how", param_3809
    if has_param_3810, optparam_1275
    new $P3811, "Undef"
    set param_3810, $P3811
  optparam_1275:
    .lex "$name", param_3810
    if has_param_3812, optparam_1276
    new $P3813, "Undef"
    set param_3812, $P3813
  optparam_1276:
    .lex "$repr", param_3812
.annotate 'line', 2362
    $P3814 = root_new ['parrot';'Hash']
    .lex "%args", $P3814
.annotate 'line', 2365
    new $P3815, "Undef"
    .lex "$mo", $P3815
.annotate 'line', 2366
    new $P3816, "Undef"
    .lex "$slot", $P3816
.annotate 'line', 2370
    $P3817 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3817
.annotate 'line', 2371
    new $P3818, "Undef"
    .lex "$how_name", $P3818
.annotate 'line', 2372
    new $P3819, "Undef"
    .lex "$setup_call", $P3819
.annotate 'line', 2360
    find_lex $P3820, "%args"
    unless_null $P3820, vivify_1277
    $P3820 = root_new ['parrot';'Hash']
  vivify_1277:
.annotate 'line', 2363
    find_lex $P3822, "$name"
    unless_null $P3822, vivify_1278
    new $P3822, "Undef"
  vivify_1278:
    defined $I3823, $P3822
    unless $I3823, if_3821_end
    find_lex $P3824, "$name"
    unless_null $P3824, vivify_1279
    new $P3824, "Undef"
  vivify_1279:
    find_lex $P3825, "%args"
    unless_null $P3825, vivify_1280
    $P3825 = root_new ['parrot';'Hash']
    store_lex "%args", $P3825
  vivify_1280:
    set $P3825["name"], $P3824
  if_3821_end:
.annotate 'line', 2364
    find_lex $P3827, "$repr"
    unless_null $P3827, vivify_1281
    new $P3827, "Undef"
  vivify_1281:
    defined $I3828, $P3827
    unless $I3828, if_3826_end
    find_lex $P3829, "$repr"
    unless_null $P3829, vivify_1282
    new $P3829, "Undef"
  vivify_1282:
    find_lex $P3830, "%args"
    unless_null $P3830, vivify_1283
    $P3830 = root_new ['parrot';'Hash']
    store_lex "%args", $P3830
  vivify_1283:
    set $P3830["repr"], $P3829
  if_3826_end:
.annotate 'line', 2365
    find_lex $P3831, "$how"
    unless_null $P3831, vivify_1284
    new $P3831, "Undef"
  vivify_1284:
    find_lex $P3832, "%args"
    unless_null $P3832, vivify_1285
    $P3832 = root_new ['parrot';'Hash']
  vivify_1285:
    $P3833 = $P3831."new_type"($P3832 :flat)
    store_lex "$mo", $P3833
.annotate 'line', 2366
    find_lex $P3834, "self"
    find_lex $P3835, "$mo"
    unless_null $P3835, vivify_1286
    new $P3835, "Undef"
  vivify_1286:
    $P3836 = $P3834."add_object"($P3835)
    store_lex "$slot", $P3836
.annotate 'line', 2370
    find_lex $P3837, "$how"
    unless_null $P3837, vivify_1287
    new $P3837, "Undef"
  vivify_1287:
    get_how $P3838, $P3837
    find_lex $P3839, "$how"
    unless_null $P3839, vivify_1288
    new $P3839, "Undef"
  vivify_1288:
    $S3840 = $P3838."name"($P3839)
    split $P3841, "::", $S3840
    store_lex "@how_ns", $P3841
.annotate 'line', 2371
    find_lex $P3842, "@how_ns"
    unless_null $P3842, vivify_1289
    $P3842 = root_new ['parrot';'ResizablePMCArray']
  vivify_1289:
    $P3843 = $P3842."pop"()
    store_lex "$how_name", $P3843
.annotate 'line', 2372
    get_hll_global $P3844, "GLOBAL"
    nqp_get_package_through_who $P3845, $P3844, "PAST"
    get_who $P3846, $P3845
    set $P3847, $P3846["Op"]
.annotate 'line', 2374
    find_lex $P3848, "self"
    find_lex $P3849, "$how"
    unless_null $P3849, vivify_1290
    new $P3849, "Undef"
  vivify_1290:
    $P3850 = $P3848."get_object_sc_ref_past"($P3849)
    $P3851 = $P3847."new"($P3850, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2372
    store_lex "$setup_call", $P3851
.annotate 'line', 2376
    find_lex $P3853, "$name"
    unless_null $P3853, vivify_1291
    new $P3853, "Undef"
  vivify_1291:
    defined $I3854, $P3853
    unless $I3854, if_3852_end
.annotate 'line', 2377
    find_lex $P3855, "$setup_call"
    unless_null $P3855, vivify_1292
    new $P3855, "Undef"
  vivify_1292:
    get_hll_global $P3856, "GLOBAL"
    nqp_get_package_through_who $P3857, $P3856, "PAST"
    get_who $P3858, $P3857
    set $P3859, $P3858["Val"]
    find_lex $P3860, "$name"
    unless_null $P3860, vivify_1293
    new $P3860, "Undef"
  vivify_1293:
    $P3861 = $P3859."new"($P3860 :named("value"), "name" :named("named"))
    $P3855."push"($P3861)
  if_3852_end:
.annotate 'line', 2379
    find_lex $P3863, "$repr"
    unless_null $P3863, vivify_1294
    new $P3863, "Undef"
  vivify_1294:
    defined $I3864, $P3863
    unless $I3864, if_3862_end
.annotate 'line', 2380
    find_lex $P3865, "$setup_call"
    unless_null $P3865, vivify_1295
    new $P3865, "Undef"
  vivify_1295:
    get_hll_global $P3866, "GLOBAL"
    nqp_get_package_through_who $P3867, $P3866, "PAST"
    get_who $P3868, $P3867
    set $P3869, $P3868["Val"]
    find_lex $P3870, "$repr"
    unless_null $P3870, vivify_1296
    new $P3870, "Undef"
  vivify_1296:
    $P3871 = $P3869."new"($P3870 :named("value"), "repr" :named("named"))
    $P3865."push"($P3871)
  if_3862_end:
.annotate 'line', 2382
    find_lex $P3872, "self"
.annotate 'line', 2383
    find_lex $P3873, "self"
    find_lex $P3874, "$slot"
    unless_null $P3874, vivify_1297
    new $P3874, "Undef"
  vivify_1297:
    find_lex $P3875, "self"
    find_lex $P3876, "$setup_call"
    unless_null $P3876, vivify_1298
    new $P3876, "Undef"
  vivify_1298:
    $P3877 = $P3875."set_cur_sc"($P3876)
    $P3878 = $P3873."set_slot_past"($P3874, $P3877)
    $P3872."add_event"($P3878 :named("deserialize_past"))
.annotate 'line', 2386
    new $P3879, "Exception"
    set $P3879['type'], .CONTROL_RETURN
    find_lex $P3880, "$mo"
    unless_null $P3880, vivify_1299
    new $P3880, "Undef"
  vivify_1299:
    setattribute $P3879, 'payload', $P3880
    throw $P3879
.annotate 'line', 2360
    .return ()
  control_3806:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3881, exception, "payload"
    .return ($P3881)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("286_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3883
    .param pmc param_3884
    .param pmc param_3885
    .param pmc param_3886
    .param pmc param_3887
.annotate 'line', 2392
    .lex "self", param_3883
    .lex "$obj", param_3884
    .lex "$meta_method_name", param_3885
    .lex "$name", param_3886
    .lex "$method_past", param_3887
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("287_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3889
    .param pmc param_3890
    .param pmc param_3891
    .param pmc param_3892
.annotate 'line', 2397
    .lex "self", param_3889
    .lex "$obj", param_3890
    .lex "$meta_method_name", param_3891
    .lex "$to_add", param_3892
.annotate 'line', 2402
    new $P3893, "Undef"
    .lex "$slot_past", $P3893
.annotate 'line', 2399
    find_lex $P3894, "$obj"
    unless_null $P3894, vivify_1300
    new $P3894, "Undef"
  vivify_1300:
    get_how $P3895, $P3894
    find_lex $P3896, "$obj"
    unless_null $P3896, vivify_1301
    new $P3896, "Undef"
  vivify_1301:
    find_lex $P3897, "$to_add"
    unless_null $P3897, vivify_1302
    new $P3897, "Undef"
  vivify_1302:
    find_lex $P3898, "$meta_method_name"
    unless_null $P3898, vivify_1303
    new $P3898, "Undef"
  vivify_1303:
    set $S3899, $P3898
    $P3895.$S3899($P3896, $P3897)
.annotate 'line', 2402
    find_lex $P3900, "self"
    find_lex $P3901, "$obj"
    unless_null $P3901, vivify_1304
    new $P3901, "Undef"
  vivify_1304:
    $P3902 = $P3900."get_slot_past_for_object"($P3901)
    store_lex "$slot_past", $P3902
.annotate 'line', 2403
    find_lex $P3903, "self"
    get_hll_global $P3904, "GLOBAL"
    nqp_get_package_through_who $P3905, $P3904, "PAST"
    get_who $P3906, $P3905
    set $P3907, $P3906["Op"]
    find_lex $P3908, "$meta_method_name"
    unless_null $P3908, vivify_1305
    new $P3908, "Undef"
  vivify_1305:
.annotate 'line', 2405
    get_hll_global $P3909, "GLOBAL"
    nqp_get_package_through_who $P3910, $P3909, "PAST"
    get_who $P3911, $P3910
    set $P3912, $P3911["Op"]
    find_lex $P3913, "$slot_past"
    unless_null $P3913, vivify_1306
    new $P3913, "Undef"
  vivify_1306:
    $P3914 = $P3912."new"($P3913, "get_how PP" :named("pirop"))
    find_lex $P3915, "$slot_past"
    unless_null $P3915, vivify_1307
    new $P3915, "Undef"
  vivify_1307:
.annotate 'line', 2407
    find_lex $P3916, "self"
    find_lex $P3917, "$to_add"
    unless_null $P3917, vivify_1308
    new $P3917, "Undef"
  vivify_1308:
    $P3918 = $P3916."get_object_sc_ref_past"($P3917)
    $P3919 = $P3907."new"($P3914, $P3915, $P3918, "callmethod" :named("pasttype"), $P3908 :named("name"))
.annotate 'line', 2403
    $P3920 = $P3903."add_event"($P3919 :named("deserialize_past"))
.annotate 'line', 2397
    .return ($P3920)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("288_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3922
    .param pmc param_3923
.annotate 'line', 2412
    .lex "self", param_3922
    .lex "$obj", param_3923
.annotate 'line', 2417
    new $P3924, "Undef"
    .lex "$slot_past", $P3924
.annotate 'line', 2414
    find_lex $P3925, "$obj"
    unless_null $P3925, vivify_1309
    new $P3925, "Undef"
  vivify_1309:
    get_how $P3926, $P3925
    find_lex $P3927, "$obj"
    unless_null $P3927, vivify_1310
    new $P3927, "Undef"
  vivify_1310:
    $P3926."compose"($P3927)
.annotate 'line', 2417
    find_lex $P3928, "$obj"
    unless_null $P3928, vivify_1311
    new $P3928, "Undef"
  vivify_1311:
    $P3929 = "get_slot_past_for_object"($P3928)
    store_lex "$slot_past", $P3929
.annotate 'line', 2418
    find_lex $P3930, "self"
    get_hll_global $P3931, "GLOBAL"
    nqp_get_package_through_who $P3932, $P3931, "PAST"
    get_who $P3933, $P3932
    set $P3934, $P3933["Op"]
.annotate 'line', 2420
    get_hll_global $P3935, "GLOBAL"
    nqp_get_package_through_who $P3936, $P3935, "PAST"
    get_who $P3937, $P3936
    set $P3938, $P3937["Op"]
    find_lex $P3939, "$slot_past"
    unless_null $P3939, vivify_1312
    new $P3939, "Undef"
  vivify_1312:
    $P3940 = $P3938."new"($P3939, "get_how PP" :named("pirop"))
    find_lex $P3941, "$slot_past"
    unless_null $P3941, vivify_1313
    new $P3941, "Undef"
  vivify_1313:
    $P3942 = $P3934."new"($P3940, $P3941, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2418
    $P3943 = $P3930."add_event"($P3942 :named("deserialize_past"))
.annotate 'line', 2412
    .return ($P3943)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("289_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3945
.annotate 'line', 2426
    .lex "self", param_3945
    find_lex $P3946, "self"
    find_lex $P3947, "$?CLASS"
    getattribute $P3948, $P3946, $P3947, "@!sc"
    unless_null $P3948, vivify_1314
    $P3948 = root_new ['parrot';'ResizablePMCArray']
  vivify_1314:
    .return ($P3948)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("290_1303857419.487") :outer("262_1303857419.487")
    .param pmc param_3950
.annotate 'line', 2432
    .const 'Sub' $P3970 = "291_1303857419.487" 
    capture_lex $P3970
    .lex "self", param_3950
.annotate 'line', 2433
    new $P3951, "Undef"
    .lex "$des", $P3951
.annotate 'line', 2434
    new $P3952, "Undef"
    .lex "$fix", $P3952
.annotate 'line', 2433
    get_hll_global $P3953, "GLOBAL"
    nqp_get_package_through_who $P3954, $P3953, "PAST"
    get_who $P3955, $P3954
    set $P3956, $P3955["Stmts"]
    $P3957 = $P3956."new"()
    store_lex "$des", $P3957
.annotate 'line', 2434
    get_hll_global $P3958, "GLOBAL"
    nqp_get_package_through_who $P3959, $P3958, "PAST"
    get_who $P3960, $P3959
    set $P3961, $P3960["Stmts"]
    $P3962 = $P3961."new"()
    store_lex "$fix", $P3962
.annotate 'line', 2435
    find_lex $P3964, "self"
    find_lex $P3965, "$?CLASS"
    getattribute $P3966, $P3964, $P3965, "@!event_stream"
    unless_null $P3966, vivify_1315
    $P3966 = root_new ['parrot';'ResizablePMCArray']
  vivify_1315:
    defined $I3967, $P3966
    unless $I3967, for_undef_1316
    iter $P3963, $P3966
    new $P3989, 'ExceptionHandler'
    set_label $P3989, loop3988_handler
    $P3989."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3989
  loop3988_test:
    unless $P3963, loop3988_done
    shift $P3968, $P3963
  loop3988_redo:
    .const 'Sub' $P3970 = "291_1303857419.487" 
    capture_lex $P3970
    $P3970($P3968)
  loop3988_next:
    goto loop3988_test
  loop3988_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3990, exception, 'type'
    eq $P3990, .CONTROL_LOOP_NEXT, loop3988_next
    eq $P3990, .CONTROL_LOOP_REDO, loop3988_redo
  loop3988_done:
    pop_eh 
  for_undef_1316:
.annotate 'line', 2439
    find_dynamic_lex $P3991, "$/"
    get_hll_global $P3992, "GLOBAL"
    nqp_get_package_through_who $P3993, $P3992, "PAST"
    get_who $P3994, $P3993
    set $P3995, $P3994["Op"]
.annotate 'line', 2441
    get_hll_global $P3996, "GLOBAL"
    nqp_get_package_through_who $P3997, $P3996, "PAST"
    get_who $P3998, $P3997
    set $P3999, $P3998["Op"]
.annotate 'line', 2443
    get_hll_global $P4000, "GLOBAL"
    nqp_get_package_through_who $P4001, $P4000, "PAST"
    get_who $P4002, $P4001
    set $P4003, $P4002["Op"]
    find_lex $P4004, "self"
    find_lex $P4005, "$?CLASS"
    getattribute $P4006, $P4004, $P4005, "$!handle"
    unless_null $P4006, vivify_1323
    new $P4006, "Undef"
  vivify_1323:
    $P4007 = $P4003."new"($P4006, "nqp_get_sc Ps" :named("pirop"))
    $P4008 = $P3999."new"($P4007, "isnull IP" :named("pirop"))
.annotate 'line', 2445
    get_hll_global $P4009, "GLOBAL"
    nqp_get_package_through_who $P4010, $P4009, "PAST"
    get_who $P4011, $P4010
    set $P4012, $P4011["Stmts"]
.annotate 'line', 2446
    get_hll_global $P4013, "GLOBAL"
    nqp_get_package_through_who $P4014, $P4013, "PAST"
    get_who $P4015, $P4014
    set $P4016, $P4015["Op"]
    $P4017 = $P4016."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2447
    get_hll_global $P4018, "GLOBAL"
    nqp_get_package_through_who $P4019, $P4018, "PAST"
    get_who $P4020, $P4019
    set $P4021, $P4020["Op"]
.annotate 'line', 2449
    get_hll_global $P4022, "GLOBAL"
    nqp_get_package_through_who $P4023, $P4022, "PAST"
    get_who $P4024, $P4023
    set $P4025, $P4024["Op"]
    $P4026 = $P4025."new"("getinterp P" :named("pirop"))
.annotate 'line', 2450
    get_hll_global $P4027, "GLOBAL"
    nqp_get_package_through_who $P4028, $P4027, "PAST"
    get_who $P4029, $P4028
    set $P4030, $P4029["Op"]
    $P4031 = $P4030."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2451
    get_hll_global $P4032, "GLOBAL"
    nqp_get_package_through_who $P4033, $P4032, "PAST"
    get_who $P4034, $P4033
    set $P4035, $P4034["Op"]
    $P4036 = $P4035."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P4037 = $P4021."new"($P4026, $P4031, $P4036, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2453
    get_hll_global $P4038, "GLOBAL"
    nqp_get_package_through_who $P4039, $P4038, "PAST"
    get_who $P4040, $P4039
    set $P4041, $P4040["Op"]
.annotate 'line', 2455
    get_hll_global $P4042, "GLOBAL"
    nqp_get_package_through_who $P4043, $P4042, "PAST"
    get_who $P4044, $P4043
    set $P4045, $P4044["Var"]
    $P4046 = $P4045."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2456
    get_hll_global $P4047, "GLOBAL"
    nqp_get_package_through_who $P4048, $P4047, "PAST"
    get_who $P4049, $P4048
    set $P4050, $P4049["Op"]
    find_lex $P4051, "self"
    find_lex $P4052, "$?CLASS"
    getattribute $P4053, $P4051, $P4052, "$!handle"
    unless_null $P4053, vivify_1324
    new $P4053, "Undef"
  vivify_1324:
    $P4054 = $P4050."new"($P4053, "nqp_create_sc Ps" :named("pirop"))
    $P4055 = $P4041."new"($P4046, $P4054, "bind" :named("pasttype"))
.annotate 'line', 2453
    find_lex $P4056, "$des"
    unless_null $P4056, vivify_1325
    new $P4056, "Undef"
  vivify_1325:
    $P4057 = $P4012."new"($P4017, $P4037, $P4055, $P4056)
.annotate 'line', 2445
    find_lex $P4058, "$fix"
    unless_null $P4058, vivify_1326
    new $P4058, "Undef"
  vivify_1326:
    $P4059 = $P3995."new"($P4008, $P4057, $P4058, "if" :named("pasttype"))
.annotate 'line', 2439
    $P4060 = $P3991."!make"($P4059)
.annotate 'line', 2432
    .return ($P4060)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3969"  :anon :subid("291_1303857419.487") :outer("290_1303857419.487")
    .param pmc param_3971
.annotate 'line', 2435
    .lex "$_", param_3971
.annotate 'line', 2436
    find_lex $P3973, "$_"
    unless_null $P3973, vivify_1317
    new $P3973, "Undef"
  vivify_1317:
    $P3974 = $P3973."deserialize_past"()
    defined $I3975, $P3974
    unless $I3975, if_3972_end
    find_lex $P3976, "$des"
    unless_null $P3976, vivify_1318
    new $P3976, "Undef"
  vivify_1318:
    find_lex $P3977, "$_"
    unless_null $P3977, vivify_1319
    new $P3977, "Undef"
  vivify_1319:
    $P3978 = $P3977."deserialize_past"()
    $P3976."push"($P3978)
  if_3972_end:
.annotate 'line', 2437
    find_lex $P3981, "$_"
    unless_null $P3981, vivify_1320
    new $P3981, "Undef"
  vivify_1320:
    $P3982 = $P3981."fixup_past"()
    defined $I3983, $P3982
    if $I3983, if_3980
    new $P3979, 'Integer'
    set $P3979, $I3983
    goto if_3980_end
  if_3980:
    find_lex $P3984, "$fix"
    unless_null $P3984, vivify_1321
    new $P3984, "Undef"
  vivify_1321:
    find_lex $P3985, "$_"
    unless_null $P3985, vivify_1322
    new $P3985, "Undef"
  vivify_1322:
    $P3986 = $P3985."fixup_past"()
    $P3987 = $P3984."push"($P3986)
    set $P3979, $P3987
  if_3980_end:
.annotate 'line', 2435
    .return ($P3979)
.end


.HLL "nqp"

.namespace []
.sub "_block4120" :load :anon :subid("293_1303857419.487")
.annotate 'line', 1064
    .const 'Sub' $P4122 = "10_1303857419.487" 
    $P4123 = $P4122()
    .return ($P4123)
.end

