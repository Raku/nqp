
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303739782.662")
.annotate 'line', 0
    .const 'Sub' $P3303 = "262_1303739782.662" 
    capture_lex $P3303
    .const 'Sub' $P2837 = "242_1303739782.662" 
    capture_lex $P2837
    .const 'Sub' $P2736 = "234_1303739782.662" 
    capture_lex $P2736
    .const 'Sub' $P1450 = "167_1303739782.662" 
    capture_lex $P1450
    .const 'Sub' $P690 = "120_1303739782.662" 
    capture_lex $P690
    .const 'Sub' $P17 = "11_1303739782.662" 
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
    .const 'Sub' $P17 = "11_1303739782.662" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P690 = "120_1303739782.662" 
    capture_lex $P690
    $P690()
.annotate 'line', 1072
    .const 'Sub' $P1450 = "167_1303739782.662" 
    capture_lex $P1450
    $P1450()
.annotate 'line', 1791
    get_hll_global $P2729, "GLOBAL"
    nqp_get_package_through_who $P2730, $P2729, "HLL"
    get_who $P2731, $P2730
    set $P2732, $P2731["Compiler"]
    $P2733 = $P2732."new"()
    store_lex "$compiler", $P2733
.annotate 'line', 1792
    find_lex $P2734, "$compiler"
    unless_null $P2734, vivify_1025
    new $P2734, "Undef"
  vivify_1025:
    $P2734."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2736 = "234_1303739782.662" 
    capture_lex $P2736
    $P2736()
.annotate 'line', 1918
    .const 'Sub' $P2837 = "242_1303739782.662" 
    capture_lex $P2837
    $P2837()
.annotate 'line', 2096
    .const 'Sub' $P3303 = "262_1303739782.662" 
    capture_lex $P3303
    $P4159 = $P3303()
.annotate 'line', 1
    .return ($P4159)
.annotate 'line', 1064
    .const 'Sub' $P4161 = "293_1303739782.662" 
.annotate 'line', 1
    .return ($P4161)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1303739782.662")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303739782.662" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P4165, "1303739774.211"
    isnull $I4166, $P4165
    if $I4166, if_4164
    .const 'Sub' $P4323 = "10_1303739782.662" 
    $P4324 = $P4323."get_lexinfo"()
    nqp_get_sc_object $P4325, "1303739774.211", 0
    $P4324."set_static_lexpad_value"("GLOBALish", $P4325)
    .const 'Sub' $P4326 = "10_1303739782.662" 
    $P4327 = $P4326."get_lexinfo"()
    $P4327."finish_static_lexpad"()
    .const 'Sub' $P4328 = "10_1303739782.662" 
    $P4329 = $P4328."get_lexinfo"()
    nqp_get_sc_object $P4330, "1303739774.211", 0
    $P4329."set_static_lexpad_value"("$?PACKAGE", $P4330)
    .const 'Sub' $P4331 = "10_1303739782.662" 
    $P4332 = $P4331."get_lexinfo"()
    $P4332."finish_static_lexpad"()
    nqp_get_sc_object $P4333, "1303739774.211", 1
    set_hll_global ["HLL"], "Grammar", $P4333
    .const 'Sub' $P4334 = "109_1303739782.662" 
    nqp_get_sc_object $P4335, "1303739774.211", 1
    get_who $P4336, $P4335
    set $P4336["quotemod_check"], $P4334
    .const 'Sub' $P4337 = "112_1303739782.662" 
    nqp_get_sc_object $P4338, "1303739774.211", 1
    get_who $P4339, $P4338
    set $P4339["split_words"], $P4337
    .const 'Sub' $P4340 = "11_1303739782.662" 
    $P4341 = $P4340."get_lexinfo"()
    nqp_get_sc_object $P4342, "1303739774.211", 1
    $P4341."set_static_lexpad_value"("$?PACKAGE", $P4342)
    .const 'Sub' $P4343 = "11_1303739782.662" 
    $P4344 = $P4343."get_lexinfo"()
    $P4344."finish_static_lexpad"()
    .const 'Sub' $P4345 = "11_1303739782.662" 
    $P4346 = $P4345."get_lexinfo"()
    nqp_get_sc_object $P4347, "1303739774.211", 1
    $P4346."set_static_lexpad_value"("$?CLASS", $P4347)
    .const 'Sub' $P4348 = "11_1303739782.662" 
    $P4349 = $P4348."get_lexinfo"()
    $P4349."finish_static_lexpad"()
    nqp_get_sc_object $P4350, "1303739774.211", 2
    set_hll_global ["HLL"], "Actions", $P4350
    .const 'Sub' $P4351 = "121_1303739782.662" 
    nqp_get_sc_object $P4352, "1303739774.211", 2
    get_who $P4353, $P4352
    set $P4353["string_to_int"], $P4351
    .const 'Sub' $P4354 = "123_1303739782.662" 
    nqp_get_sc_object $P4355, "1303739774.211", 2
    get_who $P4356, $P4355
    set $P4356["ints_to_string"], $P4354
    .const 'Sub' $P4357 = "120_1303739782.662" 
    $P4358 = $P4357."get_lexinfo"()
    nqp_get_sc_object $P4359, "1303739774.211", 2
    $P4358."set_static_lexpad_value"("$?PACKAGE", $P4359)
    .const 'Sub' $P4360 = "120_1303739782.662" 
    $P4361 = $P4360."get_lexinfo"()
    $P4361."finish_static_lexpad"()
    .const 'Sub' $P4362 = "120_1303739782.662" 
    $P4363 = $P4362."get_lexinfo"()
    nqp_get_sc_object $P4364, "1303739774.211", 2
    $P4363."set_static_lexpad_value"("$?CLASS", $P4364)
    .const 'Sub' $P4365 = "120_1303739782.662" 
    $P4366 = $P4365."get_lexinfo"()
    $P4366."finish_static_lexpad"()
    nqp_get_sc_object $P4367, "1303739774.211", 3
    set_hll_global ["HLL"], "Compiler", $P4367
    .const 'Sub' $P4368 = "167_1303739782.662" 
    $P4369 = $P4368."get_lexinfo"()
    nqp_get_sc_object $P4370, "1303739774.211", 3
    $P4369."set_static_lexpad_value"("$?PACKAGE", $P4370)
    .const 'Sub' $P4371 = "167_1303739782.662" 
    $P4372 = $P4371."get_lexinfo"()
    $P4372."finish_static_lexpad"()
    .const 'Sub' $P4373 = "167_1303739782.662" 
    $P4374 = $P4373."get_lexinfo"()
    nqp_get_sc_object $P4375, "1303739774.211", 3
    $P4374."set_static_lexpad_value"("$?CLASS", $P4375)
    .const 'Sub' $P4376 = "167_1303739782.662" 
    $P4377 = $P4376."get_lexinfo"()
    $P4377."finish_static_lexpad"()
    nqp_get_sc_object $P4378, "1303739774.211", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4378
    .const 'Sub' $P4379 = "234_1303739782.662" 
    $P4380 = $P4379."get_lexinfo"()
    nqp_get_sc_object $P4381, "1303739774.211", 4
    $P4380."set_static_lexpad_value"("$?PACKAGE", $P4381)
    .const 'Sub' $P4382 = "234_1303739782.662" 
    $P4383 = $P4382."get_lexinfo"()
    $P4383."finish_static_lexpad"()
    .const 'Sub' $P4384 = "234_1303739782.662" 
    $P4385 = $P4384."get_lexinfo"()
    nqp_get_sc_object $P4386, "1303739774.211", 4
    $P4385."set_static_lexpad_value"("$?CLASS", $P4386)
    .const 'Sub' $P4387 = "234_1303739782.662" 
    $P4388 = $P4387."get_lexinfo"()
    $P4388."finish_static_lexpad"()
    nqp_get_sc_object $P4389, "1303739774.211", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4389
    .const 'Sub' $P4390 = "242_1303739782.662" 
    $P4391 = $P4390."get_lexinfo"()
    nqp_get_sc_object $P4392, "1303739774.211", 5
    $P4391."set_static_lexpad_value"("$?PACKAGE", $P4392)
    .const 'Sub' $P4393 = "242_1303739782.662" 
    $P4394 = $P4393."get_lexinfo"()
    $P4394."finish_static_lexpad"()
    .const 'Sub' $P4395 = "242_1303739782.662" 
    $P4396 = $P4395."get_lexinfo"()
    nqp_get_sc_object $P4397, "1303739774.211", 5
    $P4396."set_static_lexpad_value"("$?CLASS", $P4397)
    .const 'Sub' $P4398 = "242_1303739782.662" 
    $P4399 = $P4398."get_lexinfo"()
    $P4399."finish_static_lexpad"()
    nqp_get_sc_object $P4400, "1303739774.211", 6
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4400
    .const 'Sub' $P4401 = "262_1303739782.662" 
    $P4402 = $P4401."get_lexinfo"()
    nqp_get_sc_object $P4403, "1303739774.211", 7
    $P4402."set_static_lexpad_value"("Event", $P4403)
    .const 'Sub' $P4404 = "262_1303739782.662" 
    $P4405 = $P4404."get_lexinfo"()
    $P4405."finish_static_lexpad"()
    .const 'Sub' $P4406 = "264_1303739782.662" 
    $P4407 = $P4406."get_lexinfo"()
    nqp_get_sc_object $P4408, "1303739774.211", 7
    $P4407."set_static_lexpad_value"("$?PACKAGE", $P4408)
    .const 'Sub' $P4409 = "264_1303739782.662" 
    $P4410 = $P4409."get_lexinfo"()
    $P4410."finish_static_lexpad"()
    .const 'Sub' $P4411 = "264_1303739782.662" 
    $P4412 = $P4411."get_lexinfo"()
    nqp_get_sc_object $P4413, "1303739774.211", 7
    $P4412."set_static_lexpad_value"("$?CLASS", $P4413)
    .const 'Sub' $P4414 = "264_1303739782.662" 
    $P4415 = $P4414."get_lexinfo"()
    $P4415."finish_static_lexpad"()
    .const 'Sub' $P4416 = "262_1303739782.662" 
    $P4417 = $P4416."get_lexinfo"()
    nqp_get_sc_object $P4418, "1303739774.211", 6
    $P4417."set_static_lexpad_value"("$?PACKAGE", $P4418)
    .const 'Sub' $P4419 = "262_1303739782.662" 
    $P4420 = $P4419."get_lexinfo"()
    $P4420."finish_static_lexpad"()
    .const 'Sub' $P4421 = "262_1303739782.662" 
    $P4422 = $P4421."get_lexinfo"()
    nqp_get_sc_object $P4423, "1303739774.211", 6
    $P4422."set_static_lexpad_value"("$?CLASS", $P4423)
    .const 'Sub' $P4424 = "262_1303739782.662" 
    $P4425 = $P4424."get_lexinfo"()
    $P4425."finish_static_lexpad"()
    goto if_4164_end
  if_4164:
    nqp_dynop_setup 
    getinterp $P4167
    get_class $P4168, "LexPad"
    get_class $P4169, "NQPLexPad"
    $P4167."hll_map"($P4168, $P4169)
    nqp_create_sc $P4170, "1303739774.211"
    .local pmc cur_sc
    set cur_sc, $P4170
    get_hll_global $P4171, "KnowHOW"
    $P4172 = $P4171."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P4172, cur_sc
    nqp_set_sc_object "1303739774.211", 0, $P4172
    .const 'Sub' $P4173 = "10_1303739782.662" 
    $P4174 = $P4173."get_lexinfo"()
    nqp_get_sc_object $P4175, "1303739774.211", 0
    $P4174."set_static_lexpad_value"("GLOBALish", $P4175)
    .const 'Sub' $P4176 = "10_1303739782.662" 
    $P4177 = $P4176."get_lexinfo"()
    $P4177."finish_static_lexpad"()
    .const 'Sub' $P4178 = "10_1303739782.662" 
    $P4179 = $P4178."get_lexinfo"()
    nqp_get_sc_object $P4180, "1303739774.211", 0
    $P4179."set_static_lexpad_value"("$?PACKAGE", $P4180)
    .const 'Sub' $P4181 = "10_1303739782.662" 
    $P4182 = $P4181."get_lexinfo"()
    $P4182."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4183, "ModuleLoader"
    $P4184 = $P4183."load_setting"("NQPCORE")
    block."set_outer_ctx"($P4184)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4185, "ModuleLoader"
    nqp_get_sc_object $P4186, "1303739774.211", 0
    $P4185."load_module"("Regex", $P4186)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4187, "ModuleLoader"
    nqp_get_sc_object $P4188, "1303739774.211", 0
    $P4187."load_module"("Regex", $P4188)
    get_hll_global $P4189, "NQPClassHOW"
    $P4190 = $P4189."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P4190, cur_sc
    nqp_set_sc_object "1303739774.211", 1, $P4190
    nqp_get_sc_object $P4191, "1303739774.211", 1
    nqp_get_sc_object $P4192, "1303739774.211", 0
    nqp_get_package_through_who $P4193, $P4192, "HLL"
    get_who $P4194, $P4193
    set $P4194["Grammar"], $P4191
    nqp_get_sc_object $P4195, "1303739774.211", 1
    set_hll_global ["HLL"], "Grammar", $P4195
    .const 'Sub' $P4196 = "109_1303739782.662" 
    nqp_get_sc_object $P4197, "1303739774.211", 1
    get_who $P4198, $P4197
    set $P4198["quotemod_check"], $P4196
    .const 'Sub' $P4199 = "112_1303739782.662" 
    nqp_get_sc_object $P4200, "1303739774.211", 1
    get_who $P4201, $P4200
    set $P4201["split_words"], $P4199
    .const 'Sub' $P4202 = "11_1303739782.662" 
    $P4203 = $P4202."get_lexinfo"()
    nqp_get_sc_object $P4204, "1303739774.211", 1
    $P4203."set_static_lexpad_value"("$?PACKAGE", $P4204)
    .const 'Sub' $P4205 = "11_1303739782.662" 
    $P4206 = $P4205."get_lexinfo"()
    $P4206."finish_static_lexpad"()
    .const 'Sub' $P4207 = "11_1303739782.662" 
    $P4208 = $P4207."get_lexinfo"()
    nqp_get_sc_object $P4209, "1303739774.211", 1
    $P4208."set_static_lexpad_value"("$?CLASS", $P4209)
    .const 'Sub' $P4210 = "11_1303739782.662" 
    $P4211 = $P4210."get_lexinfo"()
    $P4211."finish_static_lexpad"()
    get_hll_global $P4212, "NQPClassHOW"
    $P4213 = $P4212."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4213, cur_sc
    nqp_set_sc_object "1303739774.211", 2, $P4213
    nqp_get_sc_object $P4214, "1303739774.211", 2
    nqp_get_sc_object $P4215, "1303739774.211", 0
    nqp_get_package_through_who $P4216, $P4215, "HLL"
    get_who $P4217, $P4216
    set $P4217["Actions"], $P4214
    nqp_get_sc_object $P4218, "1303739774.211", 2
    set_hll_global ["HLL"], "Actions", $P4218
    .const 'Sub' $P4219 = "121_1303739782.662" 
    nqp_get_sc_object $P4220, "1303739774.211", 2
    get_who $P4221, $P4220
    set $P4221["string_to_int"], $P4219
    .const 'Sub' $P4222 = "123_1303739782.662" 
    nqp_get_sc_object $P4223, "1303739774.211", 2
    get_who $P4224, $P4223
    set $P4224["ints_to_string"], $P4222
    .const 'Sub' $P4225 = "120_1303739782.662" 
    $P4226 = $P4225."get_lexinfo"()
    nqp_get_sc_object $P4227, "1303739774.211", 2
    $P4226."set_static_lexpad_value"("$?PACKAGE", $P4227)
    .const 'Sub' $P4228 = "120_1303739782.662" 
    $P4229 = $P4228."get_lexinfo"()
    $P4229."finish_static_lexpad"()
    .const 'Sub' $P4230 = "120_1303739782.662" 
    $P4231 = $P4230."get_lexinfo"()
    nqp_get_sc_object $P4232, "1303739774.211", 2
    $P4231."set_static_lexpad_value"("$?CLASS", $P4232)
    .const 'Sub' $P4233 = "120_1303739782.662" 
    $P4234 = $P4233."get_lexinfo"()
    $P4234."finish_static_lexpad"()
    get_hll_global $P4235, "NQPClassHOW"
    $P4236 = $P4235."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4236, cur_sc
    nqp_set_sc_object "1303739774.211", 3, $P4236
    nqp_get_sc_object $P4237, "1303739774.211", 3
    nqp_get_sc_object $P4238, "1303739774.211", 0
    nqp_get_package_through_who $P4239, $P4238, "HLL"
    get_who $P4240, $P4239
    set $P4240["Compiler"], $P4237
    nqp_get_sc_object $P4241, "1303739774.211", 3
    set_hll_global ["HLL"], "Compiler", $P4241
    .const 'Sub' $P4242 = "167_1303739782.662" 
    $P4243 = $P4242."get_lexinfo"()
    nqp_get_sc_object $P4244, "1303739774.211", 3
    $P4243."set_static_lexpad_value"("$?PACKAGE", $P4244)
    .const 'Sub' $P4245 = "167_1303739782.662" 
    $P4246 = $P4245."get_lexinfo"()
    $P4246."finish_static_lexpad"()
    .const 'Sub' $P4247 = "167_1303739782.662" 
    $P4248 = $P4247."get_lexinfo"()
    nqp_get_sc_object $P4249, "1303739774.211", 3
    $P4248."set_static_lexpad_value"("$?CLASS", $P4249)
    .const 'Sub' $P4250 = "167_1303739782.662" 
    $P4251 = $P4250."get_lexinfo"()
    $P4251."finish_static_lexpad"()
    get_hll_global $P4252, "NQPClassHOW"
    $P4253 = $P4252."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4253, cur_sc
    nqp_set_sc_object "1303739774.211", 4, $P4253
    nqp_get_sc_object $P4254, "1303739774.211", 4
    nqp_get_sc_object $P4255, "1303739774.211", 0
    nqp_get_package_through_who $P4256, $P4255, "HLL"
    nqp_get_package_through_who $P4257, $P4256, "CommandLine"
    get_who $P4258, $P4257
    set $P4258["Result"], $P4254
    nqp_get_sc_object $P4259, "1303739774.211", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4259
    .const 'Sub' $P4260 = "234_1303739782.662" 
    $P4261 = $P4260."get_lexinfo"()
    nqp_get_sc_object $P4262, "1303739774.211", 4
    $P4261."set_static_lexpad_value"("$?PACKAGE", $P4262)
    .const 'Sub' $P4263 = "234_1303739782.662" 
    $P4264 = $P4263."get_lexinfo"()
    $P4264."finish_static_lexpad"()
    .const 'Sub' $P4265 = "234_1303739782.662" 
    $P4266 = $P4265."get_lexinfo"()
    nqp_get_sc_object $P4267, "1303739774.211", 4
    $P4266."set_static_lexpad_value"("$?CLASS", $P4267)
    .const 'Sub' $P4268 = "234_1303739782.662" 
    $P4269 = $P4268."get_lexinfo"()
    $P4269."finish_static_lexpad"()
    get_hll_global $P4270, "NQPClassHOW"
    $P4271 = $P4270."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4271, cur_sc
    nqp_set_sc_object "1303739774.211", 5, $P4271
    nqp_get_sc_object $P4272, "1303739774.211", 5
    nqp_get_sc_object $P4273, "1303739774.211", 0
    nqp_get_package_through_who $P4274, $P4273, "HLL"
    nqp_get_package_through_who $P4275, $P4274, "CommandLine"
    get_who $P4276, $P4275
    set $P4276["Parser"], $P4272
    nqp_get_sc_object $P4277, "1303739774.211", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4277
    .const 'Sub' $P4278 = "242_1303739782.662" 
    $P4279 = $P4278."get_lexinfo"()
    nqp_get_sc_object $P4280, "1303739774.211", 5
    $P4279."set_static_lexpad_value"("$?PACKAGE", $P4280)
    .const 'Sub' $P4281 = "242_1303739782.662" 
    $P4282 = $P4281."get_lexinfo"()
    $P4282."finish_static_lexpad"()
    .const 'Sub' $P4283 = "242_1303739782.662" 
    $P4284 = $P4283."get_lexinfo"()
    nqp_get_sc_object $P4285, "1303739774.211", 5
    $P4284."set_static_lexpad_value"("$?CLASS", $P4285)
    .const 'Sub' $P4286 = "242_1303739782.662" 
    $P4287 = $P4286."get_lexinfo"()
    $P4287."finish_static_lexpad"()
    get_hll_global $P4288, "NQPClassHOW"
    $P4289 = $P4288."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4289, cur_sc
    nqp_set_sc_object "1303739774.211", 6, $P4289
    nqp_get_sc_object $P4290, "1303739774.211", 6
    nqp_get_sc_object $P4291, "1303739774.211", 0
    nqp_get_package_through_who $P4292, $P4291, "HLL"
    nqp_get_package_through_who $P4293, $P4292, "Compiler"
    get_who $P4294, $P4293
    set $P4294["SerializationContextBuilder"], $P4290
    nqp_get_sc_object $P4295, "1303739774.211", 6
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4295
    get_hll_global $P4296, "NQPClassHOW"
    $P4297 = $P4296."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4297, cur_sc
    nqp_set_sc_object "1303739774.211", 7, $P4297
    .const 'Sub' $P4298 = "262_1303739782.662" 
    $P4299 = $P4298."get_lexinfo"()
    nqp_get_sc_object $P4300, "1303739774.211", 7
    $P4299."set_static_lexpad_value"("Event", $P4300)
    .const 'Sub' $P4301 = "262_1303739782.662" 
    $P4302 = $P4301."get_lexinfo"()
    $P4302."finish_static_lexpad"()
    .const 'Sub' $P4303 = "264_1303739782.662" 
    $P4304 = $P4303."get_lexinfo"()
    nqp_get_sc_object $P4305, "1303739774.211", 7
    $P4304."set_static_lexpad_value"("$?PACKAGE", $P4305)
    .const 'Sub' $P4306 = "264_1303739782.662" 
    $P4307 = $P4306."get_lexinfo"()
    $P4307."finish_static_lexpad"()
    .const 'Sub' $P4308 = "264_1303739782.662" 
    $P4309 = $P4308."get_lexinfo"()
    nqp_get_sc_object $P4310, "1303739774.211", 7
    $P4309."set_static_lexpad_value"("$?CLASS", $P4310)
    .const 'Sub' $P4311 = "264_1303739782.662" 
    $P4312 = $P4311."get_lexinfo"()
    $P4312."finish_static_lexpad"()
    .const 'Sub' $P4313 = "262_1303739782.662" 
    $P4314 = $P4313."get_lexinfo"()
    nqp_get_sc_object $P4315, "1303739774.211", 6
    $P4314."set_static_lexpad_value"("$?PACKAGE", $P4315)
    .const 'Sub' $P4316 = "262_1303739782.662" 
    $P4317 = $P4316."get_lexinfo"()
    $P4317."finish_static_lexpad"()
    .const 'Sub' $P4318 = "262_1303739782.662" 
    $P4319 = $P4318."get_lexinfo"()
    nqp_get_sc_object $P4320, "1303739774.211", 6
    $P4319."set_static_lexpad_value"("$?CLASS", $P4320)
    .const 'Sub' $P4321 = "262_1303739782.662" 
    $P4322 = $P4321."get_lexinfo"()
    $P4322."finish_static_lexpad"()
  if_4164_end:
    nqp_get_sc_object $P4426, "1303739774.211", 0
    set_hll_global "GLOBAL", $P4426
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303739782.662") :outer("10_1303739782.662")
.annotate 'line', 9
    .const 'Sub' $P477 = "119_1303739782.662" 
    capture_lex $P477
    .const 'Sub' $P452 = "118_1303739782.662" 
    capture_lex $P452
    .const 'Sub' $P447 = "117_1303739782.662" 
    capture_lex $P447
    .const 'Sub' $P432 = "116_1303739782.662" 
    capture_lex $P432
    .const 'Sub' $P422 = "115_1303739782.662" 
    capture_lex $P422
    .const 'Sub' $P418 = "114_1303739782.662" 
    capture_lex $P418
    .const 'Sub' $P414 = "113_1303739782.662" 
    capture_lex $P414
    .const 'Sub' $P411 = "112_1303739782.662" 
    capture_lex $P411
    .const 'Sub' $P409 = "111_1303739782.662" 
    capture_lex $P409
    .const 'Sub' $P407 = "110_1303739782.662" 
    capture_lex $P407
    .const 'Sub' $P399 = "109_1303739782.662" 
    capture_lex $P399
    .const 'Sub' $P396 = "108_1303739782.662" 
    capture_lex $P396
    .const 'Sub' $P392 = "107_1303739782.662" 
    capture_lex $P392
    .const 'Sub' $P358 = "106_1303739782.662" 
    capture_lex $P358
    .const 'Sub' $P353 = "105_1303739782.662" 
    capture_lex $P353
    .const 'Sub' $P344 = "103_1303739782.662" 
    capture_lex $P344
    .const 'Sub' $P338 = "101_1303739782.662" 
    capture_lex $P338
    .const 'Sub' $P325 = "98_1303739782.662" 
    capture_lex $P325
    .const 'Sub' $P293 = "93_1303739782.662" 
    capture_lex $P293
    .const 'Sub' $P287 = "91_1303739782.662" 
    capture_lex $P287
    .const 'Sub' $P282 = "89_1303739782.662" 
    capture_lex $P282
    .const 'Sub' $P276 = "87_1303739782.662" 
    capture_lex $P276
    .const 'Sub' $P270 = "85_1303739782.662" 
    capture_lex $P270
    .const 'Sub' $P265 = "83_1303739782.662" 
    capture_lex $P265
    .const 'Sub' $P260 = "81_1303739782.662" 
    capture_lex $P260
    .const 'Sub' $P255 = "79_1303739782.662" 
    capture_lex $P255
    .const 'Sub' $P250 = "77_1303739782.662" 
    capture_lex $P250
    .const 'Sub' $P245 = "75_1303739782.662" 
    capture_lex $P245
    .const 'Sub' $P240 = "73_1303739782.662" 
    capture_lex $P240
    .const 'Sub' $P235 = "71_1303739782.662" 
    capture_lex $P235
    .const 'Sub' $P230 = "69_1303739782.662" 
    capture_lex $P230
    .const 'Sub' $P218 = "65_1303739782.662" 
    capture_lex $P218
    .const 'Sub' $P205 = "63_1303739782.662" 
    capture_lex $P205
    .const 'Sub' $P193 = "61_1303739782.662" 
    capture_lex $P193
    .const 'Sub' $P187 = "59_1303739782.662" 
    capture_lex $P187
    .const 'Sub' $P180 = "57_1303739782.662" 
    capture_lex $P180
    .const 'Sub' $P174 = "55_1303739782.662" 
    capture_lex $P174
    .const 'Sub' $P167 = "53_1303739782.662" 
    capture_lex $P167
    .const 'Sub' $P161 = "51_1303739782.662" 
    capture_lex $P161
    .const 'Sub' $P154 = "49_1303739782.662" 
    capture_lex $P154
    .const 'Sub' $P148 = "47_1303739782.662" 
    capture_lex $P148
    .const 'Sub' $P142 = "45_1303739782.662" 
    capture_lex $P142
    .const 'Sub' $P133 = "43_1303739782.662" 
    capture_lex $P133
    .const 'Sub' $P125 = "41_1303739782.662" 
    capture_lex $P125
    .const 'Sub' $P117 = "40_1303739782.662" 
    capture_lex $P117
    .const 'Sub' $P111 = "38_1303739782.662" 
    capture_lex $P111
    .const 'Sub' $P106 = "36_1303739782.662" 
    capture_lex $P106
    .const 'Sub' $P98 = "34_1303739782.662" 
    capture_lex $P98
    .const 'Sub' $P92 = "32_1303739782.662" 
    capture_lex $P92
    .const 'Sub' $P86 = "30_1303739782.662" 
    capture_lex $P86
    .const 'Sub' $P80 = "28_1303739782.662" 
    capture_lex $P80
    .const 'Sub' $P35 = "14_1303739782.662" 
    capture_lex $P35
    .const 'Sub' $P28 = "12_1303739782.662" 
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
    .const 'Sub' $P452 = "118_1303739782.662" 
    newclosure $P475, $P452
.annotate 'line', 9
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post295") :outer("11_1303739782.662")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1303739782.662" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P477 = "119_1303739782.662" 
    capture_lex $P477
    $P477()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block476"  :anon :subid("119_1303739782.662") :outer("11_1303739782.662")
.annotate 'line', 9
    nqp_get_sc_object $P478, "1303739774.211", 1
    .local pmc type_obj
    set type_obj, $P478
    get_how $P479, type_obj
    .const 'Sub' $P480 = "12_1303739782.662" 
    $P479."add_method"(type_obj, "ws", $P480)
    get_how $P481, type_obj
    get_global $P482, "!PREFIX__ws"
    $P481."add_method"(type_obj, "!PREFIX__ws", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "14_1303739782.662" 
    $P483."add_method"(type_obj, "termish", $P484)
    get_how $P485, type_obj
    get_global $P486, "!PREFIX__termish"
    $P485."add_method"(type_obj, "!PREFIX__termish", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "16_1303739782.662" 
    $P487."add_method"(type_obj, "term", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "17_1303739782.662" 
    $P489."add_method"(type_obj, "!PREFIX__term", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "18_1303739782.662" 
    $P491."add_method"(type_obj, "infix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "19_1303739782.662" 
    $P493."add_method"(type_obj, "!PREFIX__infix", $P494)
    get_how $P495, type_obj
    .const 'Sub' $P496 = "20_1303739782.662" 
    $P495."add_method"(type_obj, "prefix", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "21_1303739782.662" 
    $P497."add_method"(type_obj, "!PREFIX__prefix", $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "22_1303739782.662" 
    $P499."add_method"(type_obj, "postfix", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "23_1303739782.662" 
    $P501."add_method"(type_obj, "!PREFIX__postfix", $P502)
    get_how $P503, type_obj
    .const 'Sub' $P504 = "24_1303739782.662" 
    $P503."add_method"(type_obj, "circumfix", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "25_1303739782.662" 
    $P505."add_method"(type_obj, "!PREFIX__circumfix", $P506)
    get_how $P507, type_obj
    .const 'Sub' $P508 = "26_1303739782.662" 
    $P507."add_method"(type_obj, "postcircumfix", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "27_1303739782.662" 
    $P509."add_method"(type_obj, "!PREFIX__postcircumfix", $P510)
    get_how $P511, type_obj
    .const 'Sub' $P512 = "28_1303739782.662" 
    $P511."add_method"(type_obj, "term:sym<circumfix>", $P512)
    get_how $P513, type_obj
    get_global $P514, "!PREFIX__term:sym<circumfix>"
    $P513."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P514)
    get_how $P515, type_obj
    .const 'Sub' $P516 = "30_1303739782.662" 
    $P515."add_method"(type_obj, "infixish", $P516)
    get_how $P517, type_obj
    get_global $P518, "!PREFIX__infixish"
    $P517."add_method"(type_obj, "!PREFIX__infixish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "32_1303739782.662" 
    $P519."add_method"(type_obj, "prefixish", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__prefixish"
    $P521."add_method"(type_obj, "!PREFIX__prefixish", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "34_1303739782.662" 
    $P523."add_method"(type_obj, "postfixish", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__postfixish"
    $P525."add_method"(type_obj, "!PREFIX__postfixish", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "36_1303739782.662" 
    $P527."add_method"(type_obj, "nullterm", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__nullterm"
    $P529."add_method"(type_obj, "!PREFIX__nullterm", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "38_1303739782.662" 
    $P531."add_method"(type_obj, "nullterm_alt", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__nullterm_alt"
    $P533."add_method"(type_obj, "!PREFIX__nullterm_alt", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "40_1303739782.662" 
    $P535."add_method"(type_obj, "nulltermish", $P536)
    get_how $P537, type_obj
    .const 'Sub' $P538 = "41_1303739782.662" 
    $P537."add_method"(type_obj, "quote_delimited", $P538)
    get_how $P539, type_obj
    get_global $P540, "!PREFIX__quote_delimited"
    $P539."add_method"(type_obj, "!PREFIX__quote_delimited", $P540)
    get_how $P541, type_obj
    .const 'Sub' $P542 = "43_1303739782.662" 
    $P541."add_method"(type_obj, "quote_atom", $P542)
    get_how $P543, type_obj
    get_global $P544, "!PREFIX__quote_atom"
    $P543."add_method"(type_obj, "!PREFIX__quote_atom", $P544)
    get_how $P545, type_obj
    .const 'Sub' $P546 = "45_1303739782.662" 
    $P545."add_method"(type_obj, "decint", $P546)
    get_how $P547, type_obj
    get_global $P548, "!PREFIX__decint"
    $P547."add_method"(type_obj, "!PREFIX__decint", $P548)
    get_how $P549, type_obj
    .const 'Sub' $P550 = "47_1303739782.662" 
    $P549."add_method"(type_obj, "decints", $P550)
    get_how $P551, type_obj
    get_global $P552, "!PREFIX__decints"
    $P551."add_method"(type_obj, "!PREFIX__decints", $P552)
    get_how $P553, type_obj
    .const 'Sub' $P554 = "49_1303739782.662" 
    $P553."add_method"(type_obj, "hexint", $P554)
    get_how $P555, type_obj
    get_global $P556, "!PREFIX__hexint"
    $P555."add_method"(type_obj, "!PREFIX__hexint", $P556)
    get_how $P557, type_obj
    .const 'Sub' $P558 = "51_1303739782.662" 
    $P557."add_method"(type_obj, "hexints", $P558)
    get_how $P559, type_obj
    get_global $P560, "!PREFIX__hexints"
    $P559."add_method"(type_obj, "!PREFIX__hexints", $P560)
    get_how $P561, type_obj
    .const 'Sub' $P562 = "53_1303739782.662" 
    $P561."add_method"(type_obj, "octint", $P562)
    get_how $P563, type_obj
    get_global $P564, "!PREFIX__octint"
    $P563."add_method"(type_obj, "!PREFIX__octint", $P564)
    get_how $P565, type_obj
    .const 'Sub' $P566 = "55_1303739782.662" 
    $P565."add_method"(type_obj, "octints", $P566)
    get_how $P567, type_obj
    get_global $P568, "!PREFIX__octints"
    $P567."add_method"(type_obj, "!PREFIX__octints", $P568)
    get_how $P569, type_obj
    .const 'Sub' $P570 = "57_1303739782.662" 
    $P569."add_method"(type_obj, "binint", $P570)
    get_how $P571, type_obj
    get_global $P572, "!PREFIX__binint"
    $P571."add_method"(type_obj, "!PREFIX__binint", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "59_1303739782.662" 
    $P573."add_method"(type_obj, "binints", $P574)
    get_how $P575, type_obj
    get_global $P576, "!PREFIX__binints"
    $P575."add_method"(type_obj, "!PREFIX__binints", $P576)
    get_how $P577, type_obj
    .const 'Sub' $P578 = "61_1303739782.662" 
    $P577."add_method"(type_obj, "integer", $P578)
    get_how $P579, type_obj
    get_global $P580, "!PREFIX__integer"
    $P579."add_method"(type_obj, "!PREFIX__integer", $P580)
    get_how $P581, type_obj
    .const 'Sub' $P582 = "63_1303739782.662" 
    $P581."add_method"(type_obj, "dec_number", $P582)
    get_how $P583, type_obj
    get_global $P584, "!PREFIX__dec_number"
    $P583."add_method"(type_obj, "!PREFIX__dec_number", $P584)
    get_how $P585, type_obj
    .const 'Sub' $P586 = "65_1303739782.662" 
    $P585."add_method"(type_obj, "escale", $P586)
    get_how $P587, type_obj
    get_global $P588, "!PREFIX__escale"
    $P587."add_method"(type_obj, "!PREFIX__escale", $P588)
    get_how $P589, type_obj
    .const 'Sub' $P590 = "67_1303739782.662" 
    $P589."add_method"(type_obj, "quote_escape", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "68_1303739782.662" 
    $P591."add_method"(type_obj, "!PREFIX__quote_escape", $P592)
    get_how $P593, type_obj
    .const 'Sub' $P594 = "69_1303739782.662" 
    $P593."add_method"(type_obj, "quote_escape:sym<backslash>", $P594)
    get_how $P595, type_obj
    get_global $P596, "!PREFIX__quote_escape:sym<backslash>"
    $P595."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P596)
    get_how $P597, type_obj
    .const 'Sub' $P598 = "71_1303739782.662" 
    $P597."add_method"(type_obj, "quote_escape:sym<stopper>", $P598)
    get_how $P599, type_obj
    get_global $P600, "!PREFIX__quote_escape:sym<stopper>"
    $P599."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P600)
    get_how $P601, type_obj
    .const 'Sub' $P602 = "73_1303739782.662" 
    $P601."add_method"(type_obj, "quote_escape:sym<bs>", $P602)
    get_how $P603, type_obj
    get_global $P604, "!PREFIX__quote_escape:sym<bs>"
    $P603."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P604)
    get_how $P605, type_obj
    .const 'Sub' $P606 = "75_1303739782.662" 
    $P605."add_method"(type_obj, "quote_escape:sym<nl>", $P606)
    get_how $P607, type_obj
    get_global $P608, "!PREFIX__quote_escape:sym<nl>"
    $P607."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P608)
    get_how $P609, type_obj
    .const 'Sub' $P610 = "77_1303739782.662" 
    $P609."add_method"(type_obj, "quote_escape:sym<cr>", $P610)
    get_how $P611, type_obj
    get_global $P612, "!PREFIX__quote_escape:sym<cr>"
    $P611."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P612)
    get_how $P613, type_obj
    .const 'Sub' $P614 = "79_1303739782.662" 
    $P613."add_method"(type_obj, "quote_escape:sym<tab>", $P614)
    get_how $P615, type_obj
    get_global $P616, "!PREFIX__quote_escape:sym<tab>"
    $P615."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P616)
    get_how $P617, type_obj
    .const 'Sub' $P618 = "81_1303739782.662" 
    $P617."add_method"(type_obj, "quote_escape:sym<ff>", $P618)
    get_how $P619, type_obj
    get_global $P620, "!PREFIX__quote_escape:sym<ff>"
    $P619."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P620)
    get_how $P621, type_obj
    .const 'Sub' $P622 = "83_1303739782.662" 
    $P621."add_method"(type_obj, "quote_escape:sym<esc>", $P622)
    get_how $P623, type_obj
    get_global $P624, "!PREFIX__quote_escape:sym<esc>"
    $P623."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P624)
    get_how $P625, type_obj
    .const 'Sub' $P626 = "85_1303739782.662" 
    $P625."add_method"(type_obj, "quote_escape:sym<hex>", $P626)
    get_how $P627, type_obj
    get_global $P628, "!PREFIX__quote_escape:sym<hex>"
    $P627."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P628)
    get_how $P629, type_obj
    .const 'Sub' $P630 = "87_1303739782.662" 
    $P629."add_method"(type_obj, "quote_escape:sym<oct>", $P630)
    get_how $P631, type_obj
    get_global $P632, "!PREFIX__quote_escape:sym<oct>"
    $P631."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P632)
    get_how $P633, type_obj
    .const 'Sub' $P634 = "89_1303739782.662" 
    $P633."add_method"(type_obj, "quote_escape:sym<chr>", $P634)
    get_how $P635, type_obj
    get_global $P636, "!PREFIX__quote_escape:sym<chr>"
    $P635."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P636)
    get_how $P637, type_obj
    .const 'Sub' $P638 = "91_1303739782.662" 
    $P637."add_method"(type_obj, "quote_escape:sym<0>", $P638)
    get_how $P639, type_obj
    get_global $P640, "!PREFIX__quote_escape:sym<0>"
    $P639."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "93_1303739782.662" 
    $P641."add_method"(type_obj, "quote_escape:sym<misc>", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__quote_escape:sym<misc>"
    $P643."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "98_1303739782.662" 
    $P645."add_method"(type_obj, "charname", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__charname"
    $P647."add_method"(type_obj, "!PREFIX__charname", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "101_1303739782.662" 
    $P649."add_method"(type_obj, "charnames", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__charnames"
    $P651."add_method"(type_obj, "!PREFIX__charnames", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "103_1303739782.662" 
    $P653."add_method"(type_obj, "charspec", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__charspec"
    $P655."add_method"(type_obj, "!PREFIX__charspec", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "105_1303739782.662" 
    $P657."add_method"(type_obj, "O", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "106_1303739782.662" 
    $P659."add_method"(type_obj, "panic", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "107_1303739782.662" 
    $P661."add_method"(type_obj, "peek_delimiters", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "108_1303739782.662" 
    $P663."add_method"(type_obj, "quote_EXPR", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "109_1303739782.662" 
    $P665."add_method"(type_obj, "quotemod_check", $P666)
    get_how $P667, type_obj
    .const 'Sub' $P668 = "110_1303739782.662" 
    $P667."add_method"(type_obj, "starter", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "111_1303739782.662" 
    $P669."add_method"(type_obj, "stopper", $P670)
    get_how $P671, type_obj
    .const 'Sub' $P672 = "112_1303739782.662" 
    $P671."add_method"(type_obj, "split_words", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "113_1303739782.662" 
    $P673."add_method"(type_obj, "EXPR", $P674)
    get_how $P675, type_obj
    .const 'Sub' $P676 = "114_1303739782.662" 
    $P675."add_method"(type_obj, "EXPR_reduce", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "115_1303739782.662" 
    $P677."add_method"(type_obj, "ternary", $P678)
    get_how $P679, type_obj
    .const 'Sub' $P680 = "116_1303739782.662" 
    $P679."add_method"(type_obj, "MARKER", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "117_1303739782.662" 
    $P681."add_method"(type_obj, "MARKED", $P682)
    get_how $P683, type_obj
    .const 'Sub' $P684 = "118_1303739782.662" 
    $P683."add_method"(type_obj, "LANG", $P684)
    get_how $P685, type_obj
    get_hll_global $P686, ["Regex"], "Cursor"
    $P685."set_default_parent"(type_obj, $P686)
    get_how $P687, type_obj
    $P688 = $P687."compose"(type_obj)
    .return ($P688)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303739782.662") :method
.annotate 'line', 12
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303739782.662") :method
.annotate 'line', 12
    new $P38, "ResizablePMCArray"
    push $P38, ""
    .return ($P38)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303739782.662")
    .param pmc param_45
.annotate 'line', 22
    .lex "self", param_45
    $P46 = param_45."!protoregex"("term")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303739782.662")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("term")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303739782.662")
    .param pmc param_51
.annotate 'line', 23
    .lex "self", param_51
    $P52 = param_51."!protoregex"("infix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303739782.662")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("infix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303739782.662")
    .param pmc param_57
.annotate 'line', 24
    .lex "self", param_57
    $P58 = param_57."!protoregex"("prefix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303739782.662")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("prefix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303739782.662")
    .param pmc param_63
.annotate 'line', 25
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303739782.662")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303739782.662")
    .param pmc param_69
.annotate 'line', 26
    .lex "self", param_69
    $P70 = param_69."!protoregex"("circumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303739782.662")
    .param pmc param_72
.annotate 'line', 26
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("circumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303739782.662")
    .param pmc param_75
.annotate 'line', 27
    .lex "self", param_75
    $P76 = param_75."!protoregex"("postcircumfix")
    .return ($P76)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303739782.662")
    .param pmc param_78
.annotate 'line', 27
    .lex "self", param_78
    $P79 = param_78."!PREFIX__!protoregex"("postcircumfix")
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303739782.662") :method
.annotate 'line', 12
    $P83 = self."!PREFIX__!subrule"("circumfix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303739782.662") :method
.annotate 'line', 12
    $P89 = self."!PREFIX__!subrule"("infix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303739782.662") :method
.annotate 'line', 12
    $P95 = self."!PREFIX__!subrule"("prefix", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303739782.662") :method
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
.sub "nullterm"  :subid("36_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303739782.662") :method
.annotate 'line', 12
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303739782.662") :method
.annotate 'line', 12
    $P114 = self."!PREFIX__!subrule"("nullterm", "")
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303739782.662") :outer("11_1303739782.662")
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
.sub "quote_delimited"  :subid("41_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303739782.662") :method
.annotate 'line', 42
    $P128 = self."!PREFIX__!subrule"("starter", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303739782.662") :method
.annotate 'line', 42
    new $P136, "ResizablePMCArray"
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303739782.662") :method
.annotate 'line', 42
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303739782.662") :method
.annotate 'line', 42
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303739782.662") :method
.annotate 'line', 42
    new $P157, "ResizablePMCArray"
    push $P157, ""
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303739782.662") :method
.annotate 'line', 42
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303739782.662") :method
.annotate 'line', 42
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303739782.662") :method
.annotate 'line', 42
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303739782.662") :method
.annotate 'line', 42
    new $P183, "ResizablePMCArray"
    push $P183, ""
    .return ($P183)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303739782.662") :method
.annotate 'line', 42
    new $P190, "ResizablePMCArray"
    push $P190, ""
    .return ($P190)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303739782.662") :method
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
.sub "dec_number"  :subid("63_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303739782.662") :method
.annotate 'line', 42
    new $P208, "ResizablePMCArray"
    push $P208, ""
    push $P208, ""
    push $P208, "."
    .return ($P208)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303739782.662") :method
.annotate 'line', 42
    new $P221, "ResizablePMCArray"
    push $P221, "e"
    push $P221, "E"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303739782.662")
    .param pmc param_225
.annotate 'line', 88
    .lex "self", param_225
    $P226 = param_225."!protoregex"("quote_escape")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303739782.662")
    .param pmc param_228
.annotate 'line', 88
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("quote_escape")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303739782.662") :method
.annotate 'line', 42
    new $P233, "ResizablePMCArray"
    push $P233, "\\\\"
    .return ($P233)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303739782.662") :method
.annotate 'line', 42
    new $P238, "ResizablePMCArray"
    push $P238, "\\"
    .return ($P238)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303739782.662") :method
.annotate 'line', 42
    new $P243, "ResizablePMCArray"
    push $P243, "\\b"
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303739782.662") :method
.annotate 'line', 42
    new $P248, "ResizablePMCArray"
    push $P248, "\\n"
    .return ($P248)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303739782.662") :method
.annotate 'line', 42
    new $P253, "ResizablePMCArray"
    push $P253, "\\r"
    .return ($P253)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303739782.662") :method
.annotate 'line', 42
    new $P258, "ResizablePMCArray"
    push $P258, "\\t"
    .return ($P258)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303739782.662") :method
.annotate 'line', 42
    new $P263, "ResizablePMCArray"
    push $P263, "\\f"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303739782.662") :method
.annotate 'line', 42
    new $P268, "ResizablePMCArray"
    push $P268, "\\e"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303739782.662") :method
.annotate 'line', 42
    new $P273, "ResizablePMCArray"
    push $P273, unicode:"\\x"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303739782.662") :method
.annotate 'line', 42
    new $P279, "ResizablePMCArray"
    push $P279, "\\o"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303739782.662") :method
.annotate 'line', 42
    new $P285, "ResizablePMCArray"
    push $P285, "\\c"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303739782.662") :method
.annotate 'line', 42
    new $P290, "ResizablePMCArray"
    push $P290, "\\0"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303739782.662") :method :outer("11_1303739782.662")
.annotate 'line', 42
    .const 'Sub' $P313 = "97_1303739782.662" 
    capture_lex $P313
    .const 'Sub' $P306 = "96_1303739782.662" 
    capture_lex $P306
    .const 'Sub' $P301 = "95_1303739782.662" 
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
    .const 'Sub' $P301 = "95_1303739782.662" 
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
    .const 'Sub' $P306 = "96_1303739782.662" 
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
    .const 'Sub' $P313 = "97_1303739782.662" 
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
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303739782.662") :method
.annotate 'line', 42
    new $P296, "ResizablePMCArray"
    push $P296, ""
    .return ($P296)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block300"  :anon :subid("95_1303739782.662") :outer("93_1303739782.662")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block305"  :anon :subid("96_1303739782.662") :method :outer("93_1303739782.662")
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
.sub "_block312"  :anon :subid("97_1303739782.662") :outer("93_1303739782.662")
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
.sub "charname"  :subid("98_1303739782.662") :method :outer("11_1303739782.662")
.annotate 'line', 42
    .const 'Sub' $P335 = "100_1303739782.662" 
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
    .const 'Sub' $P335 = "100_1303739782.662" 
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
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303739782.662") :method
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
.sub "_block334"  :anon :subid("100_1303739782.662") :method :outer("98_1303739782.662")
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
.sub "charnames"  :subid("101_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303739782.662") :method
.annotate 'line', 42
    new $P341, "ResizablePMCArray"
    push $P341, ""
    .return ($P341)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303739782.662") :method :outer("11_1303739782.662")
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
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303739782.662") :method
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
.sub "O"  :subid("105_1303739782.662") :outer("11_1303739782.662")
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
.sub "panic"  :subid("106_1303739782.662") :outer("11_1303739782.662")
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
.sub "peek_delimiters"  :subid("107_1303739782.662") :outer("11_1303739782.662")
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
.sub "quote_EXPR"  :subid("108_1303739782.662") :outer("11_1303739782.662")
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
.sub "quotemod_check" :nsentry :subid("109_1303739782.662") :outer("11_1303739782.662")
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
.sub "starter"  :subid("110_1303739782.662") :outer("11_1303739782.662")
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
.sub "stopper"  :subid("111_1303739782.662") :outer("11_1303739782.662")
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
.sub "split_words" :nsentry :subid("112_1303739782.662") :outer("11_1303739782.662")
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
.sub "EXPR"  :subid("113_1303739782.662") :outer("11_1303739782.662")
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
.sub "EXPR_reduce"  :subid("114_1303739782.662") :outer("11_1303739782.662")
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
.sub "ternary"  :subid("115_1303739782.662") :outer("11_1303739782.662")
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
.sub "MARKER"  :subid("116_1303739782.662") :outer("11_1303739782.662")
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
.sub "MARKED"  :subid("117_1303739782.662") :outer("11_1303739782.662")
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
.sub "LANG"  :subid("118_1303739782.662") :outer("11_1303739782.662")
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
.sub "_block689"  :subid("120_1303739782.662") :outer("10_1303739782.662")
.annotate 'line', 867
    .const 'Sub' $P1379 = "166_1303739782.662" 
    capture_lex $P1379
    .const 'Sub' $P1360 = "165_1303739782.662" 
    capture_lex $P1360
    .const 'Sub' $P1337 = "163_1303739782.662" 
    capture_lex $P1337
    .const 'Sub' $P1309 = "162_1303739782.662" 
    capture_lex $P1309
    .const 'Sub' $P1292 = "161_1303739782.662" 
    capture_lex $P1292
    .const 'Sub' $P1287 = "160_1303739782.662" 
    capture_lex $P1287
    .const 'Sub' $P1279 = "159_1303739782.662" 
    capture_lex $P1279
    .const 'Sub' $P1264 = "158_1303739782.662" 
    capture_lex $P1264
    .const 'Sub' $P1249 = "157_1303739782.662" 
    capture_lex $P1249
    .const 'Sub' $P1244 = "156_1303739782.662" 
    capture_lex $P1244
    .const 'Sub' $P1239 = "155_1303739782.662" 
    capture_lex $P1239
    .const 'Sub' $P1234 = "154_1303739782.662" 
    capture_lex $P1234
    .const 'Sub' $P1229 = "153_1303739782.662" 
    capture_lex $P1229
    .const 'Sub' $P1224 = "152_1303739782.662" 
    capture_lex $P1224
    .const 'Sub' $P1219 = "151_1303739782.662" 
    capture_lex $P1219
    .const 'Sub' $P1211 = "150_1303739782.662" 
    capture_lex $P1211
    .const 'Sub' $P1206 = "149_1303739782.662" 
    capture_lex $P1206
    .const 'Sub' $P1192 = "148_1303739782.662" 
    capture_lex $P1192
    .const 'Sub' $P1110 = "146_1303739782.662" 
    capture_lex $P1110
    .const 'Sub' $P1033 = "143_1303739782.662" 
    capture_lex $P1033
    .const 'Sub' $P1026 = "142_1303739782.662" 
    capture_lex $P1026
    .const 'Sub' $P1019 = "141_1303739782.662" 
    capture_lex $P1019
    .const 'Sub' $P1012 = "140_1303739782.662" 
    capture_lex $P1012
    .const 'Sub' $P1005 = "139_1303739782.662" 
    capture_lex $P1005
    .const 'Sub' $P998 = "138_1303739782.662" 
    capture_lex $P998
    .const 'Sub' $P990 = "137_1303739782.662" 
    capture_lex $P990
    .const 'Sub' $P982 = "136_1303739782.662" 
    capture_lex $P982
    .const 'Sub' $P976 = "135_1303739782.662" 
    capture_lex $P976
    .const 'Sub' $P968 = "134_1303739782.662" 
    capture_lex $P968
    .const 'Sub' $P960 = "133_1303739782.662" 
    capture_lex $P960
    .const 'Sub' $P852 = "130_1303739782.662" 
    capture_lex $P852
    .const 'Sub' $P812 = "127_1303739782.662" 
    capture_lex $P812
    .const 'Sub' $P804 = "126_1303739782.662" 
    capture_lex $P804
    .const 'Sub' $P764 = "123_1303739782.662" 
    capture_lex $P764
    .const 'Sub' $P691 = "121_1303739782.662" 
    capture_lex $P691
.annotate 'line', 868
    .const 'Sub' $P691 = "121_1303739782.662" 
    newclosure $P759, $P691
    .lex "string_to_int", $P759
.annotate 'line', 867
    find_lex $P760, "string_to_int"
    find_lex $P761, "$?PACKAGE"
    get_who $P762, $P761
    set $P762["string_to_int"], $P760
    find_lex $P763, "string_to_int"
    set_global "string_to_int", $P763
.annotate 'line', 887
    .const 'Sub' $P764 = "123_1303739782.662" 
    newclosure $P795, $P764
    .lex "ints_to_string", $P795
.annotate 'line', 867
    find_lex $P796, "ints_to_string"
    find_lex $P797, "$?PACKAGE"
    get_who $P798, $P797
    set $P798["ints_to_string"], $P796
    find_lex $P799, "ints_to_string"
    set_global "ints_to_string", $P799
    .lex "$?PACKAGE", $P800
    .lex "$?CLASS", $P801
    find_lex $P802, "string_to_int"
    find_lex $P803, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1360 = "165_1303739782.662" 
    newclosure $P1375, $P1360
.annotate 'line', 867
    .return ($P1375)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post496") :outer("120_1303739782.662")
.annotate 'line', 867
    .const 'Sub' $P690 = "120_1303739782.662" 
    .local pmc block
    set block, $P690
    .const 'Sub' $P1376 = "121_1303739782.662" 
    set_global "string_to_int", $P1376
    .const 'Sub' $P1377 = "123_1303739782.662" 
    set_global "ints_to_string", $P1377
    .const 'Sub' $P1379 = "166_1303739782.662" 
    capture_lex $P1379
    $P1379()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1378"  :anon :subid("166_1303739782.662") :outer("120_1303739782.662")
.annotate 'line', 867
    nqp_get_sc_object $P1380, "1303739774.211", 2
    .local pmc type_obj
    set type_obj, $P1380
    get_how $P1381, type_obj
    .const 'Sub' $P1382 = "126_1303739782.662" 
    $P1381."add_method"(type_obj, "CTXSAVE", $P1382)
    get_how $P1383, type_obj
    .const 'Sub' $P1384 = "127_1303739782.662" 
    $P1383."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1384)
    get_how $P1385, type_obj
    .const 'Sub' $P1386 = "130_1303739782.662" 
    $P1385."add_method"(type_obj, "EXPR", $P1386)
    get_how $P1387, type_obj
    .const 'Sub' $P1388 = "133_1303739782.662" 
    $P1387."add_method"(type_obj, "term:sym<circumfix>", $P1388)
    get_how $P1389, type_obj
    .const 'Sub' $P1390 = "134_1303739782.662" 
    $P1389."add_method"(type_obj, "termish", $P1390)
    get_how $P1391, type_obj
    .const 'Sub' $P1392 = "135_1303739782.662" 
    $P1391."add_method"(type_obj, "nullterm", $P1392)
    get_how $P1393, type_obj
    .const 'Sub' $P1394 = "136_1303739782.662" 
    $P1393."add_method"(type_obj, "nullterm_alt", $P1394)
    get_how $P1395, type_obj
    .const 'Sub' $P1396 = "137_1303739782.662" 
    $P1395."add_method"(type_obj, "integer", $P1396)
    get_how $P1397, type_obj
    .const 'Sub' $P1398 = "138_1303739782.662" 
    $P1397."add_method"(type_obj, "dec_number", $P1398)
    get_how $P1399, type_obj
    .const 'Sub' $P1400 = "139_1303739782.662" 
    $P1399."add_method"(type_obj, "decint", $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "140_1303739782.662" 
    $P1401."add_method"(type_obj, "hexint", $P1402)
    get_how $P1403, type_obj
    .const 'Sub' $P1404 = "141_1303739782.662" 
    $P1403."add_method"(type_obj, "octint", $P1404)
    get_how $P1405, type_obj
    .const 'Sub' $P1406 = "142_1303739782.662" 
    $P1405."add_method"(type_obj, "binint", $P1406)
    get_how $P1407, type_obj
    .const 'Sub' $P1408 = "143_1303739782.662" 
    $P1407."add_method"(type_obj, "quote_EXPR", $P1408)
    get_how $P1409, type_obj
    .const 'Sub' $P1410 = "146_1303739782.662" 
    $P1409."add_method"(type_obj, "quote_delimited", $P1410)
    get_how $P1411, type_obj
    .const 'Sub' $P1412 = "148_1303739782.662" 
    $P1411."add_method"(type_obj, "quote_atom", $P1412)
    get_how $P1413, type_obj
    .const 'Sub' $P1414 = "149_1303739782.662" 
    $P1413."add_method"(type_obj, "quote_escape:sym<backslash>", $P1414)
    get_how $P1415, type_obj
    .const 'Sub' $P1416 = "150_1303739782.662" 
    $P1415."add_method"(type_obj, "quote_escape:sym<stopper>", $P1416)
    get_how $P1417, type_obj
    .const 'Sub' $P1418 = "151_1303739782.662" 
    $P1417."add_method"(type_obj, "quote_escape:sym<bs>", $P1418)
    get_how $P1419, type_obj
    .const 'Sub' $P1420 = "152_1303739782.662" 
    $P1419."add_method"(type_obj, "quote_escape:sym<nl>", $P1420)
    get_how $P1421, type_obj
    .const 'Sub' $P1422 = "153_1303739782.662" 
    $P1421."add_method"(type_obj, "quote_escape:sym<cr>", $P1422)
    get_how $P1423, type_obj
    .const 'Sub' $P1424 = "154_1303739782.662" 
    $P1423."add_method"(type_obj, "quote_escape:sym<tab>", $P1424)
    get_how $P1425, type_obj
    .const 'Sub' $P1426 = "155_1303739782.662" 
    $P1425."add_method"(type_obj, "quote_escape:sym<ff>", $P1426)
    get_how $P1427, type_obj
    .const 'Sub' $P1428 = "156_1303739782.662" 
    $P1427."add_method"(type_obj, "quote_escape:sym<esc>", $P1428)
    get_how $P1429, type_obj
    .const 'Sub' $P1430 = "157_1303739782.662" 
    $P1429."add_method"(type_obj, "quote_escape:sym<hex>", $P1430)
    get_how $P1431, type_obj
    .const 'Sub' $P1432 = "158_1303739782.662" 
    $P1431."add_method"(type_obj, "quote_escape:sym<oct>", $P1432)
    get_how $P1433, type_obj
    .const 'Sub' $P1434 = "159_1303739782.662" 
    $P1433."add_method"(type_obj, "quote_escape:sym<chr>", $P1434)
    get_how $P1435, type_obj
    .const 'Sub' $P1436 = "160_1303739782.662" 
    $P1435."add_method"(type_obj, "quote_escape:sym<0>", $P1436)
    get_how $P1437, type_obj
    .const 'Sub' $P1438 = "161_1303739782.662" 
    $P1437."add_method"(type_obj, "quote_escape:sym<misc>", $P1438)
    get_how $P1439, type_obj
    .const 'Sub' $P1440 = "162_1303739782.662" 
    $P1439."add_method"(type_obj, "charname", $P1440)
    get_how $P1441, type_obj
    .const 'Sub' $P1442 = "163_1303739782.662" 
    $P1441."add_method"(type_obj, "charnames", $P1442)
    get_how $P1443, type_obj
    .const 'Sub' $P1444 = "165_1303739782.662" 
    $P1443."add_method"(type_obj, "charspec", $P1444)
    get_how $P1445, type_obj
    nqp_get_sc_object $P1446, "1303739772.428", 5
    $P1445."set_default_parent"(type_obj, $P1446)
    get_how $P1447, type_obj
    $P1448 = $P1447."compose"(type_obj)
    .return ($P1448)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_692
    .param pmc param_693
.annotate 'line', 868
    .const 'Sub' $P709 = "122_1303739782.662" 
    capture_lex $P709
    .lex "$src", param_692
    .lex "$base", param_693
.annotate 'line', 869
    new $P694, "Undef"
    .lex "$len", $P694
.annotate 'line', 870
    new $P695, "Undef"
    .lex "$i", $P695
.annotate 'line', 871
    new $P696, "Undef"
    .lex "$result", $P696
.annotate 'line', 869
    find_lex $P697, "$src"
    unless_null $P697, vivify_497
    new $P697, "Undef"
  vivify_497:
    set $S698, $P697
    length $I699, $S698
    new $P700, 'Integer'
    set $P700, $I699
    store_lex "$len", $P700
.annotate 'line', 870
    new $P701, "Integer"
    assign $P701, 0
    store_lex "$i", $P701
.annotate 'line', 871
    new $P702, "Integer"
    assign $P702, 0
    store_lex "$result", $P702
.annotate 'line', 873
    new $P756, 'ExceptionHandler'
    set_label $P756, loop755_handler
    $P756."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P756
  loop755_test:
    find_lex $P703, "$i"
    unless_null $P703, vivify_498
    new $P703, "Undef"
  vivify_498:
    set $N704, $P703
    find_lex $P705, "$len"
    unless_null $P705, vivify_499
    new $P705, "Undef"
  vivify_499:
    set $N706, $P705
    islt $I707, $N704, $N706
    unless $I707, loop755_done
  loop755_redo:
    .const 'Sub' $P709 = "122_1303739782.662" 
    capture_lex $P709
    $P709()
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
    find_lex $P758, "$result"
    unless_null $P758, vivify_514
    new $P758, "Undef"
  vivify_514:
.annotate 'line', 868
    .return ($P758)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block708"  :anon :subid("122_1303739782.662") :outer("121_1303739782.662")
.annotate 'line', 874
    new $P710, "Undef"
    .lex "$char", $P710
.annotate 'line', 876
    new $P711, "Undef"
    .lex "$digitval", $P711
.annotate 'line', 874
    find_lex $P712, "$src"
    unless_null $P712, vivify_500
    new $P712, "Undef"
  vivify_500:
    set $S713, $P712
    find_lex $P714, "$i"
    unless_null $P714, vivify_501
    new $P714, "Undef"
  vivify_501:
    set $I715, $P714
    substr $S716, $S713, $I715, 1
    new $P717, 'String'
    set $P717, $S716
    store_lex "$char", $P717
.annotate 'line', 875
    find_lex $P719, "$char"
    unless_null $P719, vivify_502
    new $P719, "Undef"
  vivify_502:
    set $S720, $P719
    iseq $I721, $S720, "_"
    unless $I721, if_718_end
    set $I722, .CONTROL_LOOP_NEXT
    die 0, $I722
  if_718_end:
.annotate 'line', 876
    find_lex $P723, "$char"
    unless_null $P723, vivify_503
    new $P723, "Undef"
  vivify_503:
    set $S724, $P723
    index $I725, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S724
    new $P726, 'Integer'
    set $P726, $I725
    store_lex "$digitval", $P726
.annotate 'line', 877
    find_lex $P727, "$digitval"
    unless_null $P727, vivify_504
    new $P727, "Undef"
  vivify_504:
    div $P728, $P727, 2
    set $I729, $P728
    new $P730, 'Integer'
    set $P730, $I729
    store_lex "$digitval", $P730
.annotate 'line', 878
    find_lex $P734, "$digitval"
    unless_null $P734, vivify_505
    new $P734, "Undef"
  vivify_505:
    set $N735, $P734
    islt $I736, $N735, 0.0
    unless $I736, unless_733
    new $P732, 'Integer'
    set $P732, $I736
    goto unless_733_end
  unless_733:
    find_lex $P737, "$digitval"
    unless_null $P737, vivify_506
    new $P737, "Undef"
  vivify_506:
    set $N738, $P737
    find_lex $P739, "$base"
    unless_null $P739, vivify_507
    new $P739, "Undef"
  vivify_507:
    set $N740, $P739
    isge $I741, $N738, $N740
    new $P732, 'Integer'
    set $P732, $I741
  unless_733_end:
    unless $P732, if_731_end
.annotate 'line', 879
    find_lex $P742, "$src"
    unless_null $P742, vivify_508
    new $P742, "Undef"
  vivify_508:
    new $P743, 'String'
    set $P743, "Invalid radix conversion of character '"
    find_lex $P744, "$char"
    unless_null $P744, vivify_509
    new $P744, "Undef"
  vivify_509:
    concat $P745, $P743, $P744
    concat $P746, $P745, "'"
    $P742."panic"($P746)
  if_731_end:
.annotate 'line', 881
    find_lex $P747, "$base"
    unless_null $P747, vivify_510
    new $P747, "Undef"
  vivify_510:
    find_lex $P748, "$result"
    unless_null $P748, vivify_511
    new $P748, "Undef"
  vivify_511:
    mul $P749, $P747, $P748
    find_lex $P750, "$digitval"
    unless_null $P750, vivify_512
    new $P750, "Undef"
  vivify_512:
    add $P751, $P749, $P750
    store_lex "$result", $P751
.annotate 'line', 882
    find_lex $P752, "$i"
    unless_null $P752, vivify_513
    new $P752, "Undef"
  vivify_513:
    add $P753, $P752, 1
    store_lex "$i", $P753
    new $P754, "ResizablePMCArray"
    push $P754, $P751
    push $P754, $P753
.annotate 'line', 873
    .return ($P754)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_765
.annotate 'line', 887
    .const 'Sub' $P771 = "124_1303739782.662" 
    capture_lex $P771
    .lex "$ints", param_765
.annotate 'line', 888
    find_lex $P768, "$ints"
    unless_null $P768, vivify_515
    new $P768, "Undef"
  vivify_515:
    does $I769, $P768, "array"
    if $I769, if_767
.annotate 'line', 895
    find_lex $P791, "$ints"
    unless_null $P791, vivify_516
    new $P791, "Undef"
  vivify_516:
    $I792 = $P791."ast"()
    chr $S793, $I792
    new $P794, 'String'
    set $P794, $S793
.annotate 'line', 894
    set $P766, $P794
.annotate 'line', 888
    goto if_767_end
  if_767:
    .const 'Sub' $P771 = "124_1303739782.662" 
    capture_lex $P771
    $P790 = $P771()
    set $P766, $P790
  if_767_end:
.annotate 'line', 887
    .return ($P766)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block770"  :anon :subid("124_1303739782.662") :outer("123_1303739782.662")
.annotate 'line', 888
    .const 'Sub' $P779 = "125_1303739782.662" 
    capture_lex $P779
.annotate 'line', 889
    new $P772, "Undef"
    .lex "$result", $P772
    new $P773, "String"
    assign $P773, ""
    store_lex "$result", $P773
.annotate 'line', 890
    find_lex $P775, "$ints"
    unless_null $P775, vivify_517
    new $P775, "Undef"
  vivify_517:
    defined $I776, $P775
    unless $I776, for_undef_518
    iter $P774, $P775
    new $P787, 'ExceptionHandler'
    set_label $P787, loop786_handler
    $P787."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P787
  loop786_test:
    unless $P774, loop786_done
    shift $P777, $P774
  loop786_redo:
    .const 'Sub' $P779 = "125_1303739782.662" 
    capture_lex $P779
    $P779($P777)
  loop786_next:
    goto loop786_test
  loop786_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P788, exception, 'type'
    eq $P788, .CONTROL_LOOP_NEXT, loop786_next
    eq $P788, .CONTROL_LOOP_REDO, loop786_redo
  loop786_done:
    pop_eh 
  for_undef_518:
    find_lex $P789, "$result"
    unless_null $P789, vivify_521
    new $P789, "Undef"
  vivify_521:
.annotate 'line', 888
    .return ($P789)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block778"  :anon :subid("125_1303739782.662") :outer("124_1303739782.662")
    .param pmc param_780
.annotate 'line', 890
    .lex "$_", param_780
.annotate 'line', 891
    find_lex $P781, "$result"
    unless_null $P781, vivify_519
    new $P781, "Undef"
  vivify_519:
    find_lex $P782, "$_"
    unless_null $P782, vivify_520
    new $P782, "Undef"
  vivify_520:
    $I783 = $P782."ast"()
    chr $S784, $I783
    concat $P785, $P781, $S784
    store_lex "$result", $P785
.annotate 'line', 890
    .return ($P785)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_805
.annotate 'line', 900
    .lex "self", param_805
.annotate 'line', 901
    get_hll_global $P806, "GLOBAL"
    nqp_get_package_through_who $P807, $P806, "PAST"
    get_who $P808, $P807
    set $P809, $P808["Op"]
.annotate 'line', 907
    new $P810, "ResizablePMCArray"
    push $P810, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P810, "    if null $P0 goto ctxsave_done"
    push $P810, "    $I0 = can $P0, \"ctxsave\""
    push $P810, "    unless $I0 goto ctxsave_done"
    push $P810, "    $P0.\"ctxsave\"()"
    push $P810, "  ctxsave_done:"
    $P811 = $P809."new"($P810 :named("inline"))
.annotate 'line', 900
    .return ($P811)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_813
    .param pmc param_814
.annotate 'line', 914
    .const 'Sub' $P826 = "128_1303739782.662" 
    capture_lex $P826
    .lex "self", param_813
    .lex "$block", param_814
.annotate 'line', 915
    new $P815, "Undef"
    .lex "$outer_ctx", $P815
    find_dynamic_lex $P818, "%*COMPILING"
    unless_null $P818, vivify_522
    get_hll_global $P816, "GLOBAL"
    get_who $P817, $P816
    set $P818, $P817["%COMPILING"]
    unless_null $P818, vivify_523
    die "Contextual %*COMPILING not found"
  vivify_523:
  vivify_522:
    set $P819, $P818["%?OPTIONS"]
    unless_null $P819, vivify_524
    $P819 = root_new ['parrot';'Hash']
  vivify_524:
    set $P820, $P819["outer_ctx"]
    unless_null $P820, vivify_525
    new $P820, "Undef"
  vivify_525:
    store_lex "$outer_ctx", $P820
.annotate 'line', 916
    find_lex $P823, "$outer_ctx"
    unless_null $P823, vivify_526
    new $P823, "Undef"
  vivify_526:
    defined $I824, $P823
    if $I824, if_822
    new $P821, 'Integer'
    set $P821, $I824
    goto if_822_end
  if_822:
    .const 'Sub' $P826 = "128_1303739782.662" 
    capture_lex $P826
    $P851 = $P826()
    set $P821, $P851
  if_822_end:
.annotate 'line', 914
    .return ($P821)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block825"  :anon :subid("128_1303739782.662") :outer("127_1303739782.662")
.annotate 'line', 916
    .const 'Sub' $P840 = "129_1303739782.662" 
    capture_lex $P840
.annotate 'line', 917
    $P827 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P827
    find_lex $P828, "$outer_ctx"
    unless_null $P828, vivify_527
    new $P828, "Undef"
  vivify_527:
    getattribute $P829, $P828, "current_namespace"
    $P830 = $P829."get_name"()
    store_lex "@ns", $P830
.annotate 'line', 918
    find_lex $P831, "@ns"
    unless_null $P831, vivify_528
    $P831 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    $P831."shift"()
.annotate 'line', 919
    find_lex $P832, "$block"
    unless_null $P832, vivify_529
    new $P832, "Undef"
  vivify_529:
    find_lex $P833, "@ns"
    unless_null $P833, vivify_530
    $P833 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    $P832."namespace"($P833)
.annotate 'line', 920
    find_lex $P835, "$outer_ctx"
    unless_null $P835, vivify_531
    new $P835, "Undef"
  vivify_531:
    $P836 = $P835."lexpad_full"()
    defined $I837, $P836
    unless $I837, for_undef_532
    iter $P834, $P836
    new $P849, 'ExceptionHandler'
    set_label $P849, loop848_handler
    $P849."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P849
  loop848_test:
    unless $P834, loop848_done
    shift $P838, $P834
  loop848_redo:
    .const 'Sub' $P840 = "129_1303739782.662" 
    capture_lex $P840
    $P840($P838)
  loop848_next:
    goto loop848_test
  loop848_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P850, exception, 'type'
    eq $P850, .CONTROL_LOOP_NEXT, loop848_next
    eq $P850, .CONTROL_LOOP_REDO, loop848_redo
  loop848_done:
    pop_eh 
  for_undef_532:
.annotate 'line', 916
    .return ($P834)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block839"  :anon :subid("129_1303739782.662") :outer("128_1303739782.662")
    .param pmc param_841
.annotate 'line', 920
    .lex "$_", param_841
.annotate 'line', 921
    find_lex $P842, "$block"
    unless_null $P842, vivify_533
    new $P842, "Undef"
  vivify_533:
    find_lex $P843, "$_"
    unless_null $P843, vivify_534
    new $P843, "Undef"
  vivify_534:
    $P844 = $P843."key"()
    find_lex $P845, "$_"
    unless_null $P845, vivify_535
    new $P845, "Undef"
  vivify_535:
    $P846 = $P845."value"()
    $P847 = $P842."symbol"($P844, "lexical" :named("scope"), $P846 :named("value"))
.annotate 'line', 920
    .return ($P847)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_855
    .param pmc param_856
    .param pmc param_857 :optional
    .param int has_param_857 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P942 = "132_1303739782.662" 
    capture_lex $P942
    .const 'Sub' $P906 = "131_1303739782.662" 
    capture_lex $P906
    new $P854, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P854, control_853
    push_eh $P854
    .lex "self", param_855
    .lex "$/", param_856
    if has_param_857, optparam_536
    new $P858, "Undef"
    set param_857, $P858
  optparam_536:
    .lex "$key", param_857
.annotate 'line', 929
    new $P859, "Undef"
    .lex "$past", $P859
.annotate 'line', 928
    find_lex $P861, "$key"
    unless_null $P861, vivify_537
    new $P861, "Undef"
  vivify_537:
    if $P861, unless_860_end
    new $P862, "Exception"
    set $P862['type'], .CONTROL_RETURN
    new $P863, "Integer"
    assign $P863, 0
    setattribute $P862, 'payload', $P863
    throw $P862
  unless_860_end:
.annotate 'line', 929
    find_lex $P865, "$/"
    unless_null $P865, vivify_538
    new $P865, "Undef"
  vivify_538:
    $P866 = $P865."ast"()
    set $P864, $P866
    defined $I868, $P864
    if $I868, default_867
    find_lex $P869, "$/"
    unless_null $P869, vivify_539
    $P869 = root_new ['parrot';'Hash']
  vivify_539:
    set $P870, $P869["OPER"]
    unless_null $P870, vivify_540
    new $P870, "Undef"
  vivify_540:
    $P871 = $P870."ast"()
    set $P864, $P871
  default_867:
    store_lex "$past", $P864
.annotate 'line', 930
    find_lex $P873, "$past"
    unless_null $P873, vivify_541
    new $P873, "Undef"
  vivify_541:
    if $P873, unless_872_end
.annotate 'line', 931
    get_hll_global $P874, "GLOBAL"
    nqp_get_package_through_who $P875, $P874, "PAST"
    get_who $P876, $P875
    set $P877, $P876["Op"]
    find_lex $P878, "$/"
    unless_null $P878, vivify_542
    new $P878, "Undef"
  vivify_542:
    $P879 = $P877."new"($P878 :named("node"))
    store_lex "$past", $P879
.annotate 'line', 932
    find_lex $P881, "$/"
    unless_null $P881, vivify_543
    $P881 = root_new ['parrot';'Hash']
  vivify_543:
    set $P882, $P881["OPER"]
    unless_null $P882, vivify_544
    $P882 = root_new ['parrot';'Hash']
  vivify_544:
    set $P883, $P882["O"]
    unless_null $P883, vivify_545
    $P883 = root_new ['parrot';'Hash']
  vivify_545:
    set $P884, $P883["pasttype"]
    unless_null $P884, vivify_546
    new $P884, "Undef"
  vivify_546:
    if $P884, if_880
.annotate 'line', 933
    find_lex $P892, "$/"
    unless_null $P892, vivify_547
    $P892 = root_new ['parrot';'Hash']
  vivify_547:
    set $P893, $P892["OPER"]
    unless_null $P893, vivify_548
    $P893 = root_new ['parrot';'Hash']
  vivify_548:
    set $P894, $P893["O"]
    unless_null $P894, vivify_549
    $P894 = root_new ['parrot';'Hash']
  vivify_549:
    set $P895, $P894["pirop"]
    unless_null $P895, vivify_550
    new $P895, "Undef"
  vivify_550:
    unless $P895, if_891_end
    find_lex $P896, "$past"
    unless_null $P896, vivify_551
    new $P896, "Undef"
  vivify_551:
    find_lex $P897, "$/"
    unless_null $P897, vivify_552
    $P897 = root_new ['parrot';'Hash']
  vivify_552:
    set $P898, $P897["OPER"]
    unless_null $P898, vivify_553
    $P898 = root_new ['parrot';'Hash']
  vivify_553:
    set $P899, $P898["O"]
    unless_null $P899, vivify_554
    $P899 = root_new ['parrot';'Hash']
  vivify_554:
    set $P900, $P899["pirop"]
    unless_null $P900, vivify_555
    new $P900, "Undef"
  vivify_555:
    set $S901, $P900
    $P896."pirop"($S901)
  if_891_end:
    goto if_880_end
  if_880:
.annotate 'line', 932
    find_lex $P885, "$past"
    unless_null $P885, vivify_556
    new $P885, "Undef"
  vivify_556:
    find_lex $P886, "$/"
    unless_null $P886, vivify_557
    $P886 = root_new ['parrot';'Hash']
  vivify_557:
    set $P887, $P886["OPER"]
    unless_null $P887, vivify_558
    $P887 = root_new ['parrot';'Hash']
  vivify_558:
    set $P888, $P887["O"]
    unless_null $P888, vivify_559
    $P888 = root_new ['parrot';'Hash']
  vivify_559:
    set $P889, $P888["pasttype"]
    unless_null $P889, vivify_560
    new $P889, "Undef"
  vivify_560:
    set $S890, $P889
    $P885."pasttype"($S890)
  if_880_end:
.annotate 'line', 934
    find_lex $P903, "$past"
    unless_null $P903, vivify_561
    new $P903, "Undef"
  vivify_561:
    $P904 = $P903."name"()
    if $P904, unless_902_end
    .const 'Sub' $P906 = "131_1303739782.662" 
    capture_lex $P906
    $P906()
  unless_902_end:
  unless_872_end:
.annotate 'line', 940
    find_lex $P929, "$key"
    unless_null $P929, vivify_569
    new $P929, "Undef"
  vivify_569:
    set $S930, $P929
    iseq $I931, $S930, "POSTFIX"
    if $I931, if_928
.annotate 'line', 942
    find_lex $P937, "$/"
    unless_null $P937, vivify_570
    new $P937, "Undef"
  vivify_570:
    $P938 = $P937."list"()
    defined $I939, $P938
    unless $I939, for_undef_571
    iter $P936, $P938
    new $P954, 'ExceptionHandler'
    set_label $P954, loop953_handler
    $P954."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P954
  loop953_test:
    unless $P936, loop953_done
    shift $P940, $P936
  loop953_redo:
    .const 'Sub' $P942 = "132_1303739782.662" 
    capture_lex $P942
    $P942($P940)
  loop953_next:
    goto loop953_test
  loop953_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P955, exception, 'type'
    eq $P955, .CONTROL_LOOP_NEXT, loop953_next
    eq $P955, .CONTROL_LOOP_REDO, loop953_redo
  loop953_done:
    pop_eh 
  for_undef_571:
.annotate 'line', 941
    goto if_928_end
  if_928:
.annotate 'line', 940
    find_lex $P932, "$past"
    unless_null $P932, vivify_575
    new $P932, "Undef"
  vivify_575:
    find_lex $P933, "$/"
    unless_null $P933, vivify_576
    $P933 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    set $P934, $P933[0]
    unless_null $P934, vivify_577
    new $P934, "Undef"
  vivify_577:
    $P935 = $P934."ast"()
    $P932."unshift"($P935)
  if_928_end:
.annotate 'line', 944
    find_lex $P956, "$/"
    find_lex $P957, "$past"
    unless_null $P957, vivify_578
    new $P957, "Undef"
  vivify_578:
    $P958 = $P956."!make"($P957)
.annotate 'line', 927
    .return ($P958)
  control_853:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P959, exception, "payload"
    .return ($P959)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block905"  :anon :subid("131_1303739782.662") :outer("130_1303739782.662")
.annotate 'line', 936
    new $P907, "Undef"
    .lex "$name", $P907
.annotate 'line', 935
    find_lex $P909, "$key"
    unless_null $P909, vivify_562
    new $P909, "Undef"
  vivify_562:
    set $S910, $P909
    iseq $I911, $S910, "LIST"
    unless $I911, if_908_end
    new $P912, "String"
    assign $P912, "infix"
    store_lex "$key", $P912
  if_908_end:
.annotate 'line', 936
    find_lex $P913, "$key"
    unless_null $P913, vivify_563
    new $P913, "Undef"
  vivify_563:
    set $S914, $P913
    downcase $S915, $S914
    new $P916, 'String'
    set $P916, $S915
    concat $P917, $P916, ":<"
    find_lex $P918, "$/"
    unless_null $P918, vivify_564
    $P918 = root_new ['parrot';'Hash']
  vivify_564:
    set $P919, $P918["OPER"]
    unless_null $P919, vivify_565
    $P919 = root_new ['parrot';'Hash']
  vivify_565:
    set $P920, $P919["sym"]
    unless_null $P920, vivify_566
    new $P920, "Undef"
  vivify_566:
    concat $P921, $P917, $P920
    concat $P922, $P921, ">"
    store_lex "$name", $P922
.annotate 'line', 937
    find_lex $P923, "$past"
    unless_null $P923, vivify_567
    new $P923, "Undef"
  vivify_567:
    new $P924, "String"
    assign $P924, "&"
    find_lex $P925, "$name"
    unless_null $P925, vivify_568
    new $P925, "Undef"
  vivify_568:
    concat $P926, $P924, $P925
    $P927 = $P923."name"($P926)
.annotate 'line', 934
    .return ($P927)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block941"  :anon :subid("132_1303739782.662") :outer("130_1303739782.662")
    .param pmc param_943
.annotate 'line', 942
    .lex "$_", param_943
    find_lex $P946, "$_"
    unless_null $P946, vivify_572
    new $P946, "Undef"
  vivify_572:
    $P947 = $P946."ast"()
    defined $I948, $P947
    if $I948, if_945
    new $P944, 'Integer'
    set $P944, $I948
    goto if_945_end
  if_945:
    find_lex $P949, "$past"
    unless_null $P949, vivify_573
    new $P949, "Undef"
  vivify_573:
    find_lex $P950, "$_"
    unless_null $P950, vivify_574
    new $P950, "Undef"
  vivify_574:
    $P951 = $P950."ast"()
    $P952 = $P949."push"($P951)
    set $P944, $P952
  if_945_end:
    .return ($P944)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_961
    .param pmc param_962
.annotate 'line', 947
    .lex "self", param_961
    .lex "$/", param_962
    find_lex $P963, "$/"
    find_lex $P964, "$/"
    unless_null $P964, vivify_579
    $P964 = root_new ['parrot';'Hash']
  vivify_579:
    set $P965, $P964["circumfix"]
    unless_null $P965, vivify_580
    new $P965, "Undef"
  vivify_580:
    $P966 = $P965."ast"()
    $P967 = $P963."!make"($P966)
    .return ($P967)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_969
    .param pmc param_970
.annotate 'line', 949
    .lex "self", param_969
    .lex "$/", param_970
    find_lex $P971, "$/"
    find_lex $P972, "$/"
    unless_null $P972, vivify_581
    $P972 = root_new ['parrot';'Hash']
  vivify_581:
    set $P973, $P972["term"]
    unless_null $P973, vivify_582
    new $P973, "Undef"
  vivify_582:
    $P974 = $P973."ast"()
    $P975 = $P971."!make"($P974)
    .return ($P975)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_977
    .param pmc param_978
.annotate 'line', 950
    .lex "self", param_977
    .lex "$/", param_978
    find_lex $P979, "$/"
    new $P980, "Undef"
    $P981 = $P979."!make"($P980)
    .return ($P981)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_983
    .param pmc param_984
.annotate 'line', 951
    .lex "self", param_983
    .lex "$/", param_984
    find_lex $P985, "$/"
    find_lex $P986, "$/"
    unless_null $P986, vivify_583
    $P986 = root_new ['parrot';'Hash']
  vivify_583:
    set $P987, $P986["term"]
    unless_null $P987, vivify_584
    new $P987, "Undef"
  vivify_584:
    $P988 = $P987."ast"()
    $P989 = $P985."!make"($P988)
    .return ($P989)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_991
    .param pmc param_992
.annotate 'line', 953
    .lex "self", param_991
    .lex "$/", param_992
    find_lex $P993, "$/"
    find_lex $P994, "$/"
    unless_null $P994, vivify_585
    $P994 = root_new ['parrot';'Hash']
  vivify_585:
    set $P995, $P994["VALUE"]
    unless_null $P995, vivify_586
    new $P995, "Undef"
  vivify_586:
    $P996 = $P995."ast"()
    $P997 = $P993."!make"($P996)
    .return ($P997)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_999
    .param pmc param_1000
.annotate 'line', 955
    .lex "self", param_999
    .lex "$/", param_1000
    find_lex $P1001, "$/"
    find_lex $P1002, "$/"
    unless_null $P1002, vivify_587
    new $P1002, "Undef"
  vivify_587:
    set $N1003, $P1002
    $P1004 = $P1001."!make"($N1003)
    .return ($P1004)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1006
    .param pmc param_1007
.annotate 'line', 957
    .lex "self", param_1006
    .lex "$/", param_1007
    find_lex $P1008, "$/"
    find_lex $P1009, "$/"
    unless_null $P1009, vivify_588
    new $P1009, "Undef"
  vivify_588:
    $P1010 = "string_to_int"($P1009, 10)
    $P1011 = $P1008."!make"($P1010)
    .return ($P1011)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1013
    .param pmc param_1014
.annotate 'line', 958
    .lex "self", param_1013
    .lex "$/", param_1014
    find_lex $P1015, "$/"
    find_lex $P1016, "$/"
    unless_null $P1016, vivify_589
    new $P1016, "Undef"
  vivify_589:
    $P1017 = "string_to_int"($P1016, 16)
    $P1018 = $P1015."!make"($P1017)
    .return ($P1018)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1020
    .param pmc param_1021
.annotate 'line', 959
    .lex "self", param_1020
    .lex "$/", param_1021
    find_lex $P1022, "$/"
    find_lex $P1023, "$/"
    unless_null $P1023, vivify_590
    new $P1023, "Undef"
  vivify_590:
    $P1024 = "string_to_int"($P1023, 8)
    $P1025 = $P1022."!make"($P1024)
    .return ($P1025)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1027
    .param pmc param_1028
.annotate 'line', 960
    .lex "self", param_1027
    .lex "$/", param_1028
    find_lex $P1029, "$/"
    find_lex $P1030, "$/"
    unless_null $P1030, vivify_591
    new $P1030, "Undef"
  vivify_591:
    $P1031 = "string_to_int"($P1030, 2)
    $P1032 = $P1029."!make"($P1031)
    .return ($P1032)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1034
    .param pmc param_1035
.annotate 'line', 962
    .const 'Sub' $P1054 = "144_1303739782.662" 
    capture_lex $P1054
    .lex "self", param_1034
    .lex "$/", param_1035
.annotate 'line', 963
    new $P1036, "Undef"
    .lex "$past", $P1036
    find_lex $P1037, "$/"
    unless_null $P1037, vivify_592
    $P1037 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1038, $P1037["quote_delimited"]
    unless_null $P1038, vivify_593
    new $P1038, "Undef"
  vivify_593:
    $P1039 = $P1038."ast"()
    store_lex "$past", $P1039
.annotate 'line', 964
    find_lex $P1041, "$/"
    unless_null $P1041, vivify_594
    new $P1041, "Undef"
  vivify_594:
    $P1042 = $P1041."CURSOR"()
    $P1043 = $P1042."quotemod_check"("w")
    unless $P1043, if_1040_end
.annotate 'line', 965
    get_hll_global $P1045, "GLOBAL"
    nqp_get_package_through_who $P1046, $P1045, "PAST"
    get_who $P1047, $P1046
    set $P1048, $P1047["Node"]
    find_lex $P1049, "$past"
    unless_null $P1049, vivify_595
    new $P1049, "Undef"
  vivify_595:
    $P1050 = $P1048."ACCEPTS"($P1049)
    if $P1050, if_1044
.annotate 'line', 968
    .const 'Sub' $P1054 = "144_1303739782.662" 
    capture_lex $P1054
    $P1054()
    goto if_1044_end
  if_1044:
.annotate 'line', 966
    find_lex $P1051, "$/"
    unless_null $P1051, vivify_606
    new $P1051, "Undef"
  vivify_606:
    $P1052 = $P1051."CURSOR"()
    $P1052."panic"("Can't form :w list from non-constant strings (yet)")
  if_1044_end:
  if_1040_end:
.annotate 'line', 979
    get_hll_global $P1093, "GLOBAL"
    nqp_get_package_through_who $P1094, $P1093, "PAST"
    get_who $P1095, $P1094
    set $P1096, $P1095["Node"]
    find_lex $P1097, "$past"
    unless_null $P1097, vivify_607
    new $P1097, "Undef"
  vivify_607:
    $P1098 = $P1096."ACCEPTS"($P1097)
    isfalse $I1099, $P1098
    unless $I1099, if_1092_end
.annotate 'line', 980
    get_hll_global $P1100, "GLOBAL"
    nqp_get_package_through_who $P1101, $P1100, "PAST"
    get_who $P1102, $P1101
    set $P1103, $P1102["Val"]
    find_lex $P1104, "$past"
    unless_null $P1104, vivify_608
    new $P1104, "Undef"
  vivify_608:
    set $S1105, $P1104
    $P1106 = $P1103."new"($S1105 :named("value"))
    store_lex "$past", $P1106
  if_1092_end:
.annotate 'line', 982
    find_lex $P1107, "$/"
    find_lex $P1108, "$past"
    unless_null $P1108, vivify_609
    new $P1108, "Undef"
  vivify_609:
    $P1109 = $P1107."!make"($P1108)
.annotate 'line', 962
    .return ($P1109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1053"  :anon :subid("144_1303739782.662") :outer("143_1303739782.662")
.annotate 'line', 968
    .const 'Sub' $P1080 = "145_1303739782.662" 
    capture_lex $P1080
.annotate 'line', 969
    $P1055 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1055
    get_hll_global $P1056, "GLOBAL"
    nqp_get_package_through_who $P1057, $P1056, "HLL"
    nqp_get_package_through_who $P1058, $P1057, "Grammar"
    get_who $P1059, $P1058
    set $P1060, $P1059["split_words"]
    find_lex $P1061, "$/"
    unless_null $P1061, vivify_596
    new $P1061, "Undef"
  vivify_596:
    find_lex $P1062, "$past"
    unless_null $P1062, vivify_597
    new $P1062, "Undef"
  vivify_597:
    $P1063 = $P1060($P1061, $P1062)
    store_lex "@words", $P1063
.annotate 'line', 970
    find_lex $P1066, "@words"
    unless_null $P1066, vivify_598
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    set $N1067, $P1066
    isne $I1068, $N1067, 1.0
    if $I1068, if_1065
.annotate 'line', 975
    find_lex $P1088, "@words"
    unless_null $P1088, vivify_599
    $P1088 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    set $P1089, $P1088[0]
    unless_null $P1089, vivify_600
    new $P1089, "Undef"
  vivify_600:
    set $S1090, $P1089
    new $P1091, 'String'
    set $P1091, $S1090
    store_lex "$past", $P1091
.annotate 'line', 974
    set $P1064, $P1091
.annotate 'line', 970
    goto if_1065_end
  if_1065:
.annotate 'line', 971
    get_hll_global $P1069, "GLOBAL"
    nqp_get_package_through_who $P1070, $P1069, "PAST"
    get_who $P1071, $P1070
    set $P1072, $P1071["Op"]
    find_lex $P1073, "$/"
    unless_null $P1073, vivify_601
    new $P1073, "Undef"
  vivify_601:
    $P1074 = $P1072."new"("list" :named("pasttype"), $P1073 :named("node"))
    store_lex "$past", $P1074
.annotate 'line', 972
    find_lex $P1076, "@words"
    unless_null $P1076, vivify_602
    $P1076 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    defined $I1077, $P1076
    unless $I1077, for_undef_603
    iter $P1075, $P1076
    new $P1086, 'ExceptionHandler'
    set_label $P1086, loop1085_handler
    $P1086."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1086
  loop1085_test:
    unless $P1075, loop1085_done
    shift $P1078, $P1075
  loop1085_redo:
    .const 'Sub' $P1080 = "145_1303739782.662" 
    capture_lex $P1080
    $P1080($P1078)
  loop1085_next:
    goto loop1085_test
  loop1085_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1087, exception, 'type'
    eq $P1087, .CONTROL_LOOP_NEXT, loop1085_next
    eq $P1087, .CONTROL_LOOP_REDO, loop1085_redo
  loop1085_done:
    pop_eh 
  for_undef_603:
.annotate 'line', 970
    set $P1064, $P1075
  if_1065_end:
.annotate 'line', 968
    .return ($P1064)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1079"  :anon :subid("145_1303739782.662") :outer("144_1303739782.662")
    .param pmc param_1081
.annotate 'line', 972
    .lex "$_", param_1081
    find_lex $P1082, "$past"
    unless_null $P1082, vivify_604
    new $P1082, "Undef"
  vivify_604:
    find_lex $P1083, "$_"
    unless_null $P1083, vivify_605
    new $P1083, "Undef"
  vivify_605:
    $P1084 = $P1082."push"($P1083)
    .return ($P1084)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1111
    .param pmc param_1112
.annotate 'line', 985
    .const 'Sub' $P1124 = "147_1303739782.662" 
    capture_lex $P1124
    .lex "self", param_1111
    .lex "$/", param_1112
.annotate 'line', 986
    $P1113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1113
.annotate 'line', 987
    new $P1114, "Undef"
    .lex "$lastlit", $P1114
.annotate 'line', 1003
    new $P1115, "Undef"
    .lex "$past", $P1115
.annotate 'line', 985
    find_lex $P1116, "@parts"
    unless_null $P1116, vivify_610
    $P1116 = root_new ['parrot';'ResizablePMCArray']
  vivify_610:
.annotate 'line', 987
    new $P1117, "String"
    assign $P1117, ""
    store_lex "$lastlit", $P1117
.annotate 'line', 988
    find_lex $P1119, "$/"
    unless_null $P1119, vivify_611
    $P1119 = root_new ['parrot';'Hash']
  vivify_611:
    set $P1120, $P1119["quote_atom"]
    unless_null $P1120, vivify_612
    new $P1120, "Undef"
  vivify_612:
    defined $I1121, $P1120
    unless $I1121, for_undef_613
    iter $P1118, $P1120
    new $P1163, 'ExceptionHandler'
    set_label $P1163, loop1162_handler
    $P1163."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1163
  loop1162_test:
    unless $P1118, loop1162_done
    shift $P1122, $P1118
  loop1162_redo:
    .const 'Sub' $P1124 = "147_1303739782.662" 
    capture_lex $P1124
    $P1124($P1122)
  loop1162_next:
    goto loop1162_test
  loop1162_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1164, exception, 'type'
    eq $P1164, .CONTROL_LOOP_NEXT, loop1162_next
    eq $P1164, .CONTROL_LOOP_REDO, loop1162_redo
  loop1162_done:
    pop_eh 
  for_undef_613:
.annotate 'line', 1002
    find_lex $P1166, "$lastlit"
    unless_null $P1166, vivify_626
    new $P1166, "Undef"
  vivify_626:
    set $S1167, $P1166
    isgt $I1168, $S1167, ""
    unless $I1168, if_1165_end
    find_lex $P1169, "@parts"
    unless_null $P1169, vivify_627
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    find_lex $P1170, "$lastlit"
    unless_null $P1170, vivify_628
    new $P1170, "Undef"
  vivify_628:
    $P1169."push"($P1170)
  if_1165_end:
.annotate 'line', 1003
    find_lex $P1173, "@parts"
    unless_null $P1173, vivify_629
    $P1173 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    if $P1173, if_1172
    new $P1176, "String"
    assign $P1176, ""
    set $P1171, $P1176
    goto if_1172_end
  if_1172:
    find_lex $P1174, "@parts"
    unless_null $P1174, vivify_630
    $P1174 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    $P1175 = $P1174."shift"()
    set $P1171, $P1175
  if_1172_end:
    store_lex "$past", $P1171
.annotate 'line', 1004
    new $P1187, 'ExceptionHandler'
    set_label $P1187, loop1186_handler
    $P1187."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1187
  loop1186_test:
    find_lex $P1177, "@parts"
    unless_null $P1177, vivify_631
    $P1177 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    unless $P1177, loop1186_done
  loop1186_redo:
.annotate 'line', 1005
    get_hll_global $P1178, "GLOBAL"
    nqp_get_package_through_who $P1179, $P1178, "PAST"
    get_who $P1180, $P1179
    set $P1181, $P1180["Op"]
    find_lex $P1182, "$past"
    unless_null $P1182, vivify_632
    new $P1182, "Undef"
  vivify_632:
    find_lex $P1183, "@parts"
    unless_null $P1183, vivify_633
    $P1183 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    $P1184 = $P1183."shift"()
    $P1185 = $P1181."new"($P1182, $P1184, "concat" :named("pirop"))
    store_lex "$past", $P1185
  loop1186_next:
.annotate 'line', 1004
    goto loop1186_test
  loop1186_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1188, exception, 'type'
    eq $P1188, .CONTROL_LOOP_NEXT, loop1186_next
    eq $P1188, .CONTROL_LOOP_REDO, loop1186_redo
  loop1186_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P1189, "$/"
    find_lex $P1190, "$past"
    unless_null $P1190, vivify_634
    new $P1190, "Undef"
  vivify_634:
    $P1191 = $P1189."!make"($P1190)
.annotate 'line', 985
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1123"  :anon :subid("147_1303739782.662") :outer("146_1303739782.662")
    .param pmc param_1126
.annotate 'line', 989
    new $P1125, "Undef"
    .lex "$ast", $P1125
    .lex "$_", param_1126
    find_lex $P1127, "$_"
    unless_null $P1127, vivify_614
    new $P1127, "Undef"
  vivify_614:
    $P1128 = $P1127."ast"()
    store_lex "$ast", $P1128
.annotate 'line', 990
    get_hll_global $P1131, "GLOBAL"
    nqp_get_package_through_who $P1132, $P1131, "PAST"
    get_who $P1133, $P1132
    set $P1134, $P1133["Node"]
    find_lex $P1135, "$ast"
    unless_null $P1135, vivify_615
    new $P1135, "Undef"
  vivify_615:
    $P1136 = $P1134."ACCEPTS"($P1135)
    isfalse $I1137, $P1136
    if $I1137, if_1130
.annotate 'line', 993
    find_lex $P1143, "$ast"
    unless_null $P1143, vivify_616
    new $P1143, "Undef"
  vivify_616:
    get_hll_global $P1144, "GLOBAL"
    nqp_get_package_through_who $P1145, $P1144, "PAST"
    get_who $P1146, $P1145
    set $P1147, $P1146["Val"]
    $P1148 = $P1143."isa"($P1147)
    if $P1148, if_1142
.annotate 'line', 997
    find_lex $P1154, "$lastlit"
    unless_null $P1154, vivify_617
    new $P1154, "Undef"
  vivify_617:
    set $S1155, $P1154
    isgt $I1156, $S1155, ""
    unless $I1156, if_1153_end
    find_lex $P1157, "@parts"
    unless_null $P1157, vivify_618
    $P1157 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    find_lex $P1158, "$lastlit"
    unless_null $P1158, vivify_619
    new $P1158, "Undef"
  vivify_619:
    $P1157."push"($P1158)
  if_1153_end:
.annotate 'line', 998
    find_lex $P1159, "@parts"
    unless_null $P1159, vivify_620
    $P1159 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    find_lex $P1160, "$ast"
    unless_null $P1160, vivify_621
    new $P1160, "Undef"
  vivify_621:
    $P1159."push"($P1160)
.annotate 'line', 999
    new $P1161, "String"
    assign $P1161, ""
    store_lex "$lastlit", $P1161
.annotate 'line', 996
    set $P1141, $P1161
.annotate 'line', 993
    goto if_1142_end
  if_1142:
.annotate 'line', 994
    find_lex $P1149, "$lastlit"
    unless_null $P1149, vivify_622
    new $P1149, "Undef"
  vivify_622:
    find_lex $P1150, "$ast"
    unless_null $P1150, vivify_623
    new $P1150, "Undef"
  vivify_623:
    $S1151 = $P1150."value"()
    concat $P1152, $P1149, $S1151
    store_lex "$lastlit", $P1152
.annotate 'line', 993
    set $P1141, $P1152
  if_1142_end:
    set $P1129, $P1141
.annotate 'line', 990
    goto if_1130_end
  if_1130:
.annotate 'line', 991
    find_lex $P1138, "$lastlit"
    unless_null $P1138, vivify_624
    new $P1138, "Undef"
  vivify_624:
    find_lex $P1139, "$ast"
    unless_null $P1139, vivify_625
    new $P1139, "Undef"
  vivify_625:
    concat $P1140, $P1138, $P1139
    store_lex "$lastlit", $P1140
.annotate 'line', 990
    set $P1129, $P1140
  if_1130_end:
.annotate 'line', 988
    .return ($P1129)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1193
    .param pmc param_1194
.annotate 'line', 1010
    .lex "self", param_1193
    .lex "$/", param_1194
.annotate 'line', 1011
    find_lex $P1195, "$/"
    find_lex $P1198, "$/"
    unless_null $P1198, vivify_635
    $P1198 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1199, $P1198["quote_escape"]
    unless_null $P1199, vivify_636
    new $P1199, "Undef"
  vivify_636:
    if $P1199, if_1197
    find_lex $P1203, "$/"
    unless_null $P1203, vivify_637
    new $P1203, "Undef"
  vivify_637:
    set $S1204, $P1203
    new $P1196, 'String'
    set $P1196, $S1204
    goto if_1197_end
  if_1197:
    find_lex $P1200, "$/"
    unless_null $P1200, vivify_638
    $P1200 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1201, $P1200["quote_escape"]
    unless_null $P1201, vivify_639
    new $P1201, "Undef"
  vivify_639:
    $P1202 = $P1201."ast"()
    set $P1196, $P1202
  if_1197_end:
    $P1205 = $P1195."!make"($P1196)
.annotate 'line', 1010
    .return ($P1205)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1207
    .param pmc param_1208
.annotate 'line', 1014
    .lex "self", param_1207
    .lex "$/", param_1208
    find_lex $P1209, "$/"
    $P1210 = $P1209."!make"("\\")
    .return ($P1210)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1212
    .param pmc param_1213
.annotate 'line', 1015
    .lex "self", param_1212
    .lex "$/", param_1213
    find_lex $P1214, "$/"
    find_lex $P1215, "$/"
    unless_null $P1215, vivify_640
    $P1215 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1216, $P1215["stopper"]
    unless_null $P1216, vivify_641
    new $P1216, "Undef"
  vivify_641:
    set $S1217, $P1216
    $P1218 = $P1214."!make"($S1217)
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1220
    .param pmc param_1221
.annotate 'line', 1017
    .lex "self", param_1220
    .lex "$/", param_1221
    find_lex $P1222, "$/"
    $P1223 = $P1222."!make"("\b")
    .return ($P1223)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1225
    .param pmc param_1226
.annotate 'line', 1018
    .lex "self", param_1225
    .lex "$/", param_1226
    find_lex $P1227, "$/"
    $P1228 = $P1227."!make"("\n")
    .return ($P1228)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1230
    .param pmc param_1231
.annotate 'line', 1019
    .lex "self", param_1230
    .lex "$/", param_1231
    find_lex $P1232, "$/"
    $P1233 = $P1232."!make"("\r")
    .return ($P1233)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1235
    .param pmc param_1236
.annotate 'line', 1020
    .lex "self", param_1235
    .lex "$/", param_1236
    find_lex $P1237, "$/"
    $P1238 = $P1237."!make"("\t")
    .return ($P1238)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1240
    .param pmc param_1241
.annotate 'line', 1021
    .lex "self", param_1240
    .lex "$/", param_1241
    find_lex $P1242, "$/"
    $P1243 = $P1242."!make"("\f")
    .return ($P1243)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1245
    .param pmc param_1246
.annotate 'line', 1022
    .lex "self", param_1245
    .lex "$/", param_1246
    find_lex $P1247, "$/"
    $P1248 = $P1247."!make"("\e")
    .return ($P1248)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1250
    .param pmc param_1251
.annotate 'line', 1024
    .lex "self", param_1250
    .lex "$/", param_1251
.annotate 'line', 1025
    find_lex $P1252, "$/"
    find_lex $P1255, "$/"
    unless_null $P1255, vivify_642
    $P1255 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1256, $P1255["hexint"]
    unless_null $P1256, vivify_643
    new $P1256, "Undef"
  vivify_643:
    if $P1256, if_1254
    find_lex $P1259, "$/"
    unless_null $P1259, vivify_644
    $P1259 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1260, $P1259["hexints"]
    unless_null $P1260, vivify_645
    $P1260 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1261, $P1260["hexint"]
    unless_null $P1261, vivify_646
    new $P1261, "Undef"
  vivify_646:
    set $P1253, $P1261
    goto if_1254_end
  if_1254:
    find_lex $P1257, "$/"
    unless_null $P1257, vivify_647
    $P1257 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1258, $P1257["hexint"]
    unless_null $P1258, vivify_648
    new $P1258, "Undef"
  vivify_648:
    set $P1253, $P1258
  if_1254_end:
    $P1262 = "ints_to_string"($P1253)
    $P1263 = $P1252."!make"($P1262)
.annotate 'line', 1024
    .return ($P1263)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1265
    .param pmc param_1266
.annotate 'line', 1028
    .lex "self", param_1265
    .lex "$/", param_1266
.annotate 'line', 1029
    find_lex $P1267, "$/"
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_649
    $P1270 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1271, $P1270["octint"]
    unless_null $P1271, vivify_650
    new $P1271, "Undef"
  vivify_650:
    if $P1271, if_1269
    find_lex $P1274, "$/"
    unless_null $P1274, vivify_651
    $P1274 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1275, $P1274["octints"]
    unless_null $P1275, vivify_652
    $P1275 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1276, $P1275["octint"]
    unless_null $P1276, vivify_653
    new $P1276, "Undef"
  vivify_653:
    set $P1268, $P1276
    goto if_1269_end
  if_1269:
    find_lex $P1272, "$/"
    unless_null $P1272, vivify_654
    $P1272 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1273, $P1272["octint"]
    unless_null $P1273, vivify_655
    new $P1273, "Undef"
  vivify_655:
    set $P1268, $P1273
  if_1269_end:
    $P1277 = "ints_to_string"($P1268)
    $P1278 = $P1267."!make"($P1277)
.annotate 'line', 1028
    .return ($P1278)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'line', 1032
    .lex "self", param_1280
    .lex "$/", param_1281
.annotate 'line', 1033
    find_lex $P1282, "$/"
    find_lex $P1283, "$/"
    unless_null $P1283, vivify_656
    $P1283 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1284, $P1283["charspec"]
    unless_null $P1284, vivify_657
    new $P1284, "Undef"
  vivify_657:
    $P1285 = $P1284."ast"()
    $P1286 = $P1282."!make"($P1285)
.annotate 'line', 1032
    .return ($P1286)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1288
    .param pmc param_1289
.annotate 'line', 1036
    .lex "self", param_1288
    .lex "$/", param_1289
.annotate 'line', 1037
    find_lex $P1290, "$/"
    $P1291 = $P1290."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1291)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1293
    .param pmc param_1294
.annotate 'line', 1040
    .lex "self", param_1293
    .lex "$/", param_1294
.annotate 'line', 1041
    find_lex $P1295, "$/"
    find_lex $P1298, "$/"
    unless_null $P1298, vivify_658
    $P1298 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1299, $P1298["textq"]
    unless_null $P1299, vivify_659
    new $P1299, "Undef"
  vivify_659:
    if $P1299, if_1297
    find_lex $P1305, "$/"
    unless_null $P1305, vivify_660
    $P1305 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1306, $P1305["textqq"]
    unless_null $P1306, vivify_661
    new $P1306, "Undef"
  vivify_661:
    $P1307 = $P1306."Str"()
    set $P1296, $P1307
    goto if_1297_end
  if_1297:
    new $P1300, "String"
    assign $P1300, "\\"
    find_lex $P1301, "$/"
    unless_null $P1301, vivify_662
    $P1301 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1302, $P1301["textq"]
    unless_null $P1302, vivify_663
    new $P1302, "Undef"
  vivify_663:
    $S1303 = $P1302."Str"()
    concat $P1304, $P1300, $S1303
    set $P1296, $P1304
  if_1297_end:
    $P1308 = $P1295."!make"($P1296)
.annotate 'line', 1040
    .return ($P1308)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1310
    .param pmc param_1311
.annotate 'line', 1044
    .lex "self", param_1310
    .lex "$/", param_1311
.annotate 'line', 1045
    new $P1312, "Undef"
    .lex "$codepoint", $P1312
.annotate 'line', 1046
    find_lex $P1315, "$/"
    unless_null $P1315, vivify_664
    $P1315 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1316, $P1315["integer"]
    unless_null $P1316, vivify_665
    new $P1316, "Undef"
  vivify_665:
    if $P1316, if_1314
.annotate 'line', 1047
    find_lex $P1320, "$/"
    unless_null $P1320, vivify_666
    new $P1320, "Undef"
  vivify_666:
    set $S1321, $P1320
    find_codepoint $I1322, $S1321
    new $P1313, 'Integer'
    set $P1313, $I1322
.annotate 'line', 1046
    goto if_1314_end
  if_1314:
    find_lex $P1317, "$/"
    unless_null $P1317, vivify_667
    $P1317 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1318, $P1317["integer"]
    unless_null $P1318, vivify_668
    new $P1318, "Undef"
  vivify_668:
    $P1319 = $P1318."ast"()
    set $P1313, $P1319
  if_1314_end:
    store_lex "$codepoint", $P1313
.annotate 'line', 1048
    find_lex $P1324, "$codepoint"
    unless_null $P1324, vivify_669
    new $P1324, "Undef"
  vivify_669:
    set $N1325, $P1324
    islt $I1326, $N1325, 0.0
    unless $I1326, if_1323_end
    find_lex $P1327, "$/"
    unless_null $P1327, vivify_670
    new $P1327, "Undef"
  vivify_670:
    $P1328 = $P1327."CURSOR"()
    new $P1329, 'String'
    set $P1329, "Unrecognized character name "
    find_lex $P1330, "$/"
    unless_null $P1330, vivify_671
    new $P1330, "Undef"
  vivify_671:
    concat $P1331, $P1329, $P1330
    $P1328."panic"($P1331)
  if_1323_end:
.annotate 'line', 1049
    find_lex $P1332, "$/"
    find_lex $P1333, "$codepoint"
    unless_null $P1333, vivify_672
    new $P1333, "Undef"
  vivify_672:
    set $I1334, $P1333
    chr $S1335, $I1334
    $P1336 = $P1332."!make"($S1335)
.annotate 'line', 1044
    .return ($P1336)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1338
    .param pmc param_1339
.annotate 'line', 1052
    .const 'Sub' $P1348 = "164_1303739782.662" 
    capture_lex $P1348
    .lex "self", param_1338
    .lex "$/", param_1339
.annotate 'line', 1053
    new $P1340, "Undef"
    .lex "$str", $P1340
    new $P1341, "String"
    assign $P1341, ""
    store_lex "$str", $P1341
.annotate 'line', 1054
    find_lex $P1343, "$/"
    unless_null $P1343, vivify_673
    $P1343 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1344, $P1343["charname"]
    unless_null $P1344, vivify_674
    new $P1344, "Undef"
  vivify_674:
    defined $I1345, $P1344
    unless $I1345, for_undef_675
    iter $P1342, $P1344
    new $P1355, 'ExceptionHandler'
    set_label $P1355, loop1354_handler
    $P1355."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1355
  loop1354_test:
    unless $P1342, loop1354_done
    shift $P1346, $P1342
  loop1354_redo:
    .const 'Sub' $P1348 = "164_1303739782.662" 
    capture_lex $P1348
    $P1348($P1346)
  loop1354_next:
    goto loop1354_test
  loop1354_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1356, exception, 'type'
    eq $P1356, .CONTROL_LOOP_NEXT, loop1354_next
    eq $P1356, .CONTROL_LOOP_REDO, loop1354_redo
  loop1354_done:
    pop_eh 
  for_undef_675:
.annotate 'line', 1055
    find_lex $P1357, "$/"
    find_lex $P1358, "$str"
    unless_null $P1358, vivify_678
    new $P1358, "Undef"
  vivify_678:
    $P1359 = $P1357."!make"($P1358)
.annotate 'line', 1052
    .return ($P1359)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1347"  :anon :subid("164_1303739782.662") :outer("163_1303739782.662")
    .param pmc param_1349
.annotate 'line', 1054
    .lex "$_", param_1349
    find_lex $P1350, "$str"
    unless_null $P1350, vivify_676
    new $P1350, "Undef"
  vivify_676:
    find_lex $P1351, "$_"
    unless_null $P1351, vivify_677
    new $P1351, "Undef"
  vivify_677:
    $S1352 = $P1351."ast"()
    concat $P1353, $P1350, $S1352
    store_lex "$str", $P1353
    .return ($P1353)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303739782.662") :outer("120_1303739782.662")
    .param pmc param_1361
    .param pmc param_1362
.annotate 'line', 1058
    .lex "self", param_1361
    .lex "$/", param_1362
.annotate 'line', 1059
    find_lex $P1363, "$/"
    find_lex $P1366, "$/"
    unless_null $P1366, vivify_679
    $P1366 = root_new ['parrot';'Hash']
  vivify_679:
    set $P1367, $P1366["charnames"]
    unless_null $P1367, vivify_680
    new $P1367, "Undef"
  vivify_680:
    if $P1367, if_1365
    find_lex $P1371, "$/"
    unless_null $P1371, vivify_681
    new $P1371, "Undef"
  vivify_681:
    $I1372 = "string_to_int"($P1371, 10)
    chr $S1373, $I1372
    new $P1364, 'String'
    set $P1364, $S1373
    goto if_1365_end
  if_1365:
    find_lex $P1368, "$/"
    unless_null $P1368, vivify_682
    $P1368 = root_new ['parrot';'Hash']
  vivify_682:
    set $P1369, $P1368["charnames"]
    unless_null $P1369, vivify_683
    new $P1369, "Undef"
  vivify_683:
    $P1370 = $P1369."ast"()
    set $P1364, $P1370
  if_1365_end:
    $P1374 = $P1363."!make"($P1364)
.annotate 'line', 1058
    .return ($P1374)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1449"  :subid("167_1303739782.662") :outer("10_1303739782.662")
.annotate 'line', 1072
    .const 'Sub' $P2618 = "233_1303739782.662" 
    capture_lex $P2618
    .const 'Sub' $P2610 = "232_1303739782.662" 
    capture_lex $P2610
    .const 'Sub' $P2557 = "230_1303739782.662" 
    capture_lex $P2557
    .const 'Sub' $P2484 = "227_1303739782.662" 
    capture_lex $P2484
    .const 'Sub' $P2454 = "225_1303739782.662" 
    capture_lex $P2454
    .const 'Sub' $P2449 = "224_1303739782.662" 
    capture_lex $P2449
    .const 'Sub' $P2439 = "223_1303739782.662" 
    capture_lex $P2439
    .const 'Sub' $P2410 = "221_1303739782.662" 
    capture_lex $P2410
    .const 'Sub' $P2401 = "220_1303739782.662" 
    capture_lex $P2401
    .const 'Sub' $P2393 = "219_1303739782.662" 
    capture_lex $P2393
    .const 'Sub' $P2385 = "218_1303739782.662" 
    capture_lex $P2385
    .const 'Sub' $P2381 = "217_1303739782.662" 
    capture_lex $P2381
    .const 'Sub' $P2377 = "216_1303739782.662" 
    capture_lex $P2377
    .const 'Sub' $P2308 = "214_1303739782.662" 
    capture_lex $P2308
    .const 'Sub' $P2212 = "210_1303739782.662" 
    capture_lex $P2212
    .const 'Sub' $P2172 = "207_1303739782.662" 
    capture_lex $P2172
    .const 'Sub' $P2124 = "205_1303739782.662" 
    capture_lex $P2124
    .const 'Sub' $P2111 = "204_1303739782.662" 
    capture_lex $P2111
    .const 'Sub' $P2098 = "203_1303739782.662" 
    capture_lex $P2098
    .const 'Sub' $P2085 = "202_1303739782.662" 
    capture_lex $P2085
    .const 'Sub' $P2072 = "201_1303739782.662" 
    capture_lex $P2072
    .const 'Sub' $P2059 = "200_1303739782.662" 
    capture_lex $P2059
    .const 'Sub' $P2046 = "199_1303739782.662" 
    capture_lex $P2046
    .const 'Sub' $P2033 = "198_1303739782.662" 
    capture_lex $P2033
    .const 'Sub' $P2020 = "197_1303739782.662" 
    capture_lex $P2020
    .const 'Sub' $P2015 = "196_1303739782.662" 
    capture_lex $P2015
    .const 'Sub' $P2011 = "195_1303739782.662" 
    capture_lex $P2011
    .const 'Sub' $P1971 = "193_1303739782.662" 
    capture_lex $P1971
    .const 'Sub' $P1812 = "186_1303739782.662" 
    capture_lex $P1812
    .const 'Sub' $P1797 = "185_1303739782.662" 
    capture_lex $P1797
    .const 'Sub' $P1704 = "180_1303739782.662" 
    capture_lex $P1704
    .const 'Sub' $P1671 = "178_1303739782.662" 
    capture_lex $P1671
    .const 'Sub' $P1656 = "177_1303739782.662" 
    capture_lex $P1656
    .const 'Sub' $P1641 = "176_1303739782.662" 
    capture_lex $P1641
    .const 'Sub' $P1554 = "173_1303739782.662" 
    capture_lex $P1554
    .const 'Sub' $P1495 = "171_1303739782.662" 
    capture_lex $P1495
    .const 'Sub' $P1488 = "170_1303739782.662" 
    capture_lex $P1488
    .const 'Sub' $P1468 = "169_1303739782.662" 
    capture_lex $P1468
    .const 'Sub' $P1451 = "168_1303739782.662" 
    capture_lex $P1451
.annotate 'line', 1132
    .const 'Sub' $P1451 = "168_1303739782.662" 
    newclosure $P1464, $P1451
    .lex "value_type", $P1464
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1465
    .lex "$?CLASS", $P1466
.annotate 'line', 1094
    .const 'Sub' $P1468 = "169_1303739782.662" 
    capture_lex $P1468
    $P1468()
.annotate 'line', 1072
    find_lex $P1482, "$?PACKAGE"
    get_who $P1483, $P1482
    set $P1484, $P1483["$interactive_ctx"]
    unless_null $P1484, vivify_691
    new $P1484, "Undef"
  vivify_691:
    find_lex $P1485, "$?PACKAGE"
    get_who $P1486, $P1485
    set $P1487, $P1486["%interactive_pad"]
    unless_null $P1487, vivify_692
    $P1487 = root_new ['parrot';'Hash']
  vivify_692:
.annotate 'line', 1112
    find_lex $P1553, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2610 = "232_1303739782.662" 
    newclosure $P2616, $P2610
.annotate 'line', 1072
    .return ($P2616)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post684") :outer("167_1303739782.662")
.annotate 'line', 1072
    .const 'Sub' $P1450 = "167_1303739782.662" 
    .local pmc block
    set block, $P1450
    .const 'Sub' $P2618 = "233_1303739782.662" 
    capture_lex $P2618
    $P2618()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2617"  :anon :subid("233_1303739782.662") :outer("167_1303739782.662")
.annotate 'line', 1072
    nqp_get_sc_object $P2619, "1303739774.211", 3
    .local pmc type_obj
    set type_obj, $P2619
    get_how $P2620, type_obj
    get_hll_global $P2621, "NQPAttribute"
    $P2622 = $P2621."new"("@!stages" :named("name"))
    $P2620."add_attribute"(type_obj, $P2622)
    get_how $P2623, type_obj
    get_hll_global $P2624, "NQPAttribute"
    $P2625 = $P2624."new"("$!parsegrammar" :named("name"))
    $P2623."add_attribute"(type_obj, $P2625)
    get_how $P2626, type_obj
    get_hll_global $P2627, "NQPAttribute"
    $P2628 = $P2627."new"("$!parseactions" :named("name"))
    $P2626."add_attribute"(type_obj, $P2628)
    get_how $P2629, type_obj
    get_hll_global $P2630, "NQPAttribute"
    $P2631 = $P2630."new"("$!astgrammar" :named("name"))
    $P2629."add_attribute"(type_obj, $P2631)
    get_how $P2632, type_obj
    get_hll_global $P2633, "NQPAttribute"
    $P2634 = $P2633."new"("$!commandline_banner" :named("name"))
    $P2632."add_attribute"(type_obj, $P2634)
    get_how $P2635, type_obj
    get_hll_global $P2636, "NQPAttribute"
    $P2637 = $P2636."new"("$!commandline_prompt" :named("name"))
    $P2635."add_attribute"(type_obj, $P2637)
    get_how $P2638, type_obj
    get_hll_global $P2639, "NQPAttribute"
    $P2640 = $P2639."new"("@!cmdoptions" :named("name"))
    $P2638."add_attribute"(type_obj, $P2640)
    get_how $P2641, type_obj
    get_hll_global $P2642, "NQPAttribute"
    $P2643 = $P2642."new"("$!usage" :named("name"))
    $P2641."add_attribute"(type_obj, $P2643)
    get_how $P2644, type_obj
    get_hll_global $P2645, "NQPAttribute"
    $P2646 = $P2645."new"("$!version" :named("name"))
    $P2644."add_attribute"(type_obj, $P2646)
    get_how $P2647, type_obj
    get_hll_global $P2648, "NQPAttribute"
    $P2649 = $P2648."new"("$!compiler_progname" :named("name"))
    $P2647."add_attribute"(type_obj, $P2649)
    get_how $P2650, type_obj
    get_hll_global $P2651, "NQPAttribute"
    $P2652 = $P2651."new"("$!language" :named("name"))
    $P2650."add_attribute"(type_obj, $P2652)
    get_how $P2653, type_obj
    .const 'Sub' $P2654 = "170_1303739782.662" 
    $P2653."add_method"(type_obj, "new", $P2654)
    get_how $P2655, type_obj
    .const 'Sub' $P2656 = "171_1303739782.662" 
    $P2655."add_method"(type_obj, "BUILD", $P2656)
    get_how $P2657, type_obj
    .const 'Sub' $P2658 = "173_1303739782.662" 
    $P2657."add_method"(type_obj, "get_exports", $P2658)
    get_how $P2659, type_obj
    .const 'Sub' $P2660 = "176_1303739782.662" 
    $P2659."add_method"(type_obj, "get_module", $P2660)
    get_how $P2661, type_obj
    .const 'Sub' $P2662 = "177_1303739782.662" 
    $P2661."add_method"(type_obj, "language", $P2662)
    get_how $P2663, type_obj
    .const 'Sub' $P2664 = "178_1303739782.662" 
    $P2663."add_method"(type_obj, "load_module", $P2664)
    get_how $P2665, type_obj
    .const 'Sub' $P2666 = "180_1303739782.662" 
    $P2665."add_method"(type_obj, "import", $P2666)
    get_how $P2667, type_obj
    .const 'Sub' $P2668 = "185_1303739782.662" 
    $P2667."add_method"(type_obj, "autoprint", $P2668)
    get_how $P2669, type_obj
    .const 'Sub' $P2670 = "186_1303739782.662" 
    $P2669."add_method"(type_obj, "interactive", $P2670)
    get_how $P2671, type_obj
    .const 'Sub' $P2672 = "193_1303739782.662" 
    $P2671."add_method"(type_obj, "eval", $P2672)
    get_how $P2673, type_obj
    .const 'Sub' $P2674 = "195_1303739782.662" 
    $P2673."add_method"(type_obj, "ctxsave", $P2674)
    get_how $P2675, type_obj
    .const 'Sub' $P2676 = "196_1303739782.662" 
    $P2675."add_method"(type_obj, "panic", $P2676)
    get_how $P2677, type_obj
    .const 'Sub' $P2678 = "197_1303739782.662" 
    $P2677."add_method"(type_obj, "stages", $P2678)
    get_how $P2679, type_obj
    .const 'Sub' $P2680 = "198_1303739782.662" 
    $P2679."add_method"(type_obj, "parsegrammar", $P2680)
    get_how $P2681, type_obj
    .const 'Sub' $P2682 = "199_1303739782.662" 
    $P2681."add_method"(type_obj, "parseactions", $P2682)
    get_how $P2683, type_obj
    .const 'Sub' $P2684 = "200_1303739782.662" 
    $P2683."add_method"(type_obj, "astgrammar", $P2684)
    get_how $P2685, type_obj
    .const 'Sub' $P2686 = "201_1303739782.662" 
    $P2685."add_method"(type_obj, "commandline_banner", $P2686)
    get_how $P2687, type_obj
    .const 'Sub' $P2688 = "202_1303739782.662" 
    $P2687."add_method"(type_obj, "commandline_prompt", $P2688)
    get_how $P2689, type_obj
    .const 'Sub' $P2690 = "203_1303739782.662" 
    $P2689."add_method"(type_obj, "compiler_progname", $P2690)
    get_how $P2691, type_obj
    .const 'Sub' $P2692 = "204_1303739782.662" 
    $P2691."add_method"(type_obj, "commandline_options", $P2692)
    get_how $P2693, type_obj
    .const 'Sub' $P2694 = "205_1303739782.662" 
    $P2693."add_method"(type_obj, "command_line", $P2694)
    get_how $P2695, type_obj
    .const 'Sub' $P2696 = "207_1303739782.662" 
    $P2695."add_method"(type_obj, "process_args", $P2696)
    get_how $P2697, type_obj
    .const 'Sub' $P2698 = "210_1303739782.662" 
    $P2697."add_method"(type_obj, "evalfiles", $P2698)
    get_how $P2699, type_obj
    .const 'Sub' $P2700 = "214_1303739782.662" 
    $P2699."add_method"(type_obj, "compile", $P2700)
    get_how $P2701, type_obj
    .const 'Sub' $P2702 = "216_1303739782.662" 
    $P2701."add_method"(type_obj, "parse", $P2702)
    get_how $P2703, type_obj
    .const 'Sub' $P2704 = "217_1303739782.662" 
    $P2703."add_method"(type_obj, "past", $P2704)
    get_how $P2705, type_obj
    .const 'Sub' $P2706 = "218_1303739782.662" 
    $P2705."add_method"(type_obj, "post", $P2706)
    get_how $P2707, type_obj
    .const 'Sub' $P2708 = "219_1303739782.662" 
    $P2707."add_method"(type_obj, "pir", $P2708)
    get_how $P2709, type_obj
    .const 'Sub' $P2710 = "220_1303739782.662" 
    $P2709."add_method"(type_obj, "evalpmc", $P2710)
    get_how $P2711, type_obj
    .const 'Sub' $P2712 = "221_1303739782.662" 
    $P2711."add_method"(type_obj, "dumper", $P2712)
    get_how $P2713, type_obj
    .const 'Sub' $P2714 = "223_1303739782.662" 
    $P2713."add_method"(type_obj, "usage", $P2714)
    get_how $P2715, type_obj
    .const 'Sub' $P2716 = "224_1303739782.662" 
    $P2715."add_method"(type_obj, "version", $P2716)
    get_how $P2717, type_obj
    .const 'Sub' $P2718 = "225_1303739782.662" 
    $P2717."add_method"(type_obj, "removestage", $P2718)
    get_how $P2719, type_obj
    .const 'Sub' $P2720 = "227_1303739782.662" 
    $P2719."add_method"(type_obj, "addstage", $P2720)
    get_how $P2721, type_obj
    .const 'Sub' $P2722 = "230_1303739782.662" 
    $P2721."add_method"(type_obj, "parse_name", $P2722)
    get_how $P2723, type_obj
    .const 'Sub' $P2724 = "232_1303739782.662" 
    $P2723."add_method"(type_obj, "lineof", $P2724)
    get_how $P2725, type_obj
    nqp_get_sc_object $P2726, "1303739772.428", 5
    $P2725."set_default_parent"(type_obj, $P2726)
    get_how $P2727, type_obj
    $P2728 = $P2727."compose"(type_obj)
    .return ($P2728)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1452
.annotate 'line', 1132
    .lex "$value", param_1452
.annotate 'line', 1133
    find_lex $P1455, "$value"
    unless_null $P1455, vivify_685
    new $P1455, "Undef"
  vivify_685:
    isa $I1456, $P1455, "NameSpace"
    if $I1456, if_1454
.annotate 'line', 1135
    find_lex $P1460, "$value"
    unless_null $P1460, vivify_686
    new $P1460, "Undef"
  vivify_686:
    isa $I1461, $P1460, "Sub"
    if $I1461, if_1459
    new $P1463, "String"
    assign $P1463, "var"
    set $P1458, $P1463
    goto if_1459_end
  if_1459:
    new $P1462, "String"
    assign $P1462, "sub"
    set $P1458, $P1462
  if_1459_end:
    set $P1453, $P1458
.annotate 'line', 1133
    goto if_1454_end
  if_1454:
    new $P1457, "String"
    assign $P1457, "namespace"
    set $P1453, $P1457
  if_1454_end:
.annotate 'line', 1132
    .return ($P1453)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1467"  :anon :subid("169_1303739782.662") :outer("167_1303739782.662")
.annotate 'line', 1099
    $P1469 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1469
.annotate 'line', 1096
    getinterp $P1470
    set $P1471, $P1470["context"]
    unless_null $P1471, vivify_687
    new $P1471, "Undef"
  vivify_687:
    find_lex $P1472, "$?PACKAGE"
    get_who $P1473, $P1472
    set $P1473["$interactive_ctx"], $P1471
    find_lex $P1474, "%pad_contents"
    unless_null $P1474, vivify_688
    $P1474 = root_new ['parrot';'Hash']
  vivify_688:
.annotate 'line', 1101
    find_lex $P1475, "$?PACKAGE"
    get_who $P1476, $P1475
    set $P1477, $P1476["$interactive_ctx"]
    unless_null $P1477, vivify_689
    new $P1477, "Undef"
  vivify_689:
    getattribute $P1478, $P1477, "lex_pad"
    find_lex $P1479, "%pad_contents"
    unless_null $P1479, vivify_690
    $P1479 = root_new ['parrot';'Hash']
  vivify_690:
    copy $P1478, $P1479
.annotate 'line', 1100
    find_lex $P1480, "$?PACKAGE"
    get_who $P1481, $P1480
    set $P1481["%interactive_pad"], $P1478
.annotate 'line', 1094
    .return ($P1478)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1489
.annotate 'line', 1106
    .lex "self", param_1489
.annotate 'line', 1107
    new $P1490, "Undef"
    .lex "$obj", $P1490
    find_lex $P1491, "self"
    repr_instance_of $P1492, $P1491
    store_lex "$obj", $P1492
.annotate 'line', 1108
    find_lex $P1493, "$obj"
    unless_null $P1493, vivify_693
    new $P1493, "Undef"
  vivify_693:
    $P1493."BUILD"()
    find_lex $P1494, "$obj"
    unless_null $P1494, vivify_694
    new $P1494, "Undef"
  vivify_694:
.annotate 'line', 1106
    .return ($P1494)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1496
.annotate 'line', 1112
    .const 'Sub' $P1517 = "172_1303739782.662" 
    capture_lex $P1517
    .lex "self", param_1496
.annotate 'line', 1122
    new $P1497, "Undef"
    .lex "$config_hash_idx", $P1497
.annotate 'line', 1126
    $P1498 = root_new ['parrot';'Hash']
    .lex "%config", $P1498
.annotate 'line', 1127
    new $P1499, "Undef"
    .lex "$version", $P1499
.annotate 'line', 1128
    new $P1500, "Undef"
    .lex "$revision", $P1500
.annotate 'line', 1114
    split $P1501, " ", "parse past post pir evalpmc"
    find_lex $P1502, "self"
    find_lex $P1503, "$?CLASS"
    setattribute $P1502, $P1503, "@!stages", $P1501
.annotate 'line', 1117
    split $P1504, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1505, "self"
    find_lex $P1506, "$?CLASS"
    setattribute $P1505, $P1506, "@!cmdoptions", $P1504
.annotate 'line', 1118
    new $P1507, "String"
    assign $P1507, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1508, "self"
    find_lex $P1509, "$?CLASS"
    setattribute $P1508, $P1509, "$!usage", $P1507
.annotate 'line', 1119
    find_lex $P1511, "self"
    find_lex $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "@!cmdoptions"
    unless_null $P1513, vivify_695
    $P1513 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    defined $I1514, $P1513
    unless $I1514, for_undef_696
    iter $P1510, $P1513
    new $P1530, 'ExceptionHandler'
    set_label $P1530, loop1529_handler
    $P1530."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1530
  loop1529_test:
    unless $P1510, loop1529_done
    shift $P1515, $P1510
  loop1529_redo:
    .const 'Sub' $P1517 = "172_1303739782.662" 
    capture_lex $P1517
    $P1517($P1515)
  loop1529_next:
    goto loop1529_test
  loop1529_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1531, exception, 'type'
    eq $P1531, .CONTROL_LOOP_NEXT, loop1529_next
    eq $P1531, .CONTROL_LOOP_REDO, loop1529_redo
  loop1529_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1532 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1532
.annotate 'line', 1126
    find_lex $P1533, "$config_hash_idx"
    unless_null $P1533, vivify_699
    new $P1533, "Undef"
  vivify_699:
    set $I1534, $P1533
    getinterp $P1535
    set $P1536, $P1535[$I1534]
    unless_null $P1536, vivify_700
    new $P1536, "Undef"
  vivify_700:
    store_lex "%config", $P1536
.annotate 'line', 1127
    find_lex $P1537, "%config"
    unless_null $P1537, vivify_701
    $P1537 = root_new ['parrot';'Hash']
  vivify_701:
    set $P1538, $P1537["VERSION"]
    unless_null $P1538, vivify_702
    new $P1538, "Undef"
  vivify_702:
    store_lex "$version", $P1538
.annotate 'line', 1128
    find_lex $P1540, "%config"
    unless_null $P1540, vivify_703
    $P1540 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1541, $P1540["git_describe"]
    unless_null $P1541, vivify_704
    new $P1541, "Undef"
  vivify_704:
    set $P1539, $P1541
    defined $I1543, $P1539
    if $I1543, default_1542
    new $P1544, "String"
    assign $P1544, "(unknown)"
    set $P1539, $P1544
  default_1542:
    store_lex "$revision", $P1539
.annotate 'line', 1129
    new $P1545, 'String'
    set $P1545, "This compiler is built with NQP, parrot "
    find_lex $P1546, "$version"
    unless_null $P1546, vivify_705
    new $P1546, "Undef"
  vivify_705:
    concat $P1547, $P1545, $P1546
    concat $P1548, $P1547, ", revision "
    find_lex $P1549, "$revision"
    unless_null $P1549, vivify_706
    new $P1549, "Undef"
  vivify_706:
    concat $P1550, $P1548, $P1549
    find_lex $P1551, "self"
    find_lex $P1552, "$?CLASS"
    setattribute $P1551, $P1552, "$!version", $P1550
.annotate 'line', 1112
    .return ($P1550)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1516"  :anon :subid("172_1303739782.662") :outer("171_1303739782.662")
    .param pmc param_1518
.annotate 'line', 1119
    .lex "$_", param_1518
.annotate 'line', 1120
    find_lex $P1519, "self"
    find_lex $P1520, "$?CLASS"
    getattribute $P1521, $P1519, $P1520, "$!usage"
    unless_null $P1521, vivify_697
    new $P1521, "Undef"
  vivify_697:
    new $P1522, 'String'
    set $P1522, "    "
    find_lex $P1523, "$_"
    unless_null $P1523, vivify_698
    new $P1523, "Undef"
  vivify_698:
    concat $P1524, $P1522, $P1523
    concat $P1525, $P1524, "\n"
    concat $P1526, $P1521, $P1525
    find_lex $P1527, "self"
    find_lex $P1528, "$?CLASS"
    setattribute $P1527, $P1528, "$!usage", $P1526
.annotate 'line', 1119
    .return ($P1526)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1555
    .param pmc param_1556
    .param pmc param_1559 :slurpy
    .param pmc param_1557 :optional :named("tagset")
    .param int has_param_1557 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1625 = "175_1303739782.662" 
    capture_lex $P1625
    .const 'Sub' $P1604 = "174_1303739782.662" 
    capture_lex $P1604
    .lex "self", param_1555
    .lex "$module", param_1556
    if has_param_1557, optparam_707
    new $P1558, "Undef"
    set param_1557, $P1558
  optparam_707:
    .lex "$tagset", param_1557
    .lex "@symbols", param_1559
.annotate 'line', 1145
    $P1560 = root_new ['parrot';'Hash']
    .lex "%exports", $P1560
.annotate 'line', 1146
    $P1561 = root_new ['parrot';'Hash']
    .lex "%source", $P1561
.annotate 'line', 1140
    find_lex $P1563, "$module"
    unless_null $P1563, vivify_708
    new $P1563, "Undef"
  vivify_708:
    does $I1564, $P1563, "hash"
    new $P1565, 'Integer'
    set $P1565, $I1564
    isfalse $I1566, $P1565
    unless $I1566, if_1562_end
.annotate 'line', 1141
    find_lex $P1567, "self"
    find_lex $P1568, "$module"
    unless_null $P1568, vivify_709
    new $P1568, "Undef"
  vivify_709:
    $P1569 = $P1567."get_module"($P1568)
    store_lex "$module", $P1569
  if_1562_end:
.annotate 'line', 1144
    find_lex $P1571, "$tagset"
    unless_null $P1571, vivify_710
    new $P1571, "Undef"
  vivify_710:
    set $P1570, $P1571
    defined $I1573, $P1570
    if $I1573, default_1572
    find_lex $P1576, "@symbols"
    unless_null $P1576, vivify_711
    $P1576 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    if $P1576, if_1575
    new $P1578, "String"
    assign $P1578, "DEFAULT"
    set $P1574, $P1578
    goto if_1575_end
  if_1575:
    new $P1577, "String"
    assign $P1577, "ALL"
    set $P1574, $P1577
  if_1575_end:
    set $P1570, $P1574
  default_1572:
    store_lex "$tagset", $P1570
    find_lex $P1579, "%exports"
    unless_null $P1579, vivify_712
    $P1579 = root_new ['parrot';'Hash']
  vivify_712:
.annotate 'line', 1146
    find_lex $P1580, "$tagset"
    unless_null $P1580, vivify_713
    new $P1580, "Undef"
  vivify_713:
    set $S1581, $P1580
    find_lex $P1582, "$module"
    unless_null $P1582, vivify_714
    $P1582 = root_new ['parrot';'Hash']
  vivify_714:
    set $P1583, $P1582["EXPORT"]
    unless_null $P1583, vivify_715
    $P1583 = root_new ['parrot';'Hash']
  vivify_715:
    set $P1584, $P1583[$S1581]
    unless_null $P1584, vivify_716
    new $P1584, "Undef"
  vivify_716:
    store_lex "%source", $P1584
.annotate 'line', 1147
    find_lex $P1586, "%source"
    unless_null $P1586, vivify_717
    $P1586 = root_new ['parrot';'Hash']
  vivify_717:
    defined $I1587, $P1586
    new $P1588, 'Integer'
    set $P1588, $I1587
    isfalse $I1589, $P1588
    unless $I1589, if_1585_end
.annotate 'line', 1148
    find_lex $P1592, "$tagset"
    unless_null $P1592, vivify_718
    new $P1592, "Undef"
  vivify_718:
    set $S1593, $P1592
    iseq $I1594, $S1593, "ALL"
    if $I1594, if_1591
    $P1596 = root_new ['parrot';'Hash']
    set $P1590, $P1596
    goto if_1591_end
  if_1591:
    find_lex $P1595, "$module"
    unless_null $P1595, vivify_719
    new $P1595, "Undef"
  vivify_719:
    set $P1590, $P1595
  if_1591_end:
    store_lex "%source", $P1590
  if_1585_end:
.annotate 'line', 1150
    find_lex $P1598, "@symbols"
    unless_null $P1598, vivify_720
    $P1598 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
    if $P1598, if_1597
.annotate 'line', 1157
    find_lex $P1621, "%source"
    unless_null $P1621, vivify_721
    $P1621 = root_new ['parrot';'Hash']
  vivify_721:
    defined $I1622, $P1621
    unless $I1622, for_undef_722
    iter $P1620, $P1621
    new $P1638, 'ExceptionHandler'
    set_label $P1638, loop1637_handler
    $P1638."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1638
  loop1637_test:
    unless $P1620, loop1637_done
    shift $P1623, $P1620
  loop1637_redo:
    .const 'Sub' $P1625 = "175_1303739782.662" 
    capture_lex $P1625
    $P1625($P1623)
  loop1637_next:
    goto loop1637_test
  loop1637_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1639, exception, 'type'
    eq $P1639, .CONTROL_LOOP_NEXT, loop1637_next
    eq $P1639, .CONTROL_LOOP_REDO, loop1637_redo
  loop1637_done:
    pop_eh 
  for_undef_722:
.annotate 'line', 1156
    goto if_1597_end
  if_1597:
.annotate 'line', 1151
    find_lex $P1600, "@symbols"
    unless_null $P1600, vivify_729
    $P1600 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
    defined $I1601, $P1600
    unless $I1601, for_undef_730
    iter $P1599, $P1600
    new $P1618, 'ExceptionHandler'
    set_label $P1618, loop1617_handler
    $P1618."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1618
  loop1617_test:
    unless $P1599, loop1617_done
    shift $P1602, $P1599
  loop1617_redo:
    .const 'Sub' $P1604 = "174_1303739782.662" 
    capture_lex $P1604
    $P1604($P1602)
  loop1617_next:
    goto loop1617_test
  loop1617_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1619, exception, 'type'
    eq $P1619, .CONTROL_LOOP_NEXT, loop1617_next
    eq $P1619, .CONTROL_LOOP_REDO, loop1617_redo
  loop1617_done:
    pop_eh 
  for_undef_730:
  if_1597_end:
.annotate 'line', 1150
    find_lex $P1640, "%exports"
    unless_null $P1640, vivify_739
    $P1640 = root_new ['parrot';'Hash']
  vivify_739:
.annotate 'line', 1138
    .return ($P1640)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1624"  :anon :subid("175_1303739782.662") :outer("173_1303739782.662")
    .param pmc param_1627
.annotate 'line', 1158
    new $P1626, "Undef"
    .lex "$value", $P1626
    .lex "$_", param_1627
    find_lex $P1628, "$_"
    unless_null $P1628, vivify_723
    new $P1628, "Undef"
  vivify_723:
    $P1629 = $P1628."value"()
    store_lex "$value", $P1629
.annotate 'line', 1159
    find_lex $P1630, "$value"
    unless_null $P1630, vivify_724
    new $P1630, "Undef"
  vivify_724:
    find_lex $P1631, "$_"
    unless_null $P1631, vivify_725
    new $P1631, "Undef"
  vivify_725:
    $P1632 = $P1631."key"()
    find_lex $P1633, "$value"
    unless_null $P1633, vivify_726
    new $P1633, "Undef"
  vivify_726:
    $P1634 = "value_type"($P1633)
    find_lex $P1635, "%exports"
    unless_null $P1635, vivify_727
    $P1635 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1635
  vivify_727:
    set $P1636, $P1635[$P1634]
    unless_null $P1636, vivify_728
    $P1636 = root_new ['parrot';'Hash']
    set $P1635[$P1634], $P1636
  vivify_728:
    set $P1636[$P1632], $P1630
.annotate 'line', 1157
    .return ($P1630)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1603"  :anon :subid("174_1303739782.662") :outer("173_1303739782.662")
    .param pmc param_1606
.annotate 'line', 1152
    new $P1605, "Undef"
    .lex "$value", $P1605
    .lex "$_", param_1606
    find_lex $P1607, "$_"
    unless_null $P1607, vivify_731
    new $P1607, "Undef"
  vivify_731:
    set $S1608, $P1607
    find_lex $P1609, "%source"
    unless_null $P1609, vivify_732
    $P1609 = root_new ['parrot';'Hash']
  vivify_732:
    set $P1610, $P1609[$S1608]
    unless_null $P1610, vivify_733
    new $P1610, "Undef"
  vivify_733:
    store_lex "$value", $P1610
.annotate 'line', 1153
    find_lex $P1611, "$value"
    unless_null $P1611, vivify_734
    new $P1611, "Undef"
  vivify_734:
    find_lex $P1612, "$_"
    unless_null $P1612, vivify_735
    new $P1612, "Undef"
  vivify_735:
    find_lex $P1613, "$value"
    unless_null $P1613, vivify_736
    new $P1613, "Undef"
  vivify_736:
    $P1614 = "value_type"($P1613)
    find_lex $P1615, "%exports"
    unless_null $P1615, vivify_737
    $P1615 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1615
  vivify_737:
    set $P1616, $P1615[$P1614]
    unless_null $P1616, vivify_738
    $P1616 = root_new ['parrot';'Hash']
    set $P1615[$P1614], $P1616
  vivify_738:
    set $P1616[$P1612], $P1611
.annotate 'line', 1151
    .return ($P1611)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1642
    .param pmc param_1643
.annotate 'line', 1165
    .lex "self", param_1642
    .lex "$name", param_1643
.annotate 'line', 1166
    $P1644 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1644
    find_lex $P1645, "self"
    find_lex $P1646, "$name"
    unless_null $P1646, vivify_740
    new $P1646, "Undef"
  vivify_740:
    $P1647 = $P1645."parse_name"($P1646)
    store_lex "@name", $P1647
.annotate 'line', 1167
    find_lex $P1648, "@name"
    unless_null $P1648, vivify_741
    $P1648 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1649, "self"
    find_lex $P1650, "$?CLASS"
    getattribute $P1651, $P1649, $P1650, "$!language"
    unless_null $P1651, vivify_742
    new $P1651, "Undef"
  vivify_742:
    set $S1652, $P1651
    downcase $S1653, $S1652
    $P1648."unshift"($S1653)
.annotate 'line', 1168
    find_lex $P1654, "@name"
    unless_null $P1654, vivify_743
    $P1654 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    get_root_namespace $P1655, $P1654
.annotate 'line', 1165
    .return ($P1655)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1657
    .param pmc param_1658 :optional
    .param int has_param_1658 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1657
    if has_param_1658, optparam_744
    new $P1659, "Undef"
    set param_1658, $P1659
  optparam_744:
    .lex "$name", param_1658
.annotate 'line', 1172
    find_lex $P1661, "$name"
    unless_null $P1661, vivify_745
    new $P1661, "Undef"
  vivify_745:
    unless $P1661, if_1660_end
.annotate 'line', 1173
    find_lex $P1662, "$name"
    unless_null $P1662, vivify_746
    new $P1662, "Undef"
  vivify_746:
    find_lex $P1663, "self"
    find_lex $P1664, "$?CLASS"
    setattribute $P1663, $P1664, "$!language", $P1662
.annotate 'line', 1174
    find_lex $P1665, "$name"
    unless_null $P1665, vivify_747
    new $P1665, "Undef"
  vivify_747:
    set $S1666, $P1665
    find_lex $P1667, "self"
    compreg $S1666, $P1667
  if_1660_end:
.annotate 'line', 1172
    find_lex $P1668, "self"
    find_lex $P1669, "$?CLASS"
    getattribute $P1670, $P1668, $P1669, "$!language"
    unless_null $P1670, vivify_748
    new $P1670, "Undef"
  vivify_748:
.annotate 'line', 1171
    .return ($P1670)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1672
    .param pmc param_1673
.annotate 'line', 1179
    .const 'Sub' $P1683 = "179_1303739782.662" 
    capture_lex $P1683
    .lex "self", param_1672
    .lex "$name", param_1673
.annotate 'line', 1180
    new $P1674, "Undef"
    .lex "$base", $P1674
.annotate 'line', 1181
    new $P1675, "Undef"
    .lex "$loaded", $P1675
.annotate 'line', 1180
    find_lex $P1676, "self"
    find_lex $P1677, "$name"
    unless_null $P1677, vivify_749
    new $P1677, "Undef"
  vivify_749:
    $P1678 = $P1676."parse_name"($P1677)
    join $S1679, "/", $P1678
    new $P1680, 'String'
    set $P1680, $S1679
    store_lex "$base", $P1680
.annotate 'line', 1181
    new $P1681, "Integer"
    assign $P1681, 0
    store_lex "$loaded", $P1681
.annotate 'line', 1182
    .const 'Sub' $P1683 = "179_1303739782.662" 
    capture_lex $P1683
    $P1683()
.annotate 'line', 1183
    find_lex $P1696, "$loaded"
    unless_null $P1696, vivify_751
    new $P1696, "Undef"
  vivify_751:
    if $P1696, unless_1695_end
    find_lex $P1697, "$base"
    unless_null $P1697, vivify_752
    new $P1697, "Undef"
  vivify_752:
    concat $P1698, $P1697, ".pir"
    set $S1699, $P1698
    load_bytecode $S1699
    new $P1700, "Integer"
    assign $P1700, 1
    store_lex "$loaded", $P1700
  unless_1695_end:
.annotate 'line', 1184
    find_lex $P1701, "self"
    find_lex $P1702, "$name"
    unless_null $P1702, vivify_753
    new $P1702, "Undef"
  vivify_753:
    $P1703 = $P1701."get_module"($P1702)
.annotate 'line', 1179
    .return ($P1703)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1682"  :anon :subid("179_1303739782.662") :outer("178_1303739782.662")
.annotate 'line', 1182
    new $P1690, 'ExceptionHandler'
    set_label $P1690, control_1689
    $P1690."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1690
    find_lex $P1684, "$base"
    unless_null $P1684, vivify_750
    new $P1684, "Undef"
  vivify_750:
    concat $P1685, $P1684, ".pbc"
    set $S1686, $P1685
    load_bytecode $S1686
    new $P1687, "Integer"
    assign $P1687, 1
    store_lex "$loaded", $P1687
    pop_eh 
    goto skip_handler_1688
  control_1689:
    .local pmc exception 
    .get_results (exception) 
    new $P1693, 'Integer'
    set $P1693, 1
    set exception["handled"], $P1693
    set $I1694, exception["handled"]
    ne $I1694, 1, nothandled_1692
  handled_1691:
    .return (exception)
  nothandled_1692:
    rethrow exception
  skip_handler_1688:
    .return ($P1687)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1705
    .param pmc param_1706
    .param pmc param_1707
.annotate 'line', 1187
    .const 'Sub' $P1713 = "181_1303739782.662" 
    capture_lex $P1713
    .lex "self", param_1705
    .lex "$target", param_1706
    .lex "%exports", param_1707
.annotate 'line', 1188
    find_lex $P1709, "%exports"
    unless_null $P1709, vivify_754
    $P1709 = root_new ['parrot';'Hash']
  vivify_754:
    defined $I1710, $P1709
    unless $I1710, for_undef_755
    iter $P1708, $P1709
    new $P1795, 'ExceptionHandler'
    set_label $P1795, loop1794_handler
    $P1795."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1795
  loop1794_test:
    unless $P1708, loop1794_done
    shift $P1711, $P1708
  loop1794_redo:
    .const 'Sub' $P1713 = "181_1303739782.662" 
    capture_lex $P1713
    $P1713($P1711)
  loop1794_next:
    goto loop1794_test
  loop1794_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1796, exception, 'type'
    eq $P1796, .CONTROL_LOOP_NEXT, loop1794_next
    eq $P1796, .CONTROL_LOOP_REDO, loop1794_redo
  loop1794_done:
    pop_eh 
  for_undef_755:
.annotate 'line', 1187
    .return ($P1708)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1712"  :anon :subid("181_1303739782.662") :outer("180_1303739782.662")
    .param pmc param_1716
.annotate 'line', 1188
    .const 'Sub' $P1783 = "184_1303739782.662" 
    capture_lex $P1783
    .const 'Sub' $P1763 = "183_1303739782.662" 
    capture_lex $P1763
    .const 'Sub' $P1734 = "182_1303739782.662" 
    capture_lex $P1734
.annotate 'line', 1189
    new $P1714, "Undef"
    .lex "$type", $P1714
.annotate 'line', 1190
    $P1715 = root_new ['parrot';'Hash']
    .lex "%items", $P1715
    .lex "$_", param_1716
.annotate 'line', 1189
    find_lex $P1717, "$_"
    unless_null $P1717, vivify_756
    new $P1717, "Undef"
  vivify_756:
    $P1718 = $P1717."key"()
    store_lex "$type", $P1718
.annotate 'line', 1190
    find_lex $P1719, "$_"
    unless_null $P1719, vivify_757
    new $P1719, "Undef"
  vivify_757:
    $P1720 = $P1719."value"()
    store_lex "%items", $P1720
.annotate 'line', 1191
    find_lex $P1723, "self"
    new $P1724, 'String'
    set $P1724, "import_"
    find_lex $P1725, "$type"
    unless_null $P1725, vivify_758
    new $P1725, "Undef"
  vivify_758:
    concat $P1726, $P1724, $P1725
    set $S1727, $P1726
    can $I1728, $P1723, $S1727
    if $I1728, if_1722
.annotate 'line', 1194
    find_lex $P1752, "$target"
    unless_null $P1752, vivify_759
    new $P1752, "Undef"
  vivify_759:
    new $P1753, 'String'
    set $P1753, "add_"
    find_lex $P1754, "$type"
    unless_null $P1754, vivify_760
    new $P1754, "Undef"
  vivify_760:
    concat $P1755, $P1753, $P1754
    set $S1756, $P1755
    can $I1757, $P1752, $S1756
    if $I1757, if_1751
.annotate 'line', 1198
    find_lex $P1779, "%items"
    unless_null $P1779, vivify_761
    $P1779 = root_new ['parrot';'Hash']
  vivify_761:
    defined $I1780, $P1779
    unless $I1780, for_undef_762
    iter $P1778, $P1779
    new $P1792, 'ExceptionHandler'
    set_label $P1792, loop1791_handler
    $P1792."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1792
  loop1791_test:
    unless $P1778, loop1791_done
    shift $P1781, $P1778
  loop1791_redo:
    .const 'Sub' $P1783 = "184_1303739782.662" 
    capture_lex $P1783
    $P1783($P1781)
  loop1791_next:
    goto loop1791_test
  loop1791_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1793, exception, 'type'
    eq $P1793, .CONTROL_LOOP_NEXT, loop1791_next
    eq $P1793, .CONTROL_LOOP_REDO, loop1791_redo
  loop1791_done:
    pop_eh 
  for_undef_762:
.annotate 'line', 1197
    set $P1750, $P1778
.annotate 'line', 1194
    goto if_1751_end
  if_1751:
.annotate 'line', 1195
    find_lex $P1759, "%items"
    unless_null $P1759, vivify_766
    $P1759 = root_new ['parrot';'Hash']
  vivify_766:
    defined $I1760, $P1759
    unless $I1760, for_undef_767
    iter $P1758, $P1759
    new $P1776, 'ExceptionHandler'
    set_label $P1776, loop1775_handler
    $P1776."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1776
  loop1775_test:
    unless $P1758, loop1775_done
    shift $P1761, $P1758
  loop1775_redo:
    .const 'Sub' $P1763 = "183_1303739782.662" 
    capture_lex $P1763
    $P1763($P1761)
  loop1775_next:
    goto loop1775_test
  loop1775_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1777, exception, 'type'
    eq $P1777, .CONTROL_LOOP_NEXT, loop1775_next
    eq $P1777, .CONTROL_LOOP_REDO, loop1775_redo
  loop1775_done:
    pop_eh 
  for_undef_767:
.annotate 'line', 1194
    set $P1750, $P1758
  if_1751_end:
    set $P1721, $P1750
.annotate 'line', 1191
    goto if_1722_end
  if_1722:
.annotate 'line', 1192
    find_lex $P1730, "%items"
    unless_null $P1730, vivify_772
    $P1730 = root_new ['parrot';'Hash']
  vivify_772:
    defined $I1731, $P1730
    unless $I1731, for_undef_773
    iter $P1729, $P1730
    new $P1748, 'ExceptionHandler'
    set_label $P1748, loop1747_handler
    $P1748."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1748
  loop1747_test:
    unless $P1729, loop1747_done
    shift $P1732, $P1729
  loop1747_redo:
    .const 'Sub' $P1734 = "182_1303739782.662" 
    capture_lex $P1734
    $P1734($P1732)
  loop1747_next:
    goto loop1747_test
  loop1747_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1749, exception, 'type'
    eq $P1749, .CONTROL_LOOP_NEXT, loop1747_next
    eq $P1749, .CONTROL_LOOP_REDO, loop1747_redo
  loop1747_done:
    pop_eh 
  for_undef_773:
.annotate 'line', 1191
    set $P1721, $P1729
  if_1722_end:
.annotate 'line', 1188
    .return ($P1721)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1782"  :anon :subid("184_1303739782.662") :outer("181_1303739782.662")
    .param pmc param_1784
.annotate 'line', 1198
    .lex "$_", param_1784
    find_lex $P1785, "$_"
    unless_null $P1785, vivify_763
    new $P1785, "Undef"
  vivify_763:
    $P1786 = $P1785."value"()
    find_lex $P1787, "$_"
    unless_null $P1787, vivify_764
    new $P1787, "Undef"
  vivify_764:
    $P1788 = $P1787."key"()
    set $S1789, $P1788
    find_lex $P1790, "$target"
    unless_null $P1790, vivify_765
    $P1790 = root_new ['parrot';'Hash']
    store_lex "$target", $P1790
  vivify_765:
    set $P1790[$S1789], $P1786
    .return ($P1786)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1762"  :anon :subid("183_1303739782.662") :outer("181_1303739782.662")
    .param pmc param_1764
.annotate 'line', 1195
    .lex "$_", param_1764
    find_lex $P1765, "$target"
    unless_null $P1765, vivify_768
    new $P1765, "Undef"
  vivify_768:
    find_lex $P1766, "$_"
    unless_null $P1766, vivify_769
    new $P1766, "Undef"
  vivify_769:
    $P1767 = $P1766."key"()
    find_lex $P1768, "$_"
    unless_null $P1768, vivify_770
    new $P1768, "Undef"
  vivify_770:
    $P1769 = $P1768."value"()
    new $P1770, 'String'
    set $P1770, "add_"
    find_lex $P1771, "$type"
    unless_null $P1771, vivify_771
    new $P1771, "Undef"
  vivify_771:
    concat $P1772, $P1770, $P1771
    set $S1773, $P1772
    $P1774 = $P1765.$S1773($P1767, $P1769)
    .return ($P1774)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1733"  :anon :subid("182_1303739782.662") :outer("181_1303739782.662")
    .param pmc param_1735
.annotate 'line', 1192
    .lex "$_", param_1735
    find_lex $P1736, "self"
    find_lex $P1737, "$target"
    unless_null $P1737, vivify_774
    new $P1737, "Undef"
  vivify_774:
    find_lex $P1738, "$_"
    unless_null $P1738, vivify_775
    new $P1738, "Undef"
  vivify_775:
    $P1739 = $P1738."key"()
    find_lex $P1740, "$_"
    unless_null $P1740, vivify_776
    new $P1740, "Undef"
  vivify_776:
    $P1741 = $P1740."value"()
    new $P1742, 'String'
    set $P1742, "import_"
    find_lex $P1743, "$type"
    unless_null $P1743, vivify_777
    new $P1743, "Undef"
  vivify_777:
    concat $P1744, $P1742, $P1743
    set $S1745, $P1744
    $P1746 = $P1736.$S1745($P1737, $P1739, $P1741)
    .return ($P1746)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1798
    .param pmc param_1799
.annotate 'line', 1203
    .lex "self", param_1798
    .lex "$value", param_1799
.annotate 'line', 1205
    getinterp $P1802
    $P1803 = $P1802."stdout_handle"()
    $N1804 = $P1803."tell"()
    find_dynamic_lex $P1807, "$*AUTOPRINTPOS"
    unless_null $P1807, vivify_778
    get_hll_global $P1805, "GLOBAL"
    get_who $P1806, $P1805
    set $P1807, $P1806["$AUTOPRINTPOS"]
    unless_null $P1807, vivify_779
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_779:
  vivify_778:
    set $N1808, $P1807
    isgt $I1809, $N1804, $N1808
    unless $I1809, unless_1801
    new $P1800, 'Integer'
    set $P1800, $I1809
    goto unless_1801_end
  unless_1801:
.annotate 'line', 1204
    find_lex $P1810, "$value"
    unless_null $P1810, vivify_780
    new $P1810, "Undef"
  vivify_780:
    set $S1811, $P1810
    say $S1811
  unless_1801_end:
.annotate 'line', 1203
    .return ($P1800)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1813
    .param pmc param_1814 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1846 = "187_1303739782.662" 
    capture_lex $P1846
    .lex "self", param_1813
    .lex "%adverbs", param_1814
.annotate 'line', 1209
    new $P1815, "Undef"
    .lex "$target", $P1815
.annotate 'line', 1213
    new $P1816, "Undef"
    .lex "$stdin", $P1816
.annotate 'line', 1214
    new $P1817, "Undef"
    .lex "$encoding", $P1817
.annotate 'line', 1219
    new $P1818, "Undef"
    .lex "$save_ctx", $P1818
.annotate 'line', 1209
    find_lex $P1819, "%adverbs"
    unless_null $P1819, vivify_781
    $P1819 = root_new ['parrot';'Hash']
  vivify_781:
    set $P1820, $P1819["target"]
    unless_null $P1820, vivify_782
    new $P1820, "Undef"
  vivify_782:
    set $S1821, $P1820
    downcase $S1822, $S1821
    new $P1823, 'String'
    set $P1823, $S1822
    store_lex "$target", $P1823
.annotate 'line', 1211
    getinterp $P1824
    $P1825 = $P1824."stderr_handle"()
    find_lex $P1826, "self"
    $S1827 = $P1826."commandline_banner"()
    print $P1825, $S1827
.annotate 'line', 1213
    getinterp $P1828
    $P1829 = $P1828."stdin_handle"()
    store_lex "$stdin", $P1829
.annotate 'line', 1214
    find_lex $P1830, "%adverbs"
    unless_null $P1830, vivify_783
    $P1830 = root_new ['parrot';'Hash']
  vivify_783:
    set $P1831, $P1830["encoding"]
    unless_null $P1831, vivify_784
    new $P1831, "Undef"
  vivify_784:
    set $S1832, $P1831
    new $P1833, 'String'
    set $P1833, $S1832
    store_lex "$encoding", $P1833
.annotate 'line', 1215
    find_lex $P1837, "$encoding"
    unless_null $P1837, vivify_785
    new $P1837, "Undef"
  vivify_785:
    if $P1837, if_1836
    set $P1835, $P1837
    goto if_1836_end
  if_1836:
    find_lex $P1838, "$encoding"
    unless_null $P1838, vivify_786
    new $P1838, "Undef"
  vivify_786:
    set $S1839, $P1838
    isne $I1840, $S1839, "fixed_8"
    new $P1835, 'Integer'
    set $P1835, $I1840
  if_1836_end:
    unless $P1835, if_1834_end
.annotate 'line', 1216
    find_lex $P1841, "$stdin"
    unless_null $P1841, vivify_787
    new $P1841, "Undef"
  vivify_787:
    find_lex $P1842, "$encoding"
    unless_null $P1842, vivify_788
    new $P1842, "Undef"
  vivify_788:
    $P1841."encoding"($P1842)
  if_1834_end:
.annotate 'line', 1215
    find_lex $P1843, "$save_ctx"
    unless_null $P1843, vivify_789
    new $P1843, "Undef"
  vivify_789:
.annotate 'line', 1220
    new $P1969, 'ExceptionHandler'
    set_label $P1969, loop1968_handler
    $P1969."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1969
  loop1968_test:
    new $P1844, "Integer"
    assign $P1844, 1
    unless $P1844, loop1968_done
  loop1968_redo:
    .const 'Sub' $P1846 = "187_1303739782.662" 
    capture_lex $P1846
    $P1846()
  loop1968_next:
    goto loop1968_test
  loop1968_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1970, exception, 'type'
    eq $P1970, .CONTROL_LOOP_NEXT, loop1968_next
    eq $P1970, .CONTROL_LOOP_REDO, loop1968_redo
  loop1968_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1844)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1845"  :anon :subid("187_1303739782.662") :outer("186_1303739782.662")
.annotate 'line', 1220
    .const 'Sub' $P1880 = "188_1303739782.662" 
    capture_lex $P1880
.annotate 'line', 1223
    new $P1847, "Undef"
    .lex "$prompt", $P1847
.annotate 'line', 1224
    new $P1848, "Undef"
    .lex "$code", $P1848
.annotate 'line', 1229
    new $P1849, "Undef"
    .lex "$*AUTOPRINTPOS", $P1849
.annotate 'line', 1230
    new $P1850, "Undef"
    .lex "$*CTXSAVE", $P1850
.annotate 'line', 1231
    new $P1851, "Undef"
    .lex "$*MAIN_CTX", $P1851
.annotate 'line', 1221
    find_lex $P1853, "$stdin"
    unless_null $P1853, vivify_790
    new $P1853, "Undef"
  vivify_790:
    if $P1853, unless_1852_end
    set $I1854, .CONTROL_LOOP_LAST
    die 0, $I1854
  unless_1852_end:
.annotate 'line', 1223
    find_lex $P1856, "self"
    $P1857 = $P1856."commandline_prompt"()
    set $P1855, $P1857
    defined $I1859, $P1855
    if $I1859, default_1858
    new $P1860, "String"
    assign $P1860, "> "
    set $P1855, $P1860
  default_1858:
    store_lex "$prompt", $P1855
.annotate 'line', 1224
    find_lex $P1861, "$stdin"
    unless_null $P1861, vivify_791
    new $P1861, "Undef"
  vivify_791:
    find_lex $P1862, "$prompt"
    unless_null $P1862, vivify_792
    new $P1862, "Undef"
  vivify_792:
    set $S1863, $P1862
    $P1864 = $P1861."readline_interactive"($S1863)
    store_lex "$code", $P1864
.annotate 'line', 1226
    find_lex $P1866, "$code"
    unless_null $P1866, vivify_793
    new $P1866, "Undef"
  vivify_793:
    isnull $I1867, $P1866
    unless $I1867, if_1865_end
    set $I1868, .CONTROL_LOOP_LAST
    die 0, $I1868
  if_1865_end:
.annotate 'line', 1229
    getinterp $P1869
    $P1870 = $P1869."stdout_handle"()
    $P1871 = $P1870."tell"()
    store_lex "$*AUTOPRINTPOS", $P1871
.annotate 'line', 1230
    find_lex $P1872, "self"
    store_lex "$*CTXSAVE", $P1872
    find_lex $P1875, "$*MAIN_CTX"
    unless_null $P1875, vivify_794
    get_hll_global $P1873, "GLOBAL"
    get_who $P1874, $P1873
    set $P1875, $P1874["$MAIN_CTX"]
    unless_null $P1875, vivify_795
    die "Contextual $*MAIN_CTX not found"
  vivify_795:
  vivify_794:
.annotate 'line', 1233
    find_lex $P1878, "$code"
    unless_null $P1878, vivify_796
    new $P1878, "Undef"
  vivify_796:
    if $P1878, if_1877
    set $P1876, $P1878
    goto if_1877_end
  if_1877:
    .const 'Sub' $P1880 = "188_1303739782.662" 
    capture_lex $P1880
    $P1967 = $P1880()
    set $P1876, $P1967
  if_1877_end:
.annotate 'line', 1220
    .return ($P1876)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1879"  :anon :subid("188_1303739782.662") :outer("187_1303739782.662")
.annotate 'line', 1233
    .const 'Sub' $P1915 = "191_1303739782.662" 
    capture_lex $P1915
    .const 'Sub' $P1886 = "189_1303739782.662" 
    capture_lex $P1886
.annotate 'line', 1235
    new $P1881, "Undef"
    .lex "$output", $P1881
.annotate 'line', 1234
    find_lex $P1882, "$code"
    unless_null $P1882, vivify_797
    new $P1882, "Undef"
  vivify_797:
    concat $P1883, $P1882, "\n"
    store_lex "$code", $P1883
    find_lex $P1884, "$output"
    unless_null $P1884, vivify_798
    new $P1884, "Undef"
  vivify_798:
.annotate 'line', 1236
    .const 'Sub' $P1886 = "189_1303739782.662" 
    capture_lex $P1886
    $P1886()
.annotate 'line', 1243
    find_dynamic_lex $P1912, "$*MAIN_CTX"
    unless_null $P1912, vivify_803
    get_hll_global $P1910, "GLOBAL"
    get_who $P1911, $P1910
    set $P1912, $P1911["$MAIN_CTX"]
    unless_null $P1912, vivify_804
    die "Contextual $*MAIN_CTX not found"
  vivify_804:
  vivify_803:
    defined $I1913, $P1912
    unless $I1913, if_1909_end
    .const 'Sub' $P1915 = "191_1303739782.662" 
    capture_lex $P1915
    $P1915()
  if_1909_end:
.annotate 'line', 1251
    find_lex $P1946, "$output"
    unless_null $P1946, vivify_814
    new $P1946, "Undef"
  vivify_814:
    isnull $I1947, $P1946
    unless $I1947, if_1945_end
    set $I1948, .CONTROL_LOOP_NEXT
    die 0, $I1948
  if_1945_end:
.annotate 'line', 1253
    find_lex $P1951, "$target"
    unless_null $P1951, vivify_815
    new $P1951, "Undef"
  vivify_815:
    isfalse $I1952, $P1951
    if $I1952, if_1950
.annotate 'line', 1255
    find_lex $P1958, "$target"
    unless_null $P1958, vivify_816
    new $P1958, "Undef"
  vivify_816:
    set $S1959, $P1958
    iseq $I1960, $S1959, "pir"
    if $I1960, if_1957
.annotate 'line', 1258
    find_lex $P1962, "self"
    find_lex $P1963, "$output"
    unless_null $P1963, vivify_817
    new $P1963, "Undef"
  vivify_817:
    find_lex $P1964, "$target"
    unless_null $P1964, vivify_818
    new $P1964, "Undef"
  vivify_818:
    find_lex $P1965, "%adverbs"
    unless_null $P1965, vivify_819
    $P1965 = root_new ['parrot';'Hash']
  vivify_819:
    $P1966 = $P1962."dumper"($P1963, $P1964, $P1965 :flat)
.annotate 'line', 1257
    set $P1956, $P1966
.annotate 'line', 1255
    goto if_1957_end
  if_1957:
.annotate 'line', 1256
    find_lex $P1961, "$output"
    unless_null $P1961, vivify_820
    new $P1961, "Undef"
  vivify_820:
    say $P1961
  if_1957_end:
.annotate 'line', 1255
    set $P1949, $P1956
.annotate 'line', 1253
    goto if_1950_end
  if_1950:
.annotate 'line', 1254
    find_lex $P1953, "self"
    find_lex $P1954, "$output"
    unless_null $P1954, vivify_821
    new $P1954, "Undef"
  vivify_821:
    $P1955 = $P1953."autoprint"($P1954)
.annotate 'line', 1253
    set $P1949, $P1955
  if_1950_end:
.annotate 'line', 1233
    .return ($P1949)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1885"  :anon :subid("189_1303739782.662") :outer("188_1303739782.662")
.annotate 'line', 1236
    .const 'Sub' $P1898 = "190_1303739782.662" 
    capture_lex $P1898
    new $P1894, 'ExceptionHandler'
    set_label $P1894, control_1893
    $P1894."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1894
.annotate 'line', 1237
    find_lex $P1887, "self"
    find_lex $P1888, "$code"
    unless_null $P1888, vivify_799
    new $P1888, "Undef"
  vivify_799:
    find_lex $P1889, "$save_ctx"
    unless_null $P1889, vivify_800
    new $P1889, "Undef"
  vivify_800:
    find_lex $P1890, "%adverbs"
    unless_null $P1890, vivify_801
    $P1890 = root_new ['parrot';'Hash']
  vivify_801:
    $P1891 = $P1887."eval"($P1888, $P1890 :flat, $P1889 :named("outer_ctx"))
    store_lex "$output", $P1891
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1892
  control_1893:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1898 = "190_1303739782.662" 
    newclosure $P1906, $P1898
    $P1906(exception)
    new $P1907, 'Integer'
    set $P1907, 1
    set exception["handled"], $P1907
    set $I1908, exception["handled"]
    ne $I1908, 1, nothandled_1896
  handled_1895:
    .return (exception)
  nothandled_1896:
    rethrow exception
  skip_handler_1892:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1897"  :anon :subid("190_1303739782.662") :outer("189_1303739782.662")
    .param pmc param_1899
.annotate 'line', 1238
    .lex "$_", param_1899
    find_lex $P1900, "$_"
    .lex "$!", $P1900
.annotate 'line', 1239
    find_lex $P1901, "$!"
    unless_null $P1901, vivify_802
    new $P1901, "Undef"
  vivify_802:
    set $S1902, $P1901
    new $P1903, 'String'
    set $P1903, $S1902
    concat $P1904, $P1903, "\n"
    print $P1904
.annotate 'line', 1240
    set $I1905, .CONTROL_LOOP_NEXT
    die 0, $I1905
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1914"  :anon :subid("191_1303739782.662") :outer("188_1303739782.662")
.annotate 'line', 1243
    .const 'Sub' $P1930 = "192_1303739782.662" 
    capture_lex $P1930
    find_lex $P1916, "$?PACKAGE"
    get_who $P1917, $P1916
    set $P1918, $P1917["$interactive_ctx"]
    unless_null $P1918, vivify_805
    new $P1918, "Undef"
  vivify_805:
    find_lex $P1919, "$?PACKAGE"
    get_who $P1920, $P1919
    set $P1921, $P1920["%interactive_pad"]
    unless_null $P1921, vivify_806
    $P1921 = root_new ['parrot';'Hash']
  vivify_806:
.annotate 'line', 1246
    find_dynamic_lex $P1925, "$*MAIN_CTX"
    unless_null $P1925, vivify_807
    get_hll_global $P1923, "GLOBAL"
    get_who $P1924, $P1923
    set $P1925, $P1924["$MAIN_CTX"]
    unless_null $P1925, vivify_808
    die "Contextual $*MAIN_CTX not found"
  vivify_808:
  vivify_807:
    $P1926 = $P1925."lexpad_full"()
    defined $I1927, $P1926
    unless $I1927, for_undef_809
    iter $P1922, $P1926
    new $P1940, 'ExceptionHandler'
    set_label $P1940, loop1939_handler
    $P1940."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1940
  loop1939_test:
    unless $P1922, loop1939_done
    shift $P1928, $P1922
  loop1939_redo:
    .const 'Sub' $P1930 = "192_1303739782.662" 
    capture_lex $P1930
    $P1930($P1928)
  loop1939_next:
    goto loop1939_test
  loop1939_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1941, exception, 'type'
    eq $P1941, .CONTROL_LOOP_NEXT, loop1939_next
    eq $P1941, .CONTROL_LOOP_REDO, loop1939_redo
  loop1939_done:
    pop_eh 
  for_undef_809:
.annotate 'line', 1249
    find_lex $P1942, "$?PACKAGE"
    get_who $P1943, $P1942
    set $P1944, $P1943["$interactive_ctx"]
    unless_null $P1944, vivify_813
    new $P1944, "Undef"
  vivify_813:
    store_lex "$save_ctx", $P1944
.annotate 'line', 1243
    .return ($P1944)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1929"  :anon :subid("192_1303739782.662") :outer("191_1303739782.662")
    .param pmc param_1931
.annotate 'line', 1246
    .lex "$_", param_1931
.annotate 'line', 1247
    find_lex $P1932, "$_"
    unless_null $P1932, vivify_810
    new $P1932, "Undef"
  vivify_810:
    $P1933 = $P1932."value"()
    find_lex $P1934, "$_"
    unless_null $P1934, vivify_811
    new $P1934, "Undef"
  vivify_811:
    $P1935 = $P1934."key"()
    find_lex $P1936, "$?PACKAGE"
    get_who $P1937, $P1936
    set $P1938, $P1937["%interactive_pad"]
    unless_null $P1938, vivify_812
    $P1938 = root_new ['parrot';'Hash']
    set $P1937["%interactive_pad"], $P1938
  vivify_812:
    set $P1938[$P1935], $P1933
.annotate 'line', 1246
    .return ($P1933)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_1972
    .param pmc param_1973
    .param pmc param_1974 :slurpy
    .param pmc param_1975 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1994 = "194_1303739782.662" 
    capture_lex $P1994
    .lex "self", param_1972
    .lex "$code", param_1973
    .lex "@args", param_1974
    .lex "%adverbs", param_1975
.annotate 'line', 1265
    new $P1976, "Undef"
    .lex "$output", $P1976
.annotate 'line', 1264
    find_lex $P1977, "$output"
    unless_null $P1977, vivify_822
    new $P1977, "Undef"
  vivify_822:
.annotate 'line', 1266
    find_lex $P1978, "self"
    find_lex $P1979, "$code"
    unless_null $P1979, vivify_823
    new $P1979, "Undef"
  vivify_823:
    find_lex $P1980, "%adverbs"
    unless_null $P1980, vivify_824
    $P1980 = root_new ['parrot';'Hash']
  vivify_824:
    $P1981 = $P1978."compile"($P1979, $P1980 :flat)
    store_lex "$output", $P1981
.annotate 'line', 1268
    find_lex $P1985, "$output"
    unless_null $P1985, vivify_825
    new $P1985, "Undef"
  vivify_825:
    isa $I1986, $P1985, "String"
    new $P1987, 'Integer'
    set $P1987, $I1986
    isfalse $I1988, $P1987
    if $I1988, if_1984
    new $P1983, 'Integer'
    set $P1983, $I1988
    goto if_1984_end
  if_1984:
.annotate 'line', 1269
    find_lex $P1989, "%adverbs"
    unless_null $P1989, vivify_826
    $P1989 = root_new ['parrot';'Hash']
  vivify_826:
    set $P1990, $P1989["target"]
    unless_null $P1990, vivify_827
    new $P1990, "Undef"
  vivify_827:
    set $S1991, $P1990
    iseq $I1992, $S1991, ""
    new $P1983, 'Integer'
    set $P1983, $I1992
  if_1984_end:
    unless $P1983, if_1982_end
    .const 'Sub' $P1994 = "194_1303739782.662" 
    capture_lex $P1994
    $P1994()
  if_1982_end:
.annotate 'line', 1268
    find_lex $P2010, "$output"
    unless_null $P2010, vivify_838
    new $P2010, "Undef"
  vivify_838:
.annotate 'line', 1264
    .return ($P2010)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1993"  :anon :subid("194_1303739782.662") :outer("193_1303739782.662")
.annotate 'line', 1270
    new $P1995, "Undef"
    .lex "$outer_ctx", $P1995
    find_lex $P1996, "%adverbs"
    unless_null $P1996, vivify_828
    $P1996 = root_new ['parrot';'Hash']
  vivify_828:
    set $P1997, $P1996["outer_ctx"]
    unless_null $P1997, vivify_829
    new $P1997, "Undef"
  vivify_829:
    store_lex "$outer_ctx", $P1997
.annotate 'line', 1271
    find_lex $P1999, "$outer_ctx"
    unless_null $P1999, vivify_830
    new $P1999, "Undef"
  vivify_830:
    defined $I2000, $P1999
    unless $I2000, if_1998_end
.annotate 'line', 1272
    find_lex $P2001, "$output"
    unless_null $P2001, vivify_831
    $P2001 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $P2002, $P2001[0]
    unless_null $P2002, vivify_832
    new $P2002, "Undef"
  vivify_832:
    find_lex $P2003, "$outer_ctx"
    unless_null $P2003, vivify_833
    new $P2003, "Undef"
  vivify_833:
    $P2002."set_outer_ctx"($P2003)
  if_1998_end:
.annotate 'line', 1275
    find_lex $P2004, "%adverbs"
    unless_null $P2004, vivify_834
    $P2004 = root_new ['parrot';'Hash']
  vivify_834:
    set $P2005, $P2004["trace"]
    unless_null $P2005, vivify_835
    new $P2005, "Undef"
  vivify_835:
    set $I2006, $P2005
    trace $I2006
.annotate 'line', 1276
    find_lex $P2007, "$output"
    unless_null $P2007, vivify_836
    new $P2007, "Undef"
  vivify_836:
    find_lex $P2008, "@args"
    unless_null $P2008, vivify_837
    $P2008 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    $P2009 = $P2007($P2008 :flat)
    store_lex "$output", $P2009
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2012
.annotate 'line', 1283
    .lex "self", param_2012
.annotate 'line', 1285

                $P0 = getinterp
                $P2013 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P2013
.annotate 'line', 1289
    new $P2014, "Integer"
    assign $P2014, 0
    store_dynamic_lex "$*CTXSAVE", $P2014
.annotate 'line', 1283
    .return ($P2014)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2016
    .param pmc param_2017 :slurpy
.annotate 'line', 1292
    .lex "self", param_2016
    .lex "@args", param_2017
.annotate 'line', 1293
    find_lex $P2018, "@args"
    unless_null $P2018, vivify_839
    $P2018 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    join $S2019, "", $P2018
    die $S2019
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2021
    .param pmc param_2022 :optional
    .param int has_param_2022 :opt_flag
.annotate 'line', 1296
    .lex "self", param_2021
    if has_param_2022, optparam_840
    $P2023 = root_new ['parrot';'ResizablePMCArray']
    set param_2022, $P2023
  optparam_840:
    .lex "@value", param_2022
.annotate 'line', 1297
    find_lex $P2025, "@value"
    unless_null $P2025, vivify_841
    $P2025 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N2026, $P2025
    unless $N2026, if_2024_end
.annotate 'line', 1298
    find_lex $P2027, "@value"
    unless_null $P2027, vivify_842
    $P2027 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    find_lex $P2028, "self"
    find_lex $P2029, "$?CLASS"
    setattribute $P2028, $P2029, "@!stages", $P2027
  if_2024_end:
.annotate 'line', 1297
    find_lex $P2030, "self"
    find_lex $P2031, "$?CLASS"
    getattribute $P2032, $P2030, $P2031, "@!stages"
    unless_null $P2032, vivify_843
    $P2032 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
.annotate 'line', 1296
    .return ($P2032)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2034
    .param pmc param_2035 :slurpy
.annotate 'line', 1303
    .lex "self", param_2034
    .lex "@value", param_2035
.annotate 'line', 1304
    find_lex $P2037, "@value"
    unless_null $P2037, vivify_844
    $P2037 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $N2038, $P2037
    unless $N2038, if_2036_end
.annotate 'line', 1305
    find_lex $P2039, "@value"
    unless_null $P2039, vivify_845
    $P2039 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P2040, $P2039[0]
    unless_null $P2040, vivify_846
    new $P2040, "Undef"
  vivify_846:
    find_lex $P2041, "self"
    find_lex $P2042, "$?CLASS"
    setattribute $P2041, $P2042, "$!parsegrammar", $P2040
  if_2036_end:
.annotate 'line', 1304
    find_lex $P2043, "self"
    find_lex $P2044, "$?CLASS"
    getattribute $P2045, $P2043, $P2044, "$!parsegrammar"
    unless_null $P2045, vivify_847
    new $P2045, "Undef"
  vivify_847:
.annotate 'line', 1303
    .return ($P2045)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2047
    .param pmc param_2048 :slurpy
.annotate 'line', 1310
    .lex "self", param_2047
    .lex "@value", param_2048
.annotate 'line', 1311
    find_lex $P2050, "@value"
    unless_null $P2050, vivify_848
    $P2050 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $N2051, $P2050
    unless $N2051, if_2049_end
.annotate 'line', 1312
    find_lex $P2052, "@value"
    unless_null $P2052, vivify_849
    $P2052 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P2053, $P2052[0]
    unless_null $P2053, vivify_850
    new $P2053, "Undef"
  vivify_850:
    find_lex $P2054, "self"
    find_lex $P2055, "$?CLASS"
    setattribute $P2054, $P2055, "$!parseactions", $P2053
  if_2049_end:
.annotate 'line', 1311
    find_lex $P2056, "self"
    find_lex $P2057, "$?CLASS"
    getattribute $P2058, $P2056, $P2057, "$!parseactions"
    unless_null $P2058, vivify_851
    new $P2058, "Undef"
  vivify_851:
.annotate 'line', 1310
    .return ($P2058)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2060
    .param pmc param_2061 :slurpy
.annotate 'line', 1317
    .lex "self", param_2060
    .lex "@value", param_2061
.annotate 'line', 1318
    find_lex $P2063, "@value"
    unless_null $P2063, vivify_852
    $P2063 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $N2064, $P2063
    unless $N2064, if_2062_end
.annotate 'line', 1319
    find_lex $P2065, "@value"
    unless_null $P2065, vivify_853
    $P2065 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    set $P2066, $P2065[0]
    unless_null $P2066, vivify_854
    new $P2066, "Undef"
  vivify_854:
    find_lex $P2067, "self"
    find_lex $P2068, "$?CLASS"
    setattribute $P2067, $P2068, "$!astgrammar", $P2066
  if_2062_end:
.annotate 'line', 1318
    find_lex $P2069, "self"
    find_lex $P2070, "$?CLASS"
    getattribute $P2071, $P2069, $P2070, "$!astgrammar"
    unless_null $P2071, vivify_855
    new $P2071, "Undef"
  vivify_855:
.annotate 'line', 1317
    .return ($P2071)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2073
    .param pmc param_2074 :optional
    .param int has_param_2074 :opt_flag
.annotate 'line', 1324
    .lex "self", param_2073
    if has_param_2074, optparam_856
    new $P2075, "Undef"
    set param_2074, $P2075
  optparam_856:
    .lex "$value", param_2074
.annotate 'line', 1325
    find_lex $P2077, "$value"
    unless_null $P2077, vivify_857
    new $P2077, "Undef"
  vivify_857:
    defined $I2078, $P2077
    unless $I2078, if_2076_end
.annotate 'line', 1326
    find_lex $P2079, "$value"
    unless_null $P2079, vivify_858
    new $P2079, "Undef"
  vivify_858:
    find_lex $P2080, "self"
    find_lex $P2081, "$?CLASS"
    setattribute $P2080, $P2081, "$!commandline_banner", $P2079
  if_2076_end:
.annotate 'line', 1325
    find_lex $P2082, "self"
    find_lex $P2083, "$?CLASS"
    getattribute $P2084, $P2082, $P2083, "$!commandline_banner"
    unless_null $P2084, vivify_859
    new $P2084, "Undef"
  vivify_859:
.annotate 'line', 1324
    .return ($P2084)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2086
    .param pmc param_2087 :optional
    .param int has_param_2087 :opt_flag
.annotate 'line', 1331
    .lex "self", param_2086
    if has_param_2087, optparam_860
    new $P2088, "Undef"
    set param_2087, $P2088
  optparam_860:
    .lex "$value", param_2087
.annotate 'line', 1332
    find_lex $P2090, "$value"
    unless_null $P2090, vivify_861
    new $P2090, "Undef"
  vivify_861:
    defined $I2091, $P2090
    unless $I2091, if_2089_end
.annotate 'line', 1333
    find_lex $P2092, "$value"
    unless_null $P2092, vivify_862
    new $P2092, "Undef"
  vivify_862:
    find_lex $P2093, "self"
    find_lex $P2094, "$?CLASS"
    setattribute $P2093, $P2094, "$!commandline_prompt", $P2092
  if_2089_end:
.annotate 'line', 1332
    find_lex $P2095, "self"
    find_lex $P2096, "$?CLASS"
    getattribute $P2097, $P2095, $P2096, "$!commandline_prompt"
    unless_null $P2097, vivify_863
    new $P2097, "Undef"
  vivify_863:
.annotate 'line', 1331
    .return ($P2097)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2099
    .param pmc param_2100 :optional
    .param int has_param_2100 :opt_flag
.annotate 'line', 1338
    .lex "self", param_2099
    if has_param_2100, optparam_864
    new $P2101, "Undef"
    set param_2100, $P2101
  optparam_864:
    .lex "$value", param_2100
.annotate 'line', 1339
    find_lex $P2103, "$value"
    unless_null $P2103, vivify_865
    new $P2103, "Undef"
  vivify_865:
    defined $I2104, $P2103
    unless $I2104, if_2102_end
.annotate 'line', 1340
    find_lex $P2105, "$value"
    unless_null $P2105, vivify_866
    new $P2105, "Undef"
  vivify_866:
    find_lex $P2106, "self"
    find_lex $P2107, "$?CLASS"
    setattribute $P2106, $P2107, "$!compiler_progname", $P2105
  if_2102_end:
.annotate 'line', 1339
    find_lex $P2108, "self"
    find_lex $P2109, "$?CLASS"
    getattribute $P2110, $P2108, $P2109, "$!compiler_progname"
    unless_null $P2110, vivify_867
    new $P2110, "Undef"
  vivify_867:
.annotate 'line', 1338
    .return ($P2110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2112
    .param pmc param_2113 :optional
    .param int has_param_2113 :opt_flag
.annotate 'line', 1345
    .lex "self", param_2112
    if has_param_2113, optparam_868
    $P2114 = root_new ['parrot';'ResizablePMCArray']
    set param_2113, $P2114
  optparam_868:
    .lex "@value", param_2113
.annotate 'line', 1346
    find_lex $P2116, "@value"
    unless_null $P2116, vivify_869
    $P2116 = root_new ['parrot';'ResizablePMCArray']
  vivify_869:
    set $N2117, $P2116
    unless $N2117, if_2115_end
.annotate 'line', 1347
    find_lex $P2118, "@value"
    unless_null $P2118, vivify_870
    $P2118 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    find_lex $P2119, "self"
    find_lex $P2120, "$?CLASS"
    setattribute $P2119, $P2120, "@!cmdoptions", $P2118
  if_2115_end:
.annotate 'line', 1346
    find_lex $P2121, "self"
    find_lex $P2122, "$?CLASS"
    getattribute $P2123, $P2121, $P2122, "@!cmdoptions"
    unless_null $P2123, vivify_871
    $P2123 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
.annotate 'line', 1345
    .return ($P2123)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2125
    .param pmc param_2126
    .param pmc param_2127 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P2153 = "206_1303739782.662" 
    capture_lex $P2153
    .lex "self", param_2125
    .lex "@args", param_2126
    .lex "%adverbs", param_2127
.annotate 'line', 1365
    new $P2128, "Undef"
    .lex "$program-name", $P2128
.annotate 'line', 1366
    new $P2129, "Undef"
    .lex "$res", $P2129
.annotate 'line', 1367
    $P2130 = root_new ['parrot';'Hash']
    .lex "%opts", $P2130
.annotate 'line', 1368
    $P2131 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2131
.annotate 'line', 1361
    find_lex $P2133, "@args"
    unless_null $P2133, vivify_872
    $P2133 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    set $P2134, $P2133[2]
    unless_null $P2134, vivify_873
    new $P2134, "Undef"
  vivify_873:
    set $S2135, $P2134
    index $I2136, $S2135, "@INC"
    set $N2137, $I2136
    isge $I2138, $N2137, 0.0
    unless $I2138, if_2132_end
.annotate 'line', 1362
    exit 0
  if_2132_end:
.annotate 'line', 1365
    find_lex $P2139, "@args"
    unless_null $P2139, vivify_874
    $P2139 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P2140, $P2139[0]
    unless_null $P2140, vivify_875
    new $P2140, "Undef"
  vivify_875:
    store_lex "$program-name", $P2140
.annotate 'line', 1366
    find_lex $P2141, "self"
    find_lex $P2142, "@args"
    unless_null $P2142, vivify_876
    $P2142 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    $P2143 = $P2141."process_args"($P2142)
    store_lex "$res", $P2143
.annotate 'line', 1367
    find_lex $P2144, "$res"
    unless_null $P2144, vivify_877
    new $P2144, "Undef"
  vivify_877:
    $P2145 = $P2144."options"()
    store_lex "%opts", $P2145
.annotate 'line', 1368
    find_lex $P2146, "$res"
    unless_null $P2146, vivify_878
    new $P2146, "Undef"
  vivify_878:
    $P2147 = $P2146."arguments"()
    store_lex "@a", $P2147
.annotate 'line', 1370
    find_lex $P2149, "%opts"
    unless_null $P2149, vivify_879
    $P2149 = root_new ['parrot';'Hash']
  vivify_879:
    defined $I2150, $P2149
    unless $I2150, for_undef_880
    iter $P2148, $P2149
    new $P2161, 'ExceptionHandler'
    set_label $P2161, loop2160_handler
    $P2161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2161
  loop2160_test:
    unless $P2148, loop2160_done
    shift $P2151, $P2148
  loop2160_redo:
    .const 'Sub' $P2153 = "206_1303739782.662" 
    capture_lex $P2153
    $P2153($P2151)
  loop2160_next:
    goto loop2160_test
  loop2160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2162, exception, 'type'
    eq $P2162, .CONTROL_LOOP_NEXT, loop2160_next
    eq $P2162, .CONTROL_LOOP_REDO, loop2160_redo
  loop2160_done:
    pop_eh 
  for_undef_880:
.annotate 'line', 1373
    find_lex $P2164, "%adverbs"
    unless_null $P2164, vivify_886
    $P2164 = root_new ['parrot';'Hash']
  vivify_886:
    set $P2165, $P2164["help"]
    unless_null $P2165, vivify_887
    new $P2165, "Undef"
  vivify_887:
    unless $P2165, if_2163_end
    find_lex $P2166, "self"
    find_lex $P2167, "$program-name"
    unless_null $P2167, vivify_888
    new $P2167, "Undef"
  vivify_888:
    $P2166."usage"($P2167)
  if_2163_end:
.annotate 'line', 1374
    find_lex $P2169, "%adverbs"
    unless_null $P2169, vivify_889
    $P2169 = root_new ['parrot';'Hash']
  vivify_889:
    set $P2170, $P2169["version"]
    unless_null $P2170, vivify_890
    new $P2170, "Undef"
  vivify_890:
    unless $P2170, if_2168_end
    find_lex $P2171, "self"
    $P2171."version"()
  if_2168_end:
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
.sub "_block2152"  :anon :subid("206_1303739782.662") :outer("205_1303739782.662")
    .param pmc param_2154
.annotate 'line', 1370
    .lex "$k", param_2154
.annotate 'line', 1371
    find_lex $P2155, "$k"
    unless_null $P2155, vivify_881
    new $P2155, "Undef"
  vivify_881:
    find_lex $P2156, "%opts"
    unless_null $P2156, vivify_882
    $P2156 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2157, $P2156[$P2155]
    unless_null $P2157, vivify_883
    new $P2157, "Undef"
  vivify_883:
    find_lex $P2158, "$k"
    unless_null $P2158, vivify_884
    new $P2158, "Undef"
  vivify_884:
    find_lex $P2159, "%adverbs"
    unless_null $P2159, vivify_885
    $P2159 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2159
  vivify_885:
    set $P2159[$P2158], $P2157
.annotate 'line', 1370
    .return ($P2157)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2173
    .param pmc param_2174
.annotate 'line', 1470
    .const 'Sub' $P2193 = "208_1303739782.662" 
    capture_lex $P2193
    .lex "self", param_2173
    .lex "@args", param_2174
.annotate 'line', 1474
    new $P2175, "Undef"
    .lex "$p", $P2175
.annotate 'line', 1477
    new $P2176, "Undef"
    .lex "$res", $P2176
.annotate 'line', 1472
    find_lex $P2177, "self"
    find_lex $P2178, "@args"
    unless_null $P2178, vivify_891
    $P2178 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    $P2179 = $P2178."shift"()
    $P2177."compiler_progname"($P2179)
.annotate 'line', 1474
    get_hll_global $P2180, "GLOBAL"
    nqp_get_package_through_who $P2181, $P2180, "HLL"
    nqp_get_package_through_who $P2182, $P2181, "CommandLine"
    get_who $P2183, $P2182
    set $P2184, $P2183["Parser"]
    find_lex $P2185, "self"
    find_lex $P2186, "$?CLASS"
    getattribute $P2187, $P2185, $P2186, "@!cmdoptions"
    unless_null $P2187, vivify_892
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_892:
    $P2188 = $P2184."new"($P2187)
    store_lex "$p", $P2188
.annotate 'line', 1475
    find_lex $P2189, "$p"
    unless_null $P2189, vivify_893
    new $P2189, "Undef"
  vivify_893:
    $P2189."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P2190, "$p"
    unless_null $P2190, vivify_894
    new $P2190, "Undef"
  vivify_894:
    $P2190."stop-after-first-arg"()
    find_lex $P2191, "$res"
    unless_null $P2191, vivify_895
    new $P2191, "Undef"
  vivify_895:
.annotate 'line', 1478
    .const 'Sub' $P2193 = "208_1303739782.662" 
    capture_lex $P2193
    $P2193()
    find_lex $P2211, "$res"
    unless_null $P2211, vivify_899
    new $P2211, "Undef"
  vivify_899:
.annotate 'line', 1470
    .return ($P2211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2192"  :anon :subid("208_1303739782.662") :outer("207_1303739782.662")
.annotate 'line', 1478
    .const 'Sub' $P2203 = "209_1303739782.662" 
    capture_lex $P2203
    new $P2199, 'ExceptionHandler'
    set_label $P2199, control_2198
    $P2199."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2199
.annotate 'line', 1479
    find_lex $P2194, "$p"
    unless_null $P2194, vivify_896
    new $P2194, "Undef"
  vivify_896:
    find_lex $P2195, "@args"
    unless_null $P2195, vivify_897
    $P2195 = root_new ['parrot';'ResizablePMCArray']
  vivify_897:
    $P2196 = $P2194."parse"($P2195)
    store_lex "$res", $P2196
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_2197
  control_2198:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2203 = "209_1303739782.662" 
    newclosure $P2208, $P2203
    $P2208(exception)
    new $P2209, 'Integer'
    set $P2209, 1
    set exception["handled"], $P2209
    set $I2210, exception["handled"]
    ne $I2210, 1, nothandled_2201
  handled_2200:
    .return (exception)
  nothandled_2201:
    rethrow exception
  skip_handler_2197:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2202"  :anon :subid("209_1303739782.662") :outer("208_1303739782.662")
    .param pmc param_2204
.annotate 'line', 1480
    .lex "$_", param_2204
    find_lex $P2205, "$_"
    .lex "$!", $P2205
.annotate 'line', 1481
    find_lex $P2206, "$_"
    unless_null $P2206, vivify_898
    new $P2206, "Undef"
  vivify_898:
    say $P2206
.annotate 'line', 1482
    find_lex $P2207, "self"
    $P2207."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2215
    .param pmc param_2216
    .param pmc param_2217 :slurpy
    .param pmc param_2218 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P2243 = "211_1303739782.662" 
    capture_lex $P2243
    new $P2214, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2214, control_2213
    push_eh $P2214
    .lex "self", param_2215
    .lex "$files", param_2216
    .lex "@args", param_2217
    .lex "%adverbs", param_2218
.annotate 'line', 1490
    new $P2219, "Undef"
    .lex "$target", $P2219
.annotate 'line', 1491
    new $P2220, "Undef"
    .lex "$encoding", $P2220
.annotate 'line', 1492
    $P2221 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2221
.annotate 'line', 1493
    $P2222 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2222
.annotate 'line', 1490
    find_lex $P2223, "%adverbs"
    unless_null $P2223, vivify_900
    $P2223 = root_new ['parrot';'Hash']
  vivify_900:
    set $P2224, $P2223["target"]
    unless_null $P2224, vivify_901
    new $P2224, "Undef"
  vivify_901:
    set $S2225, $P2224
    downcase $S2226, $S2225
    new $P2227, 'String'
    set $P2227, $S2226
    store_lex "$target", $P2227
.annotate 'line', 1491
    find_lex $P2228, "%adverbs"
    unless_null $P2228, vivify_902
    $P2228 = root_new ['parrot';'Hash']
  vivify_902:
    set $P2229, $P2228["encoding"]
    unless_null $P2229, vivify_903
    new $P2229, "Undef"
  vivify_903:
    store_lex "$encoding", $P2229
.annotate 'line', 1492
    find_lex $P2232, "$files"
    unless_null $P2232, vivify_904
    new $P2232, "Undef"
  vivify_904:
    does $I2233, $P2232, "array"
    if $I2233, if_2231
    find_lex $P2235, "$files"
    unless_null $P2235, vivify_905
    new $P2235, "Undef"
  vivify_905:
    new $P2236, "ResizablePMCArray"
    push $P2236, $P2235
    set $P2230, $P2236
    goto if_2231_end
  if_2231:
    find_lex $P2234, "$files"
    unless_null $P2234, vivify_906
    new $P2234, "Undef"
  vivify_906:
    set $P2230, $P2234
  if_2231_end:
    store_lex "@files", $P2230
    find_lex $P2237, "@codes"
    unless_null $P2237, vivify_907
    $P2237 = root_new ['parrot';'ResizablePMCArray']
  vivify_907:
.annotate 'line', 1494
    find_lex $P2239, "@files"
    unless_null $P2239, vivify_908
    $P2239 = root_new ['parrot';'ResizablePMCArray']
  vivify_908:
    defined $I2240, $P2239
    unless $I2240, for_undef_909
    iter $P2238, $P2239
    new $P2305, 'ExceptionHandler'
    set_label $P2305, loop2304_handler
    $P2305."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2305
  loop2304_test:
    unless $P2238, loop2304_done
    shift $P2241, $P2238
  loop2304_redo:
    .const 'Sub' $P2243 = "211_1303739782.662" 
    capture_lex $P2243
    $P2243($P2241)
  loop2304_next:
    goto loop2304_test
  loop2304_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2306, exception, 'type'
    eq $P2306, .CONTROL_LOOP_NEXT, loop2304_next
    eq $P2306, .CONTROL_LOOP_REDO, loop2304_redo
  loop2304_done:
    pop_eh 
  for_undef_909:
.annotate 'line', 1489
    .return ($P2238)
  control_2213:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2307, exception, "payload"
    .return ($P2307)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2242"  :anon :subid("211_1303739782.662") :outer("210_1303739782.662")
    .param pmc param_2248
.annotate 'line', 1494
    .const 'Sub' $P2252 = "212_1303739782.662" 
    capture_lex $P2252
.annotate 'line', 1495
    new $P2244, "Undef"
    .lex "$in-handle", $P2244
.annotate 'line', 1496
    new $P2245, "Undef"
    .lex "$err", $P2245
.annotate 'line', 1509
    new $P2246, "Undef"
    .lex "$code", $P2246
.annotate 'line', 1511
    new $P2247, "Undef"
    .lex "$r", $P2247
    .lex "$_", param_2248
.annotate 'line', 1495
    new $P2249, "FileHandle"
    store_lex "$in-handle", $P2249
.annotate 'line', 1496
    new $P2250, "Integer"
    assign $P2250, 0
    store_lex "$err", $P2250
.annotate 'line', 1497
    .const 'Sub' $P2252 = "212_1303739782.662" 
    capture_lex $P2252
    $P2252()
.annotate 'line', 1508
    find_lex $P2276, "$err"
    unless_null $P2276, vivify_917
    new $P2276, "Undef"
  vivify_917:
    unless $P2276, if_2275_end
    find_lex $P2277, "$err"
    unless_null $P2277, vivify_918
    new $P2277, "Undef"
  vivify_918:
    die $P2277
  if_2275_end:
.annotate 'line', 1509
    find_lex $P2278, "@codes"
    unless_null $P2278, vivify_919
    $P2278 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    join $S2279, "", $P2278
    new $P2280, 'String'
    set $P2280, $S2279
    store_lex "$code", $P2280
.annotate 'line', 1511
    find_lex $P2281, "self"
    find_lex $P2282, "$code"
    unless_null $P2282, vivify_920
    new $P2282, "Undef"
  vivify_920:
    find_lex $P2283, "@args"
    unless_null $P2283, vivify_921
    $P2283 = root_new ['parrot';'ResizablePMCArray']
  vivify_921:
    find_lex $P2284, "%adverbs"
    unless_null $P2284, vivify_922
    $P2284 = root_new ['parrot';'Hash']
  vivify_922:
    $P2285 = $P2281."eval"($P2282, $P2283 :flat, $P2284 :flat)
    store_lex "$r", $P2285
.annotate 'line', 1512
    find_lex $P2290, "$target"
    unless_null $P2290, vivify_923
    new $P2290, "Undef"
  vivify_923:
    set $S2291, $P2290
    iseq $I2292, $S2291, ""
    unless $I2292, unless_2289
    new $P2288, 'Integer'
    set $P2288, $I2292
    goto unless_2289_end
  unless_2289:
    find_lex $P2293, "$target"
    unless_null $P2293, vivify_924
    new $P2293, "Undef"
  vivify_924:
    set $S2294, $P2293
    iseq $I2295, $S2294, "pir"
    new $P2288, 'Integer'
    set $P2288, $I2295
  unless_2289_end:
    if $P2288, if_2287
.annotate 'line', 1515
    new $P2298, "Exception"
    set $P2298['type'], .CONTROL_RETURN
    find_lex $P2299, "self"
    find_lex $P2300, "$r"
    unless_null $P2300, vivify_925
    new $P2300, "Undef"
  vivify_925:
    find_lex $P2301, "$target"
    unless_null $P2301, vivify_926
    new $P2301, "Undef"
  vivify_926:
    find_lex $P2302, "%adverbs"
    unless_null $P2302, vivify_927
    $P2302 = root_new ['parrot';'Hash']
  vivify_927:
    $P2303 = $P2299."dumper"($P2300, $P2301, $P2302 :flat)
    setattribute $P2298, 'payload', $P2303
    throw $P2298
.annotate 'line', 1514
    goto if_2287_end
  if_2287:
.annotate 'line', 1513
    new $P2296, "Exception"
    set $P2296['type'], .CONTROL_RETURN
    find_lex $P2297, "$r"
    unless_null $P2297, vivify_928
    new $P2297, "Undef"
  vivify_928:
    setattribute $P2296, 'payload', $P2297
    throw $P2296
  if_2287_end:
.annotate 'line', 1494
    .return ($P2286)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2251"  :anon :subid("212_1303739782.662") :outer("211_1303739782.662")
.annotate 'line', 1497
    .const 'Sub' $P2266 = "213_1303739782.662" 
    capture_lex $P2266
    new $P2262, 'ExceptionHandler'
    set_label $P2262, control_2261
    $P2262."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2262
.annotate 'line', 1501
    find_lex $P2253, "$in-handle"
    unless_null $P2253, vivify_910
    new $P2253, "Undef"
  vivify_910:
    find_lex $P2254, "$encoding"
    unless_null $P2254, vivify_911
    new $P2254, "Undef"
  vivify_911:
    $P2253."encoding"($P2254)
.annotate 'line', 1502
    find_lex $P2255, "@codes"
    unless_null $P2255, vivify_912
    $P2255 = root_new ['parrot';'ResizablePMCArray']
  vivify_912:
    find_lex $P2256, "$in-handle"
    unless_null $P2256, vivify_913
    new $P2256, "Undef"
  vivify_913:
    find_lex $P2257, "$_"
    unless_null $P2257, vivify_914
    new $P2257, "Undef"
  vivify_914:
    $P2258 = $P2256."readall"($P2257)
    push $P2255, $P2258
.annotate 'line', 1503
    find_lex $P2259, "$in-handle"
    unless_null $P2259, vivify_915
    new $P2259, "Undef"
  vivify_915:
    $P2259."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_2260
  control_2261:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2266 = "213_1303739782.662" 
    newclosure $P2272, $P2266
    $P2272(exception)
    new $P2273, 'Integer'
    set $P2273, 1
    set exception["handled"], $P2273
    set $I2274, exception["handled"]
    ne $I2274, 1, nothandled_2264
  handled_2263:
    .return (exception)
  nothandled_2264:
    rethrow exception
  skip_handler_2260:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2265"  :anon :subid("213_1303739782.662") :outer("212_1303739782.662")
    .param pmc param_2267
.annotate 'line', 1504
    .lex "$_", param_2267
    find_lex $P2268, "$_"
    .lex "$!", $P2268
.annotate 'line', 1505
    new $P2269, 'String'
    set $P2269, "Error while reading from file: "
    find_lex $P2270, "$_"
    unless_null $P2270, vivify_916
    new $P2270, "Undef"
  vivify_916:
    concat $P2271, $P2269, $P2270
    store_lex "$err", $P2271
.annotate 'line', 1504
    .return ($P2271)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2311
    .param pmc param_2312
    .param pmc param_2313 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2336 = "215_1303739782.662" 
    capture_lex $P2336
    new $P2310, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2310, control_2309
    push_eh $P2310
    .lex "self", param_2311
    .lex "$source", param_2312
    .lex "%adverbs", param_2313
.annotate 'line', 1522
    $P2314 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2314
.annotate 'line', 1524
    new $P2315, "Undef"
    .lex "$target", $P2315
.annotate 'line', 1525
    new $P2316, "Undef"
    .lex "$result", $P2316
.annotate 'line', 1526
    new $P2317, "Undef"
    .lex "$stderr", $P2317
.annotate 'line', 1522
    find_lex $P2318, "%adverbs"
    unless_null $P2318, vivify_929
    $P2318 = root_new ['parrot';'Hash']
  vivify_929:
    find_lex $P2321, "%*COMPILING"
    unless_null $P2321, vivify_930
    get_hll_global $P2319, "GLOBAL"
    get_who $P2320, $P2319
    set $P2321, $P2320["%COMPILING"]
    unless_null $P2321, vivify_931
    die "Contextual %*COMPILING not found"
  vivify_931:
    store_lex "%*COMPILING", $P2321
  vivify_930:
    set $P2321["%?OPTIONS"], $P2318
.annotate 'line', 1524
    find_lex $P2322, "%adverbs"
    unless_null $P2322, vivify_932
    $P2322 = root_new ['parrot';'Hash']
  vivify_932:
    set $P2323, $P2322["target"]
    unless_null $P2323, vivify_933
    new $P2323, "Undef"
  vivify_933:
    set $S2324, $P2323
    downcase $S2325, $S2324
    new $P2326, 'String'
    set $P2326, $S2325
    store_lex "$target", $P2326
.annotate 'line', 1525
    find_lex $P2327, "$source"
    unless_null $P2327, vivify_934
    new $P2327, "Undef"
  vivify_934:
    store_lex "$result", $P2327
.annotate 'line', 1526
    getinterp $P2328
    $P2329 = $P2328."stderr_handle"()
    store_lex "$stderr", $P2329
.annotate 'line', 1527
    find_lex $P2331, "self"
    $P2332 = $P2331."stages"()
    defined $I2333, $P2332
    unless $I2333, for_undef_935
    iter $P2330, $P2332
    new $P2372, 'ExceptionHandler'
    set_label $P2372, loop2371_handler
    $P2372."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2372
  loop2371_test:
    unless $P2330, loop2371_done
    shift $P2334, $P2330
  loop2371_redo:
    .const 'Sub' $P2336 = "215_1303739782.662" 
    capture_lex $P2336
    $P2336($P2334)
  loop2371_next:
    goto loop2371_test
  loop2371_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2373, exception, 'type'
    eq $P2373, .CONTROL_LOOP_NEXT, loop2371_next
    eq $P2373, .CONTROL_LOOP_REDO, loop2371_redo
  loop2371_done:
    pop_eh 
  for_undef_935:
.annotate 'line', 1537
    new $P2374, "Exception"
    set $P2374['type'], .CONTROL_RETURN
    find_lex $P2375, "$result"
    unless_null $P2375, vivify_947
    new $P2375, "Undef"
  vivify_947:
    setattribute $P2374, 'payload', $P2375
    throw $P2374
.annotate 'line', 1521
    .return ()
  control_2309:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2376, exception, "payload"
    .return ($P2376)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2335"  :anon :subid("215_1303739782.662") :outer("214_1303739782.662")
    .param pmc param_2339
.annotate 'line', 1528
    new $P2337, "Undef"
    .lex "$timestamp", $P2337
.annotate 'line', 1530
    new $P2338, "Undef"
    .lex "$diff", $P2338
    .lex "$_", param_2339
.annotate 'line', 1528
    time $N2340
    new $P2341, 'Float'
    set $P2341, $N2340
    store_lex "$timestamp", $P2341
.annotate 'line', 1529
    find_lex $P2342, "self"
    find_lex $P2343, "$result"
    unless_null $P2343, vivify_936
    new $P2343, "Undef"
  vivify_936:
    find_lex $P2344, "%adverbs"
    unless_null $P2344, vivify_937
    $P2344 = root_new ['parrot';'Hash']
  vivify_937:
    find_lex $P2345, "$_"
    unless_null $P2345, vivify_938
    new $P2345, "Undef"
  vivify_938:
    set $S2346, $P2345
    $P2347 = $P2342.$S2346($P2343, $P2344 :flat)
    store_lex "$result", $P2347
.annotate 'line', 1530
    time $N2348
    new $P2349, 'Float'
    set $P2349, $N2348
    find_lex $P2350, "$timestamp"
    unless_null $P2350, vivify_939
    new $P2350, "Undef"
  vivify_939:
    sub $P2351, $P2349, $P2350
    store_lex "$diff", $P2351
.annotate 'line', 1531
    find_lex $P2353, "%adverbs"
    unless_null $P2353, vivify_940
    $P2353 = root_new ['parrot';'Hash']
  vivify_940:
    set $P2354, $P2353["stagestats"]
    unless_null $P2354, vivify_941
    new $P2354, "Undef"
  vivify_941:
    unless $P2354, if_2352_end
.annotate 'line', 1533
    find_lex $P2355, "$stderr"
    unless_null $P2355, vivify_942
    new $P2355, "Undef"
  vivify_942:
    new $P2356, 'String'
    set $P2356, "Stage "
    find_lex $P2357, "$_"
    unless_null $P2357, vivify_943
    new $P2357, "Undef"
  vivify_943:
    concat $P2358, $P2356, $P2357
    concat $P2359, $P2358, ": "
    find_lex $P2360, "$diff"
    unless_null $P2360, vivify_944
    new $P2360, "Undef"
  vivify_944:
    concat $P2361, $P2359, $P2360
    concat $P2362, $P2361, "\n"
    $P2355."print__N"($P2362)
  if_2352_end:
.annotate 'line', 1535
    find_lex $P2365, "$_"
    unless_null $P2365, vivify_945
    new $P2365, "Undef"
  vivify_945:
    set $S2366, $P2365
    find_lex $P2367, "$target"
    unless_null $P2367, vivify_946
    new $P2367, "Undef"
  vivify_946:
    set $S2368, $P2367
    iseq $I2369, $S2366, $S2368
    if $I2369, if_2364
    new $P2363, 'Integer'
    set $P2363, $I2369
    goto if_2364_end
  if_2364:
    set $I2370, .CONTROL_LOOP_LAST
    die 0, $I2370
  if_2364_end:
.annotate 'line', 1527
    .return ($P2363)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2378
    .param pmc param_2379
    .param pmc param_2380 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2378
    .lex "$source", param_2379
    .lex "%adverbs", param_2380
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
.sub "past"  :subid("217_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2382
    .param pmc param_2383
    .param pmc param_2384 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2382
    .lex "$source", param_2383
    .lex "%adverbs", param_2384
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
.sub "post"  :subid("218_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2386
    .param pmc param_2387
    .param pmc param_2388 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2386
    .lex "$source", param_2387
    .lex "%adverbs", param_2388
.annotate 'line', 1630
    compreg $P2389, "PAST"
    find_lex $P2390, "$source"
    unless_null $P2390, vivify_948
    new $P2390, "Undef"
  vivify_948:
    find_lex $P2391, "%adverbs"
    unless_null $P2391, vivify_949
    $P2391 = root_new ['parrot';'Hash']
  vivify_949:
    $P2392 = $P2389."to_post"($P2390, $P2391 :flat)
.annotate 'line', 1629
    .return ($P2392)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2394
    .param pmc param_2395
    .param pmc param_2396 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2394
    .lex "$source", param_2395
    .lex "%adverbs", param_2396
.annotate 'line', 1634
    compreg $P2397, "POST"
    find_lex $P2398, "$source"
    unless_null $P2398, vivify_950
    new $P2398, "Undef"
  vivify_950:
    find_lex $P2399, "%adverbs"
    unless_null $P2399, vivify_951
    $P2399 = root_new ['parrot';'Hash']
  vivify_951:
    $P2400 = $P2397."to_pir"($P2398, $P2399 :flat)
.annotate 'line', 1633
    .return ($P2400)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2402
    .param pmc param_2403
    .param pmc param_2404 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2402
    .lex "$source", param_2403
    .lex "%adverbs", param_2404
.annotate 'line', 1638
    new $P2405, "Undef"
    .lex "$compiler", $P2405
    compreg $P2406, "PIR"
    store_lex "$compiler", $P2406
.annotate 'line', 1639
    find_lex $P2407, "$compiler"
    unless_null $P2407, vivify_952
    new $P2407, "Undef"
  vivify_952:
    find_lex $P2408, "$source"
    unless_null $P2408, vivify_953
    new $P2408, "Undef"
  vivify_953:
    $P2409 = $P2407($P2408)
.annotate 'line', 1637
    .return ($P2409)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2411
    .param pmc param_2412
    .param pmc param_2413
    .param pmc param_2414 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2420 = "222_1303739782.662" 
    capture_lex $P2420
    .lex "self", param_2411
    .lex "$obj", param_2412
    .lex "$name", param_2413
    .lex "%options", param_2414
.annotate 'line', 1643
    find_lex $P2417, "%options"
    unless_null $P2417, vivify_954
    $P2417 = root_new ['parrot';'Hash']
  vivify_954:
    set $P2418, $P2417["dumper"]
    unless_null $P2418, vivify_955
    new $P2418, "Undef"
  vivify_955:
    if $P2418, if_2416
.annotate 'line', 1649
    find_lex $P2436, "$obj"
    unless_null $P2436, vivify_956
    new $P2436, "Undef"
  vivify_956:
    find_lex $P2437, "$name"
    unless_null $P2437, vivify_957
    new $P2437, "Undef"
  vivify_957:
    $P2438 = "_dumper"($P2436, $P2437)
.annotate 'line', 1648
    set $P2415, $P2438
.annotate 'line', 1643
    goto if_2416_end
  if_2416:
    .const 'Sub' $P2420 = "222_1303739782.662" 
    capture_lex $P2420
    $P2435 = $P2420()
    set $P2415, $P2435
  if_2416_end:
.annotate 'line', 1642
    .return ($P2415)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2419"  :anon :subid("222_1303739782.662") :outer("221_1303739782.662")
.annotate 'line', 1645
    new $P2421, "Undef"
    .lex "$dumper", $P2421
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2422, "%options"
    unless_null $P2422, vivify_958
    $P2422 = root_new ['parrot';'Hash']
  vivify_958:
    set $P2423, $P2422["dumper"]
    unless_null $P2423, vivify_959
    new $P2423, "Undef"
  vivify_959:
    set $S2424, $P2423
    downcase $S2425, $S2424
    get_hll_global $P2426, "GLOBAL"
    nqp_get_package_through_who $P2427, $P2426, "PCT"
    get_who $P2428, $P2427
    set $P2429, $P2428["Dumper"]
    unless_null $P2429, vivify_960
    $P2429 = root_new ['parrot';'Hash']
  vivify_960:
    set $P2430, $P2429[$S2425]
    unless_null $P2430, vivify_961
    new $P2430, "Undef"
  vivify_961:
    store_lex "$dumper", $P2430
.annotate 'line', 1646
    find_lex $P2431, "$dumper"
    unless_null $P2431, vivify_962
    new $P2431, "Undef"
  vivify_962:
    find_lex $P2432, "$obj"
    unless_null $P2432, vivify_963
    new $P2432, "Undef"
  vivify_963:
    find_lex $P2433, "$name"
    unless_null $P2433, vivify_964
    new $P2433, "Undef"
  vivify_964:
    $P2434 = $P2431($P2432, $P2433)
.annotate 'line', 1643
    .return ($P2434)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2440
    .param pmc param_2441 :optional
    .param int has_param_2441 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2440
    if has_param_2441, optparam_965
    new $P2442, "Undef"
    set param_2441, $P2442
  optparam_965:
    .lex "$name", param_2441
.annotate 'line', 1654
    find_lex $P2444, "$name"
    unless_null $P2444, vivify_966
    new $P2444, "Undef"
  vivify_966:
    unless $P2444, if_2443_end
.annotate 'line', 1655
    find_lex $P2445, "$name"
    unless_null $P2445, vivify_967
    new $P2445, "Undef"
  vivify_967:
    "say"($P2445)
  if_2443_end:
.annotate 'line', 1657
    find_lex $P2446, "self"
    find_lex $P2447, "$?CLASS"
    getattribute $P2448, $P2446, $P2447, "$!usage"
    unless_null $P2448, vivify_968
    new $P2448, "Undef"
  vivify_968:
    say $P2448
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2450
.annotate 'line', 1661
    .lex "self", param_2450
.annotate 'line', 1662
    find_lex $P2451, "self"
    find_lex $P2452, "$?CLASS"
    getattribute $P2453, $P2451, $P2452, "$!version"
    unless_null $P2453, vivify_969
    new $P2453, "Undef"
  vivify_969:
    say $P2453
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2455
    .param pmc param_2456
.annotate 'line', 1666
    .const 'Sub' $P2466 = "226_1303739782.662" 
    capture_lex $P2466
    .lex "self", param_2455
    .lex "$stagename", param_2456
.annotate 'line', 1667
    $P2457 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2457
    new $P2458, "ResizableStringArray"
    store_lex "@new_stages", $P2458
.annotate 'line', 1668
    find_lex $P2460, "self"
    find_lex $P2461, "$?CLASS"
    getattribute $P2462, $P2460, $P2461, "@!stages"
    unless_null $P2462, vivify_970
    $P2462 = root_new ['parrot';'ResizablePMCArray']
  vivify_970:
    defined $I2463, $P2462
    unless $I2463, for_undef_971
    iter $P2459, $P2462
    new $P2479, 'ExceptionHandler'
    set_label $P2479, loop2478_handler
    $P2479."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2479
  loop2478_test:
    unless $P2459, loop2478_done
    shift $P2464, $P2459
  loop2478_redo:
    .const 'Sub' $P2466 = "226_1303739782.662" 
    capture_lex $P2466
    $P2466($P2464)
  loop2478_next:
    goto loop2478_test
  loop2478_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2480, exception, 'type'
    eq $P2480, .CONTROL_LOOP_NEXT, loop2478_next
    eq $P2480, .CONTROL_LOOP_REDO, loop2478_redo
  loop2478_done:
    pop_eh 
  for_undef_971:
.annotate 'line', 1673
    find_lex $P2481, "@new_stages"
    unless_null $P2481, vivify_976
    $P2481 = root_new ['parrot';'ResizablePMCArray']
  vivify_976:
    find_lex $P2482, "self"
    find_lex $P2483, "$?CLASS"
    setattribute $P2482, $P2483, "@!stages", $P2481
.annotate 'line', 1666
    .return ($P2481)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2465"  :anon :subid("226_1303739782.662") :outer("225_1303739782.662")
    .param pmc param_2467
.annotate 'line', 1668
    .lex "$_", param_2467
.annotate 'line', 1669
    find_lex $P2470, "$_"
    unless_null $P2470, vivify_972
    new $P2470, "Undef"
  vivify_972:
    set $S2471, $P2470
    find_lex $P2472, "$stagename"
    unless_null $P2472, vivify_973
    new $P2472, "Undef"
  vivify_973:
    set $S2473, $P2472
    isne $I2474, $S2471, $S2473
    if $I2474, if_2469
    new $P2468, 'Integer'
    set $P2468, $I2474
    goto if_2469_end
  if_2469:
.annotate 'line', 1670
    find_lex $P2475, "@new_stages"
    unless_null $P2475, vivify_974
    $P2475 = root_new ['parrot';'ResizablePMCArray']
  vivify_974:
    find_lex $P2476, "$_"
    unless_null $P2476, vivify_975
    new $P2476, "Undef"
  vivify_975:
    $P2477 = $P2475."push"($P2476)
.annotate 'line', 1669
    set $P2468, $P2477
  if_2469_end:
.annotate 'line', 1668
    .return ($P2468)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2487
    .param pmc param_2488
    .param pmc param_2489 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2526 = "229_1303739782.662" 
    capture_lex $P2526
    .const 'Sub' $P2508 = "228_1303739782.662" 
    capture_lex $P2508
    new $P2486, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2486, control_2485
    push_eh $P2486
    .lex "self", param_2487
    .lex "$stagename", param_2488
    .lex "%adverbs", param_2489
.annotate 'line', 1677
    new $P2490, "Undef"
    .lex "$position", $P2490
.annotate 'line', 1678
    new $P2491, "Undef"
    .lex "$where", $P2491
.annotate 'line', 1691
    $P2492 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2492
.annotate 'line', 1676
    find_lex $P2493, "$position"
    unless_null $P2493, vivify_977
    new $P2493, "Undef"
  vivify_977:
    find_lex $P2494, "$where"
    unless_null $P2494, vivify_978
    new $P2494, "Undef"
  vivify_978:
.annotate 'line', 1679
    find_lex $P2496, "%adverbs"
    unless_null $P2496, vivify_979
    $P2496 = root_new ['parrot';'Hash']
  vivify_979:
    set $P2497, $P2496["before"]
    unless_null $P2497, vivify_980
    new $P2497, "Undef"
  vivify_980:
    if $P2497, if_2495
.annotate 'line', 1682
    find_lex $P2502, "%adverbs"
    unless_null $P2502, vivify_981
    $P2502 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2503, $P2502["after"]
    unless_null $P2503, vivify_982
    new $P2503, "Undef"
  vivify_982:
    if $P2503, if_2501
.annotate 'line', 1685
    .const 'Sub' $P2508 = "228_1303739782.662" 
    capture_lex $P2508
    $P2508()
    goto if_2501_end
  if_2501:
.annotate 'line', 1683
    find_lex $P2504, "%adverbs"
    unless_null $P2504, vivify_986
    $P2504 = root_new ['parrot';'Hash']
  vivify_986:
    set $P2505, $P2504["after"]
    unless_null $P2505, vivify_987
    new $P2505, "Undef"
  vivify_987:
    store_lex "$where", $P2505
.annotate 'line', 1684
    new $P2506, "String"
    assign $P2506, "after"
    store_lex "$position", $P2506
  if_2501_end:
.annotate 'line', 1682
    goto if_2495_end
  if_2495:
.annotate 'line', 1680
    find_lex $P2498, "%adverbs"
    unless_null $P2498, vivify_988
    $P2498 = root_new ['parrot';'Hash']
  vivify_988:
    set $P2499, $P2498["before"]
    unless_null $P2499, vivify_989
    new $P2499, "Undef"
  vivify_989:
    store_lex "$where", $P2499
.annotate 'line', 1681
    new $P2500, "String"
    assign $P2500, "before"
    store_lex "$position", $P2500
  if_2495_end:
.annotate 'line', 1691
    new $P2519, "ResizableStringArray"
    store_lex "@new-stages", $P2519
.annotate 'line', 1692
    find_lex $P2521, "self"
    $P2522 = $P2521."stages"()
    defined $I2523, $P2522
    unless $I2523, for_undef_990
    iter $P2520, $P2522
    new $P2551, 'ExceptionHandler'
    set_label $P2551, loop2550_handler
    $P2551."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2551
  loop2550_test:
    unless $P2520, loop2550_done
    shift $P2524, $P2520
  loop2550_redo:
    .const 'Sub' $P2526 = "229_1303739782.662" 
    capture_lex $P2526
    $P2526($P2524)
  loop2550_next:
    goto loop2550_test
  loop2550_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2552, exception, 'type'
    eq $P2552, .CONTROL_LOOP_NEXT, loop2550_next
    eq $P2552, .CONTROL_LOOP_REDO, loop2550_redo
  loop2550_done:
    pop_eh 
  for_undef_990:
.annotate 'line', 1705
    find_lex $P2553, "self"
    find_lex $P2554, "@new-stages"
    unless_null $P2554, vivify_1004
    $P2554 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    $P2555 = $P2553."stages"($P2554)
.annotate 'line', 1676
    .return ($P2555)
  control_2485:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2556, exception, "payload"
    .return ($P2556)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2507"  :anon :subid("228_1303739782.662") :outer("227_1303739782.662")
.annotate 'line', 1686
    $P2509 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2509
    find_lex $P2510, "self"
    $P2511 = $P2510."stages"()
    clone $P2512, $P2511
    store_lex "@new-stages", $P2512
.annotate 'line', 1687
    find_lex $P2513, "@new-stages"
    unless_null $P2513, vivify_983
    $P2513 = root_new ['parrot';'ResizablePMCArray']
  vivify_983:
    find_lex $P2514, "$stagename"
    unless_null $P2514, vivify_984
    new $P2514, "Undef"
  vivify_984:
    push $P2513, $P2514
.annotate 'line', 1688
    find_lex $P2515, "self"
    find_lex $P2516, "@new-stages"
    unless_null $P2516, vivify_985
    $P2516 = root_new ['parrot';'ResizablePMCArray']
  vivify_985:
    $P2515."stages"($P2516)
.annotate 'line', 1689
    new $P2517, "Exception"
    set $P2517['type'], .CONTROL_RETURN
    new $P2518, "Integer"
    assign $P2518, 1
    setattribute $P2517, 'payload', $P2518
    throw $P2517
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2525"  :anon :subid("229_1303739782.662") :outer("227_1303739782.662")
    .param pmc param_2527
.annotate 'line', 1692
    .lex "$_", param_2527
.annotate 'line', 1693
    find_lex $P2530, "$_"
    unless_null $P2530, vivify_991
    new $P2530, "Undef"
  vivify_991:
    set $S2531, $P2530
    find_lex $P2532, "$where"
    unless_null $P2532, vivify_992
    new $P2532, "Undef"
  vivify_992:
    set $S2533, $P2532
    iseq $I2534, $S2531, $S2533
    if $I2534, if_2529
.annotate 'line', 1702
    find_lex $P2548, "@new-stages"
    unless_null $P2548, vivify_993
    $P2548 = root_new ['parrot';'ResizablePMCArray']
  vivify_993:
    find_lex $P2549, "$_"
    unless_null $P2549, vivify_994
    new $P2549, "Undef"
  vivify_994:
    push $P2548, $P2549
.annotate 'line', 1701
    set $P2528, $P2548
.annotate 'line', 1693
    goto if_2529_end
  if_2529:
.annotate 'line', 1694
    find_lex $P2537, "$position"
    unless_null $P2537, vivify_995
    new $P2537, "Undef"
  vivify_995:
    set $S2538, $P2537
    iseq $I2539, $S2538, "before"
    if $I2539, if_2536
.annotate 'line', 1698
    find_lex $P2544, "@new-stages"
    unless_null $P2544, vivify_996
    $P2544 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    find_lex $P2545, "$_"
    unless_null $P2545, vivify_997
    new $P2545, "Undef"
  vivify_997:
    push $P2544, $P2545
.annotate 'line', 1699
    find_lex $P2546, "@new-stages"
    unless_null $P2546, vivify_998
    $P2546 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2547, "$stagename"
    unless_null $P2547, vivify_999
    new $P2547, "Undef"
  vivify_999:
    push $P2546, $P2547
.annotate 'line', 1697
    set $P2535, $P2546
.annotate 'line', 1694
    goto if_2536_end
  if_2536:
.annotate 'line', 1695
    find_lex $P2540, "@new-stages"
    unless_null $P2540, vivify_1000
    $P2540 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    find_lex $P2541, "$stagename"
    unless_null $P2541, vivify_1001
    new $P2541, "Undef"
  vivify_1001:
    push $P2540, $P2541
.annotate 'line', 1696
    find_lex $P2542, "@new-stages"
    unless_null $P2542, vivify_1002
    $P2542 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    find_lex $P2543, "$_"
    unless_null $P2543, vivify_1003
    new $P2543, "Undef"
  vivify_1003:
    push $P2542, $P2543
.annotate 'line', 1694
    set $P2535, $P2542
  if_2536_end:
.annotate 'line', 1693
    set $P2528, $P2535
  if_2529_end:
.annotate 'line', 1692
    .return ($P2528)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2558
    .param pmc param_2559
.annotate 'line', 1708
    .const 'Sub' $P2597 = "231_1303739782.662" 
    capture_lex $P2597
    .lex "self", param_2558
    .lex "$name", param_2559
.annotate 'line', 1709
    $P2560 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2560
.annotate 'line', 1710
    new $P2561, "Undef"
    .lex "$sigil", $P2561
.annotate 'line', 1713
    new $P2562, "Undef"
    .lex "$idx", $P2562
.annotate 'line', 1721
    $P2563 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2563
.annotate 'line', 1709
    find_lex $P2564, "$name"
    unless_null $P2564, vivify_1005
    new $P2564, "Undef"
  vivify_1005:
    set $S2565, $P2564
    split $P2566, "::", $S2565
    store_lex "@ns", $P2566
.annotate 'line', 1710
    find_lex $P2567, "@ns"
    unless_null $P2567, vivify_1006
    $P2567 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    set $P2568, $P2567[0]
    unless_null $P2568, vivify_1007
    new $P2568, "Undef"
  vivify_1007:
    set $S2569, $P2568
    substr $S2570, $S2569, 0, 1
    new $P2571, 'String'
    set $P2571, $S2570
    store_lex "$sigil", $P2571
.annotate 'line', 1713
    find_lex $P2572, "$sigil"
    unless_null $P2572, vivify_1008
    new $P2572, "Undef"
  vivify_1008:
    set $S2573, $P2572
    index $I2574, "$@%&", $S2573
    new $P2575, 'Integer'
    set $P2575, $I2574
    store_lex "$idx", $P2575
.annotate 'line', 1714
    find_lex $P2577, "$idx"
    unless_null $P2577, vivify_1009
    new $P2577, "Undef"
  vivify_1009:
    set $N2578, $P2577
    isge $I2579, $N2578, 0.0
    unless $I2579, if_2576_end
.annotate 'line', 1715
    find_lex $P2580, "@ns"
    unless_null $P2580, vivify_1010
    $P2580 = root_new ['parrot';'ResizablePMCArray']
  vivify_1010:
    set $P2581, $P2580[0]
    unless_null $P2581, vivify_1011
    new $P2581, "Undef"
  vivify_1011:
    set $S2582, $P2581
    substr $S2583, $S2582, 1
    new $P2584, 'String'
    set $P2584, $S2583
    find_lex $P2585, "@ns"
    unless_null $P2585, vivify_1012
    $P2585 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2585
  vivify_1012:
    set $P2585[0], $P2584
.annotate 'line', 1716
    find_lex $P2586, "$sigil"
    unless_null $P2586, vivify_1013
    new $P2586, "Undef"
  vivify_1013:
    find_lex $P2587, "@ns"
    unless_null $P2587, vivify_1014
    $P2587 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
    set $P2588, $P2587[-1]
    unless_null $P2588, vivify_1015
    new $P2588, "Undef"
  vivify_1015:
    concat $P2589, $P2586, $P2588
    find_lex $P2590, "@ns"
    unless_null $P2590, vivify_1016
    $P2590 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2590
  vivify_1016:
    set $P2590[-1], $P2589
  if_2576_end:
.annotate 'line', 1714
    find_lex $P2591, "@actual_ns"
    unless_null $P2591, vivify_1017
    $P2591 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
.annotate 'line', 1722
    find_lex $P2593, "@ns"
    unless_null $P2593, vivify_1018
    $P2593 = root_new ['parrot';'ResizablePMCArray']
  vivify_1018:
    defined $I2594, $P2593
    unless $I2594, for_undef_1019
    iter $P2592, $P2593
    new $P2607, 'ExceptionHandler'
    set_label $P2607, loop2606_handler
    $P2607."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2607
  loop2606_test:
    unless $P2592, loop2606_done
    shift $P2595, $P2592
  loop2606_redo:
    .const 'Sub' $P2597 = "231_1303739782.662" 
    capture_lex $P2597
    $P2597($P2595)
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
  for_undef_1019:
    find_lex $P2609, "@actual_ns"
    unless_null $P2609, vivify_1023
    $P2609 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
.annotate 'line', 1708
    .return ($P2609)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2596"  :anon :subid("231_1303739782.662") :outer("230_1303739782.662")
    .param pmc param_2598
.annotate 'line', 1722
    .lex "$_", param_2598
.annotate 'line', 1723
    find_lex $P2601, "$_"
    unless_null $P2601, vivify_1020
    new $P2601, "Undef"
  vivify_1020:
    set $S2602, $P2601
    iseq $I2603, $S2602, ""
    unless $I2603, unless_2600
    new $P2599, 'Integer'
    set $P2599, $I2603
    goto unless_2600_end
  unless_2600:
    find_lex $P2604, "@actual_ns"
    unless_null $P2604, vivify_1021
    $P2604 = root_new ['parrot';'ResizablePMCArray']
  vivify_1021:
    find_lex $P2605, "$_"
    unless_null $P2605, vivify_1022
    new $P2605, "Undef"
  vivify_1022:
    push $P2604, $P2605
    set $P2599, $P2604
  unless_2600_end:
.annotate 'line', 1722
    .return ($P2599)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303739782.662") :outer("167_1303739782.662")
    .param pmc param_2611
    .param pmc param_2612
    .param pmc param_2613
    .param pmc param_2614 :optional :named("cache")
    .param int has_param_2614 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2611
    .lex "$target", param_2612
    .lex "$pos", param_2613
    if has_param_2614, optparam_1024
    new $P2615, "Undef"
    set param_2614, $P2615
  optparam_1024:
    .lex "$cache", param_2614
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
.sub "_block2735"  :subid("234_1303739782.662") :outer("10_1303739782.662")
.annotate 'line', 1885
    .const 'Sub' $P2814 = "241_1303739782.662" 
    capture_lex $P2814
    .const 'Sub' $P2764 = "239_1303739782.662" 
    capture_lex $P2764
    .const 'Sub' $P2757 = "238_1303739782.662" 
    capture_lex $P2757
    .const 'Sub' $P2752 = "237_1303739782.662" 
    capture_lex $P2752
    .const 'Sub' $P2747 = "236_1303739782.662" 
    capture_lex $P2747
    .const 'Sub' $P2739 = "235_1303739782.662" 
    capture_lex $P2739
    .lex "$?PACKAGE", $P2737
    .lex "$?CLASS", $P2738
.annotate 'line', 1901
    .const 'Sub' $P2764 = "239_1303739782.662" 
    newclosure $P2812, $P2764
.annotate 'line', 1885
    .return ($P2812)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1026") :outer("234_1303739782.662")
.annotate 'line', 1885
    .const 'Sub' $P2736 = "234_1303739782.662" 
    .local pmc block
    set block, $P2736
    .const 'Sub' $P2814 = "241_1303739782.662" 
    capture_lex $P2814
    $P2814()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2813"  :anon :subid("241_1303739782.662") :outer("234_1303739782.662")
.annotate 'line', 1885
    nqp_get_sc_object $P2815, "1303739774.211", 4
    .local pmc type_obj
    set type_obj, $P2815
    get_how $P2816, type_obj
    get_hll_global $P2817, "NQPAttribute"
    $P2818 = $P2817."new"("@!arguments" :named("name"))
    $P2816."add_attribute"(type_obj, $P2818)
    get_how $P2819, type_obj
    get_hll_global $P2820, "NQPAttribute"
    $P2821 = $P2820."new"("%!options" :named("name"))
    $P2819."add_attribute"(type_obj, $P2821)
    get_how $P2822, type_obj
    .const 'Sub' $P2823 = "235_1303739782.662" 
    $P2822."add_method"(type_obj, "init", $P2823)
    get_how $P2824, type_obj
    .const 'Sub' $P2825 = "236_1303739782.662" 
    $P2824."add_method"(type_obj, "arguments", $P2825)
    get_how $P2826, type_obj
    .const 'Sub' $P2827 = "237_1303739782.662" 
    $P2826."add_method"(type_obj, "options", $P2827)
    get_how $P2828, type_obj
    .const 'Sub' $P2829 = "238_1303739782.662" 
    $P2828."add_method"(type_obj, "add-argument", $P2829)
    get_how $P2830, type_obj
    .const 'Sub' $P2831 = "239_1303739782.662" 
    $P2830."add_method"(type_obj, "add-option", $P2831)
    get_how $P2832, type_obj
    nqp_get_sc_object $P2833, "1303739772.428", 5
    $P2832."set_default_parent"(type_obj, $P2833)
    get_how $P2834, type_obj
    $P2835 = $P2834."compose"(type_obj)
    .return ($P2835)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303739782.662") :outer("234_1303739782.662")
    .param pmc param_2740
.annotate 'line', 1889
    .lex "self", param_2740
.annotate 'line', 1890
    new $P2741, "ResizablePMCArray"
    find_lex $P2742, "self"
    find_lex $P2743, "$?CLASS"
    setattribute $P2742, $P2743, "@!arguments", $P2741
.annotate 'line', 1891
    new $P2744, "Hash"
    find_lex $P2745, "self"
    find_lex $P2746, "$?CLASS"
    setattribute $P2745, $P2746, "%!options", $P2744
.annotate 'line', 1889
    .return ($P2744)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303739782.662") :outer("234_1303739782.662")
    .param pmc param_2748
.annotate 'line', 1894
    .lex "self", param_2748
    find_lex $P2749, "self"
    find_lex $P2750, "$?CLASS"
    getattribute $P2751, $P2749, $P2750, "@!arguments"
    unless_null $P2751, vivify_1027
    $P2751 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    .return ($P2751)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303739782.662") :outer("234_1303739782.662")
    .param pmc param_2753
.annotate 'line', 1895
    .lex "self", param_2753
    find_lex $P2754, "self"
    find_lex $P2755, "$?CLASS"
    getattribute $P2756, $P2754, $P2755, "%!options"
    unless_null $P2756, vivify_1028
    $P2756 = root_new ['parrot';'Hash']
  vivify_1028:
    .return ($P2756)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303739782.662") :outer("234_1303739782.662")
    .param pmc param_2758
    .param pmc param_2759
.annotate 'line', 1897
    .lex "self", param_2758
    .lex "$x", param_2759
.annotate 'line', 1898
    find_lex $P2760, "self"
    find_lex $P2761, "$?CLASS"
    getattribute $P2762, $P2760, $P2761, "@!arguments"
    unless_null $P2762, vivify_1029
    $P2762 = root_new ['parrot';'ResizablePMCArray']
  vivify_1029:
    find_lex $P2763, "$x"
    unless_null $P2763, vivify_1030
    new $P2763, "Undef"
  vivify_1030:
    push $P2762, $P2763
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303739782.662") :outer("234_1303739782.662")
    .param pmc param_2765
    .param pmc param_2766
    .param pmc param_2767
.annotate 'line', 1901
    .const 'Sub' $P2776 = "240_1303739782.662" 
    capture_lex $P2776
    .lex "self", param_2765
    .lex "$name", param_2766
    .lex "$value", param_2767
.annotate 'line', 1904
    find_lex $P2773, "$name"
    unless_null $P2773, vivify_1031
    new $P2773, "Undef"
  vivify_1031:
    find_lex $P2770, "self"
    find_lex $P2771, "$?CLASS"
    getattribute $P2772, $P2770, $P2771, "%!options"
    unless_null $P2772, vivify_1032
    $P2772 = root_new ['parrot';'Hash']
  vivify_1032:
    exists $I2774, $P2772[$P2773]
    if $I2774, if_2769
.annotate 'line', 1913
    find_lex $P2807, "$value"
    unless_null $P2807, vivify_1033
    new $P2807, "Undef"
  vivify_1033:
    find_lex $P2808, "$name"
    unless_null $P2808, vivify_1034
    new $P2808, "Undef"
  vivify_1034:
    find_lex $P2809, "self"
    find_lex $P2810, "$?CLASS"
    getattribute $P2811, $P2809, $P2810, "%!options"
    unless_null $P2811, vivify_1035
    $P2811 = root_new ['parrot';'Hash']
    setattribute $P2809, $P2810, "%!options", $P2811
  vivify_1035:
    set $P2811[$P2808], $P2807
.annotate 'line', 1912
    set $P2768, $P2807
.annotate 'line', 1904
    goto if_2769_end
  if_2769:
    .const 'Sub' $P2776 = "240_1303739782.662" 
    capture_lex $P2776
    $P2806 = $P2776()
    set $P2768, $P2806
  if_2769_end:
.annotate 'line', 1901
    .return ($P2768)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2775"  :anon :subid("240_1303739782.662") :outer("239_1303739782.662")
.annotate 'line', 1905
    new $P2777, "Undef"
    .lex "$t", $P2777
    find_lex $P2778, "self"
    find_lex $P2779, "$?CLASS"
    getattribute $P2780, $P2778, $P2779, "%!options"
    unless_null $P2780, vivify_1036
    $P2780 = root_new ['parrot';'Hash']
  vivify_1036:
    typeof $S2781, $P2780
    new $P2782, 'String'
    set $P2782, $S2781
    store_lex "$t", $P2782
.annotate 'line', 1906
    find_lex $P2783, "$t"
    unless_null $P2783, vivify_1037
    new $P2783, "Undef"
  vivify_1037:
    "say"($P2783)
.annotate 'line', 1907
    find_lex $P2786, "$t"
    unless_null $P2786, vivify_1038
    new $P2786, "Undef"
  vivify_1038:
    set $S2787, $P2786
    iseq $I2788, $S2787, "ResizablePMCArray"
    if $I2788, if_2785
.annotate 'line', 1910
    find_lex $P2795, "$name"
    unless_null $P2795, vivify_1039
    new $P2795, "Undef"
  vivify_1039:
    find_lex $P2796, "self"
    find_lex $P2797, "$?CLASS"
    getattribute $P2798, $P2796, $P2797, "%!options"
    unless_null $P2798, vivify_1040
    $P2798 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2799, $P2798[$P2795]
    unless_null $P2799, vivify_1041
    new $P2799, "Undef"
  vivify_1041:
    find_lex $P2800, "$name"
    unless_null $P2800, vivify_1042
    new $P2800, "Undef"
  vivify_1042:
    new $P2801, "ResizablePMCArray"
    push $P2801, $P2799
    push $P2801, $P2800
    find_lex $P2802, "$name"
    unless_null $P2802, vivify_1043
    new $P2802, "Undef"
  vivify_1043:
    find_lex $P2803, "self"
    find_lex $P2804, "$?CLASS"
    getattribute $P2805, $P2803, $P2804, "%!options"
    unless_null $P2805, vivify_1044
    $P2805 = root_new ['parrot';'Hash']
    setattribute $P2803, $P2804, "%!options", $P2805
  vivify_1044:
    set $P2805[$P2802], $P2801
.annotate 'line', 1909
    set $P2784, $P2801
.annotate 'line', 1907
    goto if_2785_end
  if_2785:
.annotate 'line', 1908
    find_lex $P2789, "$name"
    unless_null $P2789, vivify_1045
    new $P2789, "Undef"
  vivify_1045:
    find_lex $P2790, "self"
    find_lex $P2791, "$?CLASS"
    getattribute $P2792, $P2790, $P2791, "%!options"
    unless_null $P2792, vivify_1046
    $P2792 = root_new ['parrot';'Hash']
  vivify_1046:
    set $P2793, $P2792[$P2789]
    unless_null $P2793, vivify_1047
    new $P2793, "Undef"
  vivify_1047:
    find_lex $P2794, "$value"
    unless_null $P2794, vivify_1048
    new $P2794, "Undef"
  vivify_1048:
    push $P2793, $P2794
.annotate 'line', 1907
    set $P2784, $P2793
  if_2785_end:
.annotate 'line', 1904
    .return ($P2784)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2836"  :subid("242_1303739782.662") :outer("10_1303739782.662")
.annotate 'line', 1918
    .const 'Sub' $P3266 = "261_1303739782.662" 
    capture_lex $P3266
    .const 'Sub' $P2977 = "253_1303739782.662" 
    capture_lex $P2977
    .const 'Sub' $P2965 = "252_1303739782.662" 
    capture_lex $P2965
    .const 'Sub' $P2941 = "251_1303739782.662" 
    capture_lex $P2941
    .const 'Sub' $P2892 = "249_1303739782.662" 
    capture_lex $P2892
    .const 'Sub' $P2886 = "248_1303739782.662" 
    capture_lex $P2886
    .const 'Sub' $P2878 = "247_1303739782.662" 
    capture_lex $P2878
    .const 'Sub' $P2854 = "245_1303739782.662" 
    capture_lex $P2854
    .const 'Sub' $P2849 = "244_1303739782.662" 
    capture_lex $P2849
    .const 'Sub' $P2840 = "243_1303739782.662" 
    capture_lex $P2840
    .lex "$?PACKAGE", $P2838
    .lex "$?CLASS", $P2839
.annotate 'line', 1978
    .const 'Sub' $P2977 = "253_1303739782.662" 
    newclosure $P3264, $P2977
.annotate 'line', 1918
    .return ($P3264)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1049") :outer("242_1303739782.662")
.annotate 'line', 1918
    .const 'Sub' $P2837 = "242_1303739782.662" 
    .local pmc block
    set block, $P2837
    .const 'Sub' $P3266 = "261_1303739782.662" 
    capture_lex $P3266
    $P3266()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3265"  :anon :subid("261_1303739782.662") :outer("242_1303739782.662")
.annotate 'line', 1918
    nqp_get_sc_object $P3267, "1303739774.211", 5
    .local pmc type_obj
    set type_obj, $P3267
    get_how $P3268, type_obj
    get_hll_global $P3269, "NQPAttribute"
    $P3270 = $P3269."new"("@!specs" :named("name"))
    $P3268."add_attribute"(type_obj, $P3270)
    get_how $P3271, type_obj
    get_hll_global $P3272, "NQPAttribute"
    $P3273 = $P3272."new"("%!options" :named("name"))
    $P3271."add_attribute"(type_obj, $P3273)
    get_how $P3274, type_obj
    get_hll_global $P3275, "NQPAttribute"
    $P3276 = $P3275."new"("%!stopper" :named("name"))
    $P3274."add_attribute"(type_obj, $P3276)
    get_how $P3277, type_obj
    get_hll_global $P3278, "NQPAttribute"
    $P3279 = $P3278."new"("$!stop-after-first-arg" :named("name"))
    $P3277."add_attribute"(type_obj, $P3279)
    get_how $P3280, type_obj
    .const 'Sub' $P3281 = "243_1303739782.662" 
    $P3280."add_method"(type_obj, "new", $P3281)
    get_how $P3282, type_obj
    .const 'Sub' $P3283 = "244_1303739782.662" 
    $P3282."add_method"(type_obj, "stop-after-first-arg", $P3283)
    get_how $P3284, type_obj
    .const 'Sub' $P3285 = "245_1303739782.662" 
    $P3284."add_method"(type_obj, "BUILD", $P3285)
    get_how $P3286, type_obj
    .const 'Sub' $P3287 = "247_1303739782.662" 
    $P3286."add_method"(type_obj, "add-stopper", $P3287)
    get_how $P3288, type_obj
    .const 'Sub' $P3289 = "248_1303739782.662" 
    $P3288."add_method"(type_obj, "split-option-aliases", $P3289)
    get_how $P3290, type_obj
    .const 'Sub' $P3291 = "249_1303739782.662" 
    $P3290."add_method"(type_obj, "add-spec", $P3291)
    get_how $P3292, type_obj
    .const 'Sub' $P3293 = "251_1303739782.662" 
    $P3292."add_method"(type_obj, "is-option", $P3293)
    get_how $P3294, type_obj
    .const 'Sub' $P3295 = "252_1303739782.662" 
    $P3294."add_method"(type_obj, "wants-value", $P3295)
    get_how $P3296, type_obj
    .const 'Sub' $P3297 = "253_1303739782.662" 
    $P3296."add_method"(type_obj, "parse", $P3297)
    get_how $P3298, type_obj
    nqp_get_sc_object $P3299, "1303739772.428", 5
    $P3298."set_default_parent"(type_obj, $P3299)
    get_how $P3300, type_obj
    $P3301 = $P3300."compose"(type_obj)
    .return ($P3301)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2841
    .param pmc param_2842
.annotate 'line', 1924
    .lex "self", param_2841
    .lex "@specs", param_2842
.annotate 'line', 1925
    new $P2843, "Undef"
    .lex "$obj", $P2843
    find_lex $P2844, "self"
    $P2845 = $P2844."CREATE"()
    store_lex "$obj", $P2845
.annotate 'line', 1926
    find_lex $P2846, "$obj"
    unless_null $P2846, vivify_1050
    new $P2846, "Undef"
  vivify_1050:
    find_lex $P2847, "@specs"
    unless_null $P2847, vivify_1051
    $P2847 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    $P2846."BUILD"($P2847 :named("specs"))
    find_lex $P2848, "$obj"
    unless_null $P2848, vivify_1052
    new $P2848, "Undef"
  vivify_1052:
.annotate 'line', 1924
    .return ($P2848)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2850
.annotate 'line', 1930
    .lex "self", param_2850
.annotate 'line', 1931
    new $P2851, "Integer"
    assign $P2851, 1
    find_lex $P2852, "self"
    find_lex $P2853, "$?CLASS"
    setattribute $P2852, $P2853, "$!stop-after-first-arg", $P2851
.annotate 'line', 1930
    .return ($P2851)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2855
    .param pmc param_2856 :optional :named("specs")
    .param int has_param_2856 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2870 = "246_1303739782.662" 
    capture_lex $P2870
    .lex "self", param_2855
    if has_param_2856, optparam_1053
    $P2857 = root_new ['parrot';'ResizablePMCArray']
    set param_2856, $P2857
  optparam_1053:
    .lex "@specs", param_2856
.annotate 'line', 1935
    new $P2858, "Integer"
    assign $P2858, 1
    find_lex $P2859, "self"
    find_lex $P2860, "$?CLASS"
    getattribute $P2861, $P2859, $P2860, "%!stopper"
    unless_null $P2861, vivify_1054
    $P2861 = root_new ['parrot';'Hash']
    setattribute $P2859, $P2860, "%!stopper", $P2861
  vivify_1054:
    set $P2861["--"], $P2858
.annotate 'line', 1936
    new $P2862, "Integer"
    assign $P2862, 0
    find_lex $P2863, "self"
    find_lex $P2864, "$?CLASS"
    setattribute $P2863, $P2864, "$!stop-after-first-arg", $P2862
.annotate 'line', 1937
    find_lex $P2866, "@specs"
    unless_null $P2866, vivify_1055
    $P2866 = root_new ['parrot';'ResizablePMCArray']
  vivify_1055:
    defined $I2867, $P2866
    unless $I2867, for_undef_1056
    iter $P2865, $P2866
    new $P2876, 'ExceptionHandler'
    set_label $P2876, loop2875_handler
    $P2876."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2876
  loop2875_test:
    unless $P2865, loop2875_done
    shift $P2868, $P2865
  loop2875_redo:
    .const 'Sub' $P2870 = "246_1303739782.662" 
    capture_lex $P2870
    $P2870($P2868)
  loop2875_next:
    goto loop2875_test
  loop2875_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2877, exception, 'type'
    eq $P2877, .CONTROL_LOOP_NEXT, loop2875_next
    eq $P2877, .CONTROL_LOOP_REDO, loop2875_redo
  loop2875_done:
    pop_eh 
  for_undef_1056:
.annotate 'line', 1934
    .return ($P2865)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2869"  :anon :subid("246_1303739782.662") :outer("245_1303739782.662")
    .param pmc param_2871
.annotate 'line', 1937
    .lex "$_", param_2871
.annotate 'line', 1938
    find_lex $P2872, "self"
    find_lex $P2873, "$_"
    unless_null $P2873, vivify_1057
    new $P2873, "Undef"
  vivify_1057:
    $P2874 = $P2872."add-spec"($P2873)
.annotate 'line', 1937
    .return ($P2874)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2879
    .param pmc param_2880
.annotate 'line', 1941
    .lex "self", param_2879
    .lex "$x", param_2880
.annotate 'line', 1942
    new $P2881, "Integer"
    assign $P2881, 1
    find_lex $P2882, "$x"
    unless_null $P2882, vivify_1058
    new $P2882, "Undef"
  vivify_1058:
    find_lex $P2883, "self"
    find_lex $P2884, "$?CLASS"
    getattribute $P2885, $P2883, $P2884, "%!stopper"
    unless_null $P2885, vivify_1059
    $P2885 = root_new ['parrot';'Hash']
    setattribute $P2883, $P2884, "%!stopper", $P2885
  vivify_1059:
    set $P2885[$P2882], $P2881
.annotate 'line', 1941
    .return ($P2881)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2887
    .param pmc param_2888
.annotate 'line', 1945
    .lex "self", param_2887
    .lex "$s", param_2888
.annotate 'line', 1946
    find_lex $P2889, "$s"
    unless_null $P2889, vivify_1060
    new $P2889, "Undef"
  vivify_1060:
    set $S2890, $P2889
    split $P2891, "|", $S2890
.annotate 'line', 1945
    .return ($P2891)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2893
    .param pmc param_2894
.annotate 'line', 1950
    .const 'Sub' $P2931 = "250_1303739782.662" 
    capture_lex $P2931
    .lex "self", param_2893
    .lex "$s", param_2894
.annotate 'line', 1951
    new $P2895, "Undef"
    .lex "$i", $P2895
.annotate 'line', 1952
    new $P2896, "Undef"
    .lex "$type", $P2896
.annotate 'line', 1953
    $P2897 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2897
.annotate 'line', 1951
    find_lex $P2898, "$s"
    unless_null $P2898, vivify_1061
    new $P2898, "Undef"
  vivify_1061:
    set $S2899, $P2898
    index $I2900, $S2899, "="
    new $P2901, 'Integer'
    set $P2901, $I2900
    store_lex "$i", $P2901
    find_lex $P2902, "$type"
    unless_null $P2902, vivify_1062
    new $P2902, "Undef"
  vivify_1062:
    find_lex $P2903, "@options"
    unless_null $P2903, vivify_1063
    $P2903 = root_new ['parrot';'ResizablePMCArray']
  vivify_1063:
.annotate 'line', 1954
    find_lex $P2905, "$i"
    unless_null $P2905, vivify_1064
    new $P2905, "Undef"
  vivify_1064:
    set $N2906, $P2905
    islt $I2907, $N2906, 0.0
    if $I2907, if_2904
.annotate 'line', 1958
    find_lex $P2912, "$s"
    unless_null $P2912, vivify_1065
    new $P2912, "Undef"
  vivify_1065:
    set $S2913, $P2912
    find_lex $P2914, "$i"
    unless_null $P2914, vivify_1066
    new $P2914, "Undef"
  vivify_1066:
    add $P2915, $P2914, 1
    set $I2916, $P2915
    substr $S2917, $S2913, $I2916
    new $P2918, 'String'
    set $P2918, $S2917
    store_lex "$type", $P2918
.annotate 'line', 1959
    find_lex $P2919, "self"
    find_lex $P2920, "$s"
    unless_null $P2920, vivify_1067
    new $P2920, "Undef"
  vivify_1067:
    set $S2921, $P2920
    find_lex $P2922, "$i"
    unless_null $P2922, vivify_1068
    new $P2922, "Undef"
  vivify_1068:
    set $I2923, $P2922
    substr $S2924, $S2921, 0, $I2923
    $P2925 = $P2919."split-option-aliases"($S2924)
    store_lex "@options", $P2925
.annotate 'line', 1957
    goto if_2904_end
  if_2904:
.annotate 'line', 1955
    new $P2908, "String"
    assign $P2908, "b"
    store_lex "$type", $P2908
.annotate 'line', 1956
    find_lex $P2909, "self"
    find_lex $P2910, "$s"
    unless_null $P2910, vivify_1069
    new $P2910, "Undef"
  vivify_1069:
    $P2911 = $P2909."split-option-aliases"($P2910)
    store_lex "@options", $P2911
  if_2904_end:
.annotate 'line', 1961
    find_lex $P2927, "@options"
    unless_null $P2927, vivify_1070
    $P2927 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    defined $I2928, $P2927
    unless $I2928, for_undef_1071
    iter $P2926, $P2927
    new $P2939, 'ExceptionHandler'
    set_label $P2939, loop2938_handler
    $P2939."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2939
  loop2938_test:
    unless $P2926, loop2938_done
    shift $P2929, $P2926
  loop2938_redo:
    .const 'Sub' $P2931 = "250_1303739782.662" 
    capture_lex $P2931
    $P2931($P2929)
  loop2938_next:
    goto loop2938_test
  loop2938_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2940, exception, 'type'
    eq $P2940, .CONTROL_LOOP_NEXT, loop2938_next
    eq $P2940, .CONTROL_LOOP_REDO, loop2938_redo
  loop2938_done:
    pop_eh 
  for_undef_1071:
.annotate 'line', 1950
    .return ($P2926)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2930"  :anon :subid("250_1303739782.662") :outer("249_1303739782.662")
    .param pmc param_2932
.annotate 'line', 1961
    .lex "$_", param_2932
.annotate 'line', 1962
    find_lex $P2933, "$type"
    unless_null $P2933, vivify_1072
    new $P2933, "Undef"
  vivify_1072:
    find_lex $P2934, "$_"
    unless_null $P2934, vivify_1073
    new $P2934, "Undef"
  vivify_1073:
    find_lex $P2935, "self"
    find_lex $P2936, "$?CLASS"
    getattribute $P2937, $P2935, $P2936, "%!options"
    unless_null $P2937, vivify_1074
    $P2937 = root_new ['parrot';'Hash']
    setattribute $P2935, $P2936, "%!options", $P2937
  vivify_1074:
    set $P2937[$P2934], $P2933
.annotate 'line', 1961
    .return ($P2933)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2944
    .param pmc param_2945
.annotate 'line', 1967
    new $P2943, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2943, control_2942
    push_eh $P2943
    .lex "self", param_2944
    .lex "$x", param_2945
.annotate 'line', 1968
    find_lex $P2949, "$x"
    unless_null $P2949, vivify_1075
    new $P2949, "Undef"
  vivify_1075:
    set $S2950, $P2949
    iseq $I2951, $S2950, "-"
    unless $I2951, unless_2948
    new $P2947, 'Integer'
    set $P2947, $I2951
    goto unless_2948_end
  unless_2948:
    find_lex $P2952, "$x"
    unless_null $P2952, vivify_1076
    new $P2952, "Undef"
  vivify_1076:
    set $S2953, $P2952
    iseq $I2954, $S2953, "--"
    new $P2947, 'Integer'
    set $P2947, $I2954
  unless_2948_end:
    unless $P2947, if_2946_end
    new $P2955, "Exception"
    set $P2955['type'], .CONTROL_RETURN
    new $P2956, "Integer"
    assign $P2956, 0
    setattribute $P2955, 'payload', $P2956
    throw $P2955
  if_2946_end:
.annotate 'line', 1969
    find_lex $P2958, "$x"
    unless_null $P2958, vivify_1077
    new $P2958, "Undef"
  vivify_1077:
    set $S2959, $P2958
    substr $S2960, $S2959, 0, 1
    iseq $I2961, $S2960, "-"
    unless $I2961, if_2957_end
    new $P2962, "Exception"
    set $P2962['type'], .CONTROL_RETURN
    new $P2963, "Integer"
    assign $P2963, 1
    setattribute $P2962, 'payload', $P2963
    throw $P2962
  if_2957_end:
.annotate 'line', 1967
    .return (0)
  control_2942:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2964, exception, "payload"
    .return ($P2964)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2966
    .param pmc param_2967
.annotate 'line', 1973
    .lex "self", param_2966
    .lex "$x", param_2967
.annotate 'line', 1974
    new $P2968, "Undef"
    .lex "$spec", $P2968
    find_lex $P2969, "$x"
    unless_null $P2969, vivify_1078
    new $P2969, "Undef"
  vivify_1078:
    find_lex $P2970, "self"
    find_lex $P2971, "$?CLASS"
    getattribute $P2972, $P2970, $P2971, "%!options"
    unless_null $P2972, vivify_1079
    $P2972 = root_new ['parrot';'Hash']
  vivify_1079:
    set $P2973, $P2972[$P2969]
    unless_null $P2973, vivify_1080
    new $P2973, "Undef"
  vivify_1080:
    store_lex "$spec", $P2973
.annotate 'line', 1975
    find_lex $P2974, "$spec"
    unless_null $P2974, vivify_1081
    new $P2974, "Undef"
  vivify_1081:
    set $S2975, $P2974
    iseq $I2976, $S2975, "s"
.annotate 'line', 1973
    .return ($I2976)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303739782.662") :outer("242_1303739782.662")
    .param pmc param_2980
    .param pmc param_2981
.annotate 'line', 1978
    .const 'Sub' $P3072 = "256_1303739782.662" 
    capture_lex $P3072
    .const 'Sub' $P3034 = "255_1303739782.662" 
    capture_lex $P3034
    .const 'Sub' $P2985 = "254_1303739782.662" 
    capture_lex $P2985
    new $P2979, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2979, control_2978
    push_eh $P2979
    .lex "self", param_2980
    .lex "@args", param_2981
.annotate 'line', 1979
    new $P2982, "Undef"
    .lex "$i", $P2982
.annotate 'line', 1980
    new $P2983, "Undef"
    .lex "$arg-count", $P2983
.annotate 'line', 1982
    new $P2984, "Undef"
    .lex "$result", $P2984
.annotate 'line', 1986
    .const 'Sub' $P2985 = "254_1303739782.662" 
    newclosure $P3033, $P2985
    .lex "get-value", $P3033
.annotate 'line', 2001
    .const 'Sub' $P3034 = "255_1303739782.662" 
    newclosure $P3052, $P3034
    .lex "slurp-rest", $P3052
.annotate 'line', 1979
    new $P3053, "Integer"
    assign $P3053, 0
    store_lex "$i", $P3053
.annotate 'line', 1980
    find_lex $P3054, "@args"
    unless_null $P3054, vivify_1107
    $P3054 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $N3055, $P3054
    new $P3056, 'Float'
    set $P3056, $N3055
    store_lex "$arg-count", $P3056
.annotate 'line', 1982
    get_hll_global $P3057, "GLOBAL"
    nqp_get_package_through_who $P3058, $P3057, "HLL"
    nqp_get_package_through_who $P3059, $P3058, "CommandLine"
    get_who $P3060, $P3059
    set $P3061, $P3060["Result"]
    $P3062 = $P3061."new"()
    store_lex "$result", $P3062
.annotate 'line', 1983
    find_lex $P3063, "$result"
    unless_null $P3063, vivify_1108
    new $P3063, "Undef"
  vivify_1108:
    $P3063."init"()
    find_lex $P3064, "get-value"
    find_lex $P3065, "slurp-rest"
.annotate 'line', 2009
    new $P3259, 'ExceptionHandler'
    set_label $P3259, loop3258_handler
    $P3259."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3259
  loop3258_test:
    find_lex $P3066, "$i"
    unless_null $P3066, vivify_1109
    new $P3066, "Undef"
  vivify_1109:
    set $N3067, $P3066
    find_lex $P3068, "$arg-count"
    unless_null $P3068, vivify_1110
    new $P3068, "Undef"
  vivify_1110:
    set $N3069, $P3068
    islt $I3070, $N3067, $N3069
    unless $I3070, loop3258_done
  loop3258_redo:
    .const 'Sub' $P3072 = "256_1303739782.662" 
    capture_lex $P3072
    $P3072()
  loop3258_next:
    goto loop3258_test
  loop3258_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3260, exception, 'type'
    eq $P3260, .CONTROL_LOOP_NEXT, loop3258_next
    eq $P3260, .CONTROL_LOOP_REDO, loop3258_redo
  loop3258_done:
    pop_eh 
.annotate 'line', 2061
    new $P3261, "Exception"
    set $P3261['type'], .CONTROL_RETURN
    find_lex $P3262, "$result"
    unless_null $P3262, vivify_1171
    new $P3262, "Undef"
  vivify_1171:
    setattribute $P3261, 'payload', $P3262
    throw $P3261
.annotate 'line', 1978
    .return ()
  control_2978:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3263, exception, "payload"
    .return ($P3263)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303739782.662") :outer("253_1303739782.662")
    .param pmc param_2986
.annotate 'line', 1986
    .lex "$opt", param_2986
.annotate 'line', 1987
    find_lex $P2989, "$i"
    unless_null $P2989, vivify_1082
    new $P2989, "Undef"
  vivify_1082:
    set $N2990, $P2989
    find_lex $P2991, "$arg-count"
    unless_null $P2991, vivify_1083
    new $P2991, "Undef"
  vivify_1083:
    sub $P2992, $P2991, 1
    set $N2993, $P2992
    iseq $I2994, $N2990, $N2993
    if $I2994, if_2988
.annotate 'line', 1989
    find_lex $P3001, "self"
    find_lex $P3002, "$i"
    unless_null $P3002, vivify_1084
    new $P3002, "Undef"
  vivify_1084:
    add $P3003, $P3002, 1
    set $I3004, $P3003
    find_lex $P3005, "@args"
    unless_null $P3005, vivify_1085
    $P3005 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P3006, $P3005[$I3004]
    unless_null $P3006, vivify_1086
    new $P3006, "Undef"
  vivify_1086:
    $P3007 = $P3001."is-option"($P3006)
    if $P3007, if_3000
.annotate 'line', 1991
    find_lex $P3014, "$i"
    unless_null $P3014, vivify_1087
    new $P3014, "Undef"
  vivify_1087:
    add $P3015, $P3014, 1
    set $I3016, $P3015
    find_lex $P3017, "@args"
    unless_null $P3017, vivify_1088
    $P3017 = root_new ['parrot';'ResizablePMCArray']
  vivify_1088:
    set $P3018, $P3017[$I3016]
    unless_null $P3018, vivify_1089
    new $P3018, "Undef"
  vivify_1089:
    find_lex $P3019, "self"
    find_lex $P3020, "$?CLASS"
    getattribute $P3021, $P3019, $P3020, "%!stopper"
    unless_null $P3021, vivify_1090
    $P3021 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P3022, $P3021[$P3018]
    unless_null $P3022, vivify_1091
    new $P3022, "Undef"
  vivify_1091:
    if $P3022, if_3013
.annotate 'line', 1993
    find_lex $P3027, "$i"
    unless_null $P3027, vivify_1092
    new $P3027, "Undef"
  vivify_1092:
    clone $P3028, $P3027
    inc $P3027
    find_lex $P3029, "$i"
    unless_null $P3029, vivify_1093
    new $P3029, "Undef"
  vivify_1093:
    set $I3030, $P3029
    find_lex $P3031, "@args"
    unless_null $P3031, vivify_1094
    $P3031 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P3032, $P3031[$I3030]
    unless_null $P3032, vivify_1095
    new $P3032, "Undef"
  vivify_1095:
    set $P3012, $P3032
.annotate 'line', 1991
    goto if_3013_end
  if_3013:
.annotate 'line', 1992
    new $P3023, 'String'
    set $P3023, "Option "
    find_lex $P3024, "$opt"
    unless_null $P3024, vivify_1096
    new $P3024, "Undef"
  vivify_1096:
    concat $P3025, $P3023, $P3024
    concat $P3026, $P3025, " needs a value, but is followed by a stopper"
    die $P3026
  if_3013_end:
.annotate 'line', 1991
    set $P2999, $P3012
.annotate 'line', 1989
    goto if_3000_end
  if_3000:
.annotate 'line', 1990
    new $P3008, 'String'
    set $P3008, "Option "
    find_lex $P3009, "$opt"
    unless_null $P3009, vivify_1097
    new $P3009, "Undef"
  vivify_1097:
    concat $P3010, $P3008, $P3009
    concat $P3011, $P3010, " needs a value, but is followed by an option"
    die $P3011
  if_3000_end:
.annotate 'line', 1989
    set $P2987, $P2999
.annotate 'line', 1987
    goto if_2988_end
  if_2988:
.annotate 'line', 1988
    new $P2995, 'String'
    set $P2995, "Option "
    find_lex $P2996, "$opt"
    unless_null $P2996, vivify_1098
    new $P2996, "Undef"
  vivify_1098:
    concat $P2997, $P2995, $P2996
    concat $P2998, $P2997, " needs a value"
    die $P2998
  if_2988_end:
.annotate 'line', 1986
    .return ($P2987)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303739782.662") :outer("253_1303739782.662")
.annotate 'line', 2001
    find_lex $P3035, "$i"
    unless_null $P3035, vivify_1099
    new $P3035, "Undef"
  vivify_1099:
    clone $P3036, $P3035
    inc $P3035
.annotate 'line', 2003
    new $P3050, 'ExceptionHandler'
    set_label $P3050, loop3049_handler
    $P3050."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3050
  loop3049_test:
    find_lex $P3037, "$i"
    unless_null $P3037, vivify_1100
    new $P3037, "Undef"
  vivify_1100:
    set $N3038, $P3037
    find_lex $P3039, "$arg-count"
    unless_null $P3039, vivify_1101
    new $P3039, "Undef"
  vivify_1101:
    set $N3040, $P3039
    islt $I3041, $N3038, $N3040
    unless $I3041, loop3049_done
  loop3049_redo:
.annotate 'line', 2004
    find_lex $P3042, "$result"
    unless_null $P3042, vivify_1102
    new $P3042, "Undef"
  vivify_1102:
    find_lex $P3043, "$i"
    unless_null $P3043, vivify_1103
    new $P3043, "Undef"
  vivify_1103:
    set $I3044, $P3043
    find_lex $P3045, "@args"
    unless_null $P3045, vivify_1104
    $P3045 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $P3046, $P3045[$I3044]
    unless_null $P3046, vivify_1105
    new $P3046, "Undef"
  vivify_1105:
    $P3042."add-argument"($P3046)
    find_lex $P3047, "$i"
    unless_null $P3047, vivify_1106
    new $P3047, "Undef"
  vivify_1106:
    clone $P3048, $P3047
    inc $P3047
  loop3049_next:
.annotate 'line', 2003
    goto loop3049_test
  loop3049_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3051, exception, 'type'
    eq $P3051, .CONTROL_LOOP_NEXT, loop3049_next
    eq $P3051, .CONTROL_LOOP_REDO, loop3049_redo
  loop3049_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I3041)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3071"  :anon :subid("256_1303739782.662") :outer("253_1303739782.662")
.annotate 'line', 2009
    .const 'Sub' $P3174 = "258_1303739782.662" 
    capture_lex $P3174
    .const 'Sub' $P3088 = "257_1303739782.662" 
    capture_lex $P3088
.annotate 'line', 2010
    new $P3073, "Undef"
    .lex "$cur", $P3073
    find_lex $P3074, "$i"
    unless_null $P3074, vivify_1111
    new $P3074, "Undef"
  vivify_1111:
    set $I3075, $P3074
    find_lex $P3076, "@args"
    unless_null $P3076, vivify_1112
    $P3076 = root_new ['parrot';'ResizablePMCArray']
  vivify_1112:
    set $P3077, $P3076[$I3075]
    unless_null $P3077, vivify_1113
    new $P3077, "Undef"
  vivify_1113:
    store_lex "$cur", $P3077
.annotate 'line', 2011
    find_lex $P3079, "self"
    find_lex $P3080, "$cur"
    unless_null $P3080, vivify_1114
    new $P3080, "Undef"
  vivify_1114:
    $P3081 = $P3079."is-option"($P3080)
    if $P3081, if_3078
.annotate 'line', 2053
    find_lex $P3245, "$cur"
    unless_null $P3245, vivify_1115
    new $P3245, "Undef"
  vivify_1115:
    find_lex $P3246, "self"
    find_lex $P3247, "$?CLASS"
    getattribute $P3248, $P3246, $P3247, "%!stopper"
    unless_null $P3248, vivify_1116
    $P3248 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P3249, $P3248[$P3245]
    unless_null $P3249, vivify_1117
    new $P3249, "Undef"
  vivify_1117:
    if $P3249, if_3244
.annotate 'line', 2056
    find_lex $P3250, "$result"
    unless_null $P3250, vivify_1118
    new $P3250, "Undef"
  vivify_1118:
    find_lex $P3251, "$cur"
    unless_null $P3251, vivify_1119
    new $P3251, "Undef"
  vivify_1119:
    $P3250."add-argument"($P3251)
.annotate 'line', 2057
    find_lex $P3253, "self"
    find_lex $P3254, "$?CLASS"
    getattribute $P3255, $P3253, $P3254, "$!stop-after-first-arg"
    unless_null $P3255, vivify_1120
    new $P3255, "Undef"
  vivify_1120:
    unless $P3255, if_3252_end
    "slurp-rest"()
  if_3252_end:
.annotate 'line', 2055
    goto if_3244_end
  if_3244:
.annotate 'line', 2054
    "slurp-rest"()
  if_3244_end:
.annotate 'line', 2053
    goto if_3078_end
  if_3078:
.annotate 'line', 2012
    find_lex $P3083, "$cur"
    unless_null $P3083, vivify_1121
    new $P3083, "Undef"
  vivify_1121:
    set $S3084, $P3083
    substr $S3085, $S3084, 0, 2
    iseq $I3086, $S3085, "--"
    if $I3086, if_3082
.annotate 'line', 2031
    .const 'Sub' $P3174 = "258_1303739782.662" 
    capture_lex $P3174
    $P3174()
    goto if_3082_end
  if_3082:
.annotate 'line', 2012
    .const 'Sub' $P3088 = "257_1303739782.662" 
    capture_lex $P3088
    $P3088()
  if_3082_end:
  if_3078_end:
.annotate 'line', 2011
    find_lex $P3256, "$i"
    unless_null $P3256, vivify_1170
    new $P3256, "Undef"
  vivify_1170:
    clone $P3257, $P3256
    inc $P3256
.annotate 'line', 2009
    .return ($P3257)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3173"  :anon :subid("258_1303739782.662") :outer("256_1303739782.662")
.annotate 'line', 2031
    .const 'Sub' $P3219 = "259_1303739782.662" 
    capture_lex $P3219
.annotate 'line', 2032
    new $P3175, "Undef"
    .lex "$opt", $P3175
    find_lex $P3176, "$cur"
    unless_null $P3176, vivify_1122
    new $P3176, "Undef"
  vivify_1122:
    set $S3177, $P3176
    substr $S3178, $S3177, 1
    new $P3179, 'String'
    set $P3179, $S3178
    store_lex "$opt", $P3179
.annotate 'line', 2033
    find_lex $P3182, "$opt"
    unless_null $P3182, vivify_1123
    new $P3182, "Undef"
  vivify_1123:
    set $S3183, $P3182
    length $I3184, $S3183
    set $N3185, $I3184
    iseq $I3186, $N3185, 1.0
    if $I3186, if_3181
.annotate 'line', 2043
    .const 'Sub' $P3219 = "259_1303739782.662" 
    capture_lex $P3219
    $P3243 = $P3219()
    set $P3180, $P3243
.annotate 'line', 2033
    goto if_3181_end
  if_3181:
.annotate 'line', 2035
    find_lex $P3188, "$opt"
    unless_null $P3188, vivify_1131
    new $P3188, "Undef"
  vivify_1131:
    find_lex $P3189, "self"
    find_lex $P3190, "$?CLASS"
    getattribute $P3191, $P3189, $P3190, "%!options"
    unless_null $P3191, vivify_1132
    $P3191 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P3192, $P3191[$P3188]
    unless_null $P3192, vivify_1133
    new $P3192, "Undef"
  vivify_1133:
    if $P3192, unless_3187_end
    new $P3193, 'String'
    set $P3193, "No such option -"
    find_lex $P3194, "$opt"
    unless_null $P3194, vivify_1134
    new $P3194, "Undef"
  vivify_1134:
    concat $P3195, $P3193, $P3194
    die $P3195
  unless_3187_end:
.annotate 'line', 2036
    find_lex $P3197, "self"
    find_lex $P3198, "$opt"
    unless_null $P3198, vivify_1135
    new $P3198, "Undef"
  vivify_1135:
    $P3199 = $P3197."wants-value"($P3198)
    if $P3199, if_3196
.annotate 'line', 2040
    find_lex $P3206, "$result"
    unless_null $P3206, vivify_1136
    new $P3206, "Undef"
  vivify_1136:
    find_lex $P3207, "$opt"
    unless_null $P3207, vivify_1137
    new $P3207, "Undef"
  vivify_1137:
    $P3206."add-option"($P3207, 1)
.annotate 'line', 2039
    goto if_3196_end
  if_3196:
.annotate 'line', 2037
    find_lex $P3200, "$result"
    unless_null $P3200, vivify_1138
    new $P3200, "Undef"
  vivify_1138:
    find_lex $P3201, "$opt"
    unless_null $P3201, vivify_1139
    new $P3201, "Undef"
  vivify_1139:
.annotate 'line', 2038
    new $P3202, 'String'
    set $P3202, "-"
    find_lex $P3203, "$opt"
    unless_null $P3203, vivify_1140
    new $P3203, "Undef"
  vivify_1140:
    concat $P3204, $P3202, $P3203
    $P3205 = "get-value"($P3204)
    $P3200."add-option"($P3201, $P3205)
  if_3196_end:
.annotate 'line', 2042
    new $P3210, 'String'
    set $P3210, "-"
    find_lex $P3211, "$opt"
    unless_null $P3211, vivify_1141
    new $P3211, "Undef"
  vivify_1141:
    concat $P3212, $P3210, $P3211
    find_lex $P3213, "self"
    find_lex $P3214, "$?CLASS"
    getattribute $P3215, $P3213, $P3214, "%!stopper"
    unless_null $P3215, vivify_1142
    $P3215 = root_new ['parrot';'Hash']
  vivify_1142:
    set $P3216, $P3215[$P3212]
    unless_null $P3216, vivify_1143
    new $P3216, "Undef"
  vivify_1143:
    if $P3216, if_3209
    set $P3208, $P3216
    goto if_3209_end
  if_3209:
    $P3217 = "slurp-rest"()
    set $P3208, $P3217
  if_3209_end:
.annotate 'line', 2033
    set $P3180, $P3208
  if_3181_end:
.annotate 'line', 2031
    .return ($P3180)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3218"  :anon :subid("259_1303739782.662") :outer("258_1303739782.662")
.annotate 'line', 2043
    .const 'Sub' $P3225 = "260_1303739782.662" 
    capture_lex $P3225
.annotate 'line', 2045
    new $P3220, "Undef"
    .lex "$iter", $P3220
    find_lex $P3221, "$opt"
    unless_null $P3221, vivify_1124
    new $P3221, "Undef"
  vivify_1124:
    iter $P3222, $P3221
    store_lex "$iter", $P3222
.annotate 'line', 2046
    new $P3241, 'ExceptionHandler'
    set_label $P3241, loop3240_handler
    $P3241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3241
  loop3240_test:
    find_lex $P3223, "$iter"
    unless_null $P3223, vivify_1125
    new $P3223, "Undef"
  vivify_1125:
    unless $P3223, loop3240_done
  loop3240_redo:
    .const 'Sub' $P3225 = "260_1303739782.662" 
    capture_lex $P3225
    $P3225()
  loop3240_next:
    goto loop3240_test
  loop3240_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3242, exception, 'type'
    eq $P3242, .CONTROL_LOOP_NEXT, loop3240_next
    eq $P3242, .CONTROL_LOOP_REDO, loop3240_redo
  loop3240_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P3223)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3224"  :anon :subid("260_1303739782.662") :outer("259_1303739782.662")
.annotate 'line', 2047
    new $P3226, "Undef"
    .lex "$o", $P3226
    find_lex $P3227, "$iter"
    unless_null $P3227, vivify_1126
    new $P3227, "Undef"
  vivify_1126:
    shift $P3228, $P3227
    store_lex "$o", $P3228
.annotate 'line', 2048
    find_lex $P3230, "self"
    find_lex $P3231, "$o"
    unless_null $P3231, vivify_1127
    new $P3231, "Undef"
  vivify_1127:
    $P3232 = $P3230."wants-value"($P3231)
    unless $P3232, if_3229_end
    new $P3233, 'String'
    set $P3233, "Option -"
    find_lex $P3234, "$o"
    unless_null $P3234, vivify_1128
    new $P3234, "Undef"
  vivify_1128:
    concat $P3235, $P3233, $P3234
    concat $P3236, $P3235, " requires a value and cannot be grouped"
    die $P3236
  if_3229_end:
.annotate 'line', 2049
    find_lex $P3237, "$result"
    unless_null $P3237, vivify_1129
    new $P3237, "Undef"
  vivify_1129:
    find_lex $P3238, "$o"
    unless_null $P3238, vivify_1130
    new $P3238, "Undef"
  vivify_1130:
    $P3239 = $P3237."add-option"($P3238, 1)
.annotate 'line', 2046
    .return ($P3239)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3087"  :anon :subid("257_1303739782.662") :outer("256_1303739782.662")
.annotate 'line', 2014
    new $P3089, "Undef"
    .lex "$opt", $P3089
.annotate 'line', 2015
    new $P3090, "Undef"
    .lex "$idx", $P3090
.annotate 'line', 2016
    new $P3091, "Undef"
    .lex "$value", $P3091
.annotate 'line', 2017
    new $P3092, "Undef"
    .lex "$has-value", $P3092
.annotate 'line', 2014
    find_lex $P3093, "$i"
    unless_null $P3093, vivify_1144
    new $P3093, "Undef"
  vivify_1144:
    set $I3094, $P3093
    find_lex $P3095, "@args"
    unless_null $P3095, vivify_1145
    $P3095 = root_new ['parrot';'ResizablePMCArray']
  vivify_1145:
    set $P3096, $P3095[$I3094]
    unless_null $P3096, vivify_1146
    new $P3096, "Undef"
  vivify_1146:
    set $S3097, $P3096
    substr $S3098, $S3097, 2
    new $P3099, 'String'
    set $P3099, $S3098
    store_lex "$opt", $P3099
.annotate 'line', 2015
    find_lex $P3100, "$opt"
    unless_null $P3100, vivify_1147
    new $P3100, "Undef"
  vivify_1147:
    set $S3101, $P3100
    index $I3102, $S3101, "="
    new $P3103, 'Integer'
    set $P3103, $I3102
    store_lex "$idx", $P3103
.annotate 'line', 2016
    new $P3104, "Integer"
    assign $P3104, 1
    store_lex "$value", $P3104
.annotate 'line', 2017
    new $P3105, "Integer"
    assign $P3105, 0
    store_lex "$has-value", $P3105
.annotate 'line', 2019
    find_lex $P3107, "$idx"
    unless_null $P3107, vivify_1148
    new $P3107, "Undef"
  vivify_1148:
    set $N3108, $P3107
    isge $I3109, $N3108, 0.0
    unless $I3109, if_3106_end
.annotate 'line', 2020
    find_lex $P3110, "$opt"
    unless_null $P3110, vivify_1149
    new $P3110, "Undef"
  vivify_1149:
    set $S3111, $P3110
    find_lex $P3112, "$idx"
    unless_null $P3112, vivify_1150
    new $P3112, "Undef"
  vivify_1150:
    add $P3113, $P3112, 1
    set $I3114, $P3113
    substr $S3115, $S3111, $I3114
    new $P3116, 'String'
    set $P3116, $S3115
    store_lex "$value", $P3116
.annotate 'line', 2021
    find_lex $P3117, "$opt"
    unless_null $P3117, vivify_1151
    new $P3117, "Undef"
  vivify_1151:
    set $S3118, $P3117
    find_lex $P3119, "$idx"
    unless_null $P3119, vivify_1152
    new $P3119, "Undef"
  vivify_1152:
    set $I3120, $P3119
    substr $S3121, $S3118, 0, $I3120
    new $P3122, 'String'
    set $P3122, $S3121
    store_lex "$opt", $P3122
.annotate 'line', 2022
    new $P3123, "Integer"
    assign $P3123, 1
    store_lex "$has-value", $P3123
  if_3106_end:
.annotate 'line', 2024
    find_lex $P3128, "$opt"
    unless_null $P3128, vivify_1153
    new $P3128, "Undef"
  vivify_1153:
    find_lex $P3125, "self"
    find_lex $P3126, "$?CLASS"
    getattribute $P3127, $P3125, $P3126, "%!options"
    unless_null $P3127, vivify_1154
    $P3127 = root_new ['parrot';'Hash']
  vivify_1154:
    exists $I3129, $P3127[$P3128]
    if $I3129, unless_3124_end
    new $P3130, 'String'
    set $P3130, "Illegal option --"
    find_lex $P3131, "$opt"
    unless_null $P3131, vivify_1155
    new $P3131, "Undef"
  vivify_1155:
    concat $P3132, $P3130, $P3131
    die $P3132
  unless_3124_end:
.annotate 'line', 2025
    find_lex $P3136, "$opt"
    unless_null $P3136, vivify_1156
    new $P3136, "Undef"
  vivify_1156:
    find_lex $P3137, "self"
    find_lex $P3138, "$?CLASS"
    getattribute $P3139, $P3137, $P3138, "%!options"
    unless_null $P3139, vivify_1157
    $P3139 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P3140, $P3139[$P3136]
    unless_null $P3140, vivify_1158
    new $P3140, "Undef"
  vivify_1158:
    set $S3141, $P3140
    isne $I3142, $S3141, "s"
    if $I3142, if_3135
    new $P3134, 'Integer'
    set $P3134, $I3142
    goto if_3135_end
  if_3135:
    find_lex $P3143, "$has-value"
    unless_null $P3143, vivify_1159
    new $P3143, "Undef"
  vivify_1159:
    set $P3134, $P3143
  if_3135_end:
    unless $P3134, if_3133_end
    new $P3144, 'String'
    set $P3144, "Option --"
    find_lex $P3145, "$opt"
    unless_null $P3145, vivify_1160
    new $P3145, "Undef"
  vivify_1160:
    concat $P3146, $P3144, $P3145
    concat $P3147, $P3146, " does not allow a value"
    die $P3147
  if_3133_end:
.annotate 'line', 2026
    find_lex $P3151, "$has-value"
    unless_null $P3151, vivify_1161
    new $P3151, "Undef"
  vivify_1161:
    isfalse $I3152, $P3151
    if $I3152, if_3150
    new $P3149, 'Integer'
    set $P3149, $I3152
    goto if_3150_end
  if_3150:
    find_lex $P3153, "self"
    find_lex $P3154, "$opt"
    unless_null $P3154, vivify_1162
    new $P3154, "Undef"
  vivify_1162:
    $P3155 = $P3153."wants-value"($P3154)
    set $P3149, $P3155
  if_3150_end:
    unless $P3149, if_3148_end
.annotate 'line', 2027
    new $P3156, 'String'
    set $P3156, "--"
    find_lex $P3157, "$opt"
    unless_null $P3157, vivify_1163
    new $P3157, "Undef"
  vivify_1163:
    concat $P3158, $P3156, $P3157
    $P3159 = "get-value"($P3158)
    store_lex "$value", $P3159
  if_3148_end:
.annotate 'line', 2029
    find_lex $P3160, "$result"
    unless_null $P3160, vivify_1164
    new $P3160, "Undef"
  vivify_1164:
    find_lex $P3161, "$opt"
    unless_null $P3161, vivify_1165
    new $P3161, "Undef"
  vivify_1165:
    find_lex $P3162, "$value"
    unless_null $P3162, vivify_1166
    new $P3162, "Undef"
  vivify_1166:
    $P3160."add-option"($P3161, $P3162)
.annotate 'line', 2030
    new $P3165, 'String'
    set $P3165, "--"
    find_lex $P3166, "$opt"
    unless_null $P3166, vivify_1167
    new $P3166, "Undef"
  vivify_1167:
    concat $P3167, $P3165, $P3166
    find_lex $P3168, "self"
    find_lex $P3169, "$?CLASS"
    getattribute $P3170, $P3168, $P3169, "%!stopper"
    unless_null $P3170, vivify_1168
    $P3170 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P3171, $P3170[$P3167]
    unless_null $P3171, vivify_1169
    new $P3171, "Undef"
  vivify_1169:
    if $P3171, if_3164
    set $P3163, $P3171
    goto if_3164_end
  if_3164:
    find_lex $P3172, "slurp-rest"
    set $P3163, $P3172
  if_3164_end:
.annotate 'line', 2012
    .return ($P3163)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3302"  :subid("262_1303739782.662") :outer("10_1303739782.662")
.annotate 'line', 2096
    .const 'Sub' $P4101 = "292_1303739782.662" 
    capture_lex $P4101
    .const 'Sub' $P3987 = "290_1303739782.662" 
    capture_lex $P3987
    .const 'Sub' $P3982 = "289_1303739782.662" 
    capture_lex $P3982
    .const 'Sub' $P3959 = "288_1303739782.662" 
    capture_lex $P3959
    .const 'Sub' $P3926 = "287_1303739782.662" 
    capture_lex $P3926
    .const 'Sub' $P3920 = "286_1303739782.662" 
    capture_lex $P3920
    .const 'Sub' $P3839 = "285_1303739782.662" 
    capture_lex $P3839
    .const 'Sub' $P3803 = "284_1303739782.662" 
    capture_lex $P3803
    .const 'Sub' $P3740 = "283_1303739782.662" 
    capture_lex $P3740
    .const 'Sub' $P3633 = "280_1303739782.662" 
    capture_lex $P3633
    .const 'Sub' $P3587 = "279_1303739782.662" 
    capture_lex $P3587
    .const 'Sub' $P3516 = "277_1303739782.662" 
    capture_lex $P3516
    .const 'Sub' $P3478 = "276_1303739782.662" 
    capture_lex $P3478
    .const 'Sub' $P3464 = "275_1303739782.662" 
    capture_lex $P3464
    .const 'Sub' $P3439 = "274_1303739782.662" 
    capture_lex $P3439
    .const 'Sub' $P3425 = "273_1303739782.662" 
    capture_lex $P3425
    .const 'Sub' $P3407 = "272_1303739782.662" 
    capture_lex $P3407
    .const 'Sub' $P3387 = "271_1303739782.662" 
    capture_lex $P3387
    .const 'Sub' $P3373 = "270_1303739782.662" 
    capture_lex $P3373
    .const 'Sub' $P3355 = "269_1303739782.662" 
    capture_lex $P3355
    .const 'Sub' $P3346 = "268_1303739782.662" 
    capture_lex $P3346
    .const 'Sub' $P3314 = "264_1303739782.662" 
    capture_lex $P3314
    .const 'Sub' $P3305 = "263_1303739782.662" 
    capture_lex $P3305
    .lex "Event", $P3304
.annotate 'line', 2117
    .const 'Sub' $P3305 = "263_1303739782.662" 
    newclosure $P3309, $P3305
    .lex "addr", $P3309
.annotate 'line', 2216
    new $P3310, "Undef"
    .lex "$loader", $P3310
    .lex "$?PACKAGE", $P3311
    .lex "$?CLASS", $P3312
.annotate 'line', 2098
    .const 'Sub' $P3314 = "264_1303739782.662" 
    capture_lex $P3314
    $P3314()
    find_lex $P3345, "addr"
.annotate 'line', 2216
    get_hll_global $P3515, "ModuleLoader"
    store_lex "$loader", $P3515
.annotate 'line', 2436
    .const 'Sub' $P3987 = "290_1303739782.662" 
    newclosure $P4099, $P3987
.annotate 'line', 2096
    .return ($P4099)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1172") :outer("262_1303739782.662")
.annotate 'line', 2096
    .const 'Sub' $P3303 = "262_1303739782.662" 
    .local pmc block
    set block, $P3303
    .const 'Sub' $P4101 = "292_1303739782.662" 
    capture_lex $P4101
    $P4101()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block4100"  :anon :subid("292_1303739782.662") :outer("262_1303739782.662")
.annotate 'line', 2096
    nqp_get_sc_object $P4102, "1303739774.211", 6
    .local pmc type_obj
    set type_obj, $P4102
    get_how $P4103, type_obj
    get_hll_global $P4104, "NQPAttribute"
    $P4105 = $P4104."new"("$!sc" :named("name"))
    $P4103."add_attribute"(type_obj, $P4105)
    get_how $P4106, type_obj
    get_hll_global $P4107, "NQPAttribute"
    $P4108 = $P4107."new"("$!handle" :named("name"))
    $P4106."add_attribute"(type_obj, $P4108)
    get_how $P4109, type_obj
    get_hll_global $P4110, "NQPAttribute"
    $P4111 = $P4110."new"("%!addr_to_slot" :named("name"))
    $P4109."add_attribute"(type_obj, $P4111)
    get_how $P4112, type_obj
    get_hll_global $P4113, "NQPAttribute"
    $P4114 = $P4113."new"("@!event_stream" :named("name"))
    $P4112."add_attribute"(type_obj, $P4114)
    get_how $P4115, type_obj
    .const 'Sub' $P4116 = "268_1303739782.662" 
    $P4115."add_method"(type_obj, "new", $P4116)
    get_how $P4117, type_obj
    .const 'Sub' $P4118 = "269_1303739782.662" 
    $P4117."add_method"(type_obj, "BUILD", $P4118)
    get_how $P4119, type_obj
    .const 'Sub' $P4120 = "270_1303739782.662" 
    $P4119."add_method"(type_obj, "slot_for_object", $P4120)
    get_how $P4121, type_obj
    .const 'Sub' $P4122 = "271_1303739782.662" 
    $P4121."add_method"(type_obj, "get_slot_past_for_object", $P4122)
    get_how $P4123, type_obj
    .const 'Sub' $P4124 = "272_1303739782.662" 
    $P4123."add_method"(type_obj, "set_slot_past", $P4124)
    get_how $P4125, type_obj
    .const 'Sub' $P4126 = "273_1303739782.662" 
    $P4125."add_method"(type_obj, "set_cur_sc", $P4126)
    get_how $P4127, type_obj
    .const 'Sub' $P4128 = "274_1303739782.662" 
    $P4127."add_method"(type_obj, "add_object", $P4128)
    get_how $P4129, type_obj
    .const 'Sub' $P4130 = "275_1303739782.662" 
    $P4129."add_method"(type_obj, "add_event", $P4130)
    get_how $P4131, type_obj
    .const 'Sub' $P4132 = "276_1303739782.662" 
    $P4131."add_method"(type_obj, "get_object_sc_ref_past", $P4132)
    get_how $P4133, type_obj
    .const 'Sub' $P4134 = "277_1303739782.662" 
    $P4133."add_method"(type_obj, "load_setting", $P4134)
    get_how $P4135, type_obj
    .const 'Sub' $P4136 = "279_1303739782.662" 
    $P4135."add_method"(type_obj, "load_module", $P4136)
    get_how $P4137, type_obj
    .const 'Sub' $P4138 = "280_1303739782.662" 
    $P4137."add_method"(type_obj, "install_package_symbol", $P4138)
    get_how $P4139, type_obj
    .const 'Sub' $P4140 = "283_1303739782.662" 
    $P4139."add_method"(type_obj, "install_lexical_symbol", $P4140)
    get_how $P4141, type_obj
    .const 'Sub' $P4142 = "284_1303739782.662" 
    $P4141."add_method"(type_obj, "install_package_routine", $P4142)
    get_how $P4143, type_obj
    .const 'Sub' $P4144 = "285_1303739782.662" 
    $P4143."add_method"(type_obj, "pkg_create_mo", $P4144)
    get_how $P4145, type_obj
    .const 'Sub' $P4146 = "286_1303739782.662" 
    $P4145."add_method"(type_obj, "pkg_add_method", $P4146)
    get_how $P4147, type_obj
    .const 'Sub' $P4148 = "287_1303739782.662" 
    $P4147."add_method"(type_obj, "pkg_add_parent_or_role", $P4148)
    get_how $P4149, type_obj
    .const 'Sub' $P4150 = "288_1303739782.662" 
    $P4149."add_method"(type_obj, "pkg_compose", $P4150)
    get_how $P4151, type_obj
    .const 'Sub' $P4152 = "289_1303739782.662" 
    $P4151."add_method"(type_obj, "sc", $P4152)
    get_how $P4153, type_obj
    .const 'Sub' $P4154 = "290_1303739782.662" 
    $P4153."add_method"(type_obj, "to_past", $P4154)
    get_how $P4155, type_obj
    nqp_get_sc_object $P4156, "1303739772.428", 5
    $P4155."set_default_parent"(type_obj, $P4156)
    get_how $P4157, type_obj
    $P4158 = $P4157."compose"(type_obj)
    .return ($P4158)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("263_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3306
.annotate 'line', 2117
    .lex "$obj", param_3306
.annotate 'line', 2118
    find_lex $P3307, "$obj"
    unless_null $P3307, vivify_1173
    new $P3307, "Undef"
  vivify_1173:
    get_addr $I3308, $P3307
.annotate 'line', 2117
    .return ($I3308)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3313"  :anon :subid("264_1303739782.662") :outer("262_1303739782.662")
.annotate 'line', 2098
    .const 'Sub' $P3329 = "267_1303739782.662" 
    capture_lex $P3329
    .const 'Sub' $P3322 = "266_1303739782.662" 
    capture_lex $P3322
    .const 'Sub' $P3317 = "265_1303739782.662" 
    capture_lex $P3317
    .lex "$?PACKAGE", $P3315
    .lex "$?CLASS", $P3316
.annotate 'line', 2105
    .const 'Sub' $P3322 = "266_1303739782.662" 
    newclosure $P3327, $P3322
.annotate 'line', 2098
    .return ($P3327)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1174") :outer("264_1303739782.662")
.annotate 'line', 2098
    .const 'Sub' $P3314 = "264_1303739782.662" 
    .local pmc block
    set block, $P3314
    .const 'Sub' $P3329 = "267_1303739782.662" 
    capture_lex $P3329
    $P3329()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3328"  :anon :subid("267_1303739782.662") :outer("264_1303739782.662")
.annotate 'line', 2098
    nqp_get_sc_object $P3330, "1303739774.211", 7
    .local pmc type_obj
    set type_obj, $P3330
    get_how $P3331, type_obj
    get_hll_global $P3332, "NQPAttribute"
    $P3333 = $P3332."new"("$!deserialize_past" :named("name"))
    $P3331."add_attribute"(type_obj, $P3333)
    get_how $P3334, type_obj
    .const 'Sub' $P3335 = "265_1303739782.662" 
    $P3334."add_method"(type_obj, "deserialize_past", $P3335)
    get_how $P3336, type_obj
    get_hll_global $P3337, "NQPAttribute"
    $P3338 = $P3337."new"("$!fixup_past" :named("name"))
    $P3336."add_attribute"(type_obj, $P3338)
    get_how $P3339, type_obj
    .const 'Sub' $P3340 = "266_1303739782.662" 
    $P3339."add_method"(type_obj, "fixup_past", $P3340)
    get_how $P3341, type_obj
    nqp_get_sc_object $P3342, "1303739772.428", 5
    $P3341."set_default_parent"(type_obj, $P3342)
    get_how $P3343, type_obj
    $P3344 = $P3343."compose"(type_obj)
    .return ($P3344)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("265_1303739782.662") :outer("264_1303739782.662")
    .param pmc param_3318
.annotate 'line', 2101
    .lex "self", param_3318
    find_lex $P3319, "self"
    find_lex $P3320, "$?CLASS"
    getattribute $P3321, $P3319, $P3320, "$!deserialize_past"
    unless_null $P3321, vivify_1175
    new $P3321, "Undef"
  vivify_1175:
    .return ($P3321)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("266_1303739782.662") :outer("264_1303739782.662")
    .param pmc param_3323
.annotate 'line', 2105
    .lex "self", param_3323
    find_lex $P3324, "self"
    find_lex $P3325, "$?CLASS"
    getattribute $P3326, $P3324, $P3325, "$!fixup_past"
    unless_null $P3326, vivify_1176
    new $P3326, "Undef"
  vivify_1176:
    .return ($P3326)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3347
    .param pmc param_3348 :named("handle")
.annotate 'line', 2125
    .lex "self", param_3347
    .lex "$handle", param_3348
.annotate 'line', 2126
    new $P3349, "Undef"
    .lex "$obj", $P3349
    find_lex $P3350, "self"
    $P3351 = $P3350."CREATE"()
    store_lex "$obj", $P3351
.annotate 'line', 2127
    find_lex $P3352, "$obj"
    unless_null $P3352, vivify_1177
    new $P3352, "Undef"
  vivify_1177:
    find_lex $P3353, "$handle"
    unless_null $P3353, vivify_1178
    new $P3353, "Undef"
  vivify_1178:
    $P3352."BUILD"($P3353 :named("handle"))
    find_lex $P3354, "$obj"
    unless_null $P3354, vivify_1179
    new $P3354, "Undef"
  vivify_1179:
.annotate 'line', 2125
    .return ($P3354)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3356
    .param pmc param_3357 :optional :named("handle")
    .param int has_param_3357 :opt_flag
.annotate 'line', 2131
    .lex "self", param_3356
    if has_param_3357, optparam_1180
    new $P3358, "Undef"
    set param_3357, $P3358
  optparam_1180:
    .lex "$handle", param_3357
.annotate 'line', 2132
    find_lex $P3359, "$handle"
    unless_null $P3359, vivify_1181
    new $P3359, "Undef"
  vivify_1181:
    set $S3360, $P3359
    nqp_create_sc $P3361, $S3360
    find_lex $P3362, "self"
    find_lex $P3363, "$?CLASS"
    setattribute $P3362, $P3363, "$!sc", $P3361
.annotate 'line', 2133
    find_lex $P3364, "$handle"
    unless_null $P3364, vivify_1182
    new $P3364, "Undef"
  vivify_1182:
    find_lex $P3365, "self"
    find_lex $P3366, "$?CLASS"
    setattribute $P3365, $P3366, "$!handle", $P3364
.annotate 'line', 2134
    new $P3367, "Hash"
    find_lex $P3368, "self"
    find_lex $P3369, "$?CLASS"
    setattribute $P3368, $P3369, "%!addr_to_slot", $P3367
.annotate 'line', 2135
    new $P3370, "ResizablePMCArray"
    find_lex $P3371, "self"
    find_lex $P3372, "$?CLASS"
    setattribute $P3371, $P3372, "@!event_stream", $P3370
.annotate 'line', 2131
    .return ($P3370)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3374
    .param pmc param_3375
.annotate 'line', 2139
    .lex "self", param_3374
    .lex "$obj", param_3375
.annotate 'line', 2140
    new $P3376, "Undef"
    .lex "$slot", $P3376
    find_lex $P3377, "$obj"
    unless_null $P3377, vivify_1183
    new $P3377, "Undef"
  vivify_1183:
    $P3378 = "addr"($P3377)
    find_lex $P3379, "self"
    find_lex $P3380, "$?CLASS"
    getattribute $P3381, $P3379, $P3380, "%!addr_to_slot"
    unless_null $P3381, vivify_1184
    $P3381 = root_new ['parrot';'Hash']
  vivify_1184:
    set $P3382, $P3381[$P3378]
    unless_null $P3382, vivify_1185
    new $P3382, "Undef"
  vivify_1185:
    store_lex "$slot", $P3382
.annotate 'line', 2141
    find_lex $P3384, "$slot"
    unless_null $P3384, vivify_1186
    new $P3384, "Undef"
  vivify_1186:
    defined $I3385, $P3384
    if $I3385, unless_3383_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_3383_end:
.annotate 'line', 2141
    find_lex $P3386, "$slot"
    unless_null $P3386, vivify_1187
    new $P3386, "Undef"
  vivify_1187:
.annotate 'line', 2139
    .return ($P3386)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3390
    .param pmc param_3391
.annotate 'line', 2151
    new $P3389, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3389, control_3388
    push_eh $P3389
    .lex "self", param_3390
    .lex "$obj", param_3391
.annotate 'line', 2152
    new $P3392, "Undef"
    .lex "$slot", $P3392
    find_lex $P3393, "self"
    find_lex $P3394, "$obj"
    unless_null $P3394, vivify_1188
    new $P3394, "Undef"
  vivify_1188:
    $P3395 = $P3393."slot_for_object"($P3394)
    store_lex "$slot", $P3395
.annotate 'line', 2153
    new $P3396, "Exception"
    set $P3396['type'], .CONTROL_RETURN
    get_hll_global $P3397, "GLOBAL"
    nqp_get_package_through_who $P3398, $P3397, "PAST"
    get_who $P3399, $P3398
    set $P3400, $P3399["Op"]
    find_lex $P3401, "self"
    find_lex $P3402, "$?CLASS"
    getattribute $P3403, $P3401, $P3402, "$!handle"
    unless_null $P3403, vivify_1189
    new $P3403, "Undef"
  vivify_1189:
    find_lex $P3404, "$slot"
    unless_null $P3404, vivify_1190
    new $P3404, "Undef"
  vivify_1190:
    $P3405 = $P3400."new"($P3403, $P3404, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3396, 'payload', $P3405
    throw $P3396
.annotate 'line', 2151
    .return ()
  control_3388:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3406, exception, "payload"
    .return ($P3406)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3410
    .param pmc param_3411
    .param pmc param_3412
.annotate 'line', 2157
    new $P3409, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3409, control_3408
    push_eh $P3409
    .lex "self", param_3410
    .lex "$slot", param_3411
    .lex "$past_to_set", param_3412
.annotate 'line', 2158
    new $P3413, "Exception"
    set $P3413['type'], .CONTROL_RETURN
    get_hll_global $P3414, "GLOBAL"
    nqp_get_package_through_who $P3415, $P3414, "PAST"
    get_who $P3416, $P3415
    set $P3417, $P3416["Op"]
    find_lex $P3418, "self"
    find_lex $P3419, "$?CLASS"
    getattribute $P3420, $P3418, $P3419, "$!handle"
    unless_null $P3420, vivify_1191
    new $P3420, "Undef"
  vivify_1191:
    find_lex $P3421, "$slot"
    unless_null $P3421, vivify_1192
    new $P3421, "Undef"
  vivify_1192:
    find_lex $P3422, "$past_to_set"
    unless_null $P3422, vivify_1193
    new $P3422, "Undef"
  vivify_1193:
    $P3423 = $P3417."new"($P3420, $P3421, $P3422, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3413, 'payload', $P3423
    throw $P3413
.annotate 'line', 2157
    .return ()
  control_3408:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3424, exception, "payload"
    .return ($P3424)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3426
    .param pmc param_3427
.annotate 'line', 2164
    .lex "self", param_3426
    .lex "$to_wrap", param_3427
.annotate 'line', 2165
    get_hll_global $P3428, "GLOBAL"
    nqp_get_package_through_who $P3429, $P3428, "PAST"
    get_who $P3430, $P3429
    set $P3431, $P3430["Op"]
    find_lex $P3432, "$to_wrap"
    unless_null $P3432, vivify_1194
    new $P3432, "Undef"
  vivify_1194:
.annotate 'line', 2168
    get_hll_global $P3433, "GLOBAL"
    nqp_get_package_through_who $P3434, $P3433, "PAST"
    get_who $P3435, $P3434
    set $P3436, $P3435["Var"]
    $P3437 = $P3436."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3438 = $P3431."new"($P3432, $P3437, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P3438)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3440
    .param pmc param_3441
.annotate 'line', 2173
    .lex "self", param_3440
    .lex "$obj", param_3441
.annotate 'line', 2175
    new $P3442, "Undef"
    .lex "$idx", $P3442
.annotate 'line', 2174
    find_lex $P3443, "$obj"
    unless_null $P3443, vivify_1195
    new $P3443, "Undef"
  vivify_1195:
    find_lex $P3444, "self"
    find_lex $P3445, "$?CLASS"
    getattribute $P3446, $P3444, $P3445, "$!sc"
    unless_null $P3446, vivify_1196
    new $P3446, "Undef"
  vivify_1196:
    nqp_set_sc_for_object $P3443, $P3446
.annotate 'line', 2175
    find_lex $P3447, "self"
    find_lex $P3448, "$?CLASS"
    getattribute $P3449, $P3447, $P3448, "$!sc"
    unless_null $P3449, vivify_1197
    new $P3449, "Undef"
  vivify_1197:
    $P3450 = $P3449."elems"()
    store_lex "$idx", $P3450
.annotate 'line', 2176
    find_lex $P3451, "$obj"
    unless_null $P3451, vivify_1198
    new $P3451, "Undef"
  vivify_1198:
    find_lex $P3452, "$idx"
    unless_null $P3452, vivify_1199
    new $P3452, "Undef"
  vivify_1199:
    set $I3453, $P3452
    find_lex $P3454, "self"
    find_lex $P3455, "$?CLASS"
    getattribute $P3456, $P3454, $P3455, "$!sc"
    unless_null $P3456, vivify_1200
    $P3456 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3454, $P3455, "$!sc", $P3456
  vivify_1200:
    set $P3456[$I3453], $P3451
.annotate 'line', 2177
    find_lex $P3457, "$idx"
    unless_null $P3457, vivify_1201
    new $P3457, "Undef"
  vivify_1201:
    find_lex $P3458, "$obj"
    unless_null $P3458, vivify_1202
    new $P3458, "Undef"
  vivify_1202:
    $P3459 = "addr"($P3458)
    find_lex $P3460, "self"
    find_lex $P3461, "$?CLASS"
    getattribute $P3462, $P3460, $P3461, "%!addr_to_slot"
    unless_null $P3462, vivify_1203
    $P3462 = root_new ['parrot';'Hash']
    setattribute $P3460, $P3461, "%!addr_to_slot", $P3462
  vivify_1203:
    set $P3462[$P3459], $P3457
    find_lex $P3463, "$idx"
    unless_null $P3463, vivify_1204
    new $P3463, "Undef"
  vivify_1204:
.annotate 'line', 2173
    .return ($P3463)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3465
    .param pmc param_3466 :optional :named("deserialize_past")
    .param int has_param_3466 :opt_flag
    .param pmc param_3468 :optional :named("fixup_past")
    .param int has_param_3468 :opt_flag
.annotate 'line', 2182
    .lex "self", param_3465
    if has_param_3466, optparam_1205
    new $P3467, "Undef"
    set param_3466, $P3467
  optparam_1205:
    .lex "$deserialize_past", param_3466
    if has_param_3468, optparam_1206
    new $P3469, "Undef"
    set param_3468, $P3469
  optparam_1206:
    .lex "$fixup_past", param_3468
.annotate 'line', 2183
    find_lex $P3470, "self"
    find_lex $P3471, "$?CLASS"
    getattribute $P3472, $P3470, $P3471, "@!event_stream"
    unless_null $P3472, vivify_1207
    $P3472 = root_new ['parrot';'ResizablePMCArray']
  vivify_1207:
    find_lex $P3473, "Event"
    find_lex $P3474, "$deserialize_past"
    unless_null $P3474, vivify_1208
    new $P3474, "Undef"
  vivify_1208:
    find_lex $P3475, "$fixup_past"
    unless_null $P3475, vivify_1209
    new $P3475, "Undef"
  vivify_1209:
    $P3476 = $P3473."new"($P3474 :named("deserialize_past"), $P3475 :named("fixup_past"))
    $P3477 = $P3472."push"($P3476)
.annotate 'line', 2182
    .return ($P3477)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3479
    .param pmc param_3480
.annotate 'line', 2190
    .lex "self", param_3479
    .lex "$obj", param_3480
.annotate 'line', 2193
    new $P3481, "Undef"
    .lex "$sc", $P3481
    find_lex $P3482, "$obj"
    unless_null $P3482, vivify_1210
    new $P3482, "Undef"
  vivify_1210:
    nqp_get_sc_for_object $P3483, $P3482
    store_lex "$sc", $P3483
.annotate 'line', 2194
    find_lex $P3485, "$sc"
    unless_null $P3485, vivify_1211
    new $P3485, "Undef"
  vivify_1211:
    isnull $I3486, $P3485
    unless $I3486, if_3484_end
.annotate 'line', 2195
    new $P3487, "String"
    assign $P3487, "Object of type '"
    find_lex $P3488, "$obj"
    unless_null $P3488, vivify_1212
    new $P3488, "Undef"
  vivify_1212:
    get_how $P3489, $P3488
    find_lex $P3490, "$obj"
    unless_null $P3490, vivify_1213
    new $P3490, "Undef"
  vivify_1213:
    $S3491 = $P3489."name"($P3490)
    concat $P3492, $P3487, $S3491
    concat $P3493, $P3492, "' cannot be referenced without having been "
    concat $P3494, $P3493, "assigned a serialization context"
.annotate 'line', 2196
    die $P3494
  if_3484_end:
.annotate 'line', 2202
    find_lex $P3497, "$sc"
    unless_null $P3497, vivify_1214
    new $P3497, "Undef"
  vivify_1214:
    find_lex $P3498, "self"
    find_lex $P3499, "$?CLASS"
    getattribute $P3500, $P3498, $P3499, "$!sc"
    unless_null $P3500, vivify_1215
    new $P3500, "Undef"
  vivify_1215:
    issame $I3501, $P3497, $P3500
    if $I3501, if_3496
.annotate 'line', 2206
    get_hll_global $P3505, "GLOBAL"
    nqp_get_package_through_who $P3506, $P3505, "PAST"
    get_who $P3507, $P3506
    set $P3508, $P3507["Op"]
.annotate 'line', 2207
    find_lex $P3509, "$sc"
    unless_null $P3509, vivify_1216
    new $P3509, "Undef"
  vivify_1216:
    $P3510 = $P3509."handle"()
    find_lex $P3511, "$sc"
    unless_null $P3511, vivify_1217
    new $P3511, "Undef"
  vivify_1217:
    find_lex $P3512, "$obj"
    unless_null $P3512, vivify_1218
    new $P3512, "Undef"
  vivify_1218:
    $P3513 = $P3511."slot_index_for"($P3512)
    $P3514 = $P3508."new"($P3510, $P3513, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2205
    set $P3495, $P3514
.annotate 'line', 2202
    goto if_3496_end
  if_3496:
.annotate 'line', 2203
    find_lex $P3502, "self"
    find_lex $P3503, "$obj"
    unless_null $P3503, vivify_1219
    new $P3503, "Undef"
  vivify_1219:
    $P3504 = $P3502."get_slot_past_for_object"($P3503)
.annotate 'line', 2202
    set $P3495, $P3504
  if_3496_end:
.annotate 'line', 2190
    .return ($P3495)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("277_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3519
    .param pmc param_3520
.annotate 'line', 2219
    .const 'Sub' $P3527 = "278_1303739782.662" 
    capture_lex $P3527
    new $P3518, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3518, control_3517
    push_eh $P3518
    .lex "self", param_3519
    .lex "$setting_name", param_3520
.annotate 'line', 2221
    find_lex $P3523, "$setting_name"
    unless_null $P3523, vivify_1220
    new $P3523, "Undef"
  vivify_1220:
    set $S3524, $P3523
    isne $I3525, $S3524, "NULL"
    if $I3525, if_3522
    new $P3521, 'Integer'
    set $P3521, $I3525
    goto if_3522_end
  if_3522:
    .const 'Sub' $P3527 = "278_1303739782.662" 
    capture_lex $P3527
    $P3585 = $P3527()
    set $P3521, $P3585
  if_3522_end:
.annotate 'line', 2219
    .return ($P3521)
  control_3517:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3586, exception, "payload"
    .return ($P3586)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3526"  :anon :subid("278_1303739782.662") :outer("277_1303739782.662")
.annotate 'line', 2225
    new $P3528, "Undef"
    .lex "$path", $P3528
.annotate 'line', 2226
    new $P3529, "Undef"
    .lex "$setting", $P3529
.annotate 'line', 2225
    find_dynamic_lex $P3532, "%*COMPILING"
    unless_null $P3532, vivify_1221
    get_hll_global $P3530, "GLOBAL"
    get_who $P3531, $P3530
    set $P3532, $P3531["%COMPILING"]
    unless_null $P3532, vivify_1222
    die "Contextual %*COMPILING not found"
  vivify_1222:
  vivify_1221:
    set $P3533, $P3532["%?OPTIONS"]
    unless_null $P3533, vivify_1223
    $P3533 = root_new ['parrot';'Hash']
  vivify_1223:
    set $P3534, $P3533["setting-path"]
    unless_null $P3534, vivify_1224
    new $P3534, "Undef"
  vivify_1224:
    store_lex "$path", $P3534
.annotate 'line', 2226
    find_lex $P3535, "$loader"
    unless_null $P3535, vivify_1225
    new $P3535, "Undef"
  vivify_1225:
.annotate 'line', 2227
    find_lex $P3538, "$path"
    unless_null $P3538, vivify_1226
    new $P3538, "Undef"
  vivify_1226:
    if $P3538, if_3537
    find_lex $P3543, "$setting_name"
    unless_null $P3543, vivify_1227
    new $P3543, "Undef"
  vivify_1227:
    set $P3536, $P3543
    goto if_3537_end
  if_3537:
    find_lex $P3539, "$path"
    unless_null $P3539, vivify_1228
    new $P3539, "Undef"
  vivify_1228:
    concat $P3540, $P3539, "/"
    find_lex $P3541, "$setting_name"
    unless_null $P3541, vivify_1229
    new $P3541, "Undef"
  vivify_1229:
    concat $P3542, $P3540, $P3541
    set $P3536, $P3542
  if_3537_end:
    $P3544 = $P3535."load_setting"($P3536)
.annotate 'line', 2226
    find_dynamic_lex $P3547, "%*COMPILING"
    unless_null $P3547, vivify_1230
    get_hll_global $P3545, "GLOBAL"
    get_who $P3546, $P3545
    set $P3547, $P3546["%COMPILING"]
    unless_null $P3547, vivify_1231
    die "Contextual %*COMPILING not found"
  vivify_1231:
    store_dynamic_lex "%*COMPILING", $P3547
  vivify_1230:
    set $P3548, $P3547["%?OPTIONS"]
    unless_null $P3548, vivify_1232
    $P3548 = root_new ['parrot';'Hash']
    set $P3547["%?OPTIONS"], $P3548
  vivify_1232:
    set $P3548["outer_ctx"], $P3544
    store_lex "$setting", $P3544
.annotate 'line', 2230
    find_lex $P3549, "self"
    get_hll_global $P3550, "GLOBAL"
    nqp_get_package_through_who $P3551, $P3550, "PAST"
    get_who $P3552, $P3551
    set $P3553, $P3552["Stmts"]
.annotate 'line', 2231
    get_hll_global $P3554, "GLOBAL"
    nqp_get_package_through_who $P3555, $P3554, "PAST"
    get_who $P3556, $P3555
    set $P3557, $P3556["Op"]
    $P3558 = $P3557."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2234
    get_hll_global $P3559, "GLOBAL"
    nqp_get_package_through_who $P3560, $P3559, "PAST"
    get_who $P3561, $P3560
    set $P3562, $P3561["Op"]
.annotate 'line', 2236
    get_hll_global $P3563, "GLOBAL"
    nqp_get_package_through_who $P3564, $P3563, "PAST"
    get_who $P3565, $P3564
    set $P3566, $P3565["Var"]
    $P3567 = $P3566."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2237
    get_hll_global $P3568, "GLOBAL"
    nqp_get_package_through_who $P3569, $P3568, "PAST"
    get_who $P3570, $P3569
    set $P3571, $P3570["Op"]
.annotate 'line', 2239
    get_hll_global $P3572, "GLOBAL"
    nqp_get_package_through_who $P3573, $P3572, "PAST"
    get_who $P3574, $P3573
    set $P3575, $P3574["Var"]
    new $P3576, "ResizablePMCArray"
    $P3577 = $P3575."new"("ModuleLoader" :named("name"), $P3576 :named("namespace"), "package" :named("scope"))
    find_lex $P3578, "$setting_name"
    unless_null $P3578, vivify_1233
    new $P3578, "Undef"
  vivify_1233:
    $P3579 = $P3571."new"($P3577, $P3578, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2237
    $P3580 = $P3562."new"($P3567, $P3579, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2234
    $P3581 = $P3553."new"($P3558, $P3580)
.annotate 'line', 2230
    $P3549."add_event"($P3581 :named("deserialize_past"))
.annotate 'line', 2245
    new $P3582, "Exception"
    set $P3582['type'], .CONTROL_RETURN
    find_lex $P3583, "$setting"
    unless_null $P3583, vivify_1234
    new $P3583, "Undef"
  vivify_1234:
    getattribute $P3584, $P3583, "lex_pad"
    setattribute $P3582, 'payload', $P3584
    throw $P3582
.annotate 'line', 2221
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("279_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3590
    .param pmc param_3591
    .param pmc param_3592
.annotate 'line', 2251
    new $P3589, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3589, control_3588
    push_eh $P3589
    .lex "self", param_3590
    .lex "$module_name", param_3591
    .lex "$cur_GLOBALish", param_3592
.annotate 'line', 2253
    new $P3593, "Undef"
    .lex "$module", $P3593
    find_lex $P3594, "$loader"
    unless_null $P3594, vivify_1235
    new $P3594, "Undef"
  vivify_1235:
    find_lex $P3595, "$module_name"
    unless_null $P3595, vivify_1236
    new $P3595, "Undef"
  vivify_1236:
    find_lex $P3596, "$cur_GLOBALish"
    unless_null $P3596, vivify_1237
    new $P3596, "Undef"
  vivify_1237:
    find_dynamic_lex $P3599, "%*COMPILING"
    unless_null $P3599, vivify_1238
    get_hll_global $P3597, "GLOBAL"
    get_who $P3598, $P3597
    set $P3599, $P3598["%COMPILING"]
    unless_null $P3599, vivify_1239
    die "Contextual %*COMPILING not found"
  vivify_1239:
  vivify_1238:
    set $P3600, $P3599["%?OPTIONS"]
    unless_null $P3600, vivify_1240
    $P3600 = root_new ['parrot';'Hash']
  vivify_1240:
    set $P3601, $P3600["module-path"]
    unless_null $P3601, vivify_1241
    new $P3601, "Undef"
  vivify_1241:
    $P3602 = $P3594."load_module"($P3595, $P3596, $P3601 :named("prefix"))
    store_lex "$module", $P3602
.annotate 'line', 2257
    find_lex $P3603, "self"
    get_hll_global $P3604, "GLOBAL"
    nqp_get_package_through_who $P3605, $P3604, "PAST"
    get_who $P3606, $P3605
    set $P3607, $P3606["Stmts"]
.annotate 'line', 2258
    get_hll_global $P3608, "GLOBAL"
    nqp_get_package_through_who $P3609, $P3608, "PAST"
    get_who $P3610, $P3609
    set $P3611, $P3610["Op"]
    $P3612 = $P3611."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2261
    get_hll_global $P3613, "GLOBAL"
    nqp_get_package_through_who $P3614, $P3613, "PAST"
    get_who $P3615, $P3614
    set $P3616, $P3615["Op"]
.annotate 'line', 2263
    get_hll_global $P3617, "GLOBAL"
    nqp_get_package_through_who $P3618, $P3617, "PAST"
    get_who $P3619, $P3618
    set $P3620, $P3619["Var"]
    new $P3621, "ResizablePMCArray"
    $P3622 = $P3620."new"("ModuleLoader" :named("name"), $P3621 :named("namespace"), "package" :named("scope"))
    find_lex $P3623, "$module_name"
    unless_null $P3623, vivify_1242
    new $P3623, "Undef"
  vivify_1242:
.annotate 'line', 2265
    find_lex $P3624, "self"
    find_lex $P3625, "$cur_GLOBALish"
    unless_null $P3625, vivify_1243
    new $P3625, "Undef"
  vivify_1243:
    $P3626 = $P3624."get_slot_past_for_object"($P3625)
    $P3627 = $P3616."new"($P3622, $P3623, $P3626, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2261
    $P3628 = $P3607."new"($P3612, $P3627)
.annotate 'line', 2257
    $P3603."add_event"($P3628 :named("deserialize_past"))
.annotate 'line', 2268
    new $P3629, "Exception"
    set $P3629['type'], .CONTROL_RETURN
    find_lex $P3630, "$module"
    unless_null $P3630, vivify_1244
    new $P3630, "Undef"
  vivify_1244:
    getattribute $P3631, $P3630, "lex_pad"
    setattribute $P3629, 'payload', $P3631
    throw $P3629
.annotate 'line', 2251
    .return ()
  control_3588:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3632, exception, "payload"
    .return ($P3632)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3634
    .param pmc param_3635
    .param pmc param_3636
    .param pmc param_3637
.annotate 'line', 2273
    .const 'Sub' $P3674 = "282_1303739782.662" 
    capture_lex $P3674
    .const 'Sub' $P3653 = "281_1303739782.662" 
    capture_lex $P3653
    .lex "self", param_3634
    .lex "$package", param_3635
    .lex "@sym", param_3636
    .lex "$obj", param_3637
.annotate 'line', 2275
    new $P3638, "Undef"
    .lex "$name", $P3638
.annotate 'line', 2278
    new $P3639, "Undef"
    .lex "$target", $P3639
.annotate 'line', 2285
    new $P3640, "Undef"
    .lex "$path", $P3640
.annotate 'line', 2274
    find_lex $P3641, "@sym"
    unless_null $P3641, vivify_1245
    $P3641 = root_new ['parrot';'ResizablePMCArray']
  vivify_1245:
    clone $P3642, $P3641
    store_lex "@sym", $P3642
.annotate 'line', 2275
    find_lex $P3643, "@sym"
    unless_null $P3643, vivify_1246
    $P3643 = root_new ['parrot';'ResizablePMCArray']
  vivify_1246:
    $P3644 = $P3643."pop"()
    set $S3645, $P3644
    new $P3646, 'String'
    set $P3646, $S3645
    store_lex "$name", $P3646
.annotate 'line', 2278
    find_lex $P3647, "$package"
    unless_null $P3647, vivify_1247
    new $P3647, "Undef"
  vivify_1247:
    store_lex "$target", $P3647
.annotate 'line', 2279
    find_lex $P3649, "@sym"
    unless_null $P3649, vivify_1248
    $P3649 = root_new ['parrot';'ResizablePMCArray']
  vivify_1248:
    defined $I3650, $P3649
    unless $I3650, for_undef_1249
    iter $P3648, $P3649
    new $P3660, 'ExceptionHandler'
    set_label $P3660, loop3659_handler
    $P3660."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3660
  loop3659_test:
    unless $P3648, loop3659_done
    shift $P3651, $P3648
  loop3659_redo:
    .const 'Sub' $P3653 = "281_1303739782.662" 
    capture_lex $P3653
    $P3653($P3651)
  loop3659_next:
    goto loop3659_test
  loop3659_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3661, exception, 'type'
    eq $P3661, .CONTROL_LOOP_NEXT, loop3659_next
    eq $P3661, .CONTROL_LOOP_REDO, loop3659_redo
  loop3659_done:
    pop_eh 
  for_undef_1249:
.annotate 'line', 2282
    find_lex $P3662, "$obj"
    unless_null $P3662, vivify_1252
    new $P3662, "Undef"
  vivify_1252:
    find_lex $P3663, "$name"
    unless_null $P3663, vivify_1253
    new $P3663, "Undef"
  vivify_1253:
    find_lex $P3664, "$target"
    unless_null $P3664, vivify_1254
    new $P3664, "Undef"
    store_lex "$target", $P3664
  vivify_1254:
    get_who $P3665, $P3664
    set $P3665[$P3663], $P3662
.annotate 'line', 2285
    find_lex $P3666, "self"
    find_lex $P3667, "$package"
    unless_null $P3667, vivify_1255
    new $P3667, "Undef"
  vivify_1255:
    $P3668 = $P3666."get_slot_past_for_object"($P3667)
    store_lex "$path", $P3668
.annotate 'line', 2286
    find_lex $P3670, "@sym"
    unless_null $P3670, vivify_1256
    $P3670 = root_new ['parrot';'ResizablePMCArray']
  vivify_1256:
    defined $I3671, $P3670
    unless $I3671, for_undef_1257
    iter $P3669, $P3670
    new $P3685, 'ExceptionHandler'
    set_label $P3685, loop3684_handler
    $P3685."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3685
  loop3684_test:
    unless $P3669, loop3684_done
    shift $P3672, $P3669
  loop3684_redo:
    .const 'Sub' $P3674 = "282_1303739782.662" 
    capture_lex $P3674
    $P3674($P3672)
  loop3684_next:
    goto loop3684_test
  loop3684_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3686, exception, 'type'
    eq $P3686, .CONTROL_LOOP_NEXT, loop3684_next
    eq $P3686, .CONTROL_LOOP_REDO, loop3684_redo
  loop3684_done:
    pop_eh 
  for_undef_1257:
.annotate 'line', 2289
    find_lex $P3687, "self"
    get_hll_global $P3688, "GLOBAL"
    nqp_get_package_through_who $P3689, $P3688, "PAST"
    get_who $P3690, $P3689
    set $P3691, $P3690["Op"]
.annotate 'line', 2291
    get_hll_global $P3692, "GLOBAL"
    nqp_get_package_through_who $P3693, $P3692, "PAST"
    get_who $P3694, $P3693
    set $P3695, $P3694["Var"]
.annotate 'line', 2293
    get_hll_global $P3696, "GLOBAL"
    nqp_get_package_through_who $P3697, $P3696, "PAST"
    get_who $P3698, $P3697
    set $P3699, $P3698["Op"]
    find_lex $P3700, "$path"
    unless_null $P3700, vivify_1260
    new $P3700, "Undef"
  vivify_1260:
    $P3701 = $P3699."new"($P3700, "get_who PP" :named("pirop"))
    find_lex $P3702, "$name"
    unless_null $P3702, vivify_1261
    new $P3702, "Undef"
  vivify_1261:
    $P3703 = $P3695."new"($P3701, $P3702, "keyed" :named("scope"))
.annotate 'line', 2296
    find_lex $P3704, "self"
    find_lex $P3705, "$obj"
    unless_null $P3705, vivify_1262
    new $P3705, "Undef"
  vivify_1262:
    $P3706 = $P3704."get_slot_past_for_object"($P3705)
    $P3707 = $P3691."new"($P3703, $P3706, "bind" :named("pasttype"))
.annotate 'line', 2289
    $P3687."add_event"($P3707 :named("deserialize_past"))
.annotate 'line', 2300
    find_lex $P3708, "self"
.annotate 'line', 2301
    get_hll_global $P3709, "GLOBAL"
    nqp_get_package_through_who $P3710, $P3709, "PAST"
    get_who $P3711, $P3710
    set $P3712, $P3711["Op"]
.annotate 'line', 2303
    get_hll_global $P3713, "GLOBAL"
    nqp_get_package_through_who $P3714, $P3713, "PAST"
    get_who $P3715, $P3714
    set $P3716, $P3715["Var"]
    find_lex $P3717, "$name"
    unless_null $P3717, vivify_1263
    new $P3717, "Undef"
  vivify_1263:
    find_lex $P3718, "@sym"
    unless_null $P3718, vivify_1264
    $P3718 = root_new ['parrot';'ResizablePMCArray']
  vivify_1264:
    $P3719 = $P3716."new"($P3717 :named("name"), $P3718 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2304
    find_lex $P3720, "self"
    find_lex $P3721, "$obj"
    unless_null $P3721, vivify_1265
    new $P3721, "Undef"
  vivify_1265:
    $P3722 = $P3720."get_slot_past_for_object"($P3721)
    $P3723 = $P3712."new"($P3719, $P3722, "bind" :named("pasttype"))
.annotate 'line', 2306
    get_hll_global $P3724, "GLOBAL"
    nqp_get_package_through_who $P3725, $P3724, "PAST"
    get_who $P3726, $P3725
    set $P3727, $P3726["Op"]
.annotate 'line', 2308
    get_hll_global $P3728, "GLOBAL"
    nqp_get_package_through_who $P3729, $P3728, "PAST"
    get_who $P3730, $P3729
    set $P3731, $P3730["Var"]
    find_lex $P3732, "$name"
    unless_null $P3732, vivify_1266
    new $P3732, "Undef"
  vivify_1266:
    find_lex $P3733, "@sym"
    unless_null $P3733, vivify_1267
    $P3733 = root_new ['parrot';'ResizablePMCArray']
  vivify_1267:
    $P3734 = $P3731."new"($P3732 :named("name"), $P3733 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2309
    find_lex $P3735, "self"
    find_lex $P3736, "$obj"
    unless_null $P3736, vivify_1268
    new $P3736, "Undef"
  vivify_1268:
    $P3737 = $P3735."get_slot_past_for_object"($P3736)
    $P3738 = $P3727."new"($P3734, $P3737, "bind" :named("pasttype"))
.annotate 'line', 2306
    $P3739 = $P3708."add_event"($P3723 :named("deserialize_past"), $P3738 :named("fixup_past"))
.annotate 'line', 2273
    .return ($P3739)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3652"  :anon :subid("281_1303739782.662") :outer("280_1303739782.662")
    .param pmc param_3654
.annotate 'line', 2279
    .lex "$_", param_3654
.annotate 'line', 2280
    find_lex $P3655, "$target"
    unless_null $P3655, vivify_1250
    new $P3655, "Undef"
  vivify_1250:
    find_lex $P3656, "$_"
    unless_null $P3656, vivify_1251
    new $P3656, "Undef"
  vivify_1251:
    set $S3657, $P3656
    nqp_get_package_through_who $P3658, $P3655, $S3657
    store_lex "$target", $P3658
.annotate 'line', 2279
    .return ($P3658)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3673"  :anon :subid("282_1303739782.662") :outer("280_1303739782.662")
    .param pmc param_3675
.annotate 'line', 2286
    .lex "$_", param_3675
.annotate 'line', 2287
    get_hll_global $P3676, "GLOBAL"
    nqp_get_package_through_who $P3677, $P3676, "PAST"
    get_who $P3678, $P3677
    set $P3679, $P3678["Op"]
    find_lex $P3680, "$path"
    unless_null $P3680, vivify_1258
    new $P3680, "Undef"
  vivify_1258:
    find_lex $P3681, "$_"
    unless_null $P3681, vivify_1259
    new $P3681, "Undef"
  vivify_1259:
    set $S3682, $P3681
    $P3683 = $P3679."new"($P3680, $S3682, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3683
.annotate 'line', 2286
    .return ($P3683)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3741
    .param pmc param_3742
    .param pmc param_3743
    .param pmc param_3744
.annotate 'line', 2317
    .lex "self", param_3741
    .lex "$block", param_3742
    .lex "$name", param_3743
    .lex "$obj", param_3744
.annotate 'line', 2323
    new $P3745, "Undef"
    .lex "$fixup", $P3745
.annotate 'line', 2319
    find_lex $P3746, "$block"
    unless_null $P3746, vivify_1269
    new $P3746, "Undef"
  vivify_1269:
    find_lex $P3747, "$name"
    unless_null $P3747, vivify_1270
    new $P3747, "Undef"
  vivify_1270:
    find_lex $P3748, "$obj"
    unless_null $P3748, vivify_1271
    new $P3748, "Undef"
  vivify_1271:
    $P3746."symbol"($P3747, "lexical" :named("scope"), $P3748 :named("value"))
.annotate 'line', 2320
    find_lex $P3749, "$block"
    unless_null $P3749, vivify_1272
    $P3749 = root_new ['parrot';'ResizablePMCArray']
  vivify_1272:
    set $P3750, $P3749[0]
    unless_null $P3750, vivify_1273
    new $P3750, "Undef"
  vivify_1273:
    get_hll_global $P3751, "GLOBAL"
    nqp_get_package_through_who $P3752, $P3751, "PAST"
    get_who $P3753, $P3752
    set $P3754, $P3753["Var"]
    find_lex $P3755, "$name"
    unless_null $P3755, vivify_1274
    new $P3755, "Undef"
  vivify_1274:
    $P3756 = $P3754."new"("lexical" :named("scope"), $P3755 :named("name"), 1 :named("isdecl"))
    $P3750."push"($P3756)
.annotate 'line', 2323
    get_hll_global $P3757, "GLOBAL"
    nqp_get_package_through_who $P3758, $P3757, "PAST"
    get_who $P3759, $P3758
    set $P3760, $P3759["Stmts"]
.annotate 'line', 2324
    get_hll_global $P3761, "GLOBAL"
    nqp_get_package_through_who $P3762, $P3761, "PAST"
    get_who $P3763, $P3762
    set $P3764, $P3763["Op"]
.annotate 'line', 2326
    get_hll_global $P3765, "GLOBAL"
    nqp_get_package_through_who $P3766, $P3765, "PAST"
    get_who $P3767, $P3766
    set $P3768, $P3767["Op"]
.annotate 'line', 2328
    get_hll_global $P3769, "GLOBAL"
    nqp_get_package_through_who $P3770, $P3769, "PAST"
    get_who $P3771, $P3770
    set $P3772, $P3771["Val"]
    find_lex $P3773, "$block"
    unless_null $P3773, vivify_1275
    new $P3773, "Undef"
  vivify_1275:
    $P3774 = $P3772."new"($P3773 :named("value"))
    $P3775 = $P3768."new"($P3774, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2330
    find_lex $P3776, "$name"
    unless_null $P3776, vivify_1276
    new $P3776, "Undef"
  vivify_1276:
    set $S3777, $P3776
    find_lex $P3778, "self"
    find_lex $P3779, "$obj"
    unless_null $P3779, vivify_1277
    new $P3779, "Undef"
  vivify_1277:
    $P3780 = $P3778."get_slot_past_for_object"($P3779)
    $P3781 = $P3764."new"($P3775, $S3777, $P3780, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2334
    get_hll_global $P3782, "GLOBAL"
    nqp_get_package_through_who $P3783, $P3782, "PAST"
    get_who $P3784, $P3783
    set $P3785, $P3784["Op"]
.annotate 'line', 2336
    get_hll_global $P3786, "GLOBAL"
    nqp_get_package_through_who $P3787, $P3786, "PAST"
    get_who $P3788, $P3787
    set $P3789, $P3788["Op"]
.annotate 'line', 2338
    get_hll_global $P3790, "GLOBAL"
    nqp_get_package_through_who $P3791, $P3790, "PAST"
    get_who $P3792, $P3791
    set $P3793, $P3792["Val"]
    find_lex $P3794, "$block"
    unless_null $P3794, vivify_1278
    new $P3794, "Undef"
  vivify_1278:
    $P3795 = $P3793."new"($P3794 :named("value"))
    $P3796 = $P3789."new"($P3795, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2336
    $P3797 = $P3785."new"($P3796, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2334
    $P3798 = $P3760."new"($P3781, $P3797)
.annotate 'line', 2323
    store_lex "$fixup", $P3798
.annotate 'line', 2342
    find_lex $P3799, "self"
    find_lex $P3800, "$fixup"
    unless_null $P3800, vivify_1279
    new $P3800, "Undef"
  vivify_1279:
    find_lex $P3801, "$fixup"
    unless_null $P3801, vivify_1280
    new $P3801, "Undef"
  vivify_1280:
    $P3802 = $P3799."add_event"($P3800 :named("deserialize_past"), $P3801 :named("fixup_past"))
.annotate 'line', 2317
    .return ($P3802)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("284_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3804
    .param pmc param_3805
    .param pmc param_3806
    .param pmc param_3807
.annotate 'line', 2347
    .lex "self", param_3804
    .lex "$package", param_3805
    .lex "$name", param_3806
    .lex "$past_block", param_3807
.annotate 'line', 2348
    new $P3808, "Undef"
    .lex "$fixup", $P3808
    get_hll_global $P3809, "GLOBAL"
    nqp_get_package_through_who $P3810, $P3809, "PAST"
    get_who $P3811, $P3810
    set $P3812, $P3811["Op"]
.annotate 'line', 2350
    get_hll_global $P3813, "GLOBAL"
    nqp_get_package_through_who $P3814, $P3813, "PAST"
    get_who $P3815, $P3814
    set $P3816, $P3815["Var"]
.annotate 'line', 2352
    get_hll_global $P3817, "GLOBAL"
    nqp_get_package_through_who $P3818, $P3817, "PAST"
    get_who $P3819, $P3818
    set $P3820, $P3819["Op"]
    find_lex $P3821, "self"
    find_lex $P3822, "$package"
    unless_null $P3822, vivify_1281
    new $P3822, "Undef"
  vivify_1281:
    $P3823 = $P3821."get_slot_past_for_object"($P3822)
    $P3824 = $P3820."new"($P3823, "get_who PP" :named("pirop"))
.annotate 'line', 2353
    find_lex $P3825, "$name"
    unless_null $P3825, vivify_1282
    new $P3825, "Undef"
  vivify_1282:
    set $S3826, $P3825
    $P3827 = $P3816."new"($P3824, $S3826, "keyed" :named("scope"))
.annotate 'line', 2355
    get_hll_global $P3828, "GLOBAL"
    nqp_get_package_through_who $P3829, $P3828, "PAST"
    get_who $P3830, $P3829
    set $P3831, $P3830["Val"]
    find_lex $P3832, "$past_block"
    unless_null $P3832, vivify_1283
    new $P3832, "Undef"
  vivify_1283:
    $P3833 = $P3831."new"($P3832 :named("value"))
    $P3834 = $P3812."new"($P3827, $P3833, "bind" :named("pasttype"))
.annotate 'line', 2348
    store_lex "$fixup", $P3834
.annotate 'line', 2357
    find_lex $P3835, "self"
    find_lex $P3836, "$fixup"
    unless_null $P3836, vivify_1284
    new $P3836, "Undef"
  vivify_1284:
    find_lex $P3837, "$fixup"
    unless_null $P3837, vivify_1285
    new $P3837, "Undef"
  vivify_1285:
    $P3838 = $P3835."add_event"($P3836 :named("deserialize_past"), $P3837 :named("fixup_past"))
.annotate 'line', 2347
    .return ($P3838)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("285_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3842
    .param pmc param_3843
    .param pmc param_3844 :optional :named("name")
    .param int has_param_3844 :opt_flag
    .param pmc param_3846 :optional :named("repr")
    .param int has_param_3846 :opt_flag
.annotate 'line', 2362
    new $P3841, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3841, control_3840
    push_eh $P3841
    .lex "self", param_3842
    .lex "$how", param_3843
    if has_param_3844, optparam_1286
    new $P3845, "Undef"
    set param_3844, $P3845
  optparam_1286:
    .lex "$name", param_3844
    if has_param_3846, optparam_1287
    new $P3847, "Undef"
    set param_3846, $P3847
  optparam_1287:
    .lex "$repr", param_3846
.annotate 'line', 2364
    $P3848 = root_new ['parrot';'Hash']
    .lex "%args", $P3848
.annotate 'line', 2367
    new $P3849, "Undef"
    .lex "$mo", $P3849
.annotate 'line', 2368
    new $P3850, "Undef"
    .lex "$slot", $P3850
.annotate 'line', 2372
    $P3851 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3851
.annotate 'line', 2373
    new $P3852, "Undef"
    .lex "$how_name", $P3852
.annotate 'line', 2374
    new $P3853, "Undef"
    .lex "$setup_call", $P3853
.annotate 'line', 2362
    find_lex $P3854, "%args"
    unless_null $P3854, vivify_1288
    $P3854 = root_new ['parrot';'Hash']
  vivify_1288:
.annotate 'line', 2365
    find_lex $P3856, "$name"
    unless_null $P3856, vivify_1289
    new $P3856, "Undef"
  vivify_1289:
    defined $I3857, $P3856
    unless $I3857, if_3855_end
    find_lex $P3858, "$name"
    unless_null $P3858, vivify_1290
    new $P3858, "Undef"
  vivify_1290:
    find_lex $P3859, "%args"
    unless_null $P3859, vivify_1291
    $P3859 = root_new ['parrot';'Hash']
    store_lex "%args", $P3859
  vivify_1291:
    set $P3859["name"], $P3858
  if_3855_end:
.annotate 'line', 2366
    find_lex $P3861, "$repr"
    unless_null $P3861, vivify_1292
    new $P3861, "Undef"
  vivify_1292:
    defined $I3862, $P3861
    unless $I3862, if_3860_end
    find_lex $P3863, "$repr"
    unless_null $P3863, vivify_1293
    new $P3863, "Undef"
  vivify_1293:
    find_lex $P3864, "%args"
    unless_null $P3864, vivify_1294
    $P3864 = root_new ['parrot';'Hash']
    store_lex "%args", $P3864
  vivify_1294:
    set $P3864["repr"], $P3863
  if_3860_end:
.annotate 'line', 2367
    find_lex $P3865, "$how"
    unless_null $P3865, vivify_1295
    new $P3865, "Undef"
  vivify_1295:
    find_lex $P3866, "%args"
    unless_null $P3866, vivify_1296
    $P3866 = root_new ['parrot';'Hash']
  vivify_1296:
    $P3867 = $P3865."new_type"($P3866 :flat)
    store_lex "$mo", $P3867
.annotate 'line', 2368
    find_lex $P3868, "self"
    find_lex $P3869, "$mo"
    unless_null $P3869, vivify_1297
    new $P3869, "Undef"
  vivify_1297:
    $P3870 = $P3868."add_object"($P3869)
    store_lex "$slot", $P3870
.annotate 'line', 2372
    find_lex $P3871, "$how"
    unless_null $P3871, vivify_1298
    new $P3871, "Undef"
  vivify_1298:
    get_how $P3872, $P3871
    find_lex $P3873, "$how"
    unless_null $P3873, vivify_1299
    new $P3873, "Undef"
  vivify_1299:
    $S3874 = $P3872."name"($P3873)
    split $P3875, "::", $S3874
    store_lex "@how_ns", $P3875
.annotate 'line', 2373
    find_lex $P3876, "@how_ns"
    unless_null $P3876, vivify_1300
    $P3876 = root_new ['parrot';'ResizablePMCArray']
  vivify_1300:
    $P3877 = $P3876."pop"()
    store_lex "$how_name", $P3877
.annotate 'line', 2374
    get_hll_global $P3878, "GLOBAL"
    nqp_get_package_through_who $P3879, $P3878, "PAST"
    get_who $P3880, $P3879
    set $P3881, $P3880["Op"]
.annotate 'line', 2376
    get_hll_global $P3882, "GLOBAL"
    nqp_get_package_through_who $P3883, $P3882, "PAST"
    get_who $P3884, $P3883
    set $P3885, $P3884["Var"]
    find_lex $P3886, "$how_name"
    unless_null $P3886, vivify_1301
    new $P3886, "Undef"
  vivify_1301:
    find_lex $P3887, "@how_ns"
    unless_null $P3887, vivify_1302
    $P3887 = root_new ['parrot';'ResizablePMCArray']
  vivify_1302:
    $P3888 = $P3885."new"($P3886 :named("name"), $P3887 :named("namespace"), "package" :named("scope"))
    $P3889 = $P3881."new"($P3888, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2374
    store_lex "$setup_call", $P3889
.annotate 'line', 2380
    find_lex $P3891, "$name"
    unless_null $P3891, vivify_1303
    new $P3891, "Undef"
  vivify_1303:
    defined $I3892, $P3891
    unless $I3892, if_3890_end
.annotate 'line', 2381
    find_lex $P3893, "$setup_call"
    unless_null $P3893, vivify_1304
    new $P3893, "Undef"
  vivify_1304:
    get_hll_global $P3894, "GLOBAL"
    nqp_get_package_through_who $P3895, $P3894, "PAST"
    get_who $P3896, $P3895
    set $P3897, $P3896["Val"]
    find_lex $P3898, "$name"
    unless_null $P3898, vivify_1305
    new $P3898, "Undef"
  vivify_1305:
    $P3899 = $P3897."new"($P3898 :named("value"), "name" :named("named"))
    $P3893."push"($P3899)
  if_3890_end:
.annotate 'line', 2383
    find_lex $P3901, "$repr"
    unless_null $P3901, vivify_1306
    new $P3901, "Undef"
  vivify_1306:
    defined $I3902, $P3901
    unless $I3902, if_3900_end
.annotate 'line', 2384
    find_lex $P3903, "$setup_call"
    unless_null $P3903, vivify_1307
    new $P3903, "Undef"
  vivify_1307:
    get_hll_global $P3904, "GLOBAL"
    nqp_get_package_through_who $P3905, $P3904, "PAST"
    get_who $P3906, $P3905
    set $P3907, $P3906["Val"]
    find_lex $P3908, "$repr"
    unless_null $P3908, vivify_1308
    new $P3908, "Undef"
  vivify_1308:
    $P3909 = $P3907."new"($P3908 :named("value"), "repr" :named("named"))
    $P3903."push"($P3909)
  if_3900_end:
.annotate 'line', 2386
    find_lex $P3910, "self"
.annotate 'line', 2387
    find_lex $P3911, "self"
    find_lex $P3912, "$slot"
    unless_null $P3912, vivify_1309
    new $P3912, "Undef"
  vivify_1309:
    find_lex $P3913, "self"
    find_lex $P3914, "$setup_call"
    unless_null $P3914, vivify_1310
    new $P3914, "Undef"
  vivify_1310:
    $P3915 = $P3913."set_cur_sc"($P3914)
    $P3916 = $P3911."set_slot_past"($P3912, $P3915)
    $P3910."add_event"($P3916 :named("deserialize_past"))
.annotate 'line', 2390
    new $P3917, "Exception"
    set $P3917['type'], .CONTROL_RETURN
    find_lex $P3918, "$mo"
    unless_null $P3918, vivify_1311
    new $P3918, "Undef"
  vivify_1311:
    setattribute $P3917, 'payload', $P3918
    throw $P3917
.annotate 'line', 2362
    .return ()
  control_3840:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3919, exception, "payload"
    .return ($P3919)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("286_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3921
    .param pmc param_3922
    .param pmc param_3923
    .param pmc param_3924
    .param pmc param_3925
.annotate 'line', 2396
    .lex "self", param_3921
    .lex "$obj", param_3922
    .lex "$meta_method_name", param_3923
    .lex "$name", param_3924
    .lex "$method_past", param_3925
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("287_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3927
    .param pmc param_3928
    .param pmc param_3929
    .param pmc param_3930
.annotate 'line', 2401
    .lex "self", param_3927
    .lex "$obj", param_3928
    .lex "$meta_method_name", param_3929
    .lex "$to_add", param_3930
.annotate 'line', 2406
    new $P3931, "Undef"
    .lex "$slot_past", $P3931
.annotate 'line', 2403
    find_lex $P3932, "$obj"
    unless_null $P3932, vivify_1312
    new $P3932, "Undef"
  vivify_1312:
    get_how $P3933, $P3932
    find_lex $P3934, "$obj"
    unless_null $P3934, vivify_1313
    new $P3934, "Undef"
  vivify_1313:
    find_lex $P3935, "$to_add"
    unless_null $P3935, vivify_1314
    new $P3935, "Undef"
  vivify_1314:
    find_lex $P3936, "$meta_method_name"
    unless_null $P3936, vivify_1315
    new $P3936, "Undef"
  vivify_1315:
    set $S3937, $P3936
    $P3933.$S3937($P3934, $P3935)
.annotate 'line', 2406
    find_lex $P3938, "self"
    find_lex $P3939, "$obj"
    unless_null $P3939, vivify_1316
    new $P3939, "Undef"
  vivify_1316:
    $P3940 = $P3938."get_slot_past_for_object"($P3939)
    store_lex "$slot_past", $P3940
.annotate 'line', 2407
    find_lex $P3941, "self"
    get_hll_global $P3942, "GLOBAL"
    nqp_get_package_through_who $P3943, $P3942, "PAST"
    get_who $P3944, $P3943
    set $P3945, $P3944["Op"]
    find_lex $P3946, "$meta_method_name"
    unless_null $P3946, vivify_1317
    new $P3946, "Undef"
  vivify_1317:
.annotate 'line', 2409
    get_hll_global $P3947, "GLOBAL"
    nqp_get_package_through_who $P3948, $P3947, "PAST"
    get_who $P3949, $P3948
    set $P3950, $P3949["Op"]
    find_lex $P3951, "$slot_past"
    unless_null $P3951, vivify_1318
    new $P3951, "Undef"
  vivify_1318:
    $P3952 = $P3950."new"($P3951, "get_how PP" :named("pirop"))
    find_lex $P3953, "$slot_past"
    unless_null $P3953, vivify_1319
    new $P3953, "Undef"
  vivify_1319:
.annotate 'line', 2411
    find_lex $P3954, "self"
    find_lex $P3955, "$to_add"
    unless_null $P3955, vivify_1320
    new $P3955, "Undef"
  vivify_1320:
    $P3956 = $P3954."get_object_sc_ref_past"($P3955)
    $P3957 = $P3945."new"($P3952, $P3953, $P3956, "callmethod" :named("pasttype"), $P3946 :named("name"))
.annotate 'line', 2407
    $P3958 = $P3941."add_event"($P3957 :named("deserialize_past"))
.annotate 'line', 2401
    .return ($P3958)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("288_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3960
    .param pmc param_3961
.annotate 'line', 2416
    .lex "self", param_3960
    .lex "$obj", param_3961
.annotate 'line', 2421
    new $P3962, "Undef"
    .lex "$slot_past", $P3962
.annotate 'line', 2418
    find_lex $P3963, "$obj"
    unless_null $P3963, vivify_1321
    new $P3963, "Undef"
  vivify_1321:
    get_how $P3964, $P3963
    find_lex $P3965, "$obj"
    unless_null $P3965, vivify_1322
    new $P3965, "Undef"
  vivify_1322:
    $P3964."compose"($P3965)
.annotate 'line', 2421
    find_lex $P3966, "$obj"
    unless_null $P3966, vivify_1323
    new $P3966, "Undef"
  vivify_1323:
    $P3967 = "get_slot_past_for_object"($P3966)
    store_lex "$slot_past", $P3967
.annotate 'line', 2422
    find_lex $P3968, "self"
    get_hll_global $P3969, "GLOBAL"
    nqp_get_package_through_who $P3970, $P3969, "PAST"
    get_who $P3971, $P3970
    set $P3972, $P3971["Op"]
.annotate 'line', 2424
    get_hll_global $P3973, "GLOBAL"
    nqp_get_package_through_who $P3974, $P3973, "PAST"
    get_who $P3975, $P3974
    set $P3976, $P3975["Op"]
    find_lex $P3977, "$slot_past"
    unless_null $P3977, vivify_1324
    new $P3977, "Undef"
  vivify_1324:
    $P3978 = $P3976."new"($P3977, "get_how PP" :named("pirop"))
    find_lex $P3979, "$slot_past"
    unless_null $P3979, vivify_1325
    new $P3979, "Undef"
  vivify_1325:
    $P3980 = $P3972."new"($P3978, $P3979, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2422
    $P3981 = $P3968."add_event"($P3980 :named("deserialize_past"))
.annotate 'line', 2416
    .return ($P3981)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("289_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3983
.annotate 'line', 2430
    .lex "self", param_3983
    find_lex $P3984, "self"
    find_lex $P3985, "$?CLASS"
    getattribute $P3986, $P3984, $P3985, "@!sc"
    unless_null $P3986, vivify_1326
    $P3986 = root_new ['parrot';'ResizablePMCArray']
  vivify_1326:
    .return ($P3986)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("290_1303739782.662") :outer("262_1303739782.662")
    .param pmc param_3988
.annotate 'line', 2436
    .const 'Sub' $P4008 = "291_1303739782.662" 
    capture_lex $P4008
    .lex "self", param_3988
.annotate 'line', 2437
    new $P3989, "Undef"
    .lex "$des", $P3989
.annotate 'line', 2438
    new $P3990, "Undef"
    .lex "$fix", $P3990
.annotate 'line', 2437
    get_hll_global $P3991, "GLOBAL"
    nqp_get_package_through_who $P3992, $P3991, "PAST"
    get_who $P3993, $P3992
    set $P3994, $P3993["Stmts"]
    $P3995 = $P3994."new"()
    store_lex "$des", $P3995
.annotate 'line', 2438
    get_hll_global $P3996, "GLOBAL"
    nqp_get_package_through_who $P3997, $P3996, "PAST"
    get_who $P3998, $P3997
    set $P3999, $P3998["Stmts"]
    $P4000 = $P3999."new"()
    store_lex "$fix", $P4000
.annotate 'line', 2439
    find_lex $P4002, "self"
    find_lex $P4003, "$?CLASS"
    getattribute $P4004, $P4002, $P4003, "@!event_stream"
    unless_null $P4004, vivify_1327
    $P4004 = root_new ['parrot';'ResizablePMCArray']
  vivify_1327:
    defined $I4005, $P4004
    unless $I4005, for_undef_1328
    iter $P4001, $P4004
    new $P4027, 'ExceptionHandler'
    set_label $P4027, loop4026_handler
    $P4027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P4027
  loop4026_test:
    unless $P4001, loop4026_done
    shift $P4006, $P4001
  loop4026_redo:
    .const 'Sub' $P4008 = "291_1303739782.662" 
    capture_lex $P4008
    $P4008($P4006)
  loop4026_next:
    goto loop4026_test
  loop4026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P4028, exception, 'type'
    eq $P4028, .CONTROL_LOOP_NEXT, loop4026_next
    eq $P4028, .CONTROL_LOOP_REDO, loop4026_redo
  loop4026_done:
    pop_eh 
  for_undef_1328:
.annotate 'line', 2443
    find_dynamic_lex $P4029, "$/"
    get_hll_global $P4030, "GLOBAL"
    nqp_get_package_through_who $P4031, $P4030, "PAST"
    get_who $P4032, $P4031
    set $P4033, $P4032["Op"]
.annotate 'line', 2445
    get_hll_global $P4034, "GLOBAL"
    nqp_get_package_through_who $P4035, $P4034, "PAST"
    get_who $P4036, $P4035
    set $P4037, $P4036["Op"]
.annotate 'line', 2447
    get_hll_global $P4038, "GLOBAL"
    nqp_get_package_through_who $P4039, $P4038, "PAST"
    get_who $P4040, $P4039
    set $P4041, $P4040["Op"]
    find_lex $P4042, "self"
    find_lex $P4043, "$?CLASS"
    getattribute $P4044, $P4042, $P4043, "$!handle"
    unless_null $P4044, vivify_1335
    new $P4044, "Undef"
  vivify_1335:
    $P4045 = $P4041."new"($P4044, "nqp_get_sc Ps" :named("pirop"))
    $P4046 = $P4037."new"($P4045, "isnull IP" :named("pirop"))
.annotate 'line', 2449
    get_hll_global $P4047, "GLOBAL"
    nqp_get_package_through_who $P4048, $P4047, "PAST"
    get_who $P4049, $P4048
    set $P4050, $P4049["Stmts"]
.annotate 'line', 2450
    get_hll_global $P4051, "GLOBAL"
    nqp_get_package_through_who $P4052, $P4051, "PAST"
    get_who $P4053, $P4052
    set $P4054, $P4053["Op"]
    $P4055 = $P4054."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2451
    get_hll_global $P4056, "GLOBAL"
    nqp_get_package_through_who $P4057, $P4056, "PAST"
    get_who $P4058, $P4057
    set $P4059, $P4058["Op"]
.annotate 'line', 2453
    get_hll_global $P4060, "GLOBAL"
    nqp_get_package_through_who $P4061, $P4060, "PAST"
    get_who $P4062, $P4061
    set $P4063, $P4062["Op"]
    $P4064 = $P4063."new"("getinterp P" :named("pirop"))
.annotate 'line', 2454
    get_hll_global $P4065, "GLOBAL"
    nqp_get_package_through_who $P4066, $P4065, "PAST"
    get_who $P4067, $P4066
    set $P4068, $P4067["Op"]
    $P4069 = $P4068."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2455
    get_hll_global $P4070, "GLOBAL"
    nqp_get_package_through_who $P4071, $P4070, "PAST"
    get_who $P4072, $P4071
    set $P4073, $P4072["Op"]
    $P4074 = $P4073."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P4075 = $P4059."new"($P4064, $P4069, $P4074, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2457
    get_hll_global $P4076, "GLOBAL"
    nqp_get_package_through_who $P4077, $P4076, "PAST"
    get_who $P4078, $P4077
    set $P4079, $P4078["Op"]
.annotate 'line', 2459
    get_hll_global $P4080, "GLOBAL"
    nqp_get_package_through_who $P4081, $P4080, "PAST"
    get_who $P4082, $P4081
    set $P4083, $P4082["Var"]
    $P4084 = $P4083."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2460
    get_hll_global $P4085, "GLOBAL"
    nqp_get_package_through_who $P4086, $P4085, "PAST"
    get_who $P4087, $P4086
    set $P4088, $P4087["Op"]
    find_lex $P4089, "self"
    find_lex $P4090, "$?CLASS"
    getattribute $P4091, $P4089, $P4090, "$!handle"
    unless_null $P4091, vivify_1336
    new $P4091, "Undef"
  vivify_1336:
    $P4092 = $P4088."new"($P4091, "nqp_create_sc Ps" :named("pirop"))
    $P4093 = $P4079."new"($P4084, $P4092, "bind" :named("pasttype"))
.annotate 'line', 2457
    find_lex $P4094, "$des"
    unless_null $P4094, vivify_1337
    new $P4094, "Undef"
  vivify_1337:
    $P4095 = $P4050."new"($P4055, $P4075, $P4093, $P4094)
.annotate 'line', 2449
    find_lex $P4096, "$fix"
    unless_null $P4096, vivify_1338
    new $P4096, "Undef"
  vivify_1338:
    $P4097 = $P4033."new"($P4046, $P4095, $P4096, "if" :named("pasttype"))
.annotate 'line', 2443
    $P4098 = $P4029."!make"($P4097)
.annotate 'line', 2436
    .return ($P4098)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block4007"  :anon :subid("291_1303739782.662") :outer("290_1303739782.662")
    .param pmc param_4009
.annotate 'line', 2439
    .lex "$_", param_4009
.annotate 'line', 2440
    find_lex $P4011, "$_"
    unless_null $P4011, vivify_1329
    new $P4011, "Undef"
  vivify_1329:
    $P4012 = $P4011."deserialize_past"()
    defined $I4013, $P4012
    unless $I4013, if_4010_end
    find_lex $P4014, "$des"
    unless_null $P4014, vivify_1330
    new $P4014, "Undef"
  vivify_1330:
    find_lex $P4015, "$_"
    unless_null $P4015, vivify_1331
    new $P4015, "Undef"
  vivify_1331:
    $P4016 = $P4015."deserialize_past"()
    $P4014."push"($P4016)
  if_4010_end:
.annotate 'line', 2441
    find_lex $P4019, "$_"
    unless_null $P4019, vivify_1332
    new $P4019, "Undef"
  vivify_1332:
    $P4020 = $P4019."fixup_past"()
    defined $I4021, $P4020
    if $I4021, if_4018
    new $P4017, 'Integer'
    set $P4017, $I4021
    goto if_4018_end
  if_4018:
    find_lex $P4022, "$fix"
    unless_null $P4022, vivify_1333
    new $P4022, "Undef"
  vivify_1333:
    find_lex $P4023, "$_"
    unless_null $P4023, vivify_1334
    new $P4023, "Undef"
  vivify_1334:
    $P4024 = $P4023."fixup_past"()
    $P4025 = $P4022."push"($P4024)
    set $P4017, $P4025
  if_4018_end:
.annotate 'line', 2439
    .return ($P4017)
.end


.HLL "nqp"

.namespace []
.sub "_block4160" :load :anon :subid("293_1303739782.662")
.annotate 'line', 1064
    .const 'Sub' $P4162 = "10_1303739782.662" 
    $P4163 = $P4162()
    .return ($P4163)
.end

