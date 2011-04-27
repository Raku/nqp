
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303928992.215")
.annotate 'line', 0
    .const 'Sub' $P3238 = "262_1303928992.215" 
    capture_lex $P3238
    .const 'Sub' $P2786 = "242_1303928992.215" 
    capture_lex $P2786
    .const 'Sub' $P2693 = "234_1303928992.215" 
    capture_lex $P2693
    .const 'Sub' $P1442 = "167_1303928992.215" 
    capture_lex $P1442
    .const 'Sub' $P688 = "120_1303928992.215" 
    capture_lex $P688
    .const 'Sub' $P17 = "11_1303928992.215" 
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
    .const 'Sub' $P17 = "11_1303928992.215" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P688 = "120_1303928992.215" 
    capture_lex $P688
    $P688()
.annotate 'line', 1072
    .const 'Sub' $P1442 = "167_1303928992.215" 
    capture_lex $P1442
    $P1442()
.annotate 'line', 1791
    get_hll_global $P2686, "GLOBAL"
    nqp_get_package_through_who $P2687, $P2686, "HLL"
    get_who $P2688, $P2687
    set $P2689, $P2688["Compiler"]
    $P2690 = $P2689."new"()
    store_lex "$compiler", $P2690
.annotate 'line', 1792
    find_lex $P2691, "$compiler"
    unless_null $P2691, vivify_1028
    new $P2691, "Undef"
  vivify_1028:
    $P2691."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2693 = "234_1303928992.215" 
    capture_lex $P2693
    $P2693()
.annotate 'line', 1918
    .const 'Sub' $P2786 = "242_1303928992.215" 
    capture_lex $P2786
    $P2786()
.annotate 'line', 2096
    .const 'Sub' $P3238 = "262_1303928992.215" 
    capture_lex $P3238
    $P4106 = $P3238()
.annotate 'line', 1
    .return ($P4106)
.annotate 'line', 1064
    .const 'Sub' $P4108 = "296_1303928992.215" 
.annotate 'line', 1
    .return ($P4108)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post297") :outer("10_1303928992.215")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303928992.215" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P4112, "1303928983.629"
    isnull $I4113, $P4112
    if $I4113, if_4111
    .const 'Sub' $P4407 = "10_1303928992.215" 
    $P4408 = $P4407."get_lexinfo"()
    nqp_get_sc_object $P4409, "1303928983.629", 0
    $P4408."set_static_lexpad_value"("GLOBALish", $P4409)
    .const 'Sub' $P4410 = "10_1303928992.215" 
    $P4411 = $P4410."get_lexinfo"()
    $P4411."finish_static_lexpad"()
    .const 'Sub' $P4412 = "10_1303928992.215" 
    $P4413 = $P4412."get_lexinfo"()
    nqp_get_sc_object $P4414, "1303928983.629", 0
    $P4413."set_static_lexpad_value"("$?PACKAGE", $P4414)
    .const 'Sub' $P4415 = "10_1303928992.215" 
    $P4416 = $P4415."get_lexinfo"()
    $P4416."finish_static_lexpad"()
    .const 'Sub' $P4417 = "109_1303928992.215" 
    nqp_get_sc_object $P4418, "1303928983.629", 1
    get_who $P4419, $P4418
    set $P4419["quotemod_check"], $P4417
    .const 'Sub' $P4420 = "112_1303928992.215" 
    nqp_get_sc_object $P4421, "1303928983.629", 1
    get_who $P4422, $P4421
    set $P4422["split_words"], $P4420
    .const 'Sub' $P4423 = "11_1303928992.215" 
    $P4424 = $P4423."get_lexinfo"()
    nqp_get_sc_object $P4425, "1303928983.629", 1
    $P4424."set_static_lexpad_value"("$?PACKAGE", $P4425)
    .const 'Sub' $P4426 = "11_1303928992.215" 
    $P4427 = $P4426."get_lexinfo"()
    $P4427."finish_static_lexpad"()
    .const 'Sub' $P4428 = "11_1303928992.215" 
    $P4429 = $P4428."get_lexinfo"()
    nqp_get_sc_object $P4430, "1303928983.629", 1
    $P4429."set_static_lexpad_value"("$?CLASS", $P4430)
    .const 'Sub' $P4431 = "11_1303928992.215" 
    $P4432 = $P4431."get_lexinfo"()
    $P4432."finish_static_lexpad"()
    .const 'Sub' $P4433 = "121_1303928992.215" 
    nqp_get_sc_object $P4434, "1303928983.629", 2
    get_who $P4435, $P4434
    set $P4435["string_to_int"], $P4433
    .const 'Sub' $P4436 = "123_1303928992.215" 
    nqp_get_sc_object $P4437, "1303928983.629", 2
    get_who $P4438, $P4437
    set $P4438["ints_to_string"], $P4436
    .const 'Sub' $P4439 = "120_1303928992.215" 
    $P4440 = $P4439."get_lexinfo"()
    nqp_get_sc_object $P4441, "1303928983.629", 2
    $P4440."set_static_lexpad_value"("$?PACKAGE", $P4441)
    .const 'Sub' $P4442 = "120_1303928992.215" 
    $P4443 = $P4442."get_lexinfo"()
    $P4443."finish_static_lexpad"()
    .const 'Sub' $P4444 = "120_1303928992.215" 
    $P4445 = $P4444."get_lexinfo"()
    nqp_get_sc_object $P4446, "1303928983.629", 2
    $P4445."set_static_lexpad_value"("$?CLASS", $P4446)
    .const 'Sub' $P4447 = "120_1303928992.215" 
    $P4448 = $P4447."get_lexinfo"()
    $P4448."finish_static_lexpad"()
    .const 'Sub' $P4449 = "167_1303928992.215" 
    $P4450 = $P4449."get_lexinfo"()
    nqp_get_sc_object $P4451, "1303928983.629", 3
    $P4450."set_static_lexpad_value"("$?PACKAGE", $P4451)
    .const 'Sub' $P4452 = "167_1303928992.215" 
    $P4453 = $P4452."get_lexinfo"()
    $P4453."finish_static_lexpad"()
    .const 'Sub' $P4454 = "167_1303928992.215" 
    $P4455 = $P4454."get_lexinfo"()
    nqp_get_sc_object $P4456, "1303928983.629", 3
    $P4455."set_static_lexpad_value"("$?CLASS", $P4456)
    .const 'Sub' $P4457 = "167_1303928992.215" 
    $P4458 = $P4457."get_lexinfo"()
    $P4458."finish_static_lexpad"()
    .const 'Sub' $P4459 = "234_1303928992.215" 
    $P4460 = $P4459."get_lexinfo"()
    nqp_get_sc_object $P4461, "1303928983.629", 4
    $P4460."set_static_lexpad_value"("$?PACKAGE", $P4461)
    .const 'Sub' $P4462 = "234_1303928992.215" 
    $P4463 = $P4462."get_lexinfo"()
    $P4463."finish_static_lexpad"()
    .const 'Sub' $P4464 = "234_1303928992.215" 
    $P4465 = $P4464."get_lexinfo"()
    nqp_get_sc_object $P4466, "1303928983.629", 4
    $P4465."set_static_lexpad_value"("$?CLASS", $P4466)
    .const 'Sub' $P4467 = "234_1303928992.215" 
    $P4468 = $P4467."get_lexinfo"()
    $P4468."finish_static_lexpad"()
    .const 'Sub' $P4469 = "242_1303928992.215" 
    $P4470 = $P4469."get_lexinfo"()
    nqp_get_sc_object $P4471, "1303928983.629", 5
    $P4470."set_static_lexpad_value"("$?PACKAGE", $P4471)
    .const 'Sub' $P4472 = "242_1303928992.215" 
    $P4473 = $P4472."get_lexinfo"()
    $P4473."finish_static_lexpad"()
    .const 'Sub' $P4474 = "242_1303928992.215" 
    $P4475 = $P4474."get_lexinfo"()
    nqp_get_sc_object $P4476, "1303928983.629", 5
    $P4475."set_static_lexpad_value"("$?CLASS", $P4476)
    .const 'Sub' $P4477 = "242_1303928992.215" 
    $P4478 = $P4477."get_lexinfo"()
    $P4478."finish_static_lexpad"()
    .const 'Sub' $P4479 = "262_1303928992.215" 
    $P4480 = $P4479."get_lexinfo"()
    nqp_get_sc_object $P4481, "1303928983.629", 7
    $P4480."set_static_lexpad_value"("Event", $P4481)
    .const 'Sub' $P4482 = "262_1303928992.215" 
    $P4483 = $P4482."get_lexinfo"()
    $P4483."finish_static_lexpad"()
    .const 'Sub' $P4484 = "264_1303928992.215" 
    $P4485 = $P4484."get_lexinfo"()
    nqp_get_sc_object $P4486, "1303928983.629", 7
    $P4485."set_static_lexpad_value"("$?PACKAGE", $P4486)
    .const 'Sub' $P4487 = "264_1303928992.215" 
    $P4488 = $P4487."get_lexinfo"()
    $P4488."finish_static_lexpad"()
    .const 'Sub' $P4489 = "264_1303928992.215" 
    $P4490 = $P4489."get_lexinfo"()
    nqp_get_sc_object $P4491, "1303928983.629", 7
    $P4490."set_static_lexpad_value"("$?CLASS", $P4491)
    .const 'Sub' $P4492 = "264_1303928992.215" 
    $P4493 = $P4492."get_lexinfo"()
    $P4493."finish_static_lexpad"()
    .const 'Sub' $P4494 = "262_1303928992.215" 
    $P4495 = $P4494."get_lexinfo"()
    nqp_get_sc_object $P4496, "1303928983.629", 6
    $P4495."set_static_lexpad_value"("$?PACKAGE", $P4496)
    .const 'Sub' $P4497 = "262_1303928992.215" 
    $P4498 = $P4497."get_lexinfo"()
    $P4498."finish_static_lexpad"()
    .const 'Sub' $P4499 = "262_1303928992.215" 
    $P4500 = $P4499."get_lexinfo"()
    nqp_get_sc_object $P4501, "1303928983.629", 6
    $P4500."set_static_lexpad_value"("$?CLASS", $P4501)
    .const 'Sub' $P4502 = "262_1303928992.215" 
    $P4503 = $P4502."get_lexinfo"()
    $P4503."finish_static_lexpad"()
    goto if_4111_end
  if_4111:
    nqp_dynop_setup 
    getinterp $P4114
    get_class $P4115, "LexPad"
    get_class $P4116, "NQPLexPad"
    $P4114."hll_map"($P4115, $P4116)
    nqp_create_sc $P4117, "1303928983.629"
    .local pmc cur_sc
    set cur_sc, $P4117
    nqp_get_sc_object $P4118, "__6MODEL_CORE__", 0
    $P4119 = $P4118."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P4119, cur_sc
    nqp_set_sc_object "1303928983.629", 0, $P4119
    .const 'Sub' $P4120 = "10_1303928992.215" 
    $P4121 = $P4120."get_lexinfo"()
    nqp_get_sc_object $P4122, "1303928983.629", 0
    $P4121."set_static_lexpad_value"("GLOBALish", $P4122)
    .const 'Sub' $P4123 = "10_1303928992.215" 
    $P4124 = $P4123."get_lexinfo"()
    $P4124."finish_static_lexpad"()
    .const 'Sub' $P4125 = "10_1303928992.215" 
    $P4126 = $P4125."get_lexinfo"()
    nqp_get_sc_object $P4127, "1303928983.629", 0
    $P4126."set_static_lexpad_value"("$?PACKAGE", $P4127)
    .const 'Sub' $P4128 = "10_1303928992.215" 
    $P4129 = $P4128."get_lexinfo"()
    $P4129."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4130, "ModuleLoader"
    $P4131 = $P4130."load_setting"("NQPCORE")
    block."set_outer_ctx"($P4131)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4132, "ModuleLoader"
    nqp_get_sc_object $P4133, "1303928983.629", 0
    $P4132."load_module"("Regex", $P4133)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P4134, "ModuleLoader"
    nqp_get_sc_object $P4135, "1303928983.629", 0
    $P4134."load_module"("Regex", $P4135)
    nqp_get_sc_object $P4136, "1303928976.25", 5
    $P4137 = $P4136."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P4137, cur_sc
    nqp_set_sc_object "1303928983.629", 1, $P4137
    nqp_get_sc_object $P4138, "1303928983.629", 1
    nqp_get_sc_object $P4139, "1303928983.629", 0
    nqp_get_package_through_who $P4140, $P4139, "HLL"
    get_who $P4141, $P4140
    set $P4141["Grammar"], $P4138
    .const 'Sub' $P4142 = "109_1303928992.215" 
    nqp_get_sc_object $P4143, "1303928983.629", 1
    get_who $P4144, $P4143
    set $P4144["quotemod_check"], $P4142
    .const 'Sub' $P4145 = "112_1303928992.215" 
    nqp_get_sc_object $P4146, "1303928983.629", 1
    get_who $P4147, $P4146
    set $P4147["split_words"], $P4145
    .const 'Sub' $P4148 = "11_1303928992.215" 
    $P4149 = $P4148."get_lexinfo"()
    nqp_get_sc_object $P4150, "1303928983.629", 1
    $P4149."set_static_lexpad_value"("$?PACKAGE", $P4150)
    .const 'Sub' $P4151 = "11_1303928992.215" 
    $P4152 = $P4151."get_lexinfo"()
    $P4152."finish_static_lexpad"()
    .const 'Sub' $P4153 = "11_1303928992.215" 
    $P4154 = $P4153."get_lexinfo"()
    nqp_get_sc_object $P4155, "1303928983.629", 1
    $P4154."set_static_lexpad_value"("$?CLASS", $P4155)
    .const 'Sub' $P4156 = "11_1303928992.215" 
    $P4157 = $P4156."get_lexinfo"()
    $P4157."finish_static_lexpad"()
    nqp_get_sc_object $P4158, "1303928983.629", 1
    get_how $P4159, $P4158
    nqp_get_sc_object $P4160, "1303928983.629", 1
    nqp_get_sc_object $P4161, "__REGEX_CORE_SC__", 0
    $P4159."set_default_parent"($P4160, $P4161)
    nqp_get_sc_object $P4162, "1303928976.25", 5
    $P4163 = $P4162."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P4163, cur_sc
    nqp_set_sc_object "1303928983.629", 2, $P4163
    nqp_get_sc_object $P4164, "1303928983.629", 2
    nqp_get_sc_object $P4165, "1303928983.629", 0
    nqp_get_package_through_who $P4166, $P4165, "HLL"
    get_who $P4167, $P4166
    set $P4167["Actions"], $P4164
    .const 'Sub' $P4168 = "121_1303928992.215" 
    nqp_get_sc_object $P4169, "1303928983.629", 2
    get_who $P4170, $P4169
    set $P4170["string_to_int"], $P4168
    .const 'Sub' $P4171 = "123_1303928992.215" 
    nqp_get_sc_object $P4172, "1303928983.629", 2
    get_who $P4173, $P4172
    set $P4173["ints_to_string"], $P4171
    .const 'Sub' $P4174 = "120_1303928992.215" 
    $P4175 = $P4174."get_lexinfo"()
    nqp_get_sc_object $P4176, "1303928983.629", 2
    $P4175."set_static_lexpad_value"("$?PACKAGE", $P4176)
    .const 'Sub' $P4177 = "120_1303928992.215" 
    $P4178 = $P4177."get_lexinfo"()
    $P4178."finish_static_lexpad"()
    .const 'Sub' $P4179 = "120_1303928992.215" 
    $P4180 = $P4179."get_lexinfo"()
    nqp_get_sc_object $P4181, "1303928983.629", 2
    $P4180."set_static_lexpad_value"("$?CLASS", $P4181)
    .const 'Sub' $P4182 = "120_1303928992.215" 
    $P4183 = $P4182."get_lexinfo"()
    $P4183."finish_static_lexpad"()
    nqp_get_sc_object $P4184, "1303928983.629", 2
    get_how $P4185, $P4184
    nqp_get_sc_object $P4186, "1303928983.629", 2
    nqp_get_sc_object $P4187, "1303928981.926", 5
    $P4185."set_default_parent"($P4186, $P4187)
    nqp_get_sc_object $P4188, "1303928976.25", 5
    $P4189 = $P4188."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P4189, cur_sc
    nqp_set_sc_object "1303928983.629", 3, $P4189
    nqp_get_sc_object $P4190, "1303928983.629", 3
    nqp_get_sc_object $P4191, "1303928983.629", 0
    nqp_get_package_through_who $P4192, $P4191, "HLL"
    get_who $P4193, $P4192
    set $P4193["Compiler"], $P4190
    nqp_get_sc_object $P4194, "1303928983.629", 3
    get_how $P4195, $P4194
    nqp_get_sc_object $P4196, "1303928983.629", 3
    nqp_get_sc_object $P4197, "1303928976.25", 7
    $P4198 = $P4197."new"("@!stages" :named("name"))
    $P4195."add_attribute"($P4196, $P4198)
    nqp_get_sc_object $P4199, "1303928983.629", 3
    get_how $P4200, $P4199
    nqp_get_sc_object $P4201, "1303928983.629", 3
    nqp_get_sc_object $P4202, "1303928976.25", 7
    $P4203 = $P4202."new"("$!parsegrammar" :named("name"))
    $P4200."add_attribute"($P4201, $P4203)
    nqp_get_sc_object $P4204, "1303928983.629", 3
    get_how $P4205, $P4204
    nqp_get_sc_object $P4206, "1303928983.629", 3
    nqp_get_sc_object $P4207, "1303928976.25", 7
    $P4208 = $P4207."new"("$!parseactions" :named("name"))
    $P4205."add_attribute"($P4206, $P4208)
    nqp_get_sc_object $P4209, "1303928983.629", 3
    get_how $P4210, $P4209
    nqp_get_sc_object $P4211, "1303928983.629", 3
    nqp_get_sc_object $P4212, "1303928976.25", 7
    $P4213 = $P4212."new"("$!astgrammar" :named("name"))
    $P4210."add_attribute"($P4211, $P4213)
    nqp_get_sc_object $P4214, "1303928983.629", 3
    get_how $P4215, $P4214
    nqp_get_sc_object $P4216, "1303928983.629", 3
    nqp_get_sc_object $P4217, "1303928976.25", 7
    $P4218 = $P4217."new"("$!commandline_banner" :named("name"))
    $P4215."add_attribute"($P4216, $P4218)
    nqp_get_sc_object $P4219, "1303928983.629", 3
    get_how $P4220, $P4219
    nqp_get_sc_object $P4221, "1303928983.629", 3
    nqp_get_sc_object $P4222, "1303928976.25", 7
    $P4223 = $P4222."new"("$!commandline_prompt" :named("name"))
    $P4220."add_attribute"($P4221, $P4223)
    nqp_get_sc_object $P4224, "1303928983.629", 3
    get_how $P4225, $P4224
    nqp_get_sc_object $P4226, "1303928983.629", 3
    nqp_get_sc_object $P4227, "1303928976.25", 7
    $P4228 = $P4227."new"("@!cmdoptions" :named("name"))
    $P4225."add_attribute"($P4226, $P4228)
    nqp_get_sc_object $P4229, "1303928983.629", 3
    get_how $P4230, $P4229
    nqp_get_sc_object $P4231, "1303928983.629", 3
    nqp_get_sc_object $P4232, "1303928976.25", 7
    $P4233 = $P4232."new"("$!usage" :named("name"))
    $P4230."add_attribute"($P4231, $P4233)
    nqp_get_sc_object $P4234, "1303928983.629", 3
    get_how $P4235, $P4234
    nqp_get_sc_object $P4236, "1303928983.629", 3
    nqp_get_sc_object $P4237, "1303928976.25", 7
    $P4238 = $P4237."new"("$!version" :named("name"))
    $P4235."add_attribute"($P4236, $P4238)
    nqp_get_sc_object $P4239, "1303928983.629", 3
    get_how $P4240, $P4239
    nqp_get_sc_object $P4241, "1303928983.629", 3
    nqp_get_sc_object $P4242, "1303928976.25", 7
    $P4243 = $P4242."new"("$!compiler_progname" :named("name"))
    $P4240."add_attribute"($P4241, $P4243)
    nqp_get_sc_object $P4244, "1303928983.629", 3
    get_how $P4245, $P4244
    nqp_get_sc_object $P4246, "1303928983.629", 3
    nqp_get_sc_object $P4247, "1303928976.25", 7
    $P4248 = $P4247."new"("$!language" :named("name"))
    $P4245."add_attribute"($P4246, $P4248)
    .const 'Sub' $P4249 = "167_1303928992.215" 
    $P4250 = $P4249."get_lexinfo"()
    nqp_get_sc_object $P4251, "1303928983.629", 3
    $P4250."set_static_lexpad_value"("$?PACKAGE", $P4251)
    .const 'Sub' $P4252 = "167_1303928992.215" 
    $P4253 = $P4252."get_lexinfo"()
    $P4253."finish_static_lexpad"()
    .const 'Sub' $P4254 = "167_1303928992.215" 
    $P4255 = $P4254."get_lexinfo"()
    nqp_get_sc_object $P4256, "1303928983.629", 3
    $P4255."set_static_lexpad_value"("$?CLASS", $P4256)
    .const 'Sub' $P4257 = "167_1303928992.215" 
    $P4258 = $P4257."get_lexinfo"()
    $P4258."finish_static_lexpad"()
    nqp_get_sc_object $P4259, "1303928983.629", 3
    get_how $P4260, $P4259
    nqp_get_sc_object $P4261, "1303928983.629", 3
    nqp_get_sc_object $P4262, "1303928981.926", 5
    $P4260."set_default_parent"($P4261, $P4262)
    nqp_get_sc_object $P4263, "1303928976.25", 5
    $P4264 = $P4263."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P4264, cur_sc
    nqp_set_sc_object "1303928983.629", 4, $P4264
    nqp_get_sc_object $P4265, "1303928983.629", 4
    nqp_get_sc_object $P4266, "1303928983.629", 0
    nqp_get_package_through_who $P4267, $P4266, "HLL"
    nqp_get_package_through_who $P4268, $P4267, "CommandLine"
    get_who $P4269, $P4268
    set $P4269["Result"], $P4265
    nqp_get_sc_object $P4270, "1303928983.629", 4
    get_how $P4271, $P4270
    nqp_get_sc_object $P4272, "1303928983.629", 4
    nqp_get_sc_object $P4273, "1303928976.25", 7
    $P4274 = $P4273."new"("@!arguments" :named("name"))
    $P4271."add_attribute"($P4272, $P4274)
    nqp_get_sc_object $P4275, "1303928983.629", 4
    get_how $P4276, $P4275
    nqp_get_sc_object $P4277, "1303928983.629", 4
    nqp_get_sc_object $P4278, "1303928976.25", 7
    $P4279 = $P4278."new"("%!options" :named("name"))
    $P4276."add_attribute"($P4277, $P4279)
    .const 'Sub' $P4280 = "234_1303928992.215" 
    $P4281 = $P4280."get_lexinfo"()
    nqp_get_sc_object $P4282, "1303928983.629", 4
    $P4281."set_static_lexpad_value"("$?PACKAGE", $P4282)
    .const 'Sub' $P4283 = "234_1303928992.215" 
    $P4284 = $P4283."get_lexinfo"()
    $P4284."finish_static_lexpad"()
    .const 'Sub' $P4285 = "234_1303928992.215" 
    $P4286 = $P4285."get_lexinfo"()
    nqp_get_sc_object $P4287, "1303928983.629", 4
    $P4286."set_static_lexpad_value"("$?CLASS", $P4287)
    .const 'Sub' $P4288 = "234_1303928992.215" 
    $P4289 = $P4288."get_lexinfo"()
    $P4289."finish_static_lexpad"()
    nqp_get_sc_object $P4290, "1303928983.629", 4
    get_how $P4291, $P4290
    nqp_get_sc_object $P4292, "1303928983.629", 4
    nqp_get_sc_object $P4293, "1303928981.926", 5
    $P4291."set_default_parent"($P4292, $P4293)
    nqp_get_sc_object $P4294, "1303928976.25", 5
    $P4295 = $P4294."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4295, cur_sc
    nqp_set_sc_object "1303928983.629", 5, $P4295
    nqp_get_sc_object $P4296, "1303928983.629", 5
    nqp_get_sc_object $P4297, "1303928983.629", 0
    nqp_get_package_through_who $P4298, $P4297, "HLL"
    nqp_get_package_through_who $P4299, $P4298, "CommandLine"
    get_who $P4300, $P4299
    set $P4300["Parser"], $P4296
    nqp_get_sc_object $P4301, "1303928983.629", 5
    get_how $P4302, $P4301
    nqp_get_sc_object $P4303, "1303928983.629", 5
    nqp_get_sc_object $P4304, "1303928976.25", 7
    $P4305 = $P4304."new"("@!specs" :named("name"))
    $P4302."add_attribute"($P4303, $P4305)
    nqp_get_sc_object $P4306, "1303928983.629", 5
    get_how $P4307, $P4306
    nqp_get_sc_object $P4308, "1303928983.629", 5
    nqp_get_sc_object $P4309, "1303928976.25", 7
    $P4310 = $P4309."new"("%!options" :named("name"))
    $P4307."add_attribute"($P4308, $P4310)
    nqp_get_sc_object $P4311, "1303928983.629", 5
    get_how $P4312, $P4311
    nqp_get_sc_object $P4313, "1303928983.629", 5
    nqp_get_sc_object $P4314, "1303928976.25", 7
    $P4315 = $P4314."new"("%!stopper" :named("name"))
    $P4312."add_attribute"($P4313, $P4315)
    nqp_get_sc_object $P4316, "1303928983.629", 5
    get_how $P4317, $P4316
    nqp_get_sc_object $P4318, "1303928983.629", 5
    nqp_get_sc_object $P4319, "1303928976.25", 7
    $P4320 = $P4319."new"("$!stop-after-first-arg" :named("name"))
    $P4317."add_attribute"($P4318, $P4320)
    .const 'Sub' $P4321 = "242_1303928992.215" 
    $P4322 = $P4321."get_lexinfo"()
    nqp_get_sc_object $P4323, "1303928983.629", 5
    $P4322."set_static_lexpad_value"("$?PACKAGE", $P4323)
    .const 'Sub' $P4324 = "242_1303928992.215" 
    $P4325 = $P4324."get_lexinfo"()
    $P4325."finish_static_lexpad"()
    .const 'Sub' $P4326 = "242_1303928992.215" 
    $P4327 = $P4326."get_lexinfo"()
    nqp_get_sc_object $P4328, "1303928983.629", 5
    $P4327."set_static_lexpad_value"("$?CLASS", $P4328)
    .const 'Sub' $P4329 = "242_1303928992.215" 
    $P4330 = $P4329."get_lexinfo"()
    $P4330."finish_static_lexpad"()
    nqp_get_sc_object $P4331, "1303928983.629", 5
    get_how $P4332, $P4331
    nqp_get_sc_object $P4333, "1303928983.629", 5
    nqp_get_sc_object $P4334, "1303928981.926", 5
    $P4332."set_default_parent"($P4333, $P4334)
    nqp_get_sc_object $P4335, "1303928976.25", 5
    $P4336 = $P4335."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4336, cur_sc
    nqp_set_sc_object "1303928983.629", 6, $P4336
    nqp_get_sc_object $P4337, "1303928983.629", 6
    nqp_get_sc_object $P4338, "1303928983.629", 0
    nqp_get_package_through_who $P4339, $P4338, "HLL"
    nqp_get_package_through_who $P4340, $P4339, "Compiler"
    get_who $P4341, $P4340
    set $P4341["SerializationContextBuilder"], $P4337
    nqp_get_sc_object $P4342, "1303928976.25", 5
    $P4343 = $P4342."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P4343, cur_sc
    nqp_set_sc_object "1303928983.629", 7, $P4343
    .const 'Sub' $P4344 = "262_1303928992.215" 
    $P4345 = $P4344."get_lexinfo"()
    nqp_get_sc_object $P4346, "1303928983.629", 7
    $P4345."set_static_lexpad_value"("Event", $P4346)
    .const 'Sub' $P4347 = "262_1303928992.215" 
    $P4348 = $P4347."get_lexinfo"()
    $P4348."finish_static_lexpad"()
    nqp_get_sc_object $P4349, "1303928983.629", 7
    get_how $P4350, $P4349
    nqp_get_sc_object $P4351, "1303928983.629", 7
    nqp_get_sc_object $P4352, "1303928976.25", 7
    $P4353 = $P4352."new"("$!deserialize_past" :named("name"))
    $P4350."add_attribute"($P4351, $P4353)
    nqp_get_sc_object $P4354, "1303928983.629", 7
    get_how $P4355, $P4354
    nqp_get_sc_object $P4356, "1303928983.629", 7
    nqp_get_sc_object $P4357, "1303928976.25", 7
    $P4358 = $P4357."new"("$!fixup_past" :named("name"))
    $P4355."add_attribute"($P4356, $P4358)
    .const 'Sub' $P4359 = "264_1303928992.215" 
    $P4360 = $P4359."get_lexinfo"()
    nqp_get_sc_object $P4361, "1303928983.629", 7
    $P4360."set_static_lexpad_value"("$?PACKAGE", $P4361)
    .const 'Sub' $P4362 = "264_1303928992.215" 
    $P4363 = $P4362."get_lexinfo"()
    $P4363."finish_static_lexpad"()
    .const 'Sub' $P4364 = "264_1303928992.215" 
    $P4365 = $P4364."get_lexinfo"()
    nqp_get_sc_object $P4366, "1303928983.629", 7
    $P4365."set_static_lexpad_value"("$?CLASS", $P4366)
    .const 'Sub' $P4367 = "264_1303928992.215" 
    $P4368 = $P4367."get_lexinfo"()
    $P4368."finish_static_lexpad"()
    nqp_get_sc_object $P4369, "1303928983.629", 7
    get_how $P4370, $P4369
    nqp_get_sc_object $P4371, "1303928983.629", 7
    nqp_get_sc_object $P4372, "1303928981.926", 5
    $P4370."set_default_parent"($P4371, $P4372)
    nqp_get_sc_object $P4373, "1303928983.629", 6
    get_how $P4374, $P4373
    nqp_get_sc_object $P4375, "1303928983.629", 6
    nqp_get_sc_object $P4376, "1303928976.25", 7
    $P4377 = $P4376."new"("$!sc" :named("name"))
    $P4374."add_attribute"($P4375, $P4377)
    nqp_get_sc_object $P4378, "1303928983.629", 6
    get_how $P4379, $P4378
    nqp_get_sc_object $P4380, "1303928983.629", 6
    nqp_get_sc_object $P4381, "1303928976.25", 7
    $P4382 = $P4381."new"("$!handle" :named("name"))
    $P4379."add_attribute"($P4380, $P4382)
    nqp_get_sc_object $P4383, "1303928983.629", 6
    get_how $P4384, $P4383
    nqp_get_sc_object $P4385, "1303928983.629", 6
    nqp_get_sc_object $P4386, "1303928976.25", 7
    $P4387 = $P4386."new"("%!addr_to_slot" :named("name"))
    $P4384."add_attribute"($P4385, $P4387)
    nqp_get_sc_object $P4388, "1303928983.629", 6
    get_how $P4389, $P4388
    nqp_get_sc_object $P4390, "1303928983.629", 6
    nqp_get_sc_object $P4391, "1303928976.25", 7
    $P4392 = $P4391."new"("@!event_stream" :named("name"))
    $P4389."add_attribute"($P4390, $P4392)
    .const 'Sub' $P4393 = "262_1303928992.215" 
    $P4394 = $P4393."get_lexinfo"()
    nqp_get_sc_object $P4395, "1303928983.629", 6
    $P4394."set_static_lexpad_value"("$?PACKAGE", $P4395)
    .const 'Sub' $P4396 = "262_1303928992.215" 
    $P4397 = $P4396."get_lexinfo"()
    $P4397."finish_static_lexpad"()
    .const 'Sub' $P4398 = "262_1303928992.215" 
    $P4399 = $P4398."get_lexinfo"()
    nqp_get_sc_object $P4400, "1303928983.629", 6
    $P4399."set_static_lexpad_value"("$?CLASS", $P4400)
    .const 'Sub' $P4401 = "262_1303928992.215" 
    $P4402 = $P4401."get_lexinfo"()
    $P4402."finish_static_lexpad"()
    nqp_get_sc_object $P4403, "1303928983.629", 6
    get_how $P4404, $P4403
    nqp_get_sc_object $P4405, "1303928983.629", 6
    nqp_get_sc_object $P4406, "1303928981.926", 5
    $P4404."set_default_parent"($P4405, $P4406)
  if_4111_end:
    nqp_get_sc_object $P4504, "1303928983.629", 0
    set_hll_global "GLOBAL", $P4504
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303928992.215") :outer("10_1303928992.215")
.annotate 'line', 9
    .const 'Sub' $P477 = "119_1303928992.215" 
    capture_lex $P477
    .const 'Sub' $P452 = "118_1303928992.215" 
    capture_lex $P452
    .const 'Sub' $P447 = "117_1303928992.215" 
    capture_lex $P447
    .const 'Sub' $P432 = "116_1303928992.215" 
    capture_lex $P432
    .const 'Sub' $P422 = "115_1303928992.215" 
    capture_lex $P422
    .const 'Sub' $P418 = "114_1303928992.215" 
    capture_lex $P418
    .const 'Sub' $P414 = "113_1303928992.215" 
    capture_lex $P414
    .const 'Sub' $P411 = "112_1303928992.215" 
    capture_lex $P411
    .const 'Sub' $P409 = "111_1303928992.215" 
    capture_lex $P409
    .const 'Sub' $P407 = "110_1303928992.215" 
    capture_lex $P407
    .const 'Sub' $P399 = "109_1303928992.215" 
    capture_lex $P399
    .const 'Sub' $P396 = "108_1303928992.215" 
    capture_lex $P396
    .const 'Sub' $P392 = "107_1303928992.215" 
    capture_lex $P392
    .const 'Sub' $P358 = "106_1303928992.215" 
    capture_lex $P358
    .const 'Sub' $P353 = "105_1303928992.215" 
    capture_lex $P353
    .const 'Sub' $P344 = "103_1303928992.215" 
    capture_lex $P344
    .const 'Sub' $P338 = "101_1303928992.215" 
    capture_lex $P338
    .const 'Sub' $P325 = "98_1303928992.215" 
    capture_lex $P325
    .const 'Sub' $P293 = "93_1303928992.215" 
    capture_lex $P293
    .const 'Sub' $P287 = "91_1303928992.215" 
    capture_lex $P287
    .const 'Sub' $P282 = "89_1303928992.215" 
    capture_lex $P282
    .const 'Sub' $P276 = "87_1303928992.215" 
    capture_lex $P276
    .const 'Sub' $P270 = "85_1303928992.215" 
    capture_lex $P270
    .const 'Sub' $P265 = "83_1303928992.215" 
    capture_lex $P265
    .const 'Sub' $P260 = "81_1303928992.215" 
    capture_lex $P260
    .const 'Sub' $P255 = "79_1303928992.215" 
    capture_lex $P255
    .const 'Sub' $P250 = "77_1303928992.215" 
    capture_lex $P250
    .const 'Sub' $P245 = "75_1303928992.215" 
    capture_lex $P245
    .const 'Sub' $P240 = "73_1303928992.215" 
    capture_lex $P240
    .const 'Sub' $P235 = "71_1303928992.215" 
    capture_lex $P235
    .const 'Sub' $P230 = "69_1303928992.215" 
    capture_lex $P230
    .const 'Sub' $P218 = "65_1303928992.215" 
    capture_lex $P218
    .const 'Sub' $P205 = "63_1303928992.215" 
    capture_lex $P205
    .const 'Sub' $P193 = "61_1303928992.215" 
    capture_lex $P193
    .const 'Sub' $P187 = "59_1303928992.215" 
    capture_lex $P187
    .const 'Sub' $P180 = "57_1303928992.215" 
    capture_lex $P180
    .const 'Sub' $P174 = "55_1303928992.215" 
    capture_lex $P174
    .const 'Sub' $P167 = "53_1303928992.215" 
    capture_lex $P167
    .const 'Sub' $P161 = "51_1303928992.215" 
    capture_lex $P161
    .const 'Sub' $P154 = "49_1303928992.215" 
    capture_lex $P154
    .const 'Sub' $P148 = "47_1303928992.215" 
    capture_lex $P148
    .const 'Sub' $P142 = "45_1303928992.215" 
    capture_lex $P142
    .const 'Sub' $P133 = "43_1303928992.215" 
    capture_lex $P133
    .const 'Sub' $P125 = "41_1303928992.215" 
    capture_lex $P125
    .const 'Sub' $P117 = "40_1303928992.215" 
    capture_lex $P117
    .const 'Sub' $P111 = "38_1303928992.215" 
    capture_lex $P111
    .const 'Sub' $P106 = "36_1303928992.215" 
    capture_lex $P106
    .const 'Sub' $P98 = "34_1303928992.215" 
    capture_lex $P98
    .const 'Sub' $P92 = "32_1303928992.215" 
    capture_lex $P92
    .const 'Sub' $P86 = "30_1303928992.215" 
    capture_lex $P86
    .const 'Sub' $P80 = "28_1303928992.215" 
    capture_lex $P80
    .const 'Sub' $P35 = "14_1303928992.215" 
    capture_lex $P35
    .const 'Sub' $P28 = "12_1303928992.215" 
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
    unless_null $P25, vivify_299
    new $P25, "Undef"
  vivify_299:
    get_who $P26, $P25
    set $P27, $P26["Cursor"]
    unless_null $P27, vivify_300
    new $P27, "Undef"
  vivify_300:
    store_lex "$cursor_class", $P27
.annotate 'line', 851
    .const 'Sub' $P452 = "118_1303928992.215" 
    newclosure $P475, $P452
.annotate 'line', 9
    .return ($P475)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post298") :outer("11_1303928992.215")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1303928992.215" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P477 = "119_1303928992.215" 
    capture_lex $P477
    $P477()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block476"  :anon :subid("119_1303928992.215") :outer("11_1303928992.215")
.annotate 'line', 9
    nqp_get_sc_object $P478, "1303928983.629", 1
    .local pmc type_obj
    set type_obj, $P478
    get_how $P479, type_obj
    .const 'Sub' $P480 = "12_1303928992.215" 
    $P479."add_method"(type_obj, "ws", $P480)
    get_how $P481, type_obj
    get_global $P482, "!PREFIX__ws"
    $P481."add_method"(type_obj, "!PREFIX__ws", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "14_1303928992.215" 
    $P483."add_method"(type_obj, "termish", $P484)
    get_how $P485, type_obj
    get_global $P486, "!PREFIX__termish"
    $P485."add_method"(type_obj, "!PREFIX__termish", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "16_1303928992.215" 
    $P487."add_method"(type_obj, "term", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "17_1303928992.215" 
    $P489."add_method"(type_obj, "!PREFIX__term", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "18_1303928992.215" 
    $P491."add_method"(type_obj, "infix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "19_1303928992.215" 
    $P493."add_method"(type_obj, "!PREFIX__infix", $P494)
    get_how $P495, type_obj
    .const 'Sub' $P496 = "20_1303928992.215" 
    $P495."add_method"(type_obj, "prefix", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "21_1303928992.215" 
    $P497."add_method"(type_obj, "!PREFIX__prefix", $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "22_1303928992.215" 
    $P499."add_method"(type_obj, "postfix", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "23_1303928992.215" 
    $P501."add_method"(type_obj, "!PREFIX__postfix", $P502)
    get_how $P503, type_obj
    .const 'Sub' $P504 = "24_1303928992.215" 
    $P503."add_method"(type_obj, "circumfix", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "25_1303928992.215" 
    $P505."add_method"(type_obj, "!PREFIX__circumfix", $P506)
    get_how $P507, type_obj
    .const 'Sub' $P508 = "26_1303928992.215" 
    $P507."add_method"(type_obj, "postcircumfix", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "27_1303928992.215" 
    $P509."add_method"(type_obj, "!PREFIX__postcircumfix", $P510)
    get_how $P511, type_obj
    .const 'Sub' $P512 = "28_1303928992.215" 
    $P511."add_method"(type_obj, "term:sym<circumfix>", $P512)
    get_how $P513, type_obj
    get_global $P514, "!PREFIX__term:sym<circumfix>"
    $P513."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P514)
    get_how $P515, type_obj
    .const 'Sub' $P516 = "30_1303928992.215" 
    $P515."add_method"(type_obj, "infixish", $P516)
    get_how $P517, type_obj
    get_global $P518, "!PREFIX__infixish"
    $P517."add_method"(type_obj, "!PREFIX__infixish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "32_1303928992.215" 
    $P519."add_method"(type_obj, "prefixish", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__prefixish"
    $P521."add_method"(type_obj, "!PREFIX__prefixish", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "34_1303928992.215" 
    $P523."add_method"(type_obj, "postfixish", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__postfixish"
    $P525."add_method"(type_obj, "!PREFIX__postfixish", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "36_1303928992.215" 
    $P527."add_method"(type_obj, "nullterm", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__nullterm"
    $P529."add_method"(type_obj, "!PREFIX__nullterm", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "38_1303928992.215" 
    $P531."add_method"(type_obj, "nullterm_alt", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__nullterm_alt"
    $P533."add_method"(type_obj, "!PREFIX__nullterm_alt", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "40_1303928992.215" 
    $P535."add_method"(type_obj, "nulltermish", $P536)
    get_how $P537, type_obj
    .const 'Sub' $P538 = "41_1303928992.215" 
    $P537."add_method"(type_obj, "quote_delimited", $P538)
    get_how $P539, type_obj
    get_global $P540, "!PREFIX__quote_delimited"
    $P539."add_method"(type_obj, "!PREFIX__quote_delimited", $P540)
    get_how $P541, type_obj
    .const 'Sub' $P542 = "43_1303928992.215" 
    $P541."add_method"(type_obj, "quote_atom", $P542)
    get_how $P543, type_obj
    get_global $P544, "!PREFIX__quote_atom"
    $P543."add_method"(type_obj, "!PREFIX__quote_atom", $P544)
    get_how $P545, type_obj
    .const 'Sub' $P546 = "45_1303928992.215" 
    $P545."add_method"(type_obj, "decint", $P546)
    get_how $P547, type_obj
    get_global $P548, "!PREFIX__decint"
    $P547."add_method"(type_obj, "!PREFIX__decint", $P548)
    get_how $P549, type_obj
    .const 'Sub' $P550 = "47_1303928992.215" 
    $P549."add_method"(type_obj, "decints", $P550)
    get_how $P551, type_obj
    get_global $P552, "!PREFIX__decints"
    $P551."add_method"(type_obj, "!PREFIX__decints", $P552)
    get_how $P553, type_obj
    .const 'Sub' $P554 = "49_1303928992.215" 
    $P553."add_method"(type_obj, "hexint", $P554)
    get_how $P555, type_obj
    get_global $P556, "!PREFIX__hexint"
    $P555."add_method"(type_obj, "!PREFIX__hexint", $P556)
    get_how $P557, type_obj
    .const 'Sub' $P558 = "51_1303928992.215" 
    $P557."add_method"(type_obj, "hexints", $P558)
    get_how $P559, type_obj
    get_global $P560, "!PREFIX__hexints"
    $P559."add_method"(type_obj, "!PREFIX__hexints", $P560)
    get_how $P561, type_obj
    .const 'Sub' $P562 = "53_1303928992.215" 
    $P561."add_method"(type_obj, "octint", $P562)
    get_how $P563, type_obj
    get_global $P564, "!PREFIX__octint"
    $P563."add_method"(type_obj, "!PREFIX__octint", $P564)
    get_how $P565, type_obj
    .const 'Sub' $P566 = "55_1303928992.215" 
    $P565."add_method"(type_obj, "octints", $P566)
    get_how $P567, type_obj
    get_global $P568, "!PREFIX__octints"
    $P567."add_method"(type_obj, "!PREFIX__octints", $P568)
    get_how $P569, type_obj
    .const 'Sub' $P570 = "57_1303928992.215" 
    $P569."add_method"(type_obj, "binint", $P570)
    get_how $P571, type_obj
    get_global $P572, "!PREFIX__binint"
    $P571."add_method"(type_obj, "!PREFIX__binint", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "59_1303928992.215" 
    $P573."add_method"(type_obj, "binints", $P574)
    get_how $P575, type_obj
    get_global $P576, "!PREFIX__binints"
    $P575."add_method"(type_obj, "!PREFIX__binints", $P576)
    get_how $P577, type_obj
    .const 'Sub' $P578 = "61_1303928992.215" 
    $P577."add_method"(type_obj, "integer", $P578)
    get_how $P579, type_obj
    get_global $P580, "!PREFIX__integer"
    $P579."add_method"(type_obj, "!PREFIX__integer", $P580)
    get_how $P581, type_obj
    .const 'Sub' $P582 = "63_1303928992.215" 
    $P581."add_method"(type_obj, "dec_number", $P582)
    get_how $P583, type_obj
    get_global $P584, "!PREFIX__dec_number"
    $P583."add_method"(type_obj, "!PREFIX__dec_number", $P584)
    get_how $P585, type_obj
    .const 'Sub' $P586 = "65_1303928992.215" 
    $P585."add_method"(type_obj, "escale", $P586)
    get_how $P587, type_obj
    get_global $P588, "!PREFIX__escale"
    $P587."add_method"(type_obj, "!PREFIX__escale", $P588)
    get_how $P589, type_obj
    .const 'Sub' $P590 = "67_1303928992.215" 
    $P589."add_method"(type_obj, "quote_escape", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "68_1303928992.215" 
    $P591."add_method"(type_obj, "!PREFIX__quote_escape", $P592)
    get_how $P593, type_obj
    .const 'Sub' $P594 = "69_1303928992.215" 
    $P593."add_method"(type_obj, "quote_escape:sym<backslash>", $P594)
    get_how $P595, type_obj
    get_global $P596, "!PREFIX__quote_escape:sym<backslash>"
    $P595."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P596)
    get_how $P597, type_obj
    .const 'Sub' $P598 = "71_1303928992.215" 
    $P597."add_method"(type_obj, "quote_escape:sym<stopper>", $P598)
    get_how $P599, type_obj
    get_global $P600, "!PREFIX__quote_escape:sym<stopper>"
    $P599."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P600)
    get_how $P601, type_obj
    .const 'Sub' $P602 = "73_1303928992.215" 
    $P601."add_method"(type_obj, "quote_escape:sym<bs>", $P602)
    get_how $P603, type_obj
    get_global $P604, "!PREFIX__quote_escape:sym<bs>"
    $P603."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P604)
    get_how $P605, type_obj
    .const 'Sub' $P606 = "75_1303928992.215" 
    $P605."add_method"(type_obj, "quote_escape:sym<nl>", $P606)
    get_how $P607, type_obj
    get_global $P608, "!PREFIX__quote_escape:sym<nl>"
    $P607."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P608)
    get_how $P609, type_obj
    .const 'Sub' $P610 = "77_1303928992.215" 
    $P609."add_method"(type_obj, "quote_escape:sym<cr>", $P610)
    get_how $P611, type_obj
    get_global $P612, "!PREFIX__quote_escape:sym<cr>"
    $P611."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P612)
    get_how $P613, type_obj
    .const 'Sub' $P614 = "79_1303928992.215" 
    $P613."add_method"(type_obj, "quote_escape:sym<tab>", $P614)
    get_how $P615, type_obj
    get_global $P616, "!PREFIX__quote_escape:sym<tab>"
    $P615."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P616)
    get_how $P617, type_obj
    .const 'Sub' $P618 = "81_1303928992.215" 
    $P617."add_method"(type_obj, "quote_escape:sym<ff>", $P618)
    get_how $P619, type_obj
    get_global $P620, "!PREFIX__quote_escape:sym<ff>"
    $P619."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P620)
    get_how $P621, type_obj
    .const 'Sub' $P622 = "83_1303928992.215" 
    $P621."add_method"(type_obj, "quote_escape:sym<esc>", $P622)
    get_how $P623, type_obj
    get_global $P624, "!PREFIX__quote_escape:sym<esc>"
    $P623."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P624)
    get_how $P625, type_obj
    .const 'Sub' $P626 = "85_1303928992.215" 
    $P625."add_method"(type_obj, "quote_escape:sym<hex>", $P626)
    get_how $P627, type_obj
    get_global $P628, "!PREFIX__quote_escape:sym<hex>"
    $P627."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P628)
    get_how $P629, type_obj
    .const 'Sub' $P630 = "87_1303928992.215" 
    $P629."add_method"(type_obj, "quote_escape:sym<oct>", $P630)
    get_how $P631, type_obj
    get_global $P632, "!PREFIX__quote_escape:sym<oct>"
    $P631."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P632)
    get_how $P633, type_obj
    .const 'Sub' $P634 = "89_1303928992.215" 
    $P633."add_method"(type_obj, "quote_escape:sym<chr>", $P634)
    get_how $P635, type_obj
    get_global $P636, "!PREFIX__quote_escape:sym<chr>"
    $P635."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P636)
    get_how $P637, type_obj
    .const 'Sub' $P638 = "91_1303928992.215" 
    $P637."add_method"(type_obj, "quote_escape:sym<0>", $P638)
    get_how $P639, type_obj
    get_global $P640, "!PREFIX__quote_escape:sym<0>"
    $P639."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "93_1303928992.215" 
    $P641."add_method"(type_obj, "quote_escape:sym<misc>", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__quote_escape:sym<misc>"
    $P643."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "98_1303928992.215" 
    $P645."add_method"(type_obj, "charname", $P646)
    get_how $P647, type_obj
    get_global $P648, "!PREFIX__charname"
    $P647."add_method"(type_obj, "!PREFIX__charname", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "101_1303928992.215" 
    $P649."add_method"(type_obj, "charnames", $P650)
    get_how $P651, type_obj
    get_global $P652, "!PREFIX__charnames"
    $P651."add_method"(type_obj, "!PREFIX__charnames", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "103_1303928992.215" 
    $P653."add_method"(type_obj, "charspec", $P654)
    get_how $P655, type_obj
    get_global $P656, "!PREFIX__charspec"
    $P655."add_method"(type_obj, "!PREFIX__charspec", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "105_1303928992.215" 
    $P657."add_method"(type_obj, "O", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "106_1303928992.215" 
    $P659."add_method"(type_obj, "panic", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "107_1303928992.215" 
    $P661."add_method"(type_obj, "peek_delimiters", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "108_1303928992.215" 
    $P663."add_method"(type_obj, "quote_EXPR", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "109_1303928992.215" 
    $P665."add_method"(type_obj, "quotemod_check", $P666)
    get_how $P667, type_obj
    .const 'Sub' $P668 = "110_1303928992.215" 
    $P667."add_method"(type_obj, "starter", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "111_1303928992.215" 
    $P669."add_method"(type_obj, "stopper", $P670)
    get_how $P671, type_obj
    .const 'Sub' $P672 = "112_1303928992.215" 
    $P671."add_method"(type_obj, "split_words", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "113_1303928992.215" 
    $P673."add_method"(type_obj, "EXPR", $P674)
    get_how $P675, type_obj
    .const 'Sub' $P676 = "114_1303928992.215" 
    $P675."add_method"(type_obj, "EXPR_reduce", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "115_1303928992.215" 
    $P677."add_method"(type_obj, "ternary", $P678)
    get_how $P679, type_obj
    .const 'Sub' $P680 = "116_1303928992.215" 
    $P679."add_method"(type_obj, "MARKER", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "117_1303928992.215" 
    $P681."add_method"(type_obj, "MARKED", $P682)
    get_how $P683, type_obj
    .const 'Sub' $P684 = "118_1303928992.215" 
    $P683."add_method"(type_obj, "LANG", $P684)
    get_how $P685, type_obj
    $P686 = $P685."compose"(type_obj)
    .return ($P686)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx29_debug, debug_301
    rx29_cur."!cursor_debug"("START", "ws")
  debug_301:
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
    if_null rx29_debug, debug_302
    rx29_cur."!cursor_debug"("PASS", "ws", " at pos=", rx29_pos)
  debug_302:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 12
    if_null rx29_debug, debug_303
    rx29_cur."!cursor_debug"("NEXT", "ws")
  debug_303:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_304
    rx29_cur."!cursor_debug"("FAIL", "ws")
  debug_304:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303928992.215") :method
.annotate 'line', 12
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx36_debug, debug_305
    rx36_cur."!cursor_debug"("START", "termish")
  debug_305:
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
    if_null rx36_debug, debug_306
    rx36_cur."!cursor_debug"("PASS", "termish", " at pos=", rx36_pos)
  debug_306:
    .return (rx36_cur)
  rx36_restart:
.annotate 'line', 12
    if_null rx36_debug, debug_307
    rx36_cur."!cursor_debug"("NEXT", "termish")
  debug_307:
  rx36_fail:
    (rx36_rep, rx36_pos, $I10, $P10) = rx36_cur."!mark_fail"(0)
    lt rx36_pos, -1, rx36_done
    eq rx36_pos, -1, rx36_fail
    jump $I10
  rx36_done:
    rx36_cur."!cursor_fail"()
    if_null rx36_debug, debug_308
    rx36_cur."!cursor_debug"("FAIL", "termish")
  debug_308:
    .return (rx36_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303928992.215") :method
.annotate 'line', 12
    new $P38, "ResizablePMCArray"
    push $P38, ""
    .return ($P38)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303928992.215")
    .param pmc param_45
.annotate 'line', 22
    .lex "self", param_45
    $P46 = param_45."!protoregex"("term")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303928992.215")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("term")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303928992.215")
    .param pmc param_51
.annotate 'line', 23
    .lex "self", param_51
    $P52 = param_51."!protoregex"("infix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303928992.215")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("infix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303928992.215")
    .param pmc param_57
.annotate 'line', 24
    .lex "self", param_57
    $P58 = param_57."!protoregex"("prefix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303928992.215")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("prefix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303928992.215")
    .param pmc param_63
.annotate 'line', 25
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303928992.215")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303928992.215")
    .param pmc param_69
.annotate 'line', 26
    .lex "self", param_69
    $P70 = param_69."!protoregex"("circumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303928992.215")
    .param pmc param_72
.annotate 'line', 26
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("circumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303928992.215")
    .param pmc param_75
.annotate 'line', 27
    .lex "self", param_75
    $P76 = param_75."!protoregex"("postcircumfix")
    .return ($P76)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303928992.215")
    .param pmc param_78
.annotate 'line', 27
    .lex "self", param_78
    $P79 = param_78."!PREFIX__!protoregex"("postcircumfix")
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx81_debug, debug_309
    rx81_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_309:
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
    if_null rx81_debug, debug_310
    rx81_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx81_pos)
  debug_310:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 12
    if_null rx81_debug, debug_311
    rx81_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_311:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_312
    rx81_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_312:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303928992.215") :method
.annotate 'line', 12
    $P83 = self."!PREFIX__!subrule"("circumfix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx87_debug, debug_313
    rx87_cur."!cursor_debug"("START", "infixish")
  debug_313:
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
    if_null rx87_debug, debug_314
    rx87_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx87_pos)
  debug_314:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 12
    if_null rx87_debug, debug_315
    rx87_cur."!cursor_debug"("NEXT", "infixish")
  debug_315:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_316
    rx87_cur."!cursor_debug"("FAIL", "infixish")
  debug_316:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303928992.215") :method
.annotate 'line', 12
    $P89 = self."!PREFIX__!subrule"("infix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx93_debug, debug_317
    rx93_cur."!cursor_debug"("START", "prefixish")
  debug_317:
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
    if_null rx93_debug, debug_318
    rx93_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx93_pos)
  debug_318:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 12
    if_null rx93_debug, debug_319
    rx93_cur."!cursor_debug"("NEXT", "prefixish")
  debug_319:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_320
    rx93_cur."!cursor_debug"("FAIL", "prefixish")
  debug_320:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303928992.215") :method
.annotate 'line', 12
    $P95 = self."!PREFIX__!subrule"("prefix", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx99_debug, debug_321
    rx99_cur."!cursor_debug"("START", "postfixish")
  debug_321:
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
    if_null rx99_debug, debug_322
    rx99_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx99_pos)
  debug_322:
    .return (rx99_cur)
  rx99_restart:
.annotate 'line', 12
    if_null rx99_debug, debug_323
    rx99_cur."!cursor_debug"("NEXT", "postfixish")
  debug_323:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_324
    rx99_cur."!cursor_debug"("FAIL", "postfixish")
  debug_324:
    .return (rx99_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303928992.215") :method
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
.sub "nullterm"  :subid("36_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx107_debug, debug_325
    rx107_cur."!cursor_debug"("START", "nullterm")
  debug_325:
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
    if_null rx107_debug, debug_326
    rx107_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx107_pos)
  debug_326:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 12
    if_null rx107_debug, debug_327
    rx107_cur."!cursor_debug"("NEXT", "nullterm")
  debug_327:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_328
    rx107_cur."!cursor_debug"("FAIL", "nullterm")
  debug_328:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303928992.215") :method
.annotate 'line', 12
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx112_debug, debug_329
    rx112_cur."!cursor_debug"("START", "nullterm_alt")
  debug_329:
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
    if_null rx112_debug, debug_330
    rx112_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx112_pos)
  debug_330:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 12
    if_null rx112_debug, debug_331
    rx112_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_331:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_332
    rx112_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_332:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303928992.215") :method
.annotate 'line', 12
    $P114 = self."!PREFIX__!subrule"("nullterm", "")
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303928992.215") :outer("11_1303928992.215")
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
.sub "quote_delimited"  :subid("41_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx126_debug, debug_333
    rx126_cur."!cursor_debug"("START", "quote_delimited")
  debug_333:
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
    if_null rx126_debug, debug_334
    rx126_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx126_pos)
  debug_334:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 42
    if_null rx126_debug, debug_335
    rx126_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_335:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_336
    rx126_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_336:
    .return (rx126_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303928992.215") :method
.annotate 'line', 42
    $P128 = self."!PREFIX__!subrule"("starter", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx134_debug, debug_337
    rx134_cur."!cursor_debug"("START", "quote_atom")
  debug_337:
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
    if_null rx134_debug, debug_338
    rx134_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx134_pos)
  debug_338:
    .return (rx134_cur)
  rx134_restart:
.annotate 'line', 42
    if_null rx134_debug, debug_339
    rx134_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_339:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_340
    rx134_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_340:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303928992.215") :method
.annotate 'line', 42
    new $P136, "ResizablePMCArray"
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx143_debug, debug_341
    rx143_cur."!cursor_debug"("START", "decint")
  debug_341:
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
    if_null rx143_debug, debug_342
    rx143_cur."!cursor_debug"("PASS", "decint", " at pos=", rx143_pos)
  debug_342:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 42
    if_null rx143_debug, debug_343
    rx143_cur."!cursor_debug"("NEXT", "decint")
  debug_343:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_344
    rx143_cur."!cursor_debug"("FAIL", "decint")
  debug_344:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303928992.215") :method
.annotate 'line', 42
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx149_debug, debug_345
    rx149_cur."!cursor_debug"("START", "decints")
  debug_345:
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
    if_null rx149_debug, debug_346
    rx149_cur."!cursor_debug"("PASS", "decints", " at pos=", rx149_pos)
  debug_346:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 42
    if_null rx149_debug, debug_347
    rx149_cur."!cursor_debug"("NEXT", "decints")
  debug_347:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_348
    rx149_cur."!cursor_debug"("FAIL", "decints")
  debug_348:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303928992.215") :method
.annotate 'line', 42
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx155_debug, debug_349
    rx155_cur."!cursor_debug"("START", "hexint")
  debug_349:
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
    if_null rx155_debug, debug_350
    rx155_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx155_pos)
  debug_350:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 42
    if_null rx155_debug, debug_351
    rx155_cur."!cursor_debug"("NEXT", "hexint")
  debug_351:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_352
    rx155_cur."!cursor_debug"("FAIL", "hexint")
  debug_352:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303928992.215") :method
.annotate 'line', 42
    new $P157, "ResizablePMCArray"
    push $P157, ""
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx162_debug, debug_353
    rx162_cur."!cursor_debug"("START", "hexints")
  debug_353:
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
    if_null rx162_debug, debug_354
    rx162_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx162_pos)
  debug_354:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 42
    if_null rx162_debug, debug_355
    rx162_cur."!cursor_debug"("NEXT", "hexints")
  debug_355:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_356
    rx162_cur."!cursor_debug"("FAIL", "hexints")
  debug_356:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303928992.215") :method
.annotate 'line', 42
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx168_debug, debug_357
    rx168_cur."!cursor_debug"("START", "octint")
  debug_357:
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
    if_null rx168_debug, debug_358
    rx168_cur."!cursor_debug"("PASS", "octint", " at pos=", rx168_pos)
  debug_358:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 42
    if_null rx168_debug, debug_359
    rx168_cur."!cursor_debug"("NEXT", "octint")
  debug_359:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_360
    rx168_cur."!cursor_debug"("FAIL", "octint")
  debug_360:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303928992.215") :method
.annotate 'line', 42
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx175_debug, debug_361
    rx175_cur."!cursor_debug"("START", "octints")
  debug_361:
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
    if_null rx175_debug, debug_362
    rx175_cur."!cursor_debug"("PASS", "octints", " at pos=", rx175_pos)
  debug_362:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 42
    if_null rx175_debug, debug_363
    rx175_cur."!cursor_debug"("NEXT", "octints")
  debug_363:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_364
    rx175_cur."!cursor_debug"("FAIL", "octints")
  debug_364:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303928992.215") :method
.annotate 'line', 42
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx181_debug, debug_365
    rx181_cur."!cursor_debug"("START", "binint")
  debug_365:
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
    if_null rx181_debug, debug_366
    rx181_cur."!cursor_debug"("PASS", "binint", " at pos=", rx181_pos)
  debug_366:
    .return (rx181_cur)
  rx181_restart:
.annotate 'line', 42
    if_null rx181_debug, debug_367
    rx181_cur."!cursor_debug"("NEXT", "binint")
  debug_367:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_368
    rx181_cur."!cursor_debug"("FAIL", "binint")
  debug_368:
    .return (rx181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303928992.215") :method
.annotate 'line', 42
    new $P183, "ResizablePMCArray"
    push $P183, ""
    .return ($P183)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx188_debug, debug_369
    rx188_cur."!cursor_debug"("START", "binints")
  debug_369:
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
    if_null rx188_debug, debug_370
    rx188_cur."!cursor_debug"("PASS", "binints", " at pos=", rx188_pos)
  debug_370:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 42
    if_null rx188_debug, debug_371
    rx188_cur."!cursor_debug"("NEXT", "binints")
  debug_371:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_372
    rx188_cur."!cursor_debug"("FAIL", "binints")
  debug_372:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303928992.215") :method
.annotate 'line', 42
    new $P190, "ResizablePMCArray"
    push $P190, ""
    .return ($P190)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx194_debug, debug_373
    rx194_cur."!cursor_debug"("START", "integer")
  debug_373:
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
    if_null rx194_debug, debug_374
    rx194_cur."!cursor_debug"("PASS", "integer", " at pos=", rx194_pos)
  debug_374:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 42
    if_null rx194_debug, debug_375
    rx194_cur."!cursor_debug"("NEXT", "integer")
  debug_375:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_376
    rx194_cur."!cursor_debug"("FAIL", "integer")
  debug_376:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303928992.215") :method
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
.sub "dec_number"  :subid("63_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx206_debug, debug_377
    rx206_cur."!cursor_debug"("START", "dec_number")
  debug_377:
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
    if_null rx206_debug, debug_378
    rx206_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx206_pos)
  debug_378:
    .return (rx206_cur)
  rx206_restart:
.annotate 'line', 42
    if_null rx206_debug, debug_379
    rx206_cur."!cursor_debug"("NEXT", "dec_number")
  debug_379:
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    if_null rx206_debug, debug_380
    rx206_cur."!cursor_debug"("FAIL", "dec_number")
  debug_380:
    .return (rx206_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303928992.215") :method
.annotate 'line', 42
    new $P208, "ResizablePMCArray"
    push $P208, ""
    push $P208, ""
    push $P208, "."
    .return ($P208)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx219_debug, debug_381
    rx219_cur."!cursor_debug"("START", "escale")
  debug_381:
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
    if_null rx219_debug, debug_382
    rx219_cur."!cursor_debug"("PASS", "escale", " at pos=", rx219_pos)
  debug_382:
    .return (rx219_cur)
  rx219_restart:
.annotate 'line', 42
    if_null rx219_debug, debug_383
    rx219_cur."!cursor_debug"("NEXT", "escale")
  debug_383:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_384
    rx219_cur."!cursor_debug"("FAIL", "escale")
  debug_384:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303928992.215") :method
.annotate 'line', 42
    new $P221, "ResizablePMCArray"
    push $P221, "e"
    push $P221, "E"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303928992.215")
    .param pmc param_225
.annotate 'line', 88
    .lex "self", param_225
    $P226 = param_225."!protoregex"("quote_escape")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303928992.215")
    .param pmc param_228
.annotate 'line', 88
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("quote_escape")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx231_debug, debug_385
    rx231_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_385:
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
    if_null rx231_debug, debug_386
    rx231_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx231_pos)
  debug_386:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 42
    if_null rx231_debug, debug_387
    rx231_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_387:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_388
    rx231_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_388:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303928992.215") :method
.annotate 'line', 42
    new $P233, "ResizablePMCArray"
    push $P233, "\\\\"
    .return ($P233)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx236_debug, debug_389
    rx236_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_389:
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
    if_null rx236_debug, debug_390
    rx236_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx236_pos)
  debug_390:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 42
    if_null rx236_debug, debug_391
    rx236_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_391:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_392
    rx236_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_392:
    .return (rx236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303928992.215") :method
.annotate 'line', 42
    new $P238, "ResizablePMCArray"
    push $P238, "\\"
    .return ($P238)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx241_debug, debug_393
    rx241_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_393:
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
    if_null rx241_debug, debug_394
    rx241_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx241_pos)
  debug_394:
    .return (rx241_cur)
  rx241_restart:
.annotate 'line', 42
    if_null rx241_debug, debug_395
    rx241_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_395:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_396
    rx241_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_396:
    .return (rx241_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303928992.215") :method
.annotate 'line', 42
    new $P243, "ResizablePMCArray"
    push $P243, "\\b"
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx246_debug, debug_397
    rx246_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_397:
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
    if_null rx246_debug, debug_398
    rx246_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx246_pos)
  debug_398:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 42
    if_null rx246_debug, debug_399
    rx246_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_399:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_400
    rx246_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_400:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303928992.215") :method
.annotate 'line', 42
    new $P248, "ResizablePMCArray"
    push $P248, "\\n"
    .return ($P248)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx251_debug, debug_401
    rx251_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_401:
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
    if_null rx251_debug, debug_402
    rx251_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx251_pos)
  debug_402:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 42
    if_null rx251_debug, debug_403
    rx251_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_403:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_404
    rx251_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_404:
    .return (rx251_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303928992.215") :method
.annotate 'line', 42
    new $P253, "ResizablePMCArray"
    push $P253, "\\r"
    .return ($P253)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx256_debug, debug_405
    rx256_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_405:
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
    if_null rx256_debug, debug_406
    rx256_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx256_pos)
  debug_406:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 42
    if_null rx256_debug, debug_407
    rx256_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_407:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_408
    rx256_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_408:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303928992.215") :method
.annotate 'line', 42
    new $P258, "ResizablePMCArray"
    push $P258, "\\t"
    .return ($P258)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx261_debug, debug_409
    rx261_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_409:
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
    if_null rx261_debug, debug_410
    rx261_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx261_pos)
  debug_410:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 42
    if_null rx261_debug, debug_411
    rx261_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_411:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_412
    rx261_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_412:
    .return (rx261_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303928992.215") :method
.annotate 'line', 42
    new $P263, "ResizablePMCArray"
    push $P263, "\\f"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx266_debug, debug_413
    rx266_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_413:
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
    if_null rx266_debug, debug_414
    rx266_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx266_pos)
  debug_414:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 42
    if_null rx266_debug, debug_415
    rx266_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_415:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_416
    rx266_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_416:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303928992.215") :method
.annotate 'line', 42
    new $P268, "ResizablePMCArray"
    push $P268, "\\e"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx271_debug, debug_417
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_417:
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
    if_null rx271_debug, debug_418
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx271_pos)
  debug_418:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 42
    if_null rx271_debug, debug_419
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_419:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_420
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_420:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303928992.215") :method
.annotate 'line', 42
    new $P273, "ResizablePMCArray"
    push $P273, unicode:"\\x"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx277_debug, debug_421
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_421:
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
    if_null rx277_debug, debug_422
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx277_pos)
  debug_422:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 42
    if_null rx277_debug, debug_423
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_423:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_424
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_424:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303928992.215") :method
.annotate 'line', 42
    new $P279, "ResizablePMCArray"
    push $P279, "\\o"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx283_debug, debug_425
    rx283_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_425:
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
    if_null rx283_debug, debug_426
    rx283_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx283_pos)
  debug_426:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 42
    if_null rx283_debug, debug_427
    rx283_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_427:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_428
    rx283_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_428:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303928992.215") :method
.annotate 'line', 42
    new $P285, "ResizablePMCArray"
    push $P285, "\\c"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx288_debug, debug_429
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_429:
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
    if_null rx288_debug, debug_430
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx288_pos)
  debug_430:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 42
    if_null rx288_debug, debug_431
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_431:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_432
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_432:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303928992.215") :method
.annotate 'line', 42
    new $P290, "ResizablePMCArray"
    push $P290, "\\0"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303928992.215") :method :outer("11_1303928992.215")
.annotate 'line', 42
    .const 'Sub' $P313 = "97_1303928992.215" 
    capture_lex $P313
    .const 'Sub' $P306 = "96_1303928992.215" 
    capture_lex $P306
    .const 'Sub' $P301 = "95_1303928992.215" 
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
    if_null rx294_debug, debug_433
    rx294_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_433:
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
    .const 'Sub' $P301 = "95_1303928992.215" 
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
    .const 'Sub' $P306 = "96_1303928992.215" 
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
    .const 'Sub' $P313 = "97_1303928992.215" 
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
    if_null rx294_debug, debug_441
    rx294_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx294_pos)
  debug_441:
    .return (rx294_cur)
  rx294_restart:
.annotate 'line', 42
    if_null rx294_debug, debug_442
    rx294_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_442:
  rx294_fail:
    (rx294_rep, rx294_pos, $I10, $P10) = rx294_cur."!mark_fail"(0)
    lt rx294_pos, -1, rx294_done
    eq rx294_pos, -1, rx294_fail
    jump $I10
  rx294_done:
    rx294_cur."!cursor_fail"()
    if_null rx294_debug, debug_443
    rx294_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_443:
    .return (rx294_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303928992.215") :method
.annotate 'line', 42
    new $P296, "ResizablePMCArray"
    push $P296, ""
    .return ($P296)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block300"  :anon :subid("95_1303928992.215") :outer("93_1303928992.215")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block305"  :anon :subid("96_1303928992.215") :method :outer("93_1303928992.215")
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
    if_null rx307_debug, debug_434
    rx307_cur."!cursor_debug"("START", "")
  debug_434:
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
    if_null rx307_debug, debug_435
    rx307_cur."!cursor_debug"("PASS", "", " at pos=", rx307_pos)
  debug_435:
    .return (rx307_cur)
  rx307_restart:
    if_null rx307_debug, debug_436
    rx307_cur."!cursor_debug"("NEXT", "")
  debug_436:
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    if_null rx307_debug, debug_437
    rx307_cur."!cursor_debug"("FAIL", "")
  debug_437:
    .return (rx307_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block312"  :anon :subid("97_1303928992.215") :outer("93_1303928992.215")
.annotate 'line', 114
    find_lex $P314, "$/"
    unless_null $P314, vivify_438
    new $P314, "Undef"
  vivify_438:
    $P315 = $P314."CURSOR"()
    new $P316, "String"
    assign $P316, "Unrecognized backslash sequence: '\\"
    find_lex $P317, "$/"
    unless_null $P317, vivify_439
    $P317 = root_new ['parrot';'Hash']
  vivify_439:
    set $P318, $P317["x"]
    unless_null $P318, vivify_440
    new $P318, "Undef"
  vivify_440:
    $S319 = $P318."Str"()
    concat $P320, $P316, $S319
    concat $P321, $P320, "'"
    $P322 = $P315."panic"($P321)
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1303928992.215") :method :outer("11_1303928992.215")
.annotate 'line', 42
    .const 'Sub' $P335 = "100_1303928992.215" 
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
    if_null rx326_debug, debug_444
    rx326_cur."!cursor_debug"("START", "charname")
  debug_444:
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
    .const 'Sub' $P335 = "100_1303928992.215" 
    capture_lex $P335
    $P10 = rx326_cur."before"($P335)
    unless $P10, rx326_fail
  alt331_end:
.annotate 'line', 120
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "charname")
    if_null rx326_debug, debug_449
    rx326_cur."!cursor_debug"("PASS", "charname", " at pos=", rx326_pos)
  debug_449:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 42
    if_null rx326_debug, debug_450
    rx326_cur."!cursor_debug"("NEXT", "charname")
  debug_450:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_451
    rx326_cur."!cursor_debug"("FAIL", "charname")
  debug_451:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303928992.215") :method
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
.sub "_block334"  :anon :subid("100_1303928992.215") :method :outer("98_1303928992.215")
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
    if_null rx336_debug, debug_445
    rx336_cur."!cursor_debug"("START", "")
  debug_445:
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
    if_null rx336_debug, debug_446
    rx336_cur."!cursor_debug"("PASS", "", " at pos=", rx336_pos)
  debug_446:
    .return (rx336_cur)
  rx336_restart:
    if_null rx336_debug, debug_447
    rx336_cur."!cursor_debug"("NEXT", "")
  debug_447:
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    if_null rx336_debug, debug_448
    rx336_cur."!cursor_debug"("FAIL", "")
  debug_448:
    .return (rx336_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx339_debug, debug_452
    rx339_cur."!cursor_debug"("START", "charnames")
  debug_452:
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
    if_null rx339_debug, debug_453
    rx339_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx339_pos)
  debug_453:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 42
    if_null rx339_debug, debug_454
    rx339_cur."!cursor_debug"("NEXT", "charnames")
  debug_454:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_455
    rx339_cur."!cursor_debug"("FAIL", "charnames")
  debug_455:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303928992.215") :method
.annotate 'line', 42
    new $P341, "ResizablePMCArray"
    push $P341, ""
    .return ($P341)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303928992.215") :method :outer("11_1303928992.215")
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
    if_null rx345_debug, debug_456
    rx345_cur."!cursor_debug"("START", "charspec")
  debug_456:
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
    if_null rx345_debug, debug_457
    rx345_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx345_pos)
  debug_457:
    .return (rx345_cur)
  rx345_restart:
.annotate 'line', 42
    if_null rx345_debug, debug_458
    rx345_cur."!cursor_debug"("NEXT", "charspec")
  debug_458:
  rx345_fail:
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    if_null rx345_debug, debug_459
    rx345_cur."!cursor_debug"("FAIL", "charspec")
  debug_459:
    .return (rx345_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303928992.215") :method
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
.sub "O"  :subid("105_1303928992.215") :outer("11_1303928992.215")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356 :optional
    .param int has_param_356 :opt_flag
.annotate 'line', 177
    .lex "self", param_354
    .lex "$spec", param_355
    if has_param_356, optparam_460
    new $P357, "Undef"
    set param_356, $P357
  optparam_460:
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
.sub "panic"  :subid("106_1303928992.215") :outer("11_1303928992.215")
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
    unless_null $P371, vivify_461
    $P371 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    $P371."push"(" at line ")
.annotate 'line', 329
    find_lex $P372, "@args"
    unless_null $P372, vivify_462
    $P372 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    get_hll_global $P373, "GLOBAL"
    nqp_get_package_through_who $P374, $P373, "HLL"
    get_who $P375, $P374
    set $P376, $P375["Compiler"]
    find_lex $P377, "$target"
    unless_null $P377, vivify_463
    new $P377, "Undef"
  vivify_463:
    find_lex $P378, "$pos"
    unless_null $P378, vivify_464
    new $P378, "Undef"
  vivify_464:
    $P379 = $P376."lineof"($P377, $P378)
    add $P380, $P379, 1
    $P372."push"($P380)
.annotate 'line', 330
    find_lex $P381, "@args"
    unless_null $P381, vivify_465
    $P381 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    $P381."push"(", near \"")
.annotate 'line', 331
    find_lex $P382, "@args"
    unless_null $P382, vivify_466
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    find_lex $P383, "$target"
    unless_null $P383, vivify_467
    new $P383, "Undef"
  vivify_467:
    set $S384, $P383
    find_lex $P385, "$pos"
    unless_null $P385, vivify_468
    new $P385, "Undef"
  vivify_468:
    set $I386, $P385
    substr $S387, $S384, $I386, 10
    escape $S388, $S387
    $P382."push"($S388)
.annotate 'line', 332
    find_lex $P389, "@args"
    unless_null $P389, vivify_469
    $P389 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    $P389."push"("\"")
.annotate 'line', 333
    find_lex $P390, "@args"
    unless_null $P390, vivify_470
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
    join $S391, "", $P390
    die $S391
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1303928992.215") :outer("11_1303928992.215")
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
.sub "quote_EXPR"  :subid("108_1303928992.215") :outer("11_1303928992.215")
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
.sub "quotemod_check"  :subid("109_1303928992.215") :outer("11_1303928992.215")
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 479
    .lex "self", param_400
    .lex "$mod", param_401
    find_lex $P402, "$mod"
    unless_null $P402, vivify_471
    new $P402, "Undef"
  vivify_471:
    find_dynamic_lex $P405, "%*QUOTEMOD"
    unless_null $P405, vivify_472
    get_hll_global $P403, "GLOBAL"
    get_who $P404, $P403
    set $P405, $P404["%QUOTEMOD"]
    unless_null $P405, vivify_473
    die "Contextual %*QUOTEMOD not found"
  vivify_473:
  vivify_472:
    set $P406, $P405[$P402]
    unless_null $P406, vivify_474
    new $P406, "Undef"
  vivify_474:
    .return ($P406)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1303928992.215") :outer("11_1303928992.215")
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
.sub "stopper"  :subid("111_1303928992.215") :outer("11_1303928992.215")
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
.sub "split_words"  :subid("112_1303928992.215") :outer("11_1303928992.215")
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
.sub "EXPR"  :subid("113_1303928992.215") :outer("11_1303928992.215")
    .param pmc param_415
    .param pmc param_416 :optional
    .param int has_param_416 :opt_flag
.annotate 'line', 561
    .lex "self", param_415
    if has_param_416, optparam_475
    new $P417, "String"
    assign $P417, ""
    set param_416, $P417
  optparam_475:
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
.sub "EXPR_reduce"  :subid("114_1303928992.215") :outer("11_1303928992.215")
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
.sub "ternary"  :subid("115_1303928992.215") :outer("11_1303928992.215")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 811
    .lex "self", param_423
    .lex "$match", param_424
.annotate 'line', 812
    find_lex $P425, "$match"
    unless_null $P425, vivify_476
    $P425 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    set $P426, $P425[1]
    unless_null $P426, vivify_477
    new $P426, "Undef"
  vivify_477:
    find_lex $P427, "$match"
    unless_null $P427, vivify_478
    $P427 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P427
  vivify_478:
    set $P427[2], $P426
.annotate 'line', 813
    find_lex $P428, "$match"
    unless_null $P428, vivify_479
    $P428 = root_new ['parrot';'Hash']
  vivify_479:
    set $P429, $P428["infix"]
    unless_null $P429, vivify_480
    $P429 = root_new ['parrot';'Hash']
  vivify_480:
    set $P430, $P429["EXPR"]
    unless_null $P430, vivify_481
    new $P430, "Undef"
  vivify_481:
    find_lex $P431, "$match"
    unless_null $P431, vivify_482
    $P431 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P431
  vivify_482:
    set $P431[1], $P430
.annotate 'line', 811
    .return ($P430)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1303928992.215") :outer("11_1303928992.215")
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
    unless_null $P440, vivify_483
    new $P440, "Undef"
  vivify_483:
    find_lex $P441, "$pos"
    unless_null $P441, vivify_484
    new $P441, "Undef"
  vivify_484:
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
    unless_null $P443, vivify_485
    new $P443, "Undef"
  vivify_485:
    find_lex $P444, "$markname"
    unless_null $P444, vivify_486
    new $P444, "Undef"
  vivify_486:
    find_lex $P445, "%markhash"
    unless_null $P445, vivify_487
    $P445 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P445
  vivify_487:
    set $P445[$P444], $P443
.annotate 'line', 827
    find_lex $P446, "self"
    $P446."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1303928992.215") :outer("11_1303928992.215")
    .param pmc param_448
    .param pmc param_449
.annotate 'line', 831
    .lex "self", param_448
    .lex "$markname", param_449
.annotate 'line', 832
    find_lex $P450, "self"
    find_lex $P451, "$markname"
    unless_null $P451, vivify_488
    new $P451, "Undef"
  vivify_488:
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
.sub "LANG"  :subid("118_1303928992.215") :outer("11_1303928992.215")
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
    unless_null $P459, vivify_489
    new $P459, "Undef"
  vivify_489:
    find_dynamic_lex $P462, "%*LANG"
    unless_null $P462, vivify_490
    get_hll_global $P460, "GLOBAL"
    get_who $P461, $P460
    set $P462, $P461["%LANG"]
    unless_null $P462, vivify_491
    die "Contextual %*LANG not found"
  vivify_491:
  vivify_490:
    set $P463, $P462[$P459]
    unless_null $P463, vivify_492
    new $P463, "Undef"
  vivify_492:
    store_lex "$lang_cursor", $P463
.annotate 'line', 853
    find_lex $P464, "$lang"
    unless_null $P464, vivify_493
    new $P464, "Undef"
  vivify_493:
    concat $P465, $P464, "-actions"
    find_dynamic_lex $P468, "%*LANG"
    unless_null $P468, vivify_494
    get_hll_global $P466, "GLOBAL"
    get_who $P467, $P466
    set $P468, $P467["%LANG"]
    unless_null $P468, vivify_495
    die "Contextual %*LANG not found"
  vivify_495:
  vivify_494:
    set $P469, $P468[$P465]
    unless_null $P469, vivify_496
    new $P469, "Undef"
  vivify_496:
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
    unless_null $P471, vivify_497
    new $P471, "Undef"
  vivify_497:
    find_lex $P472, "$regex"
    unless_null $P472, vivify_498
    new $P472, "Undef"
  vivify_498:
    set $S473, $P472
    $P474 = $P471.$S473()
.annotate 'line', 851
    .return ($P474)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block687"  :subid("120_1303928992.215") :outer("10_1303928992.215")
.annotate 'line', 867
    .const 'Sub' $P1373 = "166_1303928992.215" 
    capture_lex $P1373
    .const 'Sub' $P1356 = "165_1303928992.215" 
    capture_lex $P1356
    .const 'Sub' $P1333 = "163_1303928992.215" 
    capture_lex $P1333
    .const 'Sub' $P1305 = "162_1303928992.215" 
    capture_lex $P1305
    .const 'Sub' $P1288 = "161_1303928992.215" 
    capture_lex $P1288
    .const 'Sub' $P1283 = "160_1303928992.215" 
    capture_lex $P1283
    .const 'Sub' $P1275 = "159_1303928992.215" 
    capture_lex $P1275
    .const 'Sub' $P1260 = "158_1303928992.215" 
    capture_lex $P1260
    .const 'Sub' $P1245 = "157_1303928992.215" 
    capture_lex $P1245
    .const 'Sub' $P1240 = "156_1303928992.215" 
    capture_lex $P1240
    .const 'Sub' $P1235 = "155_1303928992.215" 
    capture_lex $P1235
    .const 'Sub' $P1230 = "154_1303928992.215" 
    capture_lex $P1230
    .const 'Sub' $P1225 = "153_1303928992.215" 
    capture_lex $P1225
    .const 'Sub' $P1220 = "152_1303928992.215" 
    capture_lex $P1220
    .const 'Sub' $P1215 = "151_1303928992.215" 
    capture_lex $P1215
    .const 'Sub' $P1207 = "150_1303928992.215" 
    capture_lex $P1207
    .const 'Sub' $P1202 = "149_1303928992.215" 
    capture_lex $P1202
    .const 'Sub' $P1188 = "148_1303928992.215" 
    capture_lex $P1188
    .const 'Sub' $P1106 = "146_1303928992.215" 
    capture_lex $P1106
    .const 'Sub' $P1029 = "143_1303928992.215" 
    capture_lex $P1029
    .const 'Sub' $P1022 = "142_1303928992.215" 
    capture_lex $P1022
    .const 'Sub' $P1015 = "141_1303928992.215" 
    capture_lex $P1015
    .const 'Sub' $P1008 = "140_1303928992.215" 
    capture_lex $P1008
    .const 'Sub' $P1001 = "139_1303928992.215" 
    capture_lex $P1001
    .const 'Sub' $P994 = "138_1303928992.215" 
    capture_lex $P994
    .const 'Sub' $P986 = "137_1303928992.215" 
    capture_lex $P986
    .const 'Sub' $P978 = "136_1303928992.215" 
    capture_lex $P978
    .const 'Sub' $P972 = "135_1303928992.215" 
    capture_lex $P972
    .const 'Sub' $P964 = "134_1303928992.215" 
    capture_lex $P964
    .const 'Sub' $P956 = "133_1303928992.215" 
    capture_lex $P956
    .const 'Sub' $P848 = "130_1303928992.215" 
    capture_lex $P848
    .const 'Sub' $P808 = "127_1303928992.215" 
    capture_lex $P808
    .const 'Sub' $P800 = "126_1303928992.215" 
    capture_lex $P800
    .const 'Sub' $P761 = "123_1303928992.215" 
    capture_lex $P761
    .const 'Sub' $P689 = "121_1303928992.215" 
    capture_lex $P689
.annotate 'line', 868
    .const 'Sub' $P689 = "121_1303928992.215" 
    newclosure $P757, $P689
    .lex "string_to_int", $P757
.annotate 'line', 867
    find_lex $P758, "string_to_int"
    find_lex $P759, "$?PACKAGE"
    get_who $P760, $P759
    set $P760["string_to_int"], $P758
.annotate 'line', 887
    .const 'Sub' $P761 = "123_1303928992.215" 
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
    .const 'Sub' $P1356 = "165_1303928992.215" 
    newclosure $P1371, $P1356
.annotate 'line', 867
    .return ($P1371)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post499") :outer("120_1303928992.215")
.annotate 'line', 867
    .const 'Sub' $P688 = "120_1303928992.215" 
    .local pmc block
    set block, $P688
    .const 'Sub' $P1373 = "166_1303928992.215" 
    capture_lex $P1373
    $P1373()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1372"  :anon :subid("166_1303928992.215") :outer("120_1303928992.215")
.annotate 'line', 867
    nqp_get_sc_object $P1374, "1303928983.629", 2
    .local pmc type_obj
    set type_obj, $P1374
    get_how $P1375, type_obj
    .const 'Sub' $P1376 = "126_1303928992.215" 
    $P1375."add_method"(type_obj, "CTXSAVE", $P1376)
    get_how $P1377, type_obj
    .const 'Sub' $P1378 = "127_1303928992.215" 
    $P1377."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1378)
    get_how $P1379, type_obj
    .const 'Sub' $P1380 = "130_1303928992.215" 
    $P1379."add_method"(type_obj, "EXPR", $P1380)
    get_how $P1381, type_obj
    .const 'Sub' $P1382 = "133_1303928992.215" 
    $P1381."add_method"(type_obj, "term:sym<circumfix>", $P1382)
    get_how $P1383, type_obj
    .const 'Sub' $P1384 = "134_1303928992.215" 
    $P1383."add_method"(type_obj, "termish", $P1384)
    get_how $P1385, type_obj
    .const 'Sub' $P1386 = "135_1303928992.215" 
    $P1385."add_method"(type_obj, "nullterm", $P1386)
    get_how $P1387, type_obj
    .const 'Sub' $P1388 = "136_1303928992.215" 
    $P1387."add_method"(type_obj, "nullterm_alt", $P1388)
    get_how $P1389, type_obj
    .const 'Sub' $P1390 = "137_1303928992.215" 
    $P1389."add_method"(type_obj, "integer", $P1390)
    get_how $P1391, type_obj
    .const 'Sub' $P1392 = "138_1303928992.215" 
    $P1391."add_method"(type_obj, "dec_number", $P1392)
    get_how $P1393, type_obj
    .const 'Sub' $P1394 = "139_1303928992.215" 
    $P1393."add_method"(type_obj, "decint", $P1394)
    get_how $P1395, type_obj
    .const 'Sub' $P1396 = "140_1303928992.215" 
    $P1395."add_method"(type_obj, "hexint", $P1396)
    get_how $P1397, type_obj
    .const 'Sub' $P1398 = "141_1303928992.215" 
    $P1397."add_method"(type_obj, "octint", $P1398)
    get_how $P1399, type_obj
    .const 'Sub' $P1400 = "142_1303928992.215" 
    $P1399."add_method"(type_obj, "binint", $P1400)
    get_how $P1401, type_obj
    .const 'Sub' $P1402 = "143_1303928992.215" 
    $P1401."add_method"(type_obj, "quote_EXPR", $P1402)
    get_how $P1403, type_obj
    .const 'Sub' $P1404 = "146_1303928992.215" 
    $P1403."add_method"(type_obj, "quote_delimited", $P1404)
    get_how $P1405, type_obj
    .const 'Sub' $P1406 = "148_1303928992.215" 
    $P1405."add_method"(type_obj, "quote_atom", $P1406)
    get_how $P1407, type_obj
    .const 'Sub' $P1408 = "149_1303928992.215" 
    $P1407."add_method"(type_obj, "quote_escape:sym<backslash>", $P1408)
    get_how $P1409, type_obj
    .const 'Sub' $P1410 = "150_1303928992.215" 
    $P1409."add_method"(type_obj, "quote_escape:sym<stopper>", $P1410)
    get_how $P1411, type_obj
    .const 'Sub' $P1412 = "151_1303928992.215" 
    $P1411."add_method"(type_obj, "quote_escape:sym<bs>", $P1412)
    get_how $P1413, type_obj
    .const 'Sub' $P1414 = "152_1303928992.215" 
    $P1413."add_method"(type_obj, "quote_escape:sym<nl>", $P1414)
    get_how $P1415, type_obj
    .const 'Sub' $P1416 = "153_1303928992.215" 
    $P1415."add_method"(type_obj, "quote_escape:sym<cr>", $P1416)
    get_how $P1417, type_obj
    .const 'Sub' $P1418 = "154_1303928992.215" 
    $P1417."add_method"(type_obj, "quote_escape:sym<tab>", $P1418)
    get_how $P1419, type_obj
    .const 'Sub' $P1420 = "155_1303928992.215" 
    $P1419."add_method"(type_obj, "quote_escape:sym<ff>", $P1420)
    get_how $P1421, type_obj
    .const 'Sub' $P1422 = "156_1303928992.215" 
    $P1421."add_method"(type_obj, "quote_escape:sym<esc>", $P1422)
    get_how $P1423, type_obj
    .const 'Sub' $P1424 = "157_1303928992.215" 
    $P1423."add_method"(type_obj, "quote_escape:sym<hex>", $P1424)
    get_how $P1425, type_obj
    .const 'Sub' $P1426 = "158_1303928992.215" 
    $P1425."add_method"(type_obj, "quote_escape:sym<oct>", $P1426)
    get_how $P1427, type_obj
    .const 'Sub' $P1428 = "159_1303928992.215" 
    $P1427."add_method"(type_obj, "quote_escape:sym<chr>", $P1428)
    get_how $P1429, type_obj
    .const 'Sub' $P1430 = "160_1303928992.215" 
    $P1429."add_method"(type_obj, "quote_escape:sym<0>", $P1430)
    get_how $P1431, type_obj
    .const 'Sub' $P1432 = "161_1303928992.215" 
    $P1431."add_method"(type_obj, "quote_escape:sym<misc>", $P1432)
    get_how $P1433, type_obj
    .const 'Sub' $P1434 = "162_1303928992.215" 
    $P1433."add_method"(type_obj, "charname", $P1434)
    get_how $P1435, type_obj
    .const 'Sub' $P1436 = "163_1303928992.215" 
    $P1435."add_method"(type_obj, "charnames", $P1436)
    get_how $P1437, type_obj
    .const 'Sub' $P1438 = "165_1303928992.215" 
    $P1437."add_method"(type_obj, "charspec", $P1438)
    get_how $P1439, type_obj
    $P1440 = $P1439."compose"(type_obj)
    .return ($P1440)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_690
    .param pmc param_691
.annotate 'line', 868
    .const 'Sub' $P707 = "122_1303928992.215" 
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
    unless_null $P695, vivify_500
    new $P695, "Undef"
  vivify_500:
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
    unless_null $P701, vivify_501
    new $P701, "Undef"
  vivify_501:
    set $N702, $P701
    find_lex $P703, "$len"
    unless_null $P703, vivify_502
    new $P703, "Undef"
  vivify_502:
    set $N704, $P703
    islt $I705, $N702, $N704
    unless $I705, loop753_done
  loop753_redo:
    .const 'Sub' $P707 = "122_1303928992.215" 
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
    unless_null $P756, vivify_517
    new $P756, "Undef"
  vivify_517:
.annotate 'line', 868
    .return ($P756)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block706"  :anon :subid("122_1303928992.215") :outer("121_1303928992.215")
.annotate 'line', 874
    new $P708, "Undef"
    .lex "$char", $P708
.annotate 'line', 876
    new $P709, "Undef"
    .lex "$digitval", $P709
.annotate 'line', 874
    find_lex $P710, "$src"
    unless_null $P710, vivify_503
    new $P710, "Undef"
  vivify_503:
    set $S711, $P710
    find_lex $P712, "$i"
    unless_null $P712, vivify_504
    new $P712, "Undef"
  vivify_504:
    set $I713, $P712
    substr $S714, $S711, $I713, 1
    new $P715, 'String'
    set $P715, $S714
    store_lex "$char", $P715
.annotate 'line', 875
    find_lex $P717, "$char"
    unless_null $P717, vivify_505
    new $P717, "Undef"
  vivify_505:
    set $S718, $P717
    iseq $I719, $S718, "_"
    unless $I719, if_716_end
    set $I720, .CONTROL_LOOP_NEXT
    die 0, $I720
  if_716_end:
.annotate 'line', 876
    find_lex $P721, "$char"
    unless_null $P721, vivify_506
    new $P721, "Undef"
  vivify_506:
    set $S722, $P721
    index $I723, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S722
    new $P724, 'Integer'
    set $P724, $I723
    store_lex "$digitval", $P724
.annotate 'line', 877
    find_lex $P725, "$digitval"
    unless_null $P725, vivify_507
    new $P725, "Undef"
  vivify_507:
    div $P726, $P725, 2
    set $I727, $P726
    new $P728, 'Integer'
    set $P728, $I727
    store_lex "$digitval", $P728
.annotate 'line', 878
    find_lex $P732, "$digitval"
    unless_null $P732, vivify_508
    new $P732, "Undef"
  vivify_508:
    set $N733, $P732
    islt $I734, $N733, 0.0
    unless $I734, unless_731
    new $P730, 'Integer'
    set $P730, $I734
    goto unless_731_end
  unless_731:
    find_lex $P735, "$digitval"
    unless_null $P735, vivify_509
    new $P735, "Undef"
  vivify_509:
    set $N736, $P735
    find_lex $P737, "$base"
    unless_null $P737, vivify_510
    new $P737, "Undef"
  vivify_510:
    set $N738, $P737
    isge $I739, $N736, $N738
    new $P730, 'Integer'
    set $P730, $I739
  unless_731_end:
    unless $P730, if_729_end
.annotate 'line', 879
    find_lex $P740, "$src"
    unless_null $P740, vivify_511
    new $P740, "Undef"
  vivify_511:
    new $P741, 'String'
    set $P741, "Invalid radix conversion of character '"
    find_lex $P742, "$char"
    unless_null $P742, vivify_512
    new $P742, "Undef"
  vivify_512:
    concat $P743, $P741, $P742
    concat $P744, $P743, "'"
    $P740."panic"($P744)
  if_729_end:
.annotate 'line', 881
    find_lex $P745, "$base"
    unless_null $P745, vivify_513
    new $P745, "Undef"
  vivify_513:
    find_lex $P746, "$result"
    unless_null $P746, vivify_514
    new $P746, "Undef"
  vivify_514:
    mul $P747, $P745, $P746
    find_lex $P748, "$digitval"
    unless_null $P748, vivify_515
    new $P748, "Undef"
  vivify_515:
    add $P749, $P747, $P748
    store_lex "$result", $P749
.annotate 'line', 882
    find_lex $P750, "$i"
    unless_null $P750, vivify_516
    new $P750, "Undef"
  vivify_516:
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
.sub "ints_to_string"  :subid("123_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_762
.annotate 'line', 887
    .const 'Sub' $P768 = "124_1303928992.215" 
    capture_lex $P768
    .lex "$ints", param_762
.annotate 'line', 888
    find_lex $P765, "$ints"
    unless_null $P765, vivify_518
    new $P765, "Undef"
  vivify_518:
    does $I766, $P765, "array"
    if $I766, if_764
.annotate 'line', 895
    find_lex $P788, "$ints"
    unless_null $P788, vivify_519
    new $P788, "Undef"
  vivify_519:
    $I789 = $P788."ast"()
    chr $S790, $I789
    new $P791, 'String'
    set $P791, $S790
.annotate 'line', 894
    set $P763, $P791
.annotate 'line', 888
    goto if_764_end
  if_764:
    .const 'Sub' $P768 = "124_1303928992.215" 
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
.sub "_block767"  :anon :subid("124_1303928992.215") :outer("123_1303928992.215")
.annotate 'line', 888
    .const 'Sub' $P776 = "125_1303928992.215" 
    capture_lex $P776
.annotate 'line', 889
    new $P769, "Undef"
    .lex "$result", $P769
    new $P770, "String"
    assign $P770, ""
    store_lex "$result", $P770
.annotate 'line', 890
    find_lex $P772, "$ints"
    unless_null $P772, vivify_520
    new $P772, "Undef"
  vivify_520:
    defined $I773, $P772
    unless $I773, for_undef_521
    iter $P771, $P772
    new $P784, 'ExceptionHandler'
    set_label $P784, loop783_handler
    $P784."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P784
  loop783_test:
    unless $P771, loop783_done
    shift $P774, $P771
  loop783_redo:
    .const 'Sub' $P776 = "125_1303928992.215" 
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
  for_undef_521:
    find_lex $P786, "$result"
    unless_null $P786, vivify_524
    new $P786, "Undef"
  vivify_524:
.annotate 'line', 888
    .return ($P786)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block775"  :anon :subid("125_1303928992.215") :outer("124_1303928992.215")
    .param pmc param_777
.annotate 'line', 890
    .lex "$_", param_777
.annotate 'line', 891
    find_lex $P778, "$result"
    unless_null $P778, vivify_522
    new $P778, "Undef"
  vivify_522:
    find_lex $P779, "$_"
    unless_null $P779, vivify_523
    new $P779, "Undef"
  vivify_523:
    $I780 = $P779."ast"()
    chr $S781, $I780
    concat $P782, $P778, $S781
    store_lex "$result", $P782
.annotate 'line', 890
    .return ($P782)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1303928992.215") :outer("120_1303928992.215")
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
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_809
    .param pmc param_810
.annotate 'line', 914
    .const 'Sub' $P822 = "128_1303928992.215" 
    capture_lex $P822
    .lex "self", param_809
    .lex "$block", param_810
.annotate 'line', 915
    new $P811, "Undef"
    .lex "$outer_ctx", $P811
    find_dynamic_lex $P814, "%*COMPILING"
    unless_null $P814, vivify_525
    get_hll_global $P812, "GLOBAL"
    get_who $P813, $P812
    set $P814, $P813["%COMPILING"]
    unless_null $P814, vivify_526
    die "Contextual %*COMPILING not found"
  vivify_526:
  vivify_525:
    set $P815, $P814["%?OPTIONS"]
    unless_null $P815, vivify_527
    $P815 = root_new ['parrot';'Hash']
  vivify_527:
    set $P816, $P815["outer_ctx"]
    unless_null $P816, vivify_528
    new $P816, "Undef"
  vivify_528:
    store_lex "$outer_ctx", $P816
.annotate 'line', 916
    find_lex $P819, "$outer_ctx"
    unless_null $P819, vivify_529
    new $P819, "Undef"
  vivify_529:
    defined $I820, $P819
    if $I820, if_818
    new $P817, 'Integer'
    set $P817, $I820
    goto if_818_end
  if_818:
    .const 'Sub' $P822 = "128_1303928992.215" 
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
.sub "_block821"  :anon :subid("128_1303928992.215") :outer("127_1303928992.215")
.annotate 'line', 916
    .const 'Sub' $P836 = "129_1303928992.215" 
    capture_lex $P836
.annotate 'line', 917
    $P823 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P823
    find_lex $P824, "$outer_ctx"
    unless_null $P824, vivify_530
    new $P824, "Undef"
  vivify_530:
    getattribute $P825, $P824, "current_namespace"
    $P826 = $P825."get_name"()
    store_lex "@ns", $P826
.annotate 'line', 918
    find_lex $P827, "@ns"
    unless_null $P827, vivify_531
    $P827 = root_new ['parrot';'ResizablePMCArray']
  vivify_531:
    $P827."shift"()
.annotate 'line', 919
    find_lex $P828, "$block"
    unless_null $P828, vivify_532
    new $P828, "Undef"
  vivify_532:
    find_lex $P829, "@ns"
    unless_null $P829, vivify_533
    $P829 = root_new ['parrot';'ResizablePMCArray']
  vivify_533:
    $P828."namespace"($P829)
.annotate 'line', 920
    find_lex $P831, "$outer_ctx"
    unless_null $P831, vivify_534
    new $P831, "Undef"
  vivify_534:
    $P832 = $P831."lexpad_full"()
    defined $I833, $P832
    unless $I833, for_undef_535
    iter $P830, $P832
    new $P845, 'ExceptionHandler'
    set_label $P845, loop844_handler
    $P845."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P845
  loop844_test:
    unless $P830, loop844_done
    shift $P834, $P830
  loop844_redo:
    .const 'Sub' $P836 = "129_1303928992.215" 
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
  for_undef_535:
.annotate 'line', 916
    .return ($P830)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block835"  :anon :subid("129_1303928992.215") :outer("128_1303928992.215")
    .param pmc param_837
.annotate 'line', 920
    .lex "$_", param_837
.annotate 'line', 921
    find_lex $P838, "$block"
    unless_null $P838, vivify_536
    new $P838, "Undef"
  vivify_536:
    find_lex $P839, "$_"
    unless_null $P839, vivify_537
    new $P839, "Undef"
  vivify_537:
    $P840 = $P839."key"()
    find_lex $P841, "$_"
    unless_null $P841, vivify_538
    new $P841, "Undef"
  vivify_538:
    $P842 = $P841."value"()
    $P843 = $P838."symbol"($P840, "lexical" :named("scope"), $P842 :named("value"))
.annotate 'line', 920
    .return ($P843)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_851
    .param pmc param_852
    .param pmc param_853 :optional
    .param int has_param_853 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P938 = "132_1303928992.215" 
    capture_lex $P938
    .const 'Sub' $P902 = "131_1303928992.215" 
    capture_lex $P902
    new $P850, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P850, control_849
    push_eh $P850
    .lex "self", param_851
    .lex "$/", param_852
    if has_param_853, optparam_539
    new $P854, "Undef"
    set param_853, $P854
  optparam_539:
    .lex "$key", param_853
.annotate 'line', 929
    new $P855, "Undef"
    .lex "$past", $P855
.annotate 'line', 928
    find_lex $P857, "$key"
    unless_null $P857, vivify_540
    new $P857, "Undef"
  vivify_540:
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
    unless_null $P861, vivify_541
    new $P861, "Undef"
  vivify_541:
    $P862 = $P861."ast"()
    set $P860, $P862
    defined $I864, $P860
    if $I864, default_863
    find_lex $P865, "$/"
    unless_null $P865, vivify_542
    $P865 = root_new ['parrot';'Hash']
  vivify_542:
    set $P866, $P865["OPER"]
    unless_null $P866, vivify_543
    new $P866, "Undef"
  vivify_543:
    $P867 = $P866."ast"()
    set $P860, $P867
  default_863:
    store_lex "$past", $P860
.annotate 'line', 930
    find_lex $P869, "$past"
    unless_null $P869, vivify_544
    new $P869, "Undef"
  vivify_544:
    if $P869, unless_868_end
.annotate 'line', 931
    get_hll_global $P870, "GLOBAL"
    nqp_get_package_through_who $P871, $P870, "PAST"
    get_who $P872, $P871
    set $P873, $P872["Op"]
    find_lex $P874, "$/"
    unless_null $P874, vivify_545
    new $P874, "Undef"
  vivify_545:
    $P875 = $P873."new"($P874 :named("node"))
    store_lex "$past", $P875
.annotate 'line', 932
    find_lex $P877, "$/"
    unless_null $P877, vivify_546
    $P877 = root_new ['parrot';'Hash']
  vivify_546:
    set $P878, $P877["OPER"]
    unless_null $P878, vivify_547
    $P878 = root_new ['parrot';'Hash']
  vivify_547:
    set $P879, $P878["O"]
    unless_null $P879, vivify_548
    $P879 = root_new ['parrot';'Hash']
  vivify_548:
    set $P880, $P879["pasttype"]
    unless_null $P880, vivify_549
    new $P880, "Undef"
  vivify_549:
    if $P880, if_876
.annotate 'line', 933
    find_lex $P888, "$/"
    unless_null $P888, vivify_550
    $P888 = root_new ['parrot';'Hash']
  vivify_550:
    set $P889, $P888["OPER"]
    unless_null $P889, vivify_551
    $P889 = root_new ['parrot';'Hash']
  vivify_551:
    set $P890, $P889["O"]
    unless_null $P890, vivify_552
    $P890 = root_new ['parrot';'Hash']
  vivify_552:
    set $P891, $P890["pirop"]
    unless_null $P891, vivify_553
    new $P891, "Undef"
  vivify_553:
    unless $P891, if_887_end
    find_lex $P892, "$past"
    unless_null $P892, vivify_554
    new $P892, "Undef"
  vivify_554:
    find_lex $P893, "$/"
    unless_null $P893, vivify_555
    $P893 = root_new ['parrot';'Hash']
  vivify_555:
    set $P894, $P893["OPER"]
    unless_null $P894, vivify_556
    $P894 = root_new ['parrot';'Hash']
  vivify_556:
    set $P895, $P894["O"]
    unless_null $P895, vivify_557
    $P895 = root_new ['parrot';'Hash']
  vivify_557:
    set $P896, $P895["pirop"]
    unless_null $P896, vivify_558
    new $P896, "Undef"
  vivify_558:
    set $S897, $P896
    $P892."pirop"($S897)
  if_887_end:
    goto if_876_end
  if_876:
.annotate 'line', 932
    find_lex $P881, "$past"
    unless_null $P881, vivify_559
    new $P881, "Undef"
  vivify_559:
    find_lex $P882, "$/"
    unless_null $P882, vivify_560
    $P882 = root_new ['parrot';'Hash']
  vivify_560:
    set $P883, $P882["OPER"]
    unless_null $P883, vivify_561
    $P883 = root_new ['parrot';'Hash']
  vivify_561:
    set $P884, $P883["O"]
    unless_null $P884, vivify_562
    $P884 = root_new ['parrot';'Hash']
  vivify_562:
    set $P885, $P884["pasttype"]
    unless_null $P885, vivify_563
    new $P885, "Undef"
  vivify_563:
    set $S886, $P885
    $P881."pasttype"($S886)
  if_876_end:
.annotate 'line', 934
    find_lex $P899, "$past"
    unless_null $P899, vivify_564
    new $P899, "Undef"
  vivify_564:
    $P900 = $P899."name"()
    if $P900, unless_898_end
    .const 'Sub' $P902 = "131_1303928992.215" 
    capture_lex $P902
    $P902()
  unless_898_end:
  unless_868_end:
.annotate 'line', 940
    find_lex $P925, "$key"
    unless_null $P925, vivify_572
    new $P925, "Undef"
  vivify_572:
    set $S926, $P925
    iseq $I927, $S926, "POSTFIX"
    if $I927, if_924
.annotate 'line', 942
    find_lex $P933, "$/"
    unless_null $P933, vivify_573
    new $P933, "Undef"
  vivify_573:
    $P934 = $P933."list"()
    defined $I935, $P934
    unless $I935, for_undef_574
    iter $P932, $P934
    new $P950, 'ExceptionHandler'
    set_label $P950, loop949_handler
    $P950."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P950
  loop949_test:
    unless $P932, loop949_done
    shift $P936, $P932
  loop949_redo:
    .const 'Sub' $P938 = "132_1303928992.215" 
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
  for_undef_574:
.annotate 'line', 941
    goto if_924_end
  if_924:
.annotate 'line', 940
    find_lex $P928, "$past"
    unless_null $P928, vivify_578
    new $P928, "Undef"
  vivify_578:
    find_lex $P929, "$/"
    unless_null $P929, vivify_579
    $P929 = root_new ['parrot';'ResizablePMCArray']
  vivify_579:
    set $P930, $P929[0]
    unless_null $P930, vivify_580
    new $P930, "Undef"
  vivify_580:
    $P931 = $P930."ast"()
    $P928."unshift"($P931)
  if_924_end:
.annotate 'line', 944
    find_lex $P952, "$/"
    find_lex $P953, "$past"
    unless_null $P953, vivify_581
    new $P953, "Undef"
  vivify_581:
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
.sub "_block901"  :anon :subid("131_1303928992.215") :outer("130_1303928992.215")
.annotate 'line', 936
    new $P903, "Undef"
    .lex "$name", $P903
.annotate 'line', 935
    find_lex $P905, "$key"
    unless_null $P905, vivify_565
    new $P905, "Undef"
  vivify_565:
    set $S906, $P905
    iseq $I907, $S906, "LIST"
    unless $I907, if_904_end
    new $P908, "String"
    assign $P908, "infix"
    store_lex "$key", $P908
  if_904_end:
.annotate 'line', 936
    find_lex $P909, "$key"
    unless_null $P909, vivify_566
    new $P909, "Undef"
  vivify_566:
    set $S910, $P909
    downcase $S911, $S910
    new $P912, 'String'
    set $P912, $S911
    concat $P913, $P912, ":<"
    find_lex $P914, "$/"
    unless_null $P914, vivify_567
    $P914 = root_new ['parrot';'Hash']
  vivify_567:
    set $P915, $P914["OPER"]
    unless_null $P915, vivify_568
    $P915 = root_new ['parrot';'Hash']
  vivify_568:
    set $P916, $P915["sym"]
    unless_null $P916, vivify_569
    new $P916, "Undef"
  vivify_569:
    concat $P917, $P913, $P916
    concat $P918, $P917, ">"
    store_lex "$name", $P918
.annotate 'line', 937
    find_lex $P919, "$past"
    unless_null $P919, vivify_570
    new $P919, "Undef"
  vivify_570:
    new $P920, "String"
    assign $P920, "&"
    find_lex $P921, "$name"
    unless_null $P921, vivify_571
    new $P921, "Undef"
  vivify_571:
    concat $P922, $P920, $P921
    $P923 = $P919."name"($P922)
.annotate 'line', 934
    .return ($P923)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block937"  :anon :subid("132_1303928992.215") :outer("130_1303928992.215")
    .param pmc param_939
.annotate 'line', 942
    .lex "$_", param_939
    find_lex $P942, "$_"
    unless_null $P942, vivify_575
    new $P942, "Undef"
  vivify_575:
    $P943 = $P942."ast"()
    defined $I944, $P943
    if $I944, if_941
    new $P940, 'Integer'
    set $P940, $I944
    goto if_941_end
  if_941:
    find_lex $P945, "$past"
    unless_null $P945, vivify_576
    new $P945, "Undef"
  vivify_576:
    find_lex $P946, "$_"
    unless_null $P946, vivify_577
    new $P946, "Undef"
  vivify_577:
    $P947 = $P946."ast"()
    $P948 = $P945."push"($P947)
    set $P940, $P948
  if_941_end:
    .return ($P940)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_957
    .param pmc param_958
.annotate 'line', 947
    .lex "self", param_957
    .lex "$/", param_958
    find_lex $P959, "$/"
    find_lex $P960, "$/"
    unless_null $P960, vivify_582
    $P960 = root_new ['parrot';'Hash']
  vivify_582:
    set $P961, $P960["circumfix"]
    unless_null $P961, vivify_583
    new $P961, "Undef"
  vivify_583:
    $P962 = $P961."ast"()
    $P963 = $P959."!make"($P962)
    .return ($P963)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_965
    .param pmc param_966
.annotate 'line', 949
    .lex "self", param_965
    .lex "$/", param_966
    find_lex $P967, "$/"
    find_lex $P968, "$/"
    unless_null $P968, vivify_584
    $P968 = root_new ['parrot';'Hash']
  vivify_584:
    set $P969, $P968["term"]
    unless_null $P969, vivify_585
    new $P969, "Undef"
  vivify_585:
    $P970 = $P969."ast"()
    $P971 = $P967."!make"($P970)
    .return ($P971)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303928992.215") :outer("120_1303928992.215")
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
.sub "nullterm_alt"  :subid("136_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 951
    .lex "self", param_979
    .lex "$/", param_980
    find_lex $P981, "$/"
    find_lex $P982, "$/"
    unless_null $P982, vivify_586
    $P982 = root_new ['parrot';'Hash']
  vivify_586:
    set $P983, $P982["term"]
    unless_null $P983, vivify_587
    new $P983, "Undef"
  vivify_587:
    $P984 = $P983."ast"()
    $P985 = $P981."!make"($P984)
    .return ($P985)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_987
    .param pmc param_988
.annotate 'line', 953
    .lex "self", param_987
    .lex "$/", param_988
    find_lex $P989, "$/"
    find_lex $P990, "$/"
    unless_null $P990, vivify_588
    $P990 = root_new ['parrot';'Hash']
  vivify_588:
    set $P991, $P990["VALUE"]
    unless_null $P991, vivify_589
    new $P991, "Undef"
  vivify_589:
    $P992 = $P991."ast"()
    $P993 = $P989."!make"($P992)
    .return ($P993)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_995
    .param pmc param_996
.annotate 'line', 955
    .lex "self", param_995
    .lex "$/", param_996
    find_lex $P997, "$/"
    find_lex $P998, "$/"
    unless_null $P998, vivify_590
    new $P998, "Undef"
  vivify_590:
    set $N999, $P998
    $P1000 = $P997."!make"($N999)
    .return ($P1000)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1002
    .param pmc param_1003
.annotate 'line', 957
    .lex "self", param_1002
    .lex "$/", param_1003
    find_lex $P1004, "$/"
    find_lex $P1005, "$/"
    unless_null $P1005, vivify_591
    new $P1005, "Undef"
  vivify_591:
    $P1006 = "string_to_int"($P1005, 10)
    $P1007 = $P1004."!make"($P1006)
    .return ($P1007)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1009
    .param pmc param_1010
.annotate 'line', 958
    .lex "self", param_1009
    .lex "$/", param_1010
    find_lex $P1011, "$/"
    find_lex $P1012, "$/"
    unless_null $P1012, vivify_592
    new $P1012, "Undef"
  vivify_592:
    $P1013 = "string_to_int"($P1012, 16)
    $P1014 = $P1011."!make"($P1013)
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 959
    .lex "self", param_1016
    .lex "$/", param_1017
    find_lex $P1018, "$/"
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_593
    new $P1019, "Undef"
  vivify_593:
    $P1020 = "string_to_int"($P1019, 8)
    $P1021 = $P1018."!make"($P1020)
    .return ($P1021)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1023
    .param pmc param_1024
.annotate 'line', 960
    .lex "self", param_1023
    .lex "$/", param_1024
    find_lex $P1025, "$/"
    find_lex $P1026, "$/"
    unless_null $P1026, vivify_594
    new $P1026, "Undef"
  vivify_594:
    $P1027 = "string_to_int"($P1026, 2)
    $P1028 = $P1025."!make"($P1027)
    .return ($P1028)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1030
    .param pmc param_1031
.annotate 'line', 962
    .const 'Sub' $P1050 = "144_1303928992.215" 
    capture_lex $P1050
    .lex "self", param_1030
    .lex "$/", param_1031
.annotate 'line', 963
    new $P1032, "Undef"
    .lex "$past", $P1032
    find_lex $P1033, "$/"
    unless_null $P1033, vivify_595
    $P1033 = root_new ['parrot';'Hash']
  vivify_595:
    set $P1034, $P1033["quote_delimited"]
    unless_null $P1034, vivify_596
    new $P1034, "Undef"
  vivify_596:
    $P1035 = $P1034."ast"()
    store_lex "$past", $P1035
.annotate 'line', 964
    find_lex $P1037, "$/"
    unless_null $P1037, vivify_597
    new $P1037, "Undef"
  vivify_597:
    $P1038 = $P1037."CURSOR"()
    $P1039 = $P1038."quotemod_check"("w")
    unless $P1039, if_1036_end
.annotate 'line', 965
    get_hll_global $P1041, "GLOBAL"
    nqp_get_package_through_who $P1042, $P1041, "PAST"
    get_who $P1043, $P1042
    set $P1044, $P1043["Node"]
    find_lex $P1045, "$past"
    unless_null $P1045, vivify_598
    new $P1045, "Undef"
  vivify_598:
    $P1046 = $P1044."ACCEPTS"($P1045)
    if $P1046, if_1040
.annotate 'line', 968
    .const 'Sub' $P1050 = "144_1303928992.215" 
    capture_lex $P1050
    $P1050()
    goto if_1040_end
  if_1040:
.annotate 'line', 966
    find_lex $P1047, "$/"
    unless_null $P1047, vivify_609
    new $P1047, "Undef"
  vivify_609:
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
    unless_null $P1093, vivify_610
    new $P1093, "Undef"
  vivify_610:
    $P1094 = $P1092."ACCEPTS"($P1093)
    isfalse $I1095, $P1094
    unless $I1095, if_1088_end
.annotate 'line', 980
    get_hll_global $P1096, "GLOBAL"
    nqp_get_package_through_who $P1097, $P1096, "PAST"
    get_who $P1098, $P1097
    set $P1099, $P1098["Val"]
    find_lex $P1100, "$past"
    unless_null $P1100, vivify_611
    new $P1100, "Undef"
  vivify_611:
    set $S1101, $P1100
    $P1102 = $P1099."new"($S1101 :named("value"))
    store_lex "$past", $P1102
  if_1088_end:
.annotate 'line', 982
    find_lex $P1103, "$/"
    find_lex $P1104, "$past"
    unless_null $P1104, vivify_612
    new $P1104, "Undef"
  vivify_612:
    $P1105 = $P1103."!make"($P1104)
.annotate 'line', 962
    .return ($P1105)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1049"  :anon :subid("144_1303928992.215") :outer("143_1303928992.215")
.annotate 'line', 968
    .const 'Sub' $P1076 = "145_1303928992.215" 
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
    unless_null $P1057, vivify_599
    new $P1057, "Undef"
  vivify_599:
    find_lex $P1058, "$past"
    unless_null $P1058, vivify_600
    new $P1058, "Undef"
  vivify_600:
    $P1059 = $P1056($P1057, $P1058)
    store_lex "@words", $P1059
.annotate 'line', 970
    find_lex $P1062, "@words"
    unless_null $P1062, vivify_601
    $P1062 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    set $N1063, $P1062
    isne $I1064, $N1063, 1.0
    if $I1064, if_1061
.annotate 'line', 975
    find_lex $P1084, "@words"
    unless_null $P1084, vivify_602
    $P1084 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    set $P1085, $P1084[0]
    unless_null $P1085, vivify_603
    new $P1085, "Undef"
  vivify_603:
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
    unless_null $P1069, vivify_604
    new $P1069, "Undef"
  vivify_604:
    $P1070 = $P1068."new"("list" :named("pasttype"), $P1069 :named("node"))
    store_lex "$past", $P1070
.annotate 'line', 972
    find_lex $P1072, "@words"
    unless_null $P1072, vivify_605
    $P1072 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    defined $I1073, $P1072
    unless $I1073, for_undef_606
    iter $P1071, $P1072
    new $P1082, 'ExceptionHandler'
    set_label $P1082, loop1081_handler
    $P1082."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1082
  loop1081_test:
    unless $P1071, loop1081_done
    shift $P1074, $P1071
  loop1081_redo:
    .const 'Sub' $P1076 = "145_1303928992.215" 
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
  for_undef_606:
.annotate 'line', 970
    set $P1060, $P1071
  if_1061_end:
.annotate 'line', 968
    .return ($P1060)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1075"  :anon :subid("145_1303928992.215") :outer("144_1303928992.215")
    .param pmc param_1077
.annotate 'line', 972
    .lex "$_", param_1077
    find_lex $P1078, "$past"
    unless_null $P1078, vivify_607
    new $P1078, "Undef"
  vivify_607:
    find_lex $P1079, "$_"
    unless_null $P1079, vivify_608
    new $P1079, "Undef"
  vivify_608:
    $P1080 = $P1078."push"($P1079)
    .return ($P1080)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1107
    .param pmc param_1108
.annotate 'line', 985
    .const 'Sub' $P1120 = "147_1303928992.215" 
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
    unless_null $P1112, vivify_613
    $P1112 = root_new ['parrot';'ResizablePMCArray']
  vivify_613:
.annotate 'line', 987
    new $P1113, "String"
    assign $P1113, ""
    store_lex "$lastlit", $P1113
.annotate 'line', 988
    find_lex $P1115, "$/"
    unless_null $P1115, vivify_614
    $P1115 = root_new ['parrot';'Hash']
  vivify_614:
    set $P1116, $P1115["quote_atom"]
    unless_null $P1116, vivify_615
    new $P1116, "Undef"
  vivify_615:
    defined $I1117, $P1116
    unless $I1117, for_undef_616
    iter $P1114, $P1116
    new $P1159, 'ExceptionHandler'
    set_label $P1159, loop1158_handler
    $P1159."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1159
  loop1158_test:
    unless $P1114, loop1158_done
    shift $P1118, $P1114
  loop1158_redo:
    .const 'Sub' $P1120 = "147_1303928992.215" 
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
  for_undef_616:
.annotate 'line', 1002
    find_lex $P1162, "$lastlit"
    unless_null $P1162, vivify_629
    new $P1162, "Undef"
  vivify_629:
    set $S1163, $P1162
    isgt $I1164, $S1163, ""
    unless $I1164, if_1161_end
    find_lex $P1165, "@parts"
    unless_null $P1165, vivify_630
    $P1165 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    find_lex $P1166, "$lastlit"
    unless_null $P1166, vivify_631
    new $P1166, "Undef"
  vivify_631:
    $P1165."push"($P1166)
  if_1161_end:
.annotate 'line', 1003
    find_lex $P1169, "@parts"
    unless_null $P1169, vivify_632
    $P1169 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    if $P1169, if_1168
    new $P1172, "String"
    assign $P1172, ""
    set $P1167, $P1172
    goto if_1168_end
  if_1168:
    find_lex $P1170, "@parts"
    unless_null $P1170, vivify_633
    $P1170 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
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
    unless_null $P1173, vivify_634
    $P1173 = root_new ['parrot';'ResizablePMCArray']
  vivify_634:
    unless $P1173, loop1182_done
  loop1182_redo:
.annotate 'line', 1005
    get_hll_global $P1174, "GLOBAL"
    nqp_get_package_through_who $P1175, $P1174, "PAST"
    get_who $P1176, $P1175
    set $P1177, $P1176["Op"]
    find_lex $P1178, "$past"
    unless_null $P1178, vivify_635
    new $P1178, "Undef"
  vivify_635:
    find_lex $P1179, "@parts"
    unless_null $P1179, vivify_636
    $P1179 = root_new ['parrot';'ResizablePMCArray']
  vivify_636:
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
    unless_null $P1186, vivify_637
    new $P1186, "Undef"
  vivify_637:
    $P1187 = $P1185."!make"($P1186)
.annotate 'line', 985
    .return ($P1187)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1119"  :anon :subid("147_1303928992.215") :outer("146_1303928992.215")
    .param pmc param_1122
.annotate 'line', 989
    new $P1121, "Undef"
    .lex "$ast", $P1121
    .lex "$_", param_1122
    find_lex $P1123, "$_"
    unless_null $P1123, vivify_617
    new $P1123, "Undef"
  vivify_617:
    $P1124 = $P1123."ast"()
    store_lex "$ast", $P1124
.annotate 'line', 990
    get_hll_global $P1127, "GLOBAL"
    nqp_get_package_through_who $P1128, $P1127, "PAST"
    get_who $P1129, $P1128
    set $P1130, $P1129["Node"]
    find_lex $P1131, "$ast"
    unless_null $P1131, vivify_618
    new $P1131, "Undef"
  vivify_618:
    $P1132 = $P1130."ACCEPTS"($P1131)
    isfalse $I1133, $P1132
    if $I1133, if_1126
.annotate 'line', 993
    find_lex $P1139, "$ast"
    unless_null $P1139, vivify_619
    new $P1139, "Undef"
  vivify_619:
    get_hll_global $P1140, "GLOBAL"
    nqp_get_package_through_who $P1141, $P1140, "PAST"
    get_who $P1142, $P1141
    set $P1143, $P1142["Val"]
    $P1144 = $P1139."isa"($P1143)
    if $P1144, if_1138
.annotate 'line', 997
    find_lex $P1150, "$lastlit"
    unless_null $P1150, vivify_620
    new $P1150, "Undef"
  vivify_620:
    set $S1151, $P1150
    isgt $I1152, $S1151, ""
    unless $I1152, if_1149_end
    find_lex $P1153, "@parts"
    unless_null $P1153, vivify_621
    $P1153 = root_new ['parrot';'ResizablePMCArray']
  vivify_621:
    find_lex $P1154, "$lastlit"
    unless_null $P1154, vivify_622
    new $P1154, "Undef"
  vivify_622:
    $P1153."push"($P1154)
  if_1149_end:
.annotate 'line', 998
    find_lex $P1155, "@parts"
    unless_null $P1155, vivify_623
    $P1155 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P1156, "$ast"
    unless_null $P1156, vivify_624
    new $P1156, "Undef"
  vivify_624:
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
    unless_null $P1145, vivify_625
    new $P1145, "Undef"
  vivify_625:
    find_lex $P1146, "$ast"
    unless_null $P1146, vivify_626
    new $P1146, "Undef"
  vivify_626:
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
    unless_null $P1134, vivify_627
    new $P1134, "Undef"
  vivify_627:
    find_lex $P1135, "$ast"
    unless_null $P1135, vivify_628
    new $P1135, "Undef"
  vivify_628:
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
.sub "quote_atom"  :subid("148_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1189
    .param pmc param_1190
.annotate 'line', 1010
    .lex "self", param_1189
    .lex "$/", param_1190
.annotate 'line', 1011
    find_lex $P1191, "$/"
    find_lex $P1194, "$/"
    unless_null $P1194, vivify_638
    $P1194 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1195, $P1194["quote_escape"]
    unless_null $P1195, vivify_639
    new $P1195, "Undef"
  vivify_639:
    if $P1195, if_1193
    find_lex $P1199, "$/"
    unless_null $P1199, vivify_640
    new $P1199, "Undef"
  vivify_640:
    set $S1200, $P1199
    new $P1192, 'String'
    set $P1192, $S1200
    goto if_1193_end
  if_1193:
    find_lex $P1196, "$/"
    unless_null $P1196, vivify_641
    $P1196 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1197, $P1196["quote_escape"]
    unless_null $P1197, vivify_642
    new $P1197, "Undef"
  vivify_642:
    $P1198 = $P1197."ast"()
    set $P1192, $P1198
  if_1193_end:
    $P1201 = $P1191."!make"($P1192)
.annotate 'line', 1010
    .return ($P1201)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<stopper>"  :subid("150_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1208
    .param pmc param_1209
.annotate 'line', 1015
    .lex "self", param_1208
    .lex "$/", param_1209
    find_lex $P1210, "$/"
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_643
    $P1211 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1212, $P1211["stopper"]
    unless_null $P1212, vivify_644
    new $P1212, "Undef"
  vivify_644:
    set $S1213, $P1212
    $P1214 = $P1210."!make"($S1213)
    .return ($P1214)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<nl>"  :subid("152_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<cr>"  :subid("153_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<tab>"  :subid("154_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<ff>"  :subid("155_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<esc>"  :subid("156_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<hex>"  :subid("157_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1246
    .param pmc param_1247
.annotate 'line', 1024
    .lex "self", param_1246
    .lex "$/", param_1247
.annotate 'line', 1025
    find_lex $P1248, "$/"
    find_lex $P1251, "$/"
    unless_null $P1251, vivify_645
    $P1251 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1252, $P1251["hexint"]
    unless_null $P1252, vivify_646
    new $P1252, "Undef"
  vivify_646:
    if $P1252, if_1250
    find_lex $P1255, "$/"
    unless_null $P1255, vivify_647
    $P1255 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1256, $P1255["hexints"]
    unless_null $P1256, vivify_648
    $P1256 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1257, $P1256["hexint"]
    unless_null $P1257, vivify_649
    new $P1257, "Undef"
  vivify_649:
    set $P1249, $P1257
    goto if_1250_end
  if_1250:
    find_lex $P1253, "$/"
    unless_null $P1253, vivify_650
    $P1253 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1254, $P1253["hexint"]
    unless_null $P1254, vivify_651
    new $P1254, "Undef"
  vivify_651:
    set $P1249, $P1254
  if_1250_end:
    $P1258 = "ints_to_string"($P1249)
    $P1259 = $P1248."!make"($P1258)
.annotate 'line', 1024
    .return ($P1259)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1261
    .param pmc param_1262
.annotate 'line', 1028
    .lex "self", param_1261
    .lex "$/", param_1262
.annotate 'line', 1029
    find_lex $P1263, "$/"
    find_lex $P1266, "$/"
    unless_null $P1266, vivify_652
    $P1266 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1267, $P1266["octint"]
    unless_null $P1267, vivify_653
    new $P1267, "Undef"
  vivify_653:
    if $P1267, if_1265
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_654
    $P1270 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1271, $P1270["octints"]
    unless_null $P1271, vivify_655
    $P1271 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1272, $P1271["octint"]
    unless_null $P1272, vivify_656
    new $P1272, "Undef"
  vivify_656:
    set $P1264, $P1272
    goto if_1265_end
  if_1265:
    find_lex $P1268, "$/"
    unless_null $P1268, vivify_657
    $P1268 = root_new ['parrot';'Hash']
  vivify_657:
    set $P1269, $P1268["octint"]
    unless_null $P1269, vivify_658
    new $P1269, "Undef"
  vivify_658:
    set $P1264, $P1269
  if_1265_end:
    $P1273 = "ints_to_string"($P1264)
    $P1274 = $P1263."!make"($P1273)
.annotate 'line', 1028
    .return ($P1274)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1276
    .param pmc param_1277
.annotate 'line', 1032
    .lex "self", param_1276
    .lex "$/", param_1277
.annotate 'line', 1033
    find_lex $P1278, "$/"
    find_lex $P1279, "$/"
    unless_null $P1279, vivify_659
    $P1279 = root_new ['parrot';'Hash']
  vivify_659:
    set $P1280, $P1279["charspec"]
    unless_null $P1280, vivify_660
    new $P1280, "Undef"
  vivify_660:
    $P1281 = $P1280."ast"()
    $P1282 = $P1278."!make"($P1281)
.annotate 'line', 1032
    .return ($P1282)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303928992.215") :outer("120_1303928992.215")
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
.sub "quote_escape:sym<misc>"  :subid("161_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1289
    .param pmc param_1290
.annotate 'line', 1040
    .lex "self", param_1289
    .lex "$/", param_1290
.annotate 'line', 1041
    find_lex $P1291, "$/"
    find_lex $P1294, "$/"
    unless_null $P1294, vivify_661
    $P1294 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1295, $P1294["textq"]
    unless_null $P1295, vivify_662
    new $P1295, "Undef"
  vivify_662:
    if $P1295, if_1293
    find_lex $P1301, "$/"
    unless_null $P1301, vivify_663
    $P1301 = root_new ['parrot';'Hash']
  vivify_663:
    set $P1302, $P1301["textqq"]
    unless_null $P1302, vivify_664
    new $P1302, "Undef"
  vivify_664:
    $P1303 = $P1302."Str"()
    set $P1292, $P1303
    goto if_1293_end
  if_1293:
    new $P1296, "String"
    assign $P1296, "\\"
    find_lex $P1297, "$/"
    unless_null $P1297, vivify_665
    $P1297 = root_new ['parrot';'Hash']
  vivify_665:
    set $P1298, $P1297["textq"]
    unless_null $P1298, vivify_666
    new $P1298, "Undef"
  vivify_666:
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
.sub "charname"  :subid("162_1303928992.215") :outer("120_1303928992.215")
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
    unless_null $P1311, vivify_667
    $P1311 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1312, $P1311["integer"]
    unless_null $P1312, vivify_668
    new $P1312, "Undef"
  vivify_668:
    if $P1312, if_1310
.annotate 'line', 1047
    find_lex $P1316, "$/"
    unless_null $P1316, vivify_669
    new $P1316, "Undef"
  vivify_669:
    set $S1317, $P1316
    find_codepoint $I1318, $S1317
    new $P1309, 'Integer'
    set $P1309, $I1318
.annotate 'line', 1046
    goto if_1310_end
  if_1310:
    find_lex $P1313, "$/"
    unless_null $P1313, vivify_670
    $P1313 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1314, $P1313["integer"]
    unless_null $P1314, vivify_671
    new $P1314, "Undef"
  vivify_671:
    $P1315 = $P1314."ast"()
    set $P1309, $P1315
  if_1310_end:
    store_lex "$codepoint", $P1309
.annotate 'line', 1048
    find_lex $P1320, "$codepoint"
    unless_null $P1320, vivify_672
    new $P1320, "Undef"
  vivify_672:
    set $N1321, $P1320
    islt $I1322, $N1321, 0.0
    unless $I1322, if_1319_end
    find_lex $P1323, "$/"
    unless_null $P1323, vivify_673
    new $P1323, "Undef"
  vivify_673:
    $P1324 = $P1323."CURSOR"()
    new $P1325, 'String'
    set $P1325, "Unrecognized character name "
    find_lex $P1326, "$/"
    unless_null $P1326, vivify_674
    new $P1326, "Undef"
  vivify_674:
    concat $P1327, $P1325, $P1326
    $P1324."panic"($P1327)
  if_1319_end:
.annotate 'line', 1049
    find_lex $P1328, "$/"
    find_lex $P1329, "$codepoint"
    unless_null $P1329, vivify_675
    new $P1329, "Undef"
  vivify_675:
    set $I1330, $P1329
    chr $S1331, $I1330
    $P1332 = $P1328."!make"($S1331)
.annotate 'line', 1044
    .return ($P1332)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1334
    .param pmc param_1335
.annotate 'line', 1052
    .const 'Sub' $P1344 = "164_1303928992.215" 
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
    unless_null $P1339, vivify_676
    $P1339 = root_new ['parrot';'Hash']
  vivify_676:
    set $P1340, $P1339["charname"]
    unless_null $P1340, vivify_677
    new $P1340, "Undef"
  vivify_677:
    defined $I1341, $P1340
    unless $I1341, for_undef_678
    iter $P1338, $P1340
    new $P1351, 'ExceptionHandler'
    set_label $P1351, loop1350_handler
    $P1351."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1351
  loop1350_test:
    unless $P1338, loop1350_done
    shift $P1342, $P1338
  loop1350_redo:
    .const 'Sub' $P1344 = "164_1303928992.215" 
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
  for_undef_678:
.annotate 'line', 1055
    find_lex $P1353, "$/"
    find_lex $P1354, "$str"
    unless_null $P1354, vivify_681
    new $P1354, "Undef"
  vivify_681:
    $P1355 = $P1353."!make"($P1354)
.annotate 'line', 1052
    .return ($P1355)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1343"  :anon :subid("164_1303928992.215") :outer("163_1303928992.215")
    .param pmc param_1345
.annotate 'line', 1054
    .lex "$_", param_1345
    find_lex $P1346, "$str"
    unless_null $P1346, vivify_679
    new $P1346, "Undef"
  vivify_679:
    find_lex $P1347, "$_"
    unless_null $P1347, vivify_680
    new $P1347, "Undef"
  vivify_680:
    $S1348 = $P1347."ast"()
    concat $P1349, $P1346, $S1348
    store_lex "$str", $P1349
    .return ($P1349)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303928992.215") :outer("120_1303928992.215")
    .param pmc param_1357
    .param pmc param_1358
.annotate 'line', 1058
    .lex "self", param_1357
    .lex "$/", param_1358
.annotate 'line', 1059
    find_lex $P1359, "$/"
    find_lex $P1362, "$/"
    unless_null $P1362, vivify_682
    $P1362 = root_new ['parrot';'Hash']
  vivify_682:
    set $P1363, $P1362["charnames"]
    unless_null $P1363, vivify_683
    new $P1363, "Undef"
  vivify_683:
    if $P1363, if_1361
    find_lex $P1367, "$/"
    unless_null $P1367, vivify_684
    new $P1367, "Undef"
  vivify_684:
    $I1368 = "string_to_int"($P1367, 10)
    chr $S1369, $I1368
    new $P1360, 'String'
    set $P1360, $S1369
    goto if_1361_end
  if_1361:
    find_lex $P1364, "$/"
    unless_null $P1364, vivify_685
    $P1364 = root_new ['parrot';'Hash']
  vivify_685:
    set $P1365, $P1364["charnames"]
    unless_null $P1365, vivify_686
    new $P1365, "Undef"
  vivify_686:
    $P1366 = $P1365."ast"()
    set $P1360, $P1366
  if_1361_end:
    $P1370 = $P1359."!make"($P1360)
.annotate 'line', 1058
    .return ($P1370)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1441"  :subid("167_1303928992.215") :outer("10_1303928992.215")
.annotate 'line', 1072
    .const 'Sub' $P2610 = "233_1303928992.215" 
    capture_lex $P2610
    .const 'Sub' $P2602 = "232_1303928992.215" 
    capture_lex $P2602
    .const 'Sub' $P2549 = "230_1303928992.215" 
    capture_lex $P2549
    .const 'Sub' $P2476 = "227_1303928992.215" 
    capture_lex $P2476
    .const 'Sub' $P2446 = "225_1303928992.215" 
    capture_lex $P2446
    .const 'Sub' $P2441 = "224_1303928992.215" 
    capture_lex $P2441
    .const 'Sub' $P2431 = "223_1303928992.215" 
    capture_lex $P2431
    .const 'Sub' $P2402 = "221_1303928992.215" 
    capture_lex $P2402
    .const 'Sub' $P2393 = "220_1303928992.215" 
    capture_lex $P2393
    .const 'Sub' $P2385 = "219_1303928992.215" 
    capture_lex $P2385
    .const 'Sub' $P2377 = "218_1303928992.215" 
    capture_lex $P2377
    .const 'Sub' $P2373 = "217_1303928992.215" 
    capture_lex $P2373
    .const 'Sub' $P2369 = "216_1303928992.215" 
    capture_lex $P2369
    .const 'Sub' $P2300 = "214_1303928992.215" 
    capture_lex $P2300
    .const 'Sub' $P2204 = "210_1303928992.215" 
    capture_lex $P2204
    .const 'Sub' $P2164 = "207_1303928992.215" 
    capture_lex $P2164
    .const 'Sub' $P2116 = "205_1303928992.215" 
    capture_lex $P2116
    .const 'Sub' $P2103 = "204_1303928992.215" 
    capture_lex $P2103
    .const 'Sub' $P2090 = "203_1303928992.215" 
    capture_lex $P2090
    .const 'Sub' $P2077 = "202_1303928992.215" 
    capture_lex $P2077
    .const 'Sub' $P2064 = "201_1303928992.215" 
    capture_lex $P2064
    .const 'Sub' $P2051 = "200_1303928992.215" 
    capture_lex $P2051
    .const 'Sub' $P2038 = "199_1303928992.215" 
    capture_lex $P2038
    .const 'Sub' $P2025 = "198_1303928992.215" 
    capture_lex $P2025
    .const 'Sub' $P2012 = "197_1303928992.215" 
    capture_lex $P2012
    .const 'Sub' $P2007 = "196_1303928992.215" 
    capture_lex $P2007
    .const 'Sub' $P2003 = "195_1303928992.215" 
    capture_lex $P2003
    .const 'Sub' $P1963 = "193_1303928992.215" 
    capture_lex $P1963
    .const 'Sub' $P1804 = "186_1303928992.215" 
    capture_lex $P1804
    .const 'Sub' $P1789 = "185_1303928992.215" 
    capture_lex $P1789
    .const 'Sub' $P1696 = "180_1303928992.215" 
    capture_lex $P1696
    .const 'Sub' $P1663 = "178_1303928992.215" 
    capture_lex $P1663
    .const 'Sub' $P1648 = "177_1303928992.215" 
    capture_lex $P1648
    .const 'Sub' $P1633 = "176_1303928992.215" 
    capture_lex $P1633
    .const 'Sub' $P1546 = "173_1303928992.215" 
    capture_lex $P1546
    .const 'Sub' $P1487 = "171_1303928992.215" 
    capture_lex $P1487
    .const 'Sub' $P1480 = "170_1303928992.215" 
    capture_lex $P1480
    .const 'Sub' $P1460 = "169_1303928992.215" 
    capture_lex $P1460
    .const 'Sub' $P1443 = "168_1303928992.215" 
    capture_lex $P1443
.annotate 'line', 1132
    .const 'Sub' $P1443 = "168_1303928992.215" 
    newclosure $P1456, $P1443
    .lex "value_type", $P1456
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1457
    .lex "$?CLASS", $P1458
.annotate 'line', 1094
    .const 'Sub' $P1460 = "169_1303928992.215" 
    capture_lex $P1460
    $P1460()
.annotate 'line', 1072
    find_lex $P1474, "$?PACKAGE"
    get_who $P1475, $P1474
    set $P1476, $P1475["$interactive_ctx"]
    unless_null $P1476, vivify_694
    new $P1476, "Undef"
  vivify_694:
    find_lex $P1477, "$?PACKAGE"
    get_who $P1478, $P1477
    set $P1479, $P1478["%interactive_pad"]
    unless_null $P1479, vivify_695
    $P1479 = root_new ['parrot';'Hash']
  vivify_695:
.annotate 'line', 1112
    find_lex $P1545, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2602 = "232_1303928992.215" 
    newclosure $P2608, $P2602
.annotate 'line', 1072
    .return ($P2608)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post687") :outer("167_1303928992.215")
.annotate 'line', 1072
    .const 'Sub' $P1442 = "167_1303928992.215" 
    .local pmc block
    set block, $P1442
    .const 'Sub' $P2610 = "233_1303928992.215" 
    capture_lex $P2610
    $P2610()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2609"  :anon :subid("233_1303928992.215") :outer("167_1303928992.215")
.annotate 'line', 1072
    nqp_get_sc_object $P2611, "1303928983.629", 3
    .local pmc type_obj
    set type_obj, $P2611
    get_how $P2612, type_obj
    .const 'Sub' $P2613 = "170_1303928992.215" 
    $P2612."add_method"(type_obj, "new", $P2613)
    get_how $P2614, type_obj
    .const 'Sub' $P2615 = "171_1303928992.215" 
    $P2614."add_method"(type_obj, "BUILD", $P2615)
    get_how $P2616, type_obj
    .const 'Sub' $P2617 = "173_1303928992.215" 
    $P2616."add_method"(type_obj, "get_exports", $P2617)
    get_how $P2618, type_obj
    .const 'Sub' $P2619 = "176_1303928992.215" 
    $P2618."add_method"(type_obj, "get_module", $P2619)
    get_how $P2620, type_obj
    .const 'Sub' $P2621 = "177_1303928992.215" 
    $P2620."add_method"(type_obj, "language", $P2621)
    get_how $P2622, type_obj
    .const 'Sub' $P2623 = "178_1303928992.215" 
    $P2622."add_method"(type_obj, "load_module", $P2623)
    get_how $P2624, type_obj
    .const 'Sub' $P2625 = "180_1303928992.215" 
    $P2624."add_method"(type_obj, "import", $P2625)
    get_how $P2626, type_obj
    .const 'Sub' $P2627 = "185_1303928992.215" 
    $P2626."add_method"(type_obj, "autoprint", $P2627)
    get_how $P2628, type_obj
    .const 'Sub' $P2629 = "186_1303928992.215" 
    $P2628."add_method"(type_obj, "interactive", $P2629)
    get_how $P2630, type_obj
    .const 'Sub' $P2631 = "193_1303928992.215" 
    $P2630."add_method"(type_obj, "eval", $P2631)
    get_how $P2632, type_obj
    .const 'Sub' $P2633 = "195_1303928992.215" 
    $P2632."add_method"(type_obj, "ctxsave", $P2633)
    get_how $P2634, type_obj
    .const 'Sub' $P2635 = "196_1303928992.215" 
    $P2634."add_method"(type_obj, "panic", $P2635)
    get_how $P2636, type_obj
    .const 'Sub' $P2637 = "197_1303928992.215" 
    $P2636."add_method"(type_obj, "stages", $P2637)
    get_how $P2638, type_obj
    .const 'Sub' $P2639 = "198_1303928992.215" 
    $P2638."add_method"(type_obj, "parsegrammar", $P2639)
    get_how $P2640, type_obj
    .const 'Sub' $P2641 = "199_1303928992.215" 
    $P2640."add_method"(type_obj, "parseactions", $P2641)
    get_how $P2642, type_obj
    .const 'Sub' $P2643 = "200_1303928992.215" 
    $P2642."add_method"(type_obj, "astgrammar", $P2643)
    get_how $P2644, type_obj
    .const 'Sub' $P2645 = "201_1303928992.215" 
    $P2644."add_method"(type_obj, "commandline_banner", $P2645)
    get_how $P2646, type_obj
    .const 'Sub' $P2647 = "202_1303928992.215" 
    $P2646."add_method"(type_obj, "commandline_prompt", $P2647)
    get_how $P2648, type_obj
    .const 'Sub' $P2649 = "203_1303928992.215" 
    $P2648."add_method"(type_obj, "compiler_progname", $P2649)
    get_how $P2650, type_obj
    .const 'Sub' $P2651 = "204_1303928992.215" 
    $P2650."add_method"(type_obj, "commandline_options", $P2651)
    get_how $P2652, type_obj
    .const 'Sub' $P2653 = "205_1303928992.215" 
    $P2652."add_method"(type_obj, "command_line", $P2653)
    get_how $P2654, type_obj
    .const 'Sub' $P2655 = "207_1303928992.215" 
    $P2654."add_method"(type_obj, "process_args", $P2655)
    get_how $P2656, type_obj
    .const 'Sub' $P2657 = "210_1303928992.215" 
    $P2656."add_method"(type_obj, "evalfiles", $P2657)
    get_how $P2658, type_obj
    .const 'Sub' $P2659 = "214_1303928992.215" 
    $P2658."add_method"(type_obj, "compile", $P2659)
    get_how $P2660, type_obj
    .const 'Sub' $P2661 = "216_1303928992.215" 
    $P2660."add_method"(type_obj, "parse", $P2661)
    get_how $P2662, type_obj
    .const 'Sub' $P2663 = "217_1303928992.215" 
    $P2662."add_method"(type_obj, "past", $P2663)
    get_how $P2664, type_obj
    .const 'Sub' $P2665 = "218_1303928992.215" 
    $P2664."add_method"(type_obj, "post", $P2665)
    get_how $P2666, type_obj
    .const 'Sub' $P2667 = "219_1303928992.215" 
    $P2666."add_method"(type_obj, "pir", $P2667)
    get_how $P2668, type_obj
    .const 'Sub' $P2669 = "220_1303928992.215" 
    $P2668."add_method"(type_obj, "evalpmc", $P2669)
    get_how $P2670, type_obj
    .const 'Sub' $P2671 = "221_1303928992.215" 
    $P2670."add_method"(type_obj, "dumper", $P2671)
    get_how $P2672, type_obj
    .const 'Sub' $P2673 = "223_1303928992.215" 
    $P2672."add_method"(type_obj, "usage", $P2673)
    get_how $P2674, type_obj
    .const 'Sub' $P2675 = "224_1303928992.215" 
    $P2674."add_method"(type_obj, "version", $P2675)
    get_how $P2676, type_obj
    .const 'Sub' $P2677 = "225_1303928992.215" 
    $P2676."add_method"(type_obj, "removestage", $P2677)
    get_how $P2678, type_obj
    .const 'Sub' $P2679 = "227_1303928992.215" 
    $P2678."add_method"(type_obj, "addstage", $P2679)
    get_how $P2680, type_obj
    .const 'Sub' $P2681 = "230_1303928992.215" 
    $P2680."add_method"(type_obj, "parse_name", $P2681)
    get_how $P2682, type_obj
    .const 'Sub' $P2683 = "232_1303928992.215" 
    $P2682."add_method"(type_obj, "lineof", $P2683)
    get_how $P2684, type_obj
    $P2685 = $P2684."compose"(type_obj)
    .return ($P2685)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1444
.annotate 'line', 1132
    .lex "$value", param_1444
.annotate 'line', 1133
    find_lex $P1447, "$value"
    unless_null $P1447, vivify_688
    new $P1447, "Undef"
  vivify_688:
    isa $I1448, $P1447, "NameSpace"
    if $I1448, if_1446
.annotate 'line', 1135
    find_lex $P1452, "$value"
    unless_null $P1452, vivify_689
    new $P1452, "Undef"
  vivify_689:
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
.sub "_block1459"  :anon :subid("169_1303928992.215") :outer("167_1303928992.215")
.annotate 'line', 1099
    $P1461 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1461
.annotate 'line', 1096
    getinterp $P1462
    set $P1463, $P1462["context"]
    unless_null $P1463, vivify_690
    new $P1463, "Undef"
  vivify_690:
    find_lex $P1464, "$?PACKAGE"
    get_who $P1465, $P1464
    set $P1465["$interactive_ctx"], $P1463
    find_lex $P1466, "%pad_contents"
    unless_null $P1466, vivify_691
    $P1466 = root_new ['parrot';'Hash']
  vivify_691:
.annotate 'line', 1101
    find_lex $P1467, "$?PACKAGE"
    get_who $P1468, $P1467
    set $P1469, $P1468["$interactive_ctx"]
    unless_null $P1469, vivify_692
    new $P1469, "Undef"
  vivify_692:
    getattribute $P1470, $P1469, "lex_pad"
    find_lex $P1471, "%pad_contents"
    unless_null $P1471, vivify_693
    $P1471 = root_new ['parrot';'Hash']
  vivify_693:
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
.sub "new"  :subid("170_1303928992.215") :outer("167_1303928992.215")
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
    unless_null $P1485, vivify_696
    new $P1485, "Undef"
  vivify_696:
    $P1485."BUILD"()
    find_lex $P1486, "$obj"
    unless_null $P1486, vivify_697
    new $P1486, "Undef"
  vivify_697:
.annotate 'line', 1106
    .return ($P1486)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1488
.annotate 'line', 1112
    .const 'Sub' $P1509 = "172_1303928992.215" 
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
    unless_null $P1505, vivify_698
    $P1505 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    defined $I1506, $P1505
    unless $I1506, for_undef_699
    iter $P1502, $P1505
    new $P1522, 'ExceptionHandler'
    set_label $P1522, loop1521_handler
    $P1522."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1522
  loop1521_test:
    unless $P1502, loop1521_done
    shift $P1507, $P1502
  loop1521_redo:
    .const 'Sub' $P1509 = "172_1303928992.215" 
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
  for_undef_699:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1524 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1524
.annotate 'line', 1126
    find_lex $P1525, "$config_hash_idx"
    unless_null $P1525, vivify_702
    new $P1525, "Undef"
  vivify_702:
    set $I1526, $P1525
    getinterp $P1527
    set $P1528, $P1527[$I1526]
    unless_null $P1528, vivify_703
    new $P1528, "Undef"
  vivify_703:
    store_lex "%config", $P1528
.annotate 'line', 1127
    find_lex $P1529, "%config"
    unless_null $P1529, vivify_704
    $P1529 = root_new ['parrot';'Hash']
  vivify_704:
    set $P1530, $P1529["VERSION"]
    unless_null $P1530, vivify_705
    new $P1530, "Undef"
  vivify_705:
    store_lex "$version", $P1530
.annotate 'line', 1128
    find_lex $P1532, "%config"
    unless_null $P1532, vivify_706
    $P1532 = root_new ['parrot';'Hash']
  vivify_706:
    set $P1533, $P1532["git_describe"]
    unless_null $P1533, vivify_707
    new $P1533, "Undef"
  vivify_707:
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
    unless_null $P1538, vivify_708
    new $P1538, "Undef"
  vivify_708:
    concat $P1539, $P1537, $P1538
    concat $P1540, $P1539, ", revision "
    find_lex $P1541, "$revision"
    unless_null $P1541, vivify_709
    new $P1541, "Undef"
  vivify_709:
    concat $P1542, $P1540, $P1541
    find_lex $P1543, "self"
    find_lex $P1544, "$?CLASS"
    setattribute $P1543, $P1544, "$!version", $P1542
.annotate 'line', 1112
    .return ($P1542)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1508"  :anon :subid("172_1303928992.215") :outer("171_1303928992.215")
    .param pmc param_1510
.annotate 'line', 1119
    .lex "$_", param_1510
.annotate 'line', 1120
    find_lex $P1511, "self"
    find_lex $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "$!usage"
    unless_null $P1513, vivify_700
    new $P1513, "Undef"
  vivify_700:
    new $P1514, 'String'
    set $P1514, "    "
    find_lex $P1515, "$_"
    unless_null $P1515, vivify_701
    new $P1515, "Undef"
  vivify_701:
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
.sub "get_exports"  :subid("173_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1547
    .param pmc param_1548
    .param pmc param_1551 :slurpy
    .param pmc param_1549 :optional :named("tagset")
    .param int has_param_1549 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1617 = "175_1303928992.215" 
    capture_lex $P1617
    .const 'Sub' $P1596 = "174_1303928992.215" 
    capture_lex $P1596
    .lex "self", param_1547
    .lex "$module", param_1548
    if has_param_1549, optparam_710
    new $P1550, "Undef"
    set param_1549, $P1550
  optparam_710:
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
    unless_null $P1555, vivify_711
    new $P1555, "Undef"
  vivify_711:
    does $I1556, $P1555, "hash"
    new $P1557, 'Integer'
    set $P1557, $I1556
    isfalse $I1558, $P1557
    unless $I1558, if_1554_end
.annotate 'line', 1141
    find_lex $P1559, "self"
    find_lex $P1560, "$module"
    unless_null $P1560, vivify_712
    new $P1560, "Undef"
  vivify_712:
    $P1561 = $P1559."get_module"($P1560)
    store_lex "$module", $P1561
  if_1554_end:
.annotate 'line', 1144
    find_lex $P1563, "$tagset"
    unless_null $P1563, vivify_713
    new $P1563, "Undef"
  vivify_713:
    set $P1562, $P1563
    defined $I1565, $P1562
    if $I1565, default_1564
    find_lex $P1568, "@symbols"
    unless_null $P1568, vivify_714
    $P1568 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
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
    unless_null $P1571, vivify_715
    $P1571 = root_new ['parrot';'Hash']
  vivify_715:
.annotate 'line', 1146
    find_lex $P1572, "$tagset"
    unless_null $P1572, vivify_716
    new $P1572, "Undef"
  vivify_716:
    set $S1573, $P1572
    find_lex $P1574, "$module"
    unless_null $P1574, vivify_717
    $P1574 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1575, $P1574["EXPORT"]
    unless_null $P1575, vivify_718
    $P1575 = root_new ['parrot';'Hash']
  vivify_718:
    set $P1576, $P1575[$S1573]
    unless_null $P1576, vivify_719
    new $P1576, "Undef"
  vivify_719:
    store_lex "%source", $P1576
.annotate 'line', 1147
    find_lex $P1578, "%source"
    unless_null $P1578, vivify_720
    $P1578 = root_new ['parrot';'Hash']
  vivify_720:
    defined $I1579, $P1578
    new $P1580, 'Integer'
    set $P1580, $I1579
    isfalse $I1581, $P1580
    unless $I1581, if_1577_end
.annotate 'line', 1148
    find_lex $P1584, "$tagset"
    unless_null $P1584, vivify_721
    new $P1584, "Undef"
  vivify_721:
    set $S1585, $P1584
    iseq $I1586, $S1585, "ALL"
    if $I1586, if_1583
    $P1588 = root_new ['parrot';'Hash']
    set $P1582, $P1588
    goto if_1583_end
  if_1583:
    find_lex $P1587, "$module"
    unless_null $P1587, vivify_722
    new $P1587, "Undef"
  vivify_722:
    set $P1582, $P1587
  if_1583_end:
    store_lex "%source", $P1582
  if_1577_end:
.annotate 'line', 1150
    find_lex $P1590, "@symbols"
    unless_null $P1590, vivify_723
    $P1590 = root_new ['parrot';'ResizablePMCArray']
  vivify_723:
    if $P1590, if_1589
.annotate 'line', 1157
    find_lex $P1613, "%source"
    unless_null $P1613, vivify_724
    $P1613 = root_new ['parrot';'Hash']
  vivify_724:
    defined $I1614, $P1613
    unless $I1614, for_undef_725
    iter $P1612, $P1613
    new $P1630, 'ExceptionHandler'
    set_label $P1630, loop1629_handler
    $P1630."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1630
  loop1629_test:
    unless $P1612, loop1629_done
    shift $P1615, $P1612
  loop1629_redo:
    .const 'Sub' $P1617 = "175_1303928992.215" 
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
  for_undef_725:
.annotate 'line', 1156
    goto if_1589_end
  if_1589:
.annotate 'line', 1151
    find_lex $P1592, "@symbols"
    unless_null $P1592, vivify_732
    $P1592 = root_new ['parrot';'ResizablePMCArray']
  vivify_732:
    defined $I1593, $P1592
    unless $I1593, for_undef_733
    iter $P1591, $P1592
    new $P1610, 'ExceptionHandler'
    set_label $P1610, loop1609_handler
    $P1610."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1610
  loop1609_test:
    unless $P1591, loop1609_done
    shift $P1594, $P1591
  loop1609_redo:
    .const 'Sub' $P1596 = "174_1303928992.215" 
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
  for_undef_733:
  if_1589_end:
.annotate 'line', 1150
    find_lex $P1632, "%exports"
    unless_null $P1632, vivify_742
    $P1632 = root_new ['parrot';'Hash']
  vivify_742:
.annotate 'line', 1138
    .return ($P1632)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1616"  :anon :subid("175_1303928992.215") :outer("173_1303928992.215")
    .param pmc param_1619
.annotate 'line', 1158
    new $P1618, "Undef"
    .lex "$value", $P1618
    .lex "$_", param_1619
    find_lex $P1620, "$_"
    unless_null $P1620, vivify_726
    new $P1620, "Undef"
  vivify_726:
    $P1621 = $P1620."value"()
    store_lex "$value", $P1621
.annotate 'line', 1159
    find_lex $P1622, "$value"
    unless_null $P1622, vivify_727
    new $P1622, "Undef"
  vivify_727:
    find_lex $P1623, "$_"
    unless_null $P1623, vivify_728
    new $P1623, "Undef"
  vivify_728:
    $P1624 = $P1623."key"()
    find_lex $P1625, "$value"
    unless_null $P1625, vivify_729
    new $P1625, "Undef"
  vivify_729:
    $P1626 = "value_type"($P1625)
    find_lex $P1627, "%exports"
    unless_null $P1627, vivify_730
    $P1627 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1627
  vivify_730:
    set $P1628, $P1627[$P1626]
    unless_null $P1628, vivify_731
    $P1628 = root_new ['parrot';'Hash']
    set $P1627[$P1626], $P1628
  vivify_731:
    set $P1628[$P1624], $P1622
.annotate 'line', 1157
    .return ($P1622)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1595"  :anon :subid("174_1303928992.215") :outer("173_1303928992.215")
    .param pmc param_1598
.annotate 'line', 1152
    new $P1597, "Undef"
    .lex "$value", $P1597
    .lex "$_", param_1598
    find_lex $P1599, "$_"
    unless_null $P1599, vivify_734
    new $P1599, "Undef"
  vivify_734:
    set $S1600, $P1599
    find_lex $P1601, "%source"
    unless_null $P1601, vivify_735
    $P1601 = root_new ['parrot';'Hash']
  vivify_735:
    set $P1602, $P1601[$S1600]
    unless_null $P1602, vivify_736
    new $P1602, "Undef"
  vivify_736:
    store_lex "$value", $P1602
.annotate 'line', 1153
    find_lex $P1603, "$value"
    unless_null $P1603, vivify_737
    new $P1603, "Undef"
  vivify_737:
    find_lex $P1604, "$_"
    unless_null $P1604, vivify_738
    new $P1604, "Undef"
  vivify_738:
    find_lex $P1605, "$value"
    unless_null $P1605, vivify_739
    new $P1605, "Undef"
  vivify_739:
    $P1606 = "value_type"($P1605)
    find_lex $P1607, "%exports"
    unless_null $P1607, vivify_740
    $P1607 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1607
  vivify_740:
    set $P1608, $P1607[$P1606]
    unless_null $P1608, vivify_741
    $P1608 = root_new ['parrot';'Hash']
    set $P1607[$P1606], $P1608
  vivify_741:
    set $P1608[$P1604], $P1603
.annotate 'line', 1151
    .return ($P1603)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303928992.215") :outer("167_1303928992.215")
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
    unless_null $P1638, vivify_743
    new $P1638, "Undef"
  vivify_743:
    $P1639 = $P1637."parse_name"($P1638)
    store_lex "@name", $P1639
.annotate 'line', 1167
    find_lex $P1640, "@name"
    unless_null $P1640, vivify_744
    $P1640 = root_new ['parrot';'ResizablePMCArray']
  vivify_744:
    find_lex $P1641, "self"
    find_lex $P1642, "$?CLASS"
    getattribute $P1643, $P1641, $P1642, "$!language"
    unless_null $P1643, vivify_745
    new $P1643, "Undef"
  vivify_745:
    set $S1644, $P1643
    downcase $S1645, $S1644
    $P1640."unshift"($S1645)
.annotate 'line', 1168
    find_lex $P1646, "@name"
    unless_null $P1646, vivify_746
    $P1646 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    get_root_namespace $P1647, $P1646
.annotate 'line', 1165
    .return ($P1647)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1649
    .param pmc param_1650 :optional
    .param int has_param_1650 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1649
    if has_param_1650, optparam_747
    new $P1651, "Undef"
    set param_1650, $P1651
  optparam_747:
    .lex "$name", param_1650
.annotate 'line', 1172
    find_lex $P1653, "$name"
    unless_null $P1653, vivify_748
    new $P1653, "Undef"
  vivify_748:
    unless $P1653, if_1652_end
.annotate 'line', 1173
    find_lex $P1654, "$name"
    unless_null $P1654, vivify_749
    new $P1654, "Undef"
  vivify_749:
    find_lex $P1655, "self"
    find_lex $P1656, "$?CLASS"
    setattribute $P1655, $P1656, "$!language", $P1654
.annotate 'line', 1174
    find_lex $P1657, "$name"
    unless_null $P1657, vivify_750
    new $P1657, "Undef"
  vivify_750:
    set $S1658, $P1657
    find_lex $P1659, "self"
    compreg $S1658, $P1659
  if_1652_end:
.annotate 'line', 1172
    find_lex $P1660, "self"
    find_lex $P1661, "$?CLASS"
    getattribute $P1662, $P1660, $P1661, "$!language"
    unless_null $P1662, vivify_751
    new $P1662, "Undef"
  vivify_751:
.annotate 'line', 1171
    .return ($P1662)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1664
    .param pmc param_1665
.annotate 'line', 1179
    .const 'Sub' $P1675 = "179_1303928992.215" 
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
    unless_null $P1669, vivify_752
    new $P1669, "Undef"
  vivify_752:
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
    .const 'Sub' $P1675 = "179_1303928992.215" 
    capture_lex $P1675
    $P1675()
.annotate 'line', 1183
    find_lex $P1688, "$loaded"
    unless_null $P1688, vivify_754
    new $P1688, "Undef"
  vivify_754:
    if $P1688, unless_1687_end
    find_lex $P1689, "$base"
    unless_null $P1689, vivify_755
    new $P1689, "Undef"
  vivify_755:
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
    unless_null $P1694, vivify_756
    new $P1694, "Undef"
  vivify_756:
    $P1695 = $P1693."get_module"($P1694)
.annotate 'line', 1179
    .return ($P1695)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1674"  :anon :subid("179_1303928992.215") :outer("178_1303928992.215")
.annotate 'line', 1182
    new $P1682, 'ExceptionHandler'
    set_label $P1682, control_1681
    $P1682."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1682
    find_lex $P1676, "$base"
    unless_null $P1676, vivify_753
    new $P1676, "Undef"
  vivify_753:
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
.sub "import"  :subid("180_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1697
    .param pmc param_1698
    .param pmc param_1699
.annotate 'line', 1187
    .const 'Sub' $P1705 = "181_1303928992.215" 
    capture_lex $P1705
    .lex "self", param_1697
    .lex "$target", param_1698
    .lex "%exports", param_1699
.annotate 'line', 1188
    find_lex $P1701, "%exports"
    unless_null $P1701, vivify_757
    $P1701 = root_new ['parrot';'Hash']
  vivify_757:
    defined $I1702, $P1701
    unless $I1702, for_undef_758
    iter $P1700, $P1701
    new $P1787, 'ExceptionHandler'
    set_label $P1787, loop1786_handler
    $P1787."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1787
  loop1786_test:
    unless $P1700, loop1786_done
    shift $P1703, $P1700
  loop1786_redo:
    .const 'Sub' $P1705 = "181_1303928992.215" 
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
  for_undef_758:
.annotate 'line', 1187
    .return ($P1700)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1704"  :anon :subid("181_1303928992.215") :outer("180_1303928992.215")
    .param pmc param_1708
.annotate 'line', 1188
    .const 'Sub' $P1775 = "184_1303928992.215" 
    capture_lex $P1775
    .const 'Sub' $P1755 = "183_1303928992.215" 
    capture_lex $P1755
    .const 'Sub' $P1726 = "182_1303928992.215" 
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
    unless_null $P1709, vivify_759
    new $P1709, "Undef"
  vivify_759:
    $P1710 = $P1709."key"()
    store_lex "$type", $P1710
.annotate 'line', 1190
    find_lex $P1711, "$_"
    unless_null $P1711, vivify_760
    new $P1711, "Undef"
  vivify_760:
    $P1712 = $P1711."value"()
    store_lex "%items", $P1712
.annotate 'line', 1191
    find_lex $P1715, "self"
    new $P1716, 'String'
    set $P1716, "import_"
    find_lex $P1717, "$type"
    unless_null $P1717, vivify_761
    new $P1717, "Undef"
  vivify_761:
    concat $P1718, $P1716, $P1717
    set $S1719, $P1718
    can $I1720, $P1715, $S1719
    if $I1720, if_1714
.annotate 'line', 1194
    find_lex $P1744, "$target"
    unless_null $P1744, vivify_762
    new $P1744, "Undef"
  vivify_762:
    new $P1745, 'String'
    set $P1745, "add_"
    find_lex $P1746, "$type"
    unless_null $P1746, vivify_763
    new $P1746, "Undef"
  vivify_763:
    concat $P1747, $P1745, $P1746
    set $S1748, $P1747
    can $I1749, $P1744, $S1748
    if $I1749, if_1743
.annotate 'line', 1198
    find_lex $P1771, "%items"
    unless_null $P1771, vivify_764
    $P1771 = root_new ['parrot';'Hash']
  vivify_764:
    defined $I1772, $P1771
    unless $I1772, for_undef_765
    iter $P1770, $P1771
    new $P1784, 'ExceptionHandler'
    set_label $P1784, loop1783_handler
    $P1784."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1784
  loop1783_test:
    unless $P1770, loop1783_done
    shift $P1773, $P1770
  loop1783_redo:
    .const 'Sub' $P1775 = "184_1303928992.215" 
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
  for_undef_765:
.annotate 'line', 1197
    set $P1742, $P1770
.annotate 'line', 1194
    goto if_1743_end
  if_1743:
.annotate 'line', 1195
    find_lex $P1751, "%items"
    unless_null $P1751, vivify_769
    $P1751 = root_new ['parrot';'Hash']
  vivify_769:
    defined $I1752, $P1751
    unless $I1752, for_undef_770
    iter $P1750, $P1751
    new $P1768, 'ExceptionHandler'
    set_label $P1768, loop1767_handler
    $P1768."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1768
  loop1767_test:
    unless $P1750, loop1767_done
    shift $P1753, $P1750
  loop1767_redo:
    .const 'Sub' $P1755 = "183_1303928992.215" 
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
  for_undef_770:
.annotate 'line', 1194
    set $P1742, $P1750
  if_1743_end:
    set $P1713, $P1742
.annotate 'line', 1191
    goto if_1714_end
  if_1714:
.annotate 'line', 1192
    find_lex $P1722, "%items"
    unless_null $P1722, vivify_775
    $P1722 = root_new ['parrot';'Hash']
  vivify_775:
    defined $I1723, $P1722
    unless $I1723, for_undef_776
    iter $P1721, $P1722
    new $P1740, 'ExceptionHandler'
    set_label $P1740, loop1739_handler
    $P1740."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1740
  loop1739_test:
    unless $P1721, loop1739_done
    shift $P1724, $P1721
  loop1739_redo:
    .const 'Sub' $P1726 = "182_1303928992.215" 
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
  for_undef_776:
.annotate 'line', 1191
    set $P1713, $P1721
  if_1714_end:
.annotate 'line', 1188
    .return ($P1713)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1774"  :anon :subid("184_1303928992.215") :outer("181_1303928992.215")
    .param pmc param_1776
.annotate 'line', 1198
    .lex "$_", param_1776
    find_lex $P1777, "$_"
    unless_null $P1777, vivify_766
    new $P1777, "Undef"
  vivify_766:
    $P1778 = $P1777."value"()
    find_lex $P1779, "$_"
    unless_null $P1779, vivify_767
    new $P1779, "Undef"
  vivify_767:
    $P1780 = $P1779."key"()
    set $S1781, $P1780
    find_lex $P1782, "$target"
    unless_null $P1782, vivify_768
    $P1782 = root_new ['parrot';'Hash']
    store_lex "$target", $P1782
  vivify_768:
    set $P1782[$S1781], $P1778
    .return ($P1778)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1754"  :anon :subid("183_1303928992.215") :outer("181_1303928992.215")
    .param pmc param_1756
.annotate 'line', 1195
    .lex "$_", param_1756
    find_lex $P1757, "$target"
    unless_null $P1757, vivify_771
    new $P1757, "Undef"
  vivify_771:
    find_lex $P1758, "$_"
    unless_null $P1758, vivify_772
    new $P1758, "Undef"
  vivify_772:
    $P1759 = $P1758."key"()
    find_lex $P1760, "$_"
    unless_null $P1760, vivify_773
    new $P1760, "Undef"
  vivify_773:
    $P1761 = $P1760."value"()
    new $P1762, 'String'
    set $P1762, "add_"
    find_lex $P1763, "$type"
    unless_null $P1763, vivify_774
    new $P1763, "Undef"
  vivify_774:
    concat $P1764, $P1762, $P1763
    set $S1765, $P1764
    $P1766 = $P1757.$S1765($P1759, $P1761)
    .return ($P1766)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1725"  :anon :subid("182_1303928992.215") :outer("181_1303928992.215")
    .param pmc param_1727
.annotate 'line', 1192
    .lex "$_", param_1727
    find_lex $P1728, "self"
    find_lex $P1729, "$target"
    unless_null $P1729, vivify_777
    new $P1729, "Undef"
  vivify_777:
    find_lex $P1730, "$_"
    unless_null $P1730, vivify_778
    new $P1730, "Undef"
  vivify_778:
    $P1731 = $P1730."key"()
    find_lex $P1732, "$_"
    unless_null $P1732, vivify_779
    new $P1732, "Undef"
  vivify_779:
    $P1733 = $P1732."value"()
    new $P1734, 'String'
    set $P1734, "import_"
    find_lex $P1735, "$type"
    unless_null $P1735, vivify_780
    new $P1735, "Undef"
  vivify_780:
    concat $P1736, $P1734, $P1735
    set $S1737, $P1736
    $P1738 = $P1728.$S1737($P1729, $P1731, $P1733)
    .return ($P1738)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303928992.215") :outer("167_1303928992.215")
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
    unless_null $P1799, vivify_781
    get_hll_global $P1797, "GLOBAL"
    get_who $P1798, $P1797
    set $P1799, $P1798["$AUTOPRINTPOS"]
    unless_null $P1799, vivify_782
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_782:
  vivify_781:
    set $N1800, $P1799
    isgt $I1801, $N1796, $N1800
    unless $I1801, unless_1793
    new $P1792, 'Integer'
    set $P1792, $I1801
    goto unless_1793_end
  unless_1793:
.annotate 'line', 1204
    find_lex $P1802, "$value"
    unless_null $P1802, vivify_783
    new $P1802, "Undef"
  vivify_783:
    set $S1803, $P1802
    say $S1803
  unless_1793_end:
.annotate 'line', 1203
    .return ($P1792)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1805
    .param pmc param_1806 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1838 = "187_1303928992.215" 
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
    unless_null $P1811, vivify_784
    $P1811 = root_new ['parrot';'Hash']
  vivify_784:
    set $P1812, $P1811["target"]
    unless_null $P1812, vivify_785
    new $P1812, "Undef"
  vivify_785:
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
    unless_null $P1822, vivify_786
    $P1822 = root_new ['parrot';'Hash']
  vivify_786:
    set $P1823, $P1822["encoding"]
    unless_null $P1823, vivify_787
    new $P1823, "Undef"
  vivify_787:
    set $S1824, $P1823
    new $P1825, 'String'
    set $P1825, $S1824
    store_lex "$encoding", $P1825
.annotate 'line', 1215
    find_lex $P1829, "$encoding"
    unless_null $P1829, vivify_788
    new $P1829, "Undef"
  vivify_788:
    if $P1829, if_1828
    set $P1827, $P1829
    goto if_1828_end
  if_1828:
    find_lex $P1830, "$encoding"
    unless_null $P1830, vivify_789
    new $P1830, "Undef"
  vivify_789:
    set $S1831, $P1830
    isne $I1832, $S1831, "fixed_8"
    new $P1827, 'Integer'
    set $P1827, $I1832
  if_1828_end:
    unless $P1827, if_1826_end
.annotate 'line', 1216
    find_lex $P1833, "$stdin"
    unless_null $P1833, vivify_790
    new $P1833, "Undef"
  vivify_790:
    find_lex $P1834, "$encoding"
    unless_null $P1834, vivify_791
    new $P1834, "Undef"
  vivify_791:
    $P1833."encoding"($P1834)
  if_1826_end:
.annotate 'line', 1215
    find_lex $P1835, "$save_ctx"
    unless_null $P1835, vivify_792
    new $P1835, "Undef"
  vivify_792:
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
    .const 'Sub' $P1838 = "187_1303928992.215" 
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
.sub "_block1837"  :anon :subid("187_1303928992.215") :outer("186_1303928992.215")
.annotate 'line', 1220
    .const 'Sub' $P1872 = "188_1303928992.215" 
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
    unless_null $P1845, vivify_793
    new $P1845, "Undef"
  vivify_793:
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
    unless_null $P1853, vivify_794
    new $P1853, "Undef"
  vivify_794:
    find_lex $P1854, "$prompt"
    unless_null $P1854, vivify_795
    new $P1854, "Undef"
  vivify_795:
    set $S1855, $P1854
    $P1856 = $P1853."readline_interactive"($S1855)
    store_lex "$code", $P1856
.annotate 'line', 1226
    find_lex $P1858, "$code"
    unless_null $P1858, vivify_796
    new $P1858, "Undef"
  vivify_796:
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
    unless_null $P1867, vivify_797
    get_hll_global $P1865, "GLOBAL"
    get_who $P1866, $P1865
    set $P1867, $P1866["$MAIN_CTX"]
    unless_null $P1867, vivify_798
    die "Contextual $*MAIN_CTX not found"
  vivify_798:
  vivify_797:
.annotate 'line', 1233
    find_lex $P1870, "$code"
    unless_null $P1870, vivify_799
    new $P1870, "Undef"
  vivify_799:
    if $P1870, if_1869
    set $P1868, $P1870
    goto if_1869_end
  if_1869:
    .const 'Sub' $P1872 = "188_1303928992.215" 
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
.sub "_block1871"  :anon :subid("188_1303928992.215") :outer("187_1303928992.215")
.annotate 'line', 1233
    .const 'Sub' $P1907 = "191_1303928992.215" 
    capture_lex $P1907
    .const 'Sub' $P1878 = "189_1303928992.215" 
    capture_lex $P1878
.annotate 'line', 1235
    new $P1873, "Undef"
    .lex "$output", $P1873
.annotate 'line', 1234
    find_lex $P1874, "$code"
    unless_null $P1874, vivify_800
    new $P1874, "Undef"
  vivify_800:
    concat $P1875, $P1874, "\n"
    store_lex "$code", $P1875
    find_lex $P1876, "$output"
    unless_null $P1876, vivify_801
    new $P1876, "Undef"
  vivify_801:
.annotate 'line', 1236
    .const 'Sub' $P1878 = "189_1303928992.215" 
    capture_lex $P1878
    $P1878()
.annotate 'line', 1243
    find_dynamic_lex $P1904, "$*MAIN_CTX"
    unless_null $P1904, vivify_806
    get_hll_global $P1902, "GLOBAL"
    get_who $P1903, $P1902
    set $P1904, $P1903["$MAIN_CTX"]
    unless_null $P1904, vivify_807
    die "Contextual $*MAIN_CTX not found"
  vivify_807:
  vivify_806:
    defined $I1905, $P1904
    unless $I1905, if_1901_end
    .const 'Sub' $P1907 = "191_1303928992.215" 
    capture_lex $P1907
    $P1907()
  if_1901_end:
.annotate 'line', 1251
    find_lex $P1938, "$output"
    unless_null $P1938, vivify_817
    new $P1938, "Undef"
  vivify_817:
    isnull $I1939, $P1938
    unless $I1939, if_1937_end
    set $I1940, .CONTROL_LOOP_NEXT
    die 0, $I1940
  if_1937_end:
.annotate 'line', 1253
    find_lex $P1943, "$target"
    unless_null $P1943, vivify_818
    new $P1943, "Undef"
  vivify_818:
    isfalse $I1944, $P1943
    if $I1944, if_1942
.annotate 'line', 1255
    find_lex $P1950, "$target"
    unless_null $P1950, vivify_819
    new $P1950, "Undef"
  vivify_819:
    set $S1951, $P1950
    iseq $I1952, $S1951, "pir"
    if $I1952, if_1949
.annotate 'line', 1258
    find_lex $P1954, "self"
    find_lex $P1955, "$output"
    unless_null $P1955, vivify_820
    new $P1955, "Undef"
  vivify_820:
    find_lex $P1956, "$target"
    unless_null $P1956, vivify_821
    new $P1956, "Undef"
  vivify_821:
    find_lex $P1957, "%adverbs"
    unless_null $P1957, vivify_822
    $P1957 = root_new ['parrot';'Hash']
  vivify_822:
    $P1958 = $P1954."dumper"($P1955, $P1956, $P1957 :flat)
.annotate 'line', 1257
    set $P1948, $P1958
.annotate 'line', 1255
    goto if_1949_end
  if_1949:
.annotate 'line', 1256
    find_lex $P1953, "$output"
    unless_null $P1953, vivify_823
    new $P1953, "Undef"
  vivify_823:
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
    unless_null $P1946, vivify_824
    new $P1946, "Undef"
  vivify_824:
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
.sub "_block1877"  :anon :subid("189_1303928992.215") :outer("188_1303928992.215")
.annotate 'line', 1236
    .const 'Sub' $P1890 = "190_1303928992.215" 
    capture_lex $P1890
    new $P1886, 'ExceptionHandler'
    set_label $P1886, control_1885
    $P1886."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1886
.annotate 'line', 1237
    find_lex $P1879, "self"
    find_lex $P1880, "$code"
    unless_null $P1880, vivify_802
    new $P1880, "Undef"
  vivify_802:
    find_lex $P1881, "$save_ctx"
    unless_null $P1881, vivify_803
    new $P1881, "Undef"
  vivify_803:
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_804
    $P1882 = root_new ['parrot';'Hash']
  vivify_804:
    $P1883 = $P1879."eval"($P1880, $P1882 :flat, $P1881 :named("outer_ctx"))
    store_lex "$output", $P1883
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1884
  control_1885:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1890 = "190_1303928992.215" 
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
.sub "_block1889"  :anon :subid("190_1303928992.215") :outer("189_1303928992.215")
    .param pmc param_1891
.annotate 'line', 1238
    .lex "$_", param_1891
    find_lex $P1892, "$_"
    .lex "$!", $P1892
.annotate 'line', 1239
    find_lex $P1893, "$!"
    unless_null $P1893, vivify_805
    new $P1893, "Undef"
  vivify_805:
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
.sub "_block1906"  :anon :subid("191_1303928992.215") :outer("188_1303928992.215")
.annotate 'line', 1243
    .const 'Sub' $P1922 = "192_1303928992.215" 
    capture_lex $P1922
    find_lex $P1908, "$?PACKAGE"
    get_who $P1909, $P1908
    set $P1910, $P1909["$interactive_ctx"]
    unless_null $P1910, vivify_808
    new $P1910, "Undef"
  vivify_808:
    find_lex $P1911, "$?PACKAGE"
    get_who $P1912, $P1911
    set $P1913, $P1912["%interactive_pad"]
    unless_null $P1913, vivify_809
    $P1913 = root_new ['parrot';'Hash']
  vivify_809:
.annotate 'line', 1246
    find_dynamic_lex $P1917, "$*MAIN_CTX"
    unless_null $P1917, vivify_810
    get_hll_global $P1915, "GLOBAL"
    get_who $P1916, $P1915
    set $P1917, $P1916["$MAIN_CTX"]
    unless_null $P1917, vivify_811
    die "Contextual $*MAIN_CTX not found"
  vivify_811:
  vivify_810:
    $P1918 = $P1917."lexpad_full"()
    defined $I1919, $P1918
    unless $I1919, for_undef_812
    iter $P1914, $P1918
    new $P1932, 'ExceptionHandler'
    set_label $P1932, loop1931_handler
    $P1932."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1932
  loop1931_test:
    unless $P1914, loop1931_done
    shift $P1920, $P1914
  loop1931_redo:
    .const 'Sub' $P1922 = "192_1303928992.215" 
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
  for_undef_812:
.annotate 'line', 1249
    find_lex $P1934, "$?PACKAGE"
    get_who $P1935, $P1934
    set $P1936, $P1935["$interactive_ctx"]
    unless_null $P1936, vivify_816
    new $P1936, "Undef"
  vivify_816:
    store_lex "$save_ctx", $P1936
.annotate 'line', 1243
    .return ($P1936)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1921"  :anon :subid("192_1303928992.215") :outer("191_1303928992.215")
    .param pmc param_1923
.annotate 'line', 1246
    .lex "$_", param_1923
.annotate 'line', 1247
    find_lex $P1924, "$_"
    unless_null $P1924, vivify_813
    new $P1924, "Undef"
  vivify_813:
    $P1925 = $P1924."value"()
    find_lex $P1926, "$_"
    unless_null $P1926, vivify_814
    new $P1926, "Undef"
  vivify_814:
    $P1927 = $P1926."key"()
    find_lex $P1928, "$?PACKAGE"
    get_who $P1929, $P1928
    set $P1930, $P1929["%interactive_pad"]
    unless_null $P1930, vivify_815
    $P1930 = root_new ['parrot';'Hash']
    set $P1929["%interactive_pad"], $P1930
  vivify_815:
    set $P1930[$P1927], $P1925
.annotate 'line', 1246
    .return ($P1925)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_1964
    .param pmc param_1965
    .param pmc param_1966 :slurpy
    .param pmc param_1967 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1986 = "194_1303928992.215" 
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
    unless_null $P1969, vivify_825
    new $P1969, "Undef"
  vivify_825:
.annotate 'line', 1266
    find_lex $P1970, "self"
    find_lex $P1971, "$code"
    unless_null $P1971, vivify_826
    new $P1971, "Undef"
  vivify_826:
    find_lex $P1972, "%adverbs"
    unless_null $P1972, vivify_827
    $P1972 = root_new ['parrot';'Hash']
  vivify_827:
    $P1973 = $P1970."compile"($P1971, $P1972 :flat)
    store_lex "$output", $P1973
.annotate 'line', 1268
    find_lex $P1977, "$output"
    unless_null $P1977, vivify_828
    new $P1977, "Undef"
  vivify_828:
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
    unless_null $P1981, vivify_829
    $P1981 = root_new ['parrot';'Hash']
  vivify_829:
    set $P1982, $P1981["target"]
    unless_null $P1982, vivify_830
    new $P1982, "Undef"
  vivify_830:
    set $S1983, $P1982
    iseq $I1984, $S1983, ""
    new $P1975, 'Integer'
    set $P1975, $I1984
  if_1976_end:
    unless $P1975, if_1974_end
    .const 'Sub' $P1986 = "194_1303928992.215" 
    capture_lex $P1986
    $P1986()
  if_1974_end:
.annotate 'line', 1268
    find_lex $P2002, "$output"
    unless_null $P2002, vivify_841
    new $P2002, "Undef"
  vivify_841:
.annotate 'line', 1264
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1985"  :anon :subid("194_1303928992.215") :outer("193_1303928992.215")
.annotate 'line', 1270
    new $P1987, "Undef"
    .lex "$outer_ctx", $P1987
    find_lex $P1988, "%adverbs"
    unless_null $P1988, vivify_831
    $P1988 = root_new ['parrot';'Hash']
  vivify_831:
    set $P1989, $P1988["outer_ctx"]
    unless_null $P1989, vivify_832
    new $P1989, "Undef"
  vivify_832:
    store_lex "$outer_ctx", $P1989
.annotate 'line', 1271
    find_lex $P1991, "$outer_ctx"
    unless_null $P1991, vivify_833
    new $P1991, "Undef"
  vivify_833:
    defined $I1992, $P1991
    unless $I1992, if_1990_end
.annotate 'line', 1272
    find_lex $P1993, "$output"
    unless_null $P1993, vivify_834
    $P1993 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $P1994, $P1993[0]
    unless_null $P1994, vivify_835
    new $P1994, "Undef"
  vivify_835:
    find_lex $P1995, "$outer_ctx"
    unless_null $P1995, vivify_836
    new $P1995, "Undef"
  vivify_836:
    $P1994."set_outer_ctx"($P1995)
  if_1990_end:
.annotate 'line', 1275
    find_lex $P1996, "%adverbs"
    unless_null $P1996, vivify_837
    $P1996 = root_new ['parrot';'Hash']
  vivify_837:
    set $P1997, $P1996["trace"]
    unless_null $P1997, vivify_838
    new $P1997, "Undef"
  vivify_838:
    set $I1998, $P1997
    trace $I1998
.annotate 'line', 1276
    find_lex $P1999, "$output"
    unless_null $P1999, vivify_839
    new $P1999, "Undef"
  vivify_839:
    find_lex $P2000, "@args"
    unless_null $P2000, vivify_840
    $P2000 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    $P2001 = $P1999($P2000 :flat)
    store_lex "$output", $P2001
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303928992.215") :outer("167_1303928992.215")
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
.sub "panic"  :subid("196_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2008
    .param pmc param_2009 :slurpy
.annotate 'line', 1292
    .lex "self", param_2008
    .lex "@args", param_2009
.annotate 'line', 1293
    find_lex $P2010, "@args"
    unless_null $P2010, vivify_842
    $P2010 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    join $S2011, "", $P2010
    die $S2011
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2013
    .param pmc param_2014 :optional
    .param int has_param_2014 :opt_flag
.annotate 'line', 1296
    .lex "self", param_2013
    if has_param_2014, optparam_843
    $P2015 = root_new ['parrot';'ResizablePMCArray']
    set param_2014, $P2015
  optparam_843:
    .lex "@value", param_2014
.annotate 'line', 1297
    find_lex $P2017, "@value"
    unless_null $P2017, vivify_844
    $P2017 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $N2018, $P2017
    unless $N2018, if_2016_end
.annotate 'line', 1298
    find_lex $P2019, "@value"
    unless_null $P2019, vivify_845
    $P2019 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    find_lex $P2020, "self"
    find_lex $P2021, "$?CLASS"
    setattribute $P2020, $P2021, "@!stages", $P2019
  if_2016_end:
.annotate 'line', 1297
    find_lex $P2022, "self"
    find_lex $P2023, "$?CLASS"
    getattribute $P2024, $P2022, $P2023, "@!stages"
    unless_null $P2024, vivify_846
    $P2024 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
.annotate 'line', 1296
    .return ($P2024)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2026
    .param pmc param_2027 :slurpy
.annotate 'line', 1303
    .lex "self", param_2026
    .lex "@value", param_2027
.annotate 'line', 1304
    find_lex $P2029, "@value"
    unless_null $P2029, vivify_847
    $P2029 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $N2030, $P2029
    unless $N2030, if_2028_end
.annotate 'line', 1305
    find_lex $P2031, "@value"
    unless_null $P2031, vivify_848
    $P2031 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $P2032, $P2031[0]
    unless_null $P2032, vivify_849
    new $P2032, "Undef"
  vivify_849:
    find_lex $P2033, "self"
    find_lex $P2034, "$?CLASS"
    setattribute $P2033, $P2034, "$!parsegrammar", $P2032
  if_2028_end:
.annotate 'line', 1304
    find_lex $P2035, "self"
    find_lex $P2036, "$?CLASS"
    getattribute $P2037, $P2035, $P2036, "$!parsegrammar"
    unless_null $P2037, vivify_850
    new $P2037, "Undef"
  vivify_850:
.annotate 'line', 1303
    .return ($P2037)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2039
    .param pmc param_2040 :slurpy
.annotate 'line', 1310
    .lex "self", param_2039
    .lex "@value", param_2040
.annotate 'line', 1311
    find_lex $P2042, "@value"
    unless_null $P2042, vivify_851
    $P2042 = root_new ['parrot';'ResizablePMCArray']
  vivify_851:
    set $N2043, $P2042
    unless $N2043, if_2041_end
.annotate 'line', 1312
    find_lex $P2044, "@value"
    unless_null $P2044, vivify_852
    $P2044 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $P2045, $P2044[0]
    unless_null $P2045, vivify_853
    new $P2045, "Undef"
  vivify_853:
    find_lex $P2046, "self"
    find_lex $P2047, "$?CLASS"
    setattribute $P2046, $P2047, "$!parseactions", $P2045
  if_2041_end:
.annotate 'line', 1311
    find_lex $P2048, "self"
    find_lex $P2049, "$?CLASS"
    getattribute $P2050, $P2048, $P2049, "$!parseactions"
    unless_null $P2050, vivify_854
    new $P2050, "Undef"
  vivify_854:
.annotate 'line', 1310
    .return ($P2050)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2052
    .param pmc param_2053 :slurpy
.annotate 'line', 1317
    .lex "self", param_2052
    .lex "@value", param_2053
.annotate 'line', 1318
    find_lex $P2055, "@value"
    unless_null $P2055, vivify_855
    $P2055 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    set $N2056, $P2055
    unless $N2056, if_2054_end
.annotate 'line', 1319
    find_lex $P2057, "@value"
    unless_null $P2057, vivify_856
    $P2057 = root_new ['parrot';'ResizablePMCArray']
  vivify_856:
    set $P2058, $P2057[0]
    unless_null $P2058, vivify_857
    new $P2058, "Undef"
  vivify_857:
    find_lex $P2059, "self"
    find_lex $P2060, "$?CLASS"
    setattribute $P2059, $P2060, "$!astgrammar", $P2058
  if_2054_end:
.annotate 'line', 1318
    find_lex $P2061, "self"
    find_lex $P2062, "$?CLASS"
    getattribute $P2063, $P2061, $P2062, "$!astgrammar"
    unless_null $P2063, vivify_858
    new $P2063, "Undef"
  vivify_858:
.annotate 'line', 1317
    .return ($P2063)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2065
    .param pmc param_2066 :optional
    .param int has_param_2066 :opt_flag
.annotate 'line', 1324
    .lex "self", param_2065
    if has_param_2066, optparam_859
    new $P2067, "Undef"
    set param_2066, $P2067
  optparam_859:
    .lex "$value", param_2066
.annotate 'line', 1325
    find_lex $P2069, "$value"
    unless_null $P2069, vivify_860
    new $P2069, "Undef"
  vivify_860:
    defined $I2070, $P2069
    unless $I2070, if_2068_end
.annotate 'line', 1326
    find_lex $P2071, "$value"
    unless_null $P2071, vivify_861
    new $P2071, "Undef"
  vivify_861:
    find_lex $P2072, "self"
    find_lex $P2073, "$?CLASS"
    setattribute $P2072, $P2073, "$!commandline_banner", $P2071
  if_2068_end:
.annotate 'line', 1325
    find_lex $P2074, "self"
    find_lex $P2075, "$?CLASS"
    getattribute $P2076, $P2074, $P2075, "$!commandline_banner"
    unless_null $P2076, vivify_862
    new $P2076, "Undef"
  vivify_862:
.annotate 'line', 1324
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2078
    .param pmc param_2079 :optional
    .param int has_param_2079 :opt_flag
.annotate 'line', 1331
    .lex "self", param_2078
    if has_param_2079, optparam_863
    new $P2080, "Undef"
    set param_2079, $P2080
  optparam_863:
    .lex "$value", param_2079
.annotate 'line', 1332
    find_lex $P2082, "$value"
    unless_null $P2082, vivify_864
    new $P2082, "Undef"
  vivify_864:
    defined $I2083, $P2082
    unless $I2083, if_2081_end
.annotate 'line', 1333
    find_lex $P2084, "$value"
    unless_null $P2084, vivify_865
    new $P2084, "Undef"
  vivify_865:
    find_lex $P2085, "self"
    find_lex $P2086, "$?CLASS"
    setattribute $P2085, $P2086, "$!commandline_prompt", $P2084
  if_2081_end:
.annotate 'line', 1332
    find_lex $P2087, "self"
    find_lex $P2088, "$?CLASS"
    getattribute $P2089, $P2087, $P2088, "$!commandline_prompt"
    unless_null $P2089, vivify_866
    new $P2089, "Undef"
  vivify_866:
.annotate 'line', 1331
    .return ($P2089)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2091
    .param pmc param_2092 :optional
    .param int has_param_2092 :opt_flag
.annotate 'line', 1338
    .lex "self", param_2091
    if has_param_2092, optparam_867
    new $P2093, "Undef"
    set param_2092, $P2093
  optparam_867:
    .lex "$value", param_2092
.annotate 'line', 1339
    find_lex $P2095, "$value"
    unless_null $P2095, vivify_868
    new $P2095, "Undef"
  vivify_868:
    defined $I2096, $P2095
    unless $I2096, if_2094_end
.annotate 'line', 1340
    find_lex $P2097, "$value"
    unless_null $P2097, vivify_869
    new $P2097, "Undef"
  vivify_869:
    find_lex $P2098, "self"
    find_lex $P2099, "$?CLASS"
    setattribute $P2098, $P2099, "$!compiler_progname", $P2097
  if_2094_end:
.annotate 'line', 1339
    find_lex $P2100, "self"
    find_lex $P2101, "$?CLASS"
    getattribute $P2102, $P2100, $P2101, "$!compiler_progname"
    unless_null $P2102, vivify_870
    new $P2102, "Undef"
  vivify_870:
.annotate 'line', 1338
    .return ($P2102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2104
    .param pmc param_2105 :optional
    .param int has_param_2105 :opt_flag
.annotate 'line', 1345
    .lex "self", param_2104
    if has_param_2105, optparam_871
    $P2106 = root_new ['parrot';'ResizablePMCArray']
    set param_2105, $P2106
  optparam_871:
    .lex "@value", param_2105
.annotate 'line', 1346
    find_lex $P2108, "@value"
    unless_null $P2108, vivify_872
    $P2108 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    set $N2109, $P2108
    unless $N2109, if_2107_end
.annotate 'line', 1347
    find_lex $P2110, "@value"
    unless_null $P2110, vivify_873
    $P2110 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    find_lex $P2111, "self"
    find_lex $P2112, "$?CLASS"
    setattribute $P2111, $P2112, "@!cmdoptions", $P2110
  if_2107_end:
.annotate 'line', 1346
    find_lex $P2113, "self"
    find_lex $P2114, "$?CLASS"
    getattribute $P2115, $P2113, $P2114, "@!cmdoptions"
    unless_null $P2115, vivify_874
    $P2115 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
.annotate 'line', 1345
    .return ($P2115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2117
    .param pmc param_2118
    .param pmc param_2119 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P2145 = "206_1303928992.215" 
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
    unless_null $P2125, vivify_875
    $P2125 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    set $P2126, $P2125[2]
    unless_null $P2126, vivify_876
    new $P2126, "Undef"
  vivify_876:
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
    unless_null $P2131, vivify_877
    $P2131 = root_new ['parrot';'ResizablePMCArray']
  vivify_877:
    set $P2132, $P2131[0]
    unless_null $P2132, vivify_878
    new $P2132, "Undef"
  vivify_878:
    store_lex "$program-name", $P2132
.annotate 'line', 1366
    find_lex $P2133, "self"
    find_lex $P2134, "@args"
    unless_null $P2134, vivify_879
    $P2134 = root_new ['parrot';'ResizablePMCArray']
  vivify_879:
    $P2135 = $P2133."process_args"($P2134)
    store_lex "$res", $P2135
.annotate 'line', 1367
    find_lex $P2136, "$res"
    unless_null $P2136, vivify_880
    new $P2136, "Undef"
  vivify_880:
    $P2137 = $P2136."options"()
    store_lex "%opts", $P2137
.annotate 'line', 1368
    find_lex $P2138, "$res"
    unless_null $P2138, vivify_881
    new $P2138, "Undef"
  vivify_881:
    $P2139 = $P2138."arguments"()
    store_lex "@a", $P2139
.annotate 'line', 1370
    find_lex $P2141, "%opts"
    unless_null $P2141, vivify_882
    $P2141 = root_new ['parrot';'Hash']
  vivify_882:
    defined $I2142, $P2141
    unless $I2142, for_undef_883
    iter $P2140, $P2141
    new $P2153, 'ExceptionHandler'
    set_label $P2153, loop2152_handler
    $P2153."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2153
  loop2152_test:
    unless $P2140, loop2152_done
    shift $P2143, $P2140
  loop2152_redo:
    .const 'Sub' $P2145 = "206_1303928992.215" 
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
  for_undef_883:
.annotate 'line', 1373
    find_lex $P2156, "%adverbs"
    unless_null $P2156, vivify_889
    $P2156 = root_new ['parrot';'Hash']
  vivify_889:
    set $P2157, $P2156["help"]
    unless_null $P2157, vivify_890
    new $P2157, "Undef"
  vivify_890:
    unless $P2157, if_2155_end
    find_lex $P2158, "self"
    find_lex $P2159, "$program-name"
    unless_null $P2159, vivify_891
    new $P2159, "Undef"
  vivify_891:
    $P2158."usage"($P2159)
  if_2155_end:
.annotate 'line', 1374
    find_lex $P2161, "%adverbs"
    unless_null $P2161, vivify_892
    $P2161 = root_new ['parrot';'Hash']
  vivify_892:
    set $P2162, $P2161["version"]
    unless_null $P2162, vivify_893
    new $P2162, "Undef"
  vivify_893:
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
.sub "_block2144"  :anon :subid("206_1303928992.215") :outer("205_1303928992.215")
    .param pmc param_2146
.annotate 'line', 1370
    .lex "$k", param_2146
.annotate 'line', 1371
    find_lex $P2147, "$k"
    unless_null $P2147, vivify_884
    new $P2147, "Undef"
  vivify_884:
    find_lex $P2148, "%opts"
    unless_null $P2148, vivify_885
    $P2148 = root_new ['parrot';'Hash']
  vivify_885:
    set $P2149, $P2148[$P2147]
    unless_null $P2149, vivify_886
    new $P2149, "Undef"
  vivify_886:
    find_lex $P2150, "$k"
    unless_null $P2150, vivify_887
    new $P2150, "Undef"
  vivify_887:
    find_lex $P2151, "%adverbs"
    unless_null $P2151, vivify_888
    $P2151 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2151
  vivify_888:
    set $P2151[$P2150], $P2149
.annotate 'line', 1370
    .return ($P2149)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2165
    .param pmc param_2166
.annotate 'line', 1470
    .const 'Sub' $P2185 = "208_1303928992.215" 
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
    unless_null $P2170, vivify_894
    $P2170 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
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
    unless_null $P2179, vivify_895
    $P2179 = root_new ['parrot';'ResizablePMCArray']
  vivify_895:
    $P2180 = $P2176."new"($P2179)
    store_lex "$p", $P2180
.annotate 'line', 1475
    find_lex $P2181, "$p"
    unless_null $P2181, vivify_896
    new $P2181, "Undef"
  vivify_896:
    $P2181."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P2182, "$p"
    unless_null $P2182, vivify_897
    new $P2182, "Undef"
  vivify_897:
    $P2182."stop-after-first-arg"()
    find_lex $P2183, "$res"
    unless_null $P2183, vivify_898
    new $P2183, "Undef"
  vivify_898:
.annotate 'line', 1478
    .const 'Sub' $P2185 = "208_1303928992.215" 
    capture_lex $P2185
    $P2185()
    find_lex $P2203, "$res"
    unless_null $P2203, vivify_902
    new $P2203, "Undef"
  vivify_902:
.annotate 'line', 1470
    .return ($P2203)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2184"  :anon :subid("208_1303928992.215") :outer("207_1303928992.215")
.annotate 'line', 1478
    .const 'Sub' $P2195 = "209_1303928992.215" 
    capture_lex $P2195
    new $P2191, 'ExceptionHandler'
    set_label $P2191, control_2190
    $P2191."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2191
.annotate 'line', 1479
    find_lex $P2186, "$p"
    unless_null $P2186, vivify_899
    new $P2186, "Undef"
  vivify_899:
    find_lex $P2187, "@args"
    unless_null $P2187, vivify_900
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_900:
    $P2188 = $P2186."parse"($P2187)
    store_lex "$res", $P2188
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_2189
  control_2190:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2195 = "209_1303928992.215" 
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
.sub "_block2194"  :anon :subid("209_1303928992.215") :outer("208_1303928992.215")
    .param pmc param_2196
.annotate 'line', 1480
    .lex "$_", param_2196
    find_lex $P2197, "$_"
    .lex "$!", $P2197
.annotate 'line', 1481
    find_lex $P2198, "$_"
    unless_null $P2198, vivify_901
    new $P2198, "Undef"
  vivify_901:
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
.sub "evalfiles"  :subid("210_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2207
    .param pmc param_2208
    .param pmc param_2209 :slurpy
    .param pmc param_2210 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P2235 = "211_1303928992.215" 
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
    unless_null $P2215, vivify_903
    $P2215 = root_new ['parrot';'Hash']
  vivify_903:
    set $P2216, $P2215["target"]
    unless_null $P2216, vivify_904
    new $P2216, "Undef"
  vivify_904:
    set $S2217, $P2216
    downcase $S2218, $S2217
    new $P2219, 'String'
    set $P2219, $S2218
    store_lex "$target", $P2219
.annotate 'line', 1491
    find_lex $P2220, "%adverbs"
    unless_null $P2220, vivify_905
    $P2220 = root_new ['parrot';'Hash']
  vivify_905:
    set $P2221, $P2220["encoding"]
    unless_null $P2221, vivify_906
    new $P2221, "Undef"
  vivify_906:
    store_lex "$encoding", $P2221
.annotate 'line', 1492
    find_lex $P2224, "$files"
    unless_null $P2224, vivify_907
    new $P2224, "Undef"
  vivify_907:
    does $I2225, $P2224, "array"
    if $I2225, if_2223
    find_lex $P2227, "$files"
    unless_null $P2227, vivify_908
    new $P2227, "Undef"
  vivify_908:
    new $P2228, "ResizablePMCArray"
    push $P2228, $P2227
    set $P2222, $P2228
    goto if_2223_end
  if_2223:
    find_lex $P2226, "$files"
    unless_null $P2226, vivify_909
    new $P2226, "Undef"
  vivify_909:
    set $P2222, $P2226
  if_2223_end:
    store_lex "@files", $P2222
    find_lex $P2229, "@codes"
    unless_null $P2229, vivify_910
    $P2229 = root_new ['parrot';'ResizablePMCArray']
  vivify_910:
.annotate 'line', 1494
    find_lex $P2231, "@files"
    unless_null $P2231, vivify_911
    $P2231 = root_new ['parrot';'ResizablePMCArray']
  vivify_911:
    defined $I2232, $P2231
    unless $I2232, for_undef_912
    iter $P2230, $P2231
    new $P2297, 'ExceptionHandler'
    set_label $P2297, loop2296_handler
    $P2297."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2297
  loop2296_test:
    unless $P2230, loop2296_done
    shift $P2233, $P2230
  loop2296_redo:
    .const 'Sub' $P2235 = "211_1303928992.215" 
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
  for_undef_912:
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
.sub "_block2234"  :anon :subid("211_1303928992.215") :outer("210_1303928992.215")
    .param pmc param_2240
.annotate 'line', 1494
    .const 'Sub' $P2244 = "212_1303928992.215" 
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
    .const 'Sub' $P2244 = "212_1303928992.215" 
    capture_lex $P2244
    $P2244()
.annotate 'line', 1508
    find_lex $P2268, "$err"
    unless_null $P2268, vivify_920
    new $P2268, "Undef"
  vivify_920:
    unless $P2268, if_2267_end
    find_lex $P2269, "$err"
    unless_null $P2269, vivify_921
    new $P2269, "Undef"
  vivify_921:
    die $P2269
  if_2267_end:
.annotate 'line', 1509
    find_lex $P2270, "@codes"
    unless_null $P2270, vivify_922
    $P2270 = root_new ['parrot';'ResizablePMCArray']
  vivify_922:
    join $S2271, "", $P2270
    new $P2272, 'String'
    set $P2272, $S2271
    store_lex "$code", $P2272
.annotate 'line', 1511
    find_lex $P2273, "self"
    find_lex $P2274, "$code"
    unless_null $P2274, vivify_923
    new $P2274, "Undef"
  vivify_923:
    find_lex $P2275, "@args"
    unless_null $P2275, vivify_924
    $P2275 = root_new ['parrot';'ResizablePMCArray']
  vivify_924:
    find_lex $P2276, "%adverbs"
    unless_null $P2276, vivify_925
    $P2276 = root_new ['parrot';'Hash']
  vivify_925:
    $P2277 = $P2273."eval"($P2274, $P2275 :flat, $P2276 :flat)
    store_lex "$r", $P2277
.annotate 'line', 1512
    find_lex $P2282, "$target"
    unless_null $P2282, vivify_926
    new $P2282, "Undef"
  vivify_926:
    set $S2283, $P2282
    iseq $I2284, $S2283, ""
    unless $I2284, unless_2281
    new $P2280, 'Integer'
    set $P2280, $I2284
    goto unless_2281_end
  unless_2281:
    find_lex $P2285, "$target"
    unless_null $P2285, vivify_927
    new $P2285, "Undef"
  vivify_927:
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
    unless_null $P2292, vivify_928
    new $P2292, "Undef"
  vivify_928:
    find_lex $P2293, "$target"
    unless_null $P2293, vivify_929
    new $P2293, "Undef"
  vivify_929:
    find_lex $P2294, "%adverbs"
    unless_null $P2294, vivify_930
    $P2294 = root_new ['parrot';'Hash']
  vivify_930:
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
    unless_null $P2289, vivify_931
    new $P2289, "Undef"
  vivify_931:
    setattribute $P2288, 'payload', $P2289
    throw $P2288
  if_2279_end:
.annotate 'line', 1494
    .return ($P2278)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2243"  :anon :subid("212_1303928992.215") :outer("211_1303928992.215")
.annotate 'line', 1497
    .const 'Sub' $P2258 = "213_1303928992.215" 
    capture_lex $P2258
    new $P2254, 'ExceptionHandler'
    set_label $P2254, control_2253
    $P2254."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2254
.annotate 'line', 1501
    find_lex $P2245, "$in-handle"
    unless_null $P2245, vivify_913
    new $P2245, "Undef"
  vivify_913:
    find_lex $P2246, "$encoding"
    unless_null $P2246, vivify_914
    new $P2246, "Undef"
  vivify_914:
    $P2245."encoding"($P2246)
.annotate 'line', 1502
    find_lex $P2247, "@codes"
    unless_null $P2247, vivify_915
    $P2247 = root_new ['parrot';'ResizablePMCArray']
  vivify_915:
    find_lex $P2248, "$in-handle"
    unless_null $P2248, vivify_916
    new $P2248, "Undef"
  vivify_916:
    find_lex $P2249, "$_"
    unless_null $P2249, vivify_917
    new $P2249, "Undef"
  vivify_917:
    $P2250 = $P2248."readall"($P2249)
    push $P2247, $P2250
.annotate 'line', 1503
    find_lex $P2251, "$in-handle"
    unless_null $P2251, vivify_918
    new $P2251, "Undef"
  vivify_918:
    $P2251."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_2252
  control_2253:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2258 = "213_1303928992.215" 
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
.sub "_block2257"  :anon :subid("213_1303928992.215") :outer("212_1303928992.215")
    .param pmc param_2259
.annotate 'line', 1504
    .lex "$_", param_2259
    find_lex $P2260, "$_"
    .lex "$!", $P2260
.annotate 'line', 1505
    new $P2261, 'String'
    set $P2261, "Error while reading from file: "
    find_lex $P2262, "$_"
    unless_null $P2262, vivify_919
    new $P2262, "Undef"
  vivify_919:
    concat $P2263, $P2261, $P2262
    store_lex "$err", $P2263
.annotate 'line', 1504
    .return ($P2263)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2303
    .param pmc param_2304
    .param pmc param_2305 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2328 = "215_1303928992.215" 
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
    unless_null $P2310, vivify_932
    $P2310 = root_new ['parrot';'Hash']
  vivify_932:
    find_lex $P2313, "%*COMPILING"
    unless_null $P2313, vivify_933
    get_hll_global $P2311, "GLOBAL"
    get_who $P2312, $P2311
    set $P2313, $P2312["%COMPILING"]
    unless_null $P2313, vivify_934
    die "Contextual %*COMPILING not found"
  vivify_934:
    store_lex "%*COMPILING", $P2313
  vivify_933:
    set $P2313["%?OPTIONS"], $P2310
.annotate 'line', 1524
    find_lex $P2314, "%adverbs"
    unless_null $P2314, vivify_935
    $P2314 = root_new ['parrot';'Hash']
  vivify_935:
    set $P2315, $P2314["target"]
    unless_null $P2315, vivify_936
    new $P2315, "Undef"
  vivify_936:
    set $S2316, $P2315
    downcase $S2317, $S2316
    new $P2318, 'String'
    set $P2318, $S2317
    store_lex "$target", $P2318
.annotate 'line', 1525
    find_lex $P2319, "$source"
    unless_null $P2319, vivify_937
    new $P2319, "Undef"
  vivify_937:
    store_lex "$result", $P2319
.annotate 'line', 1526
    getinterp $P2320
    $P2321 = $P2320."stderr_handle"()
    store_lex "$stderr", $P2321
.annotate 'line', 1527
    find_lex $P2323, "self"
    $P2324 = $P2323."stages"()
    defined $I2325, $P2324
    unless $I2325, for_undef_938
    iter $P2322, $P2324
    new $P2364, 'ExceptionHandler'
    set_label $P2364, loop2363_handler
    $P2364."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2364
  loop2363_test:
    unless $P2322, loop2363_done
    shift $P2326, $P2322
  loop2363_redo:
    .const 'Sub' $P2328 = "215_1303928992.215" 
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
  for_undef_938:
.annotate 'line', 1537
    new $P2366, "Exception"
    set $P2366['type'], .CONTROL_RETURN
    find_lex $P2367, "$result"
    unless_null $P2367, vivify_950
    new $P2367, "Undef"
  vivify_950:
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
.sub "_block2327"  :anon :subid("215_1303928992.215") :outer("214_1303928992.215")
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
    unless_null $P2335, vivify_939
    new $P2335, "Undef"
  vivify_939:
    find_lex $P2336, "%adverbs"
    unless_null $P2336, vivify_940
    $P2336 = root_new ['parrot';'Hash']
  vivify_940:
    find_lex $P2337, "$_"
    unless_null $P2337, vivify_941
    new $P2337, "Undef"
  vivify_941:
    set $S2338, $P2337
    $P2339 = $P2334.$S2338($P2335, $P2336 :flat)
    store_lex "$result", $P2339
.annotate 'line', 1530
    time $N2340
    new $P2341, 'Float'
    set $P2341, $N2340
    find_lex $P2342, "$timestamp"
    unless_null $P2342, vivify_942
    new $P2342, "Undef"
  vivify_942:
    sub $P2343, $P2341, $P2342
    store_lex "$diff", $P2343
.annotate 'line', 1531
    find_lex $P2345, "%adverbs"
    unless_null $P2345, vivify_943
    $P2345 = root_new ['parrot';'Hash']
  vivify_943:
    set $P2346, $P2345["stagestats"]
    unless_null $P2346, vivify_944
    new $P2346, "Undef"
  vivify_944:
    unless $P2346, if_2344_end
.annotate 'line', 1533
    find_lex $P2347, "$stderr"
    unless_null $P2347, vivify_945
    new $P2347, "Undef"
  vivify_945:
    new $P2348, 'String'
    set $P2348, "Stage "
    find_lex $P2349, "$_"
    unless_null $P2349, vivify_946
    new $P2349, "Undef"
  vivify_946:
    concat $P2350, $P2348, $P2349
    concat $P2351, $P2350, ": "
    find_lex $P2352, "$diff"
    unless_null $P2352, vivify_947
    new $P2352, "Undef"
  vivify_947:
    concat $P2353, $P2351, $P2352
    concat $P2354, $P2353, "\n"
    $P2347."print__N"($P2354)
  if_2344_end:
.annotate 'line', 1535
    find_lex $P2357, "$_"
    unless_null $P2357, vivify_948
    new $P2357, "Undef"
  vivify_948:
    set $S2358, $P2357
    find_lex $P2359, "$target"
    unless_null $P2359, vivify_949
    new $P2359, "Undef"
  vivify_949:
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
.sub "parse"  :subid("216_1303928992.215") :outer("167_1303928992.215")
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
.sub "past"  :subid("217_1303928992.215") :outer("167_1303928992.215")
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
.sub "post"  :subid("218_1303928992.215") :outer("167_1303928992.215")
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
    unless_null $P2382, vivify_951
    new $P2382, "Undef"
  vivify_951:
    find_lex $P2383, "%adverbs"
    unless_null $P2383, vivify_952
    $P2383 = root_new ['parrot';'Hash']
  vivify_952:
    $P2384 = $P2381."to_post"($P2382, $P2383 :flat)
.annotate 'line', 1629
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303928992.215") :outer("167_1303928992.215")
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
    unless_null $P2390, vivify_953
    new $P2390, "Undef"
  vivify_953:
    find_lex $P2391, "%adverbs"
    unless_null $P2391, vivify_954
    $P2391 = root_new ['parrot';'Hash']
  vivify_954:
    $P2392 = $P2389."to_pir"($P2390, $P2391 :flat)
.annotate 'line', 1633
    .return ($P2392)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303928992.215") :outer("167_1303928992.215")
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
    unless_null $P2399, vivify_955
    new $P2399, "Undef"
  vivify_955:
    find_lex $P2400, "$source"
    unless_null $P2400, vivify_956
    new $P2400, "Undef"
  vivify_956:
    $P2401 = $P2399($P2400)
.annotate 'line', 1637
    .return ($P2401)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2403
    .param pmc param_2404
    .param pmc param_2405
    .param pmc param_2406 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2412 = "222_1303928992.215" 
    capture_lex $P2412
    .lex "self", param_2403
    .lex "$obj", param_2404
    .lex "$name", param_2405
    .lex "%options", param_2406
.annotate 'line', 1643
    find_lex $P2409, "%options"
    unless_null $P2409, vivify_957
    $P2409 = root_new ['parrot';'Hash']
  vivify_957:
    set $P2410, $P2409["dumper"]
    unless_null $P2410, vivify_958
    new $P2410, "Undef"
  vivify_958:
    if $P2410, if_2408
.annotate 'line', 1649
    find_lex $P2428, "$obj"
    unless_null $P2428, vivify_959
    new $P2428, "Undef"
  vivify_959:
    find_lex $P2429, "$name"
    unless_null $P2429, vivify_960
    new $P2429, "Undef"
  vivify_960:
    $P2430 = "_dumper"($P2428, $P2429)
.annotate 'line', 1648
    set $P2407, $P2430
.annotate 'line', 1643
    goto if_2408_end
  if_2408:
    .const 'Sub' $P2412 = "222_1303928992.215" 
    capture_lex $P2412
    $P2427 = $P2412()
    set $P2407, $P2427
  if_2408_end:
.annotate 'line', 1642
    .return ($P2407)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2411"  :anon :subid("222_1303928992.215") :outer("221_1303928992.215")
.annotate 'line', 1645
    new $P2413, "Undef"
    .lex "$dumper", $P2413
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2414, "%options"
    unless_null $P2414, vivify_961
    $P2414 = root_new ['parrot';'Hash']
  vivify_961:
    set $P2415, $P2414["dumper"]
    unless_null $P2415, vivify_962
    new $P2415, "Undef"
  vivify_962:
    set $S2416, $P2415
    downcase $S2417, $S2416
    get_hll_global $P2418, "GLOBAL"
    nqp_get_package_through_who $P2419, $P2418, "PCT"
    get_who $P2420, $P2419
    set $P2421, $P2420["Dumper"]
    unless_null $P2421, vivify_963
    $P2421 = root_new ['parrot';'Hash']
  vivify_963:
    set $P2422, $P2421[$S2417]
    unless_null $P2422, vivify_964
    new $P2422, "Undef"
  vivify_964:
    store_lex "$dumper", $P2422
.annotate 'line', 1646
    find_lex $P2423, "$dumper"
    unless_null $P2423, vivify_965
    new $P2423, "Undef"
  vivify_965:
    find_lex $P2424, "$obj"
    unless_null $P2424, vivify_966
    new $P2424, "Undef"
  vivify_966:
    find_lex $P2425, "$name"
    unless_null $P2425, vivify_967
    new $P2425, "Undef"
  vivify_967:
    $P2426 = $P2423($P2424, $P2425)
.annotate 'line', 1643
    .return ($P2426)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2432
    .param pmc param_2433 :optional
    .param int has_param_2433 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2432
    if has_param_2433, optparam_968
    new $P2434, "Undef"
    set param_2433, $P2434
  optparam_968:
    .lex "$name", param_2433
.annotate 'line', 1654
    find_lex $P2436, "$name"
    unless_null $P2436, vivify_969
    new $P2436, "Undef"
  vivify_969:
    unless $P2436, if_2435_end
.annotate 'line', 1655
    find_lex $P2437, "$name"
    unless_null $P2437, vivify_970
    new $P2437, "Undef"
  vivify_970:
    "say"($P2437)
  if_2435_end:
.annotate 'line', 1657
    find_lex $P2438, "self"
    find_lex $P2439, "$?CLASS"
    getattribute $P2440, $P2438, $P2439, "$!usage"
    unless_null $P2440, vivify_971
    new $P2440, "Undef"
  vivify_971:
    say $P2440
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2442
.annotate 'line', 1661
    .lex "self", param_2442
.annotate 'line', 1662
    find_lex $P2443, "self"
    find_lex $P2444, "$?CLASS"
    getattribute $P2445, $P2443, $P2444, "$!version"
    unless_null $P2445, vivify_972
    new $P2445, "Undef"
  vivify_972:
    say $P2445
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2447
    .param pmc param_2448
.annotate 'line', 1666
    .const 'Sub' $P2458 = "226_1303928992.215" 
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
    unless_null $P2454, vivify_973
    $P2454 = root_new ['parrot';'ResizablePMCArray']
  vivify_973:
    defined $I2455, $P2454
    unless $I2455, for_undef_974
    iter $P2451, $P2454
    new $P2471, 'ExceptionHandler'
    set_label $P2471, loop2470_handler
    $P2471."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2471
  loop2470_test:
    unless $P2451, loop2470_done
    shift $P2456, $P2451
  loop2470_redo:
    .const 'Sub' $P2458 = "226_1303928992.215" 
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
  for_undef_974:
.annotate 'line', 1673
    find_lex $P2473, "@new_stages"
    unless_null $P2473, vivify_979
    $P2473 = root_new ['parrot';'ResizablePMCArray']
  vivify_979:
    find_lex $P2474, "self"
    find_lex $P2475, "$?CLASS"
    setattribute $P2474, $P2475, "@!stages", $P2473
.annotate 'line', 1666
    .return ($P2473)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2457"  :anon :subid("226_1303928992.215") :outer("225_1303928992.215")
    .param pmc param_2459
.annotate 'line', 1668
    .lex "$_", param_2459
.annotate 'line', 1669
    find_lex $P2462, "$_"
    unless_null $P2462, vivify_975
    new $P2462, "Undef"
  vivify_975:
    set $S2463, $P2462
    find_lex $P2464, "$stagename"
    unless_null $P2464, vivify_976
    new $P2464, "Undef"
  vivify_976:
    set $S2465, $P2464
    isne $I2466, $S2463, $S2465
    if $I2466, if_2461
    new $P2460, 'Integer'
    set $P2460, $I2466
    goto if_2461_end
  if_2461:
.annotate 'line', 1670
    find_lex $P2467, "@new_stages"
    unless_null $P2467, vivify_977
    $P2467 = root_new ['parrot';'ResizablePMCArray']
  vivify_977:
    find_lex $P2468, "$_"
    unless_null $P2468, vivify_978
    new $P2468, "Undef"
  vivify_978:
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
.sub "addstage"  :subid("227_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2479
    .param pmc param_2480
    .param pmc param_2481 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2518 = "229_1303928992.215" 
    capture_lex $P2518
    .const 'Sub' $P2500 = "228_1303928992.215" 
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
    unless_null $P2485, vivify_980
    new $P2485, "Undef"
  vivify_980:
    find_lex $P2486, "$where"
    unless_null $P2486, vivify_981
    new $P2486, "Undef"
  vivify_981:
.annotate 'line', 1679
    find_lex $P2488, "%adverbs"
    unless_null $P2488, vivify_982
    $P2488 = root_new ['parrot';'Hash']
  vivify_982:
    set $P2489, $P2488["before"]
    unless_null $P2489, vivify_983
    new $P2489, "Undef"
  vivify_983:
    if $P2489, if_2487
.annotate 'line', 1682
    find_lex $P2494, "%adverbs"
    unless_null $P2494, vivify_984
    $P2494 = root_new ['parrot';'Hash']
  vivify_984:
    set $P2495, $P2494["after"]
    unless_null $P2495, vivify_985
    new $P2495, "Undef"
  vivify_985:
    if $P2495, if_2493
.annotate 'line', 1685
    .const 'Sub' $P2500 = "228_1303928992.215" 
    capture_lex $P2500
    $P2500()
    goto if_2493_end
  if_2493:
.annotate 'line', 1683
    find_lex $P2496, "%adverbs"
    unless_null $P2496, vivify_989
    $P2496 = root_new ['parrot';'Hash']
  vivify_989:
    set $P2497, $P2496["after"]
    unless_null $P2497, vivify_990
    new $P2497, "Undef"
  vivify_990:
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
    unless_null $P2490, vivify_991
    $P2490 = root_new ['parrot';'Hash']
  vivify_991:
    set $P2491, $P2490["before"]
    unless_null $P2491, vivify_992
    new $P2491, "Undef"
  vivify_992:
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
    unless $I2515, for_undef_993
    iter $P2512, $P2514
    new $P2543, 'ExceptionHandler'
    set_label $P2543, loop2542_handler
    $P2543."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2543
  loop2542_test:
    unless $P2512, loop2542_done
    shift $P2516, $P2512
  loop2542_redo:
    .const 'Sub' $P2518 = "229_1303928992.215" 
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
  for_undef_993:
.annotate 'line', 1705
    find_lex $P2545, "self"
    find_lex $P2546, "@new-stages"
    unless_null $P2546, vivify_1007
    $P2546 = root_new ['parrot';'ResizablePMCArray']
  vivify_1007:
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
.sub "_block2499"  :anon :subid("228_1303928992.215") :outer("227_1303928992.215")
.annotate 'line', 1686
    $P2501 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2501
    find_lex $P2502, "self"
    $P2503 = $P2502."stages"()
    clone $P2504, $P2503
    store_lex "@new-stages", $P2504
.annotate 'line', 1687
    find_lex $P2505, "@new-stages"
    unless_null $P2505, vivify_986
    $P2505 = root_new ['parrot';'ResizablePMCArray']
  vivify_986:
    find_lex $P2506, "$stagename"
    unless_null $P2506, vivify_987
    new $P2506, "Undef"
  vivify_987:
    push $P2505, $P2506
.annotate 'line', 1688
    find_lex $P2507, "self"
    find_lex $P2508, "@new-stages"
    unless_null $P2508, vivify_988
    $P2508 = root_new ['parrot';'ResizablePMCArray']
  vivify_988:
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
.sub "_block2517"  :anon :subid("229_1303928992.215") :outer("227_1303928992.215")
    .param pmc param_2519
.annotate 'line', 1692
    .lex "$_", param_2519
.annotate 'line', 1693
    find_lex $P2522, "$_"
    unless_null $P2522, vivify_994
    new $P2522, "Undef"
  vivify_994:
    set $S2523, $P2522
    find_lex $P2524, "$where"
    unless_null $P2524, vivify_995
    new $P2524, "Undef"
  vivify_995:
    set $S2525, $P2524
    iseq $I2526, $S2523, $S2525
    if $I2526, if_2521
.annotate 'line', 1702
    find_lex $P2540, "@new-stages"
    unless_null $P2540, vivify_996
    $P2540 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    find_lex $P2541, "$_"
    unless_null $P2541, vivify_997
    new $P2541, "Undef"
  vivify_997:
    push $P2540, $P2541
.annotate 'line', 1701
    set $P2520, $P2540
.annotate 'line', 1693
    goto if_2521_end
  if_2521:
.annotate 'line', 1694
    find_lex $P2529, "$position"
    unless_null $P2529, vivify_998
    new $P2529, "Undef"
  vivify_998:
    set $S2530, $P2529
    iseq $I2531, $S2530, "before"
    if $I2531, if_2528
.annotate 'line', 1698
    find_lex $P2536, "@new-stages"
    unless_null $P2536, vivify_999
    $P2536 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    find_lex $P2537, "$_"
    unless_null $P2537, vivify_1000
    new $P2537, "Undef"
  vivify_1000:
    push $P2536, $P2537
.annotate 'line', 1699
    find_lex $P2538, "@new-stages"
    unless_null $P2538, vivify_1001
    $P2538 = root_new ['parrot';'ResizablePMCArray']
  vivify_1001:
    find_lex $P2539, "$stagename"
    unless_null $P2539, vivify_1002
    new $P2539, "Undef"
  vivify_1002:
    push $P2538, $P2539
.annotate 'line', 1697
    set $P2527, $P2538
.annotate 'line', 1694
    goto if_2528_end
  if_2528:
.annotate 'line', 1695
    find_lex $P2532, "@new-stages"
    unless_null $P2532, vivify_1003
    $P2532 = root_new ['parrot';'ResizablePMCArray']
  vivify_1003:
    find_lex $P2533, "$stagename"
    unless_null $P2533, vivify_1004
    new $P2533, "Undef"
  vivify_1004:
    push $P2532, $P2533
.annotate 'line', 1696
    find_lex $P2534, "@new-stages"
    unless_null $P2534, vivify_1005
    $P2534 = root_new ['parrot';'ResizablePMCArray']
  vivify_1005:
    find_lex $P2535, "$_"
    unless_null $P2535, vivify_1006
    new $P2535, "Undef"
  vivify_1006:
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
.sub "parse_name"  :subid("230_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2550
    .param pmc param_2551
.annotate 'line', 1708
    .const 'Sub' $P2589 = "231_1303928992.215" 
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
    unless_null $P2556, vivify_1008
    new $P2556, "Undef"
  vivify_1008:
    set $S2557, $P2556
    split $P2558, "::", $S2557
    store_lex "@ns", $P2558
.annotate 'line', 1710
    find_lex $P2559, "@ns"
    unless_null $P2559, vivify_1009
    $P2559 = root_new ['parrot';'ResizablePMCArray']
  vivify_1009:
    set $P2560, $P2559[0]
    unless_null $P2560, vivify_1010
    new $P2560, "Undef"
  vivify_1010:
    set $S2561, $P2560
    substr $S2562, $S2561, 0, 1
    new $P2563, 'String'
    set $P2563, $S2562
    store_lex "$sigil", $P2563
.annotate 'line', 1713
    find_lex $P2564, "$sigil"
    unless_null $P2564, vivify_1011
    new $P2564, "Undef"
  vivify_1011:
    set $S2565, $P2564
    index $I2566, "$@%&", $S2565
    new $P2567, 'Integer'
    set $P2567, $I2566
    store_lex "$idx", $P2567
.annotate 'line', 1714
    find_lex $P2569, "$idx"
    unless_null $P2569, vivify_1012
    new $P2569, "Undef"
  vivify_1012:
    set $N2570, $P2569
    isge $I2571, $N2570, 0.0
    unless $I2571, if_2568_end
.annotate 'line', 1715
    find_lex $P2572, "@ns"
    unless_null $P2572, vivify_1013
    $P2572 = root_new ['parrot';'ResizablePMCArray']
  vivify_1013:
    set $P2573, $P2572[0]
    unless_null $P2573, vivify_1014
    new $P2573, "Undef"
  vivify_1014:
    set $S2574, $P2573
    substr $S2575, $S2574, 1
    new $P2576, 'String'
    set $P2576, $S2575
    find_lex $P2577, "@ns"
    unless_null $P2577, vivify_1015
    $P2577 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2577
  vivify_1015:
    set $P2577[0], $P2576
.annotate 'line', 1716
    find_lex $P2578, "$sigil"
    unless_null $P2578, vivify_1016
    new $P2578, "Undef"
  vivify_1016:
    find_lex $P2579, "@ns"
    unless_null $P2579, vivify_1017
    $P2579 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    set $P2580, $P2579[-1]
    unless_null $P2580, vivify_1018
    new $P2580, "Undef"
  vivify_1018:
    concat $P2581, $P2578, $P2580
    find_lex $P2582, "@ns"
    unless_null $P2582, vivify_1019
    $P2582 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2582
  vivify_1019:
    set $P2582[-1], $P2581
  if_2568_end:
.annotate 'line', 1714
    find_lex $P2583, "@actual_ns"
    unless_null $P2583, vivify_1020
    $P2583 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
.annotate 'line', 1722
    find_lex $P2585, "@ns"
    unless_null $P2585, vivify_1021
    $P2585 = root_new ['parrot';'ResizablePMCArray']
  vivify_1021:
    defined $I2586, $P2585
    unless $I2586, for_undef_1022
    iter $P2584, $P2585
    new $P2599, 'ExceptionHandler'
    set_label $P2599, loop2598_handler
    $P2599."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2599
  loop2598_test:
    unless $P2584, loop2598_done
    shift $P2587, $P2584
  loop2598_redo:
    .const 'Sub' $P2589 = "231_1303928992.215" 
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
  for_undef_1022:
    find_lex $P2601, "@actual_ns"
    unless_null $P2601, vivify_1026
    $P2601 = root_new ['parrot';'ResizablePMCArray']
  vivify_1026:
.annotate 'line', 1708
    .return ($P2601)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2588"  :anon :subid("231_1303928992.215") :outer("230_1303928992.215")
    .param pmc param_2590
.annotate 'line', 1722
    .lex "$_", param_2590
.annotate 'line', 1723
    find_lex $P2593, "$_"
    unless_null $P2593, vivify_1023
    new $P2593, "Undef"
  vivify_1023:
    set $S2594, $P2593
    iseq $I2595, $S2594, ""
    unless $I2595, unless_2592
    new $P2591, 'Integer'
    set $P2591, $I2595
    goto unless_2592_end
  unless_2592:
    find_lex $P2596, "@actual_ns"
    unless_null $P2596, vivify_1024
    $P2596 = root_new ['parrot';'ResizablePMCArray']
  vivify_1024:
    find_lex $P2597, "$_"
    unless_null $P2597, vivify_1025
    new $P2597, "Undef"
  vivify_1025:
    push $P2596, $P2597
    set $P2591, $P2596
  unless_2592_end:
.annotate 'line', 1722
    .return ($P2591)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303928992.215") :outer("167_1303928992.215")
    .param pmc param_2603
    .param pmc param_2604
    .param pmc param_2605
    .param pmc param_2606 :optional :named("cache")
    .param int has_param_2606 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2603
    .lex "$target", param_2604
    .lex "$pos", param_2605
    if has_param_2606, optparam_1027
    new $P2607, "Undef"
    set param_2606, $P2607
  optparam_1027:
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
.sub "_block2692"  :subid("234_1303928992.215") :outer("10_1303928992.215")
.annotate 'line', 1885
    .const 'Sub' $P2771 = "241_1303928992.215" 
    capture_lex $P2771
    .const 'Sub' $P2721 = "239_1303928992.215" 
    capture_lex $P2721
    .const 'Sub' $P2714 = "238_1303928992.215" 
    capture_lex $P2714
    .const 'Sub' $P2709 = "237_1303928992.215" 
    capture_lex $P2709
    .const 'Sub' $P2704 = "236_1303928992.215" 
    capture_lex $P2704
    .const 'Sub' $P2696 = "235_1303928992.215" 
    capture_lex $P2696
    .lex "$?PACKAGE", $P2694
    .lex "$?CLASS", $P2695
.annotate 'line', 1901
    .const 'Sub' $P2721 = "239_1303928992.215" 
    newclosure $P2769, $P2721
.annotate 'line', 1885
    .return ($P2769)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1029") :outer("234_1303928992.215")
.annotate 'line', 1885
    .const 'Sub' $P2693 = "234_1303928992.215" 
    .local pmc block
    set block, $P2693
    .const 'Sub' $P2771 = "241_1303928992.215" 
    capture_lex $P2771
    $P2771()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2770"  :anon :subid("241_1303928992.215") :outer("234_1303928992.215")
.annotate 'line', 1885
    nqp_get_sc_object $P2772, "1303928983.629", 4
    .local pmc type_obj
    set type_obj, $P2772
    get_how $P2773, type_obj
    .const 'Sub' $P2774 = "235_1303928992.215" 
    $P2773."add_method"(type_obj, "init", $P2774)
    get_how $P2775, type_obj
    .const 'Sub' $P2776 = "236_1303928992.215" 
    $P2775."add_method"(type_obj, "arguments", $P2776)
    get_how $P2777, type_obj
    .const 'Sub' $P2778 = "237_1303928992.215" 
    $P2777."add_method"(type_obj, "options", $P2778)
    get_how $P2779, type_obj
    .const 'Sub' $P2780 = "238_1303928992.215" 
    $P2779."add_method"(type_obj, "add-argument", $P2780)
    get_how $P2781, type_obj
    .const 'Sub' $P2782 = "239_1303928992.215" 
    $P2781."add_method"(type_obj, "add-option", $P2782)
    get_how $P2783, type_obj
    $P2784 = $P2783."compose"(type_obj)
    .return ($P2784)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303928992.215") :outer("234_1303928992.215")
    .param pmc param_2697
.annotate 'line', 1889
    .lex "self", param_2697
.annotate 'line', 1890
    new $P2698, "ResizablePMCArray"
    find_lex $P2699, "self"
    find_lex $P2700, "$?CLASS"
    setattribute $P2699, $P2700, "@!arguments", $P2698
.annotate 'line', 1891
    new $P2701, "Hash"
    find_lex $P2702, "self"
    find_lex $P2703, "$?CLASS"
    setattribute $P2702, $P2703, "%!options", $P2701
.annotate 'line', 1889
    .return ($P2701)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303928992.215") :outer("234_1303928992.215")
    .param pmc param_2705
.annotate 'line', 1894
    .lex "self", param_2705
    find_lex $P2706, "self"
    find_lex $P2707, "$?CLASS"
    getattribute $P2708, $P2706, $P2707, "@!arguments"
    unless_null $P2708, vivify_1030
    $P2708 = root_new ['parrot';'ResizablePMCArray']
  vivify_1030:
    .return ($P2708)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303928992.215") :outer("234_1303928992.215")
    .param pmc param_2710
.annotate 'line', 1895
    .lex "self", param_2710
    find_lex $P2711, "self"
    find_lex $P2712, "$?CLASS"
    getattribute $P2713, $P2711, $P2712, "%!options"
    unless_null $P2713, vivify_1031
    $P2713 = root_new ['parrot';'Hash']
  vivify_1031:
    .return ($P2713)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303928992.215") :outer("234_1303928992.215")
    .param pmc param_2715
    .param pmc param_2716
.annotate 'line', 1897
    .lex "self", param_2715
    .lex "$x", param_2716
.annotate 'line', 1898
    find_lex $P2717, "self"
    find_lex $P2718, "$?CLASS"
    getattribute $P2719, $P2717, $P2718, "@!arguments"
    unless_null $P2719, vivify_1032
    $P2719 = root_new ['parrot';'ResizablePMCArray']
  vivify_1032:
    find_lex $P2720, "$x"
    unless_null $P2720, vivify_1033
    new $P2720, "Undef"
  vivify_1033:
    push $P2719, $P2720
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303928992.215") :outer("234_1303928992.215")
    .param pmc param_2722
    .param pmc param_2723
    .param pmc param_2724
.annotate 'line', 1901
    .const 'Sub' $P2733 = "240_1303928992.215" 
    capture_lex $P2733
    .lex "self", param_2722
    .lex "$name", param_2723
    .lex "$value", param_2724
.annotate 'line', 1904
    find_lex $P2730, "$name"
    unless_null $P2730, vivify_1034
    new $P2730, "Undef"
  vivify_1034:
    find_lex $P2727, "self"
    find_lex $P2728, "$?CLASS"
    getattribute $P2729, $P2727, $P2728, "%!options"
    unless_null $P2729, vivify_1035
    $P2729 = root_new ['parrot';'Hash']
  vivify_1035:
    exists $I2731, $P2729[$P2730]
    if $I2731, if_2726
.annotate 'line', 1913
    find_lex $P2764, "$value"
    unless_null $P2764, vivify_1036
    new $P2764, "Undef"
  vivify_1036:
    find_lex $P2765, "$name"
    unless_null $P2765, vivify_1037
    new $P2765, "Undef"
  vivify_1037:
    find_lex $P2766, "self"
    find_lex $P2767, "$?CLASS"
    getattribute $P2768, $P2766, $P2767, "%!options"
    unless_null $P2768, vivify_1038
    $P2768 = root_new ['parrot';'Hash']
    setattribute $P2766, $P2767, "%!options", $P2768
  vivify_1038:
    set $P2768[$P2765], $P2764
.annotate 'line', 1912
    set $P2725, $P2764
.annotate 'line', 1904
    goto if_2726_end
  if_2726:
    .const 'Sub' $P2733 = "240_1303928992.215" 
    capture_lex $P2733
    $P2763 = $P2733()
    set $P2725, $P2763
  if_2726_end:
.annotate 'line', 1901
    .return ($P2725)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2732"  :anon :subid("240_1303928992.215") :outer("239_1303928992.215")
.annotate 'line', 1905
    new $P2734, "Undef"
    .lex "$t", $P2734
    find_lex $P2735, "self"
    find_lex $P2736, "$?CLASS"
    getattribute $P2737, $P2735, $P2736, "%!options"
    unless_null $P2737, vivify_1039
    $P2737 = root_new ['parrot';'Hash']
  vivify_1039:
    typeof $S2738, $P2737
    new $P2739, 'String'
    set $P2739, $S2738
    store_lex "$t", $P2739
.annotate 'line', 1906
    find_lex $P2740, "$t"
    unless_null $P2740, vivify_1040
    new $P2740, "Undef"
  vivify_1040:
    "say"($P2740)
.annotate 'line', 1907
    find_lex $P2743, "$t"
    unless_null $P2743, vivify_1041
    new $P2743, "Undef"
  vivify_1041:
    set $S2744, $P2743
    iseq $I2745, $S2744, "ResizablePMCArray"
    if $I2745, if_2742
.annotate 'line', 1910
    find_lex $P2752, "$name"
    unless_null $P2752, vivify_1042
    new $P2752, "Undef"
  vivify_1042:
    find_lex $P2753, "self"
    find_lex $P2754, "$?CLASS"
    getattribute $P2755, $P2753, $P2754, "%!options"
    unless_null $P2755, vivify_1043
    $P2755 = root_new ['parrot';'Hash']
  vivify_1043:
    set $P2756, $P2755[$P2752]
    unless_null $P2756, vivify_1044
    new $P2756, "Undef"
  vivify_1044:
    find_lex $P2757, "$name"
    unless_null $P2757, vivify_1045
    new $P2757, "Undef"
  vivify_1045:
    new $P2758, "ResizablePMCArray"
    push $P2758, $P2756
    push $P2758, $P2757
    find_lex $P2759, "$name"
    unless_null $P2759, vivify_1046
    new $P2759, "Undef"
  vivify_1046:
    find_lex $P2760, "self"
    find_lex $P2761, "$?CLASS"
    getattribute $P2762, $P2760, $P2761, "%!options"
    unless_null $P2762, vivify_1047
    $P2762 = root_new ['parrot';'Hash']
    setattribute $P2760, $P2761, "%!options", $P2762
  vivify_1047:
    set $P2762[$P2759], $P2758
.annotate 'line', 1909
    set $P2741, $P2758
.annotate 'line', 1907
    goto if_2742_end
  if_2742:
.annotate 'line', 1908
    find_lex $P2746, "$name"
    unless_null $P2746, vivify_1048
    new $P2746, "Undef"
  vivify_1048:
    find_lex $P2747, "self"
    find_lex $P2748, "$?CLASS"
    getattribute $P2749, $P2747, $P2748, "%!options"
    unless_null $P2749, vivify_1049
    $P2749 = root_new ['parrot';'Hash']
  vivify_1049:
    set $P2750, $P2749[$P2746]
    unless_null $P2750, vivify_1050
    new $P2750, "Undef"
  vivify_1050:
    find_lex $P2751, "$value"
    unless_null $P2751, vivify_1051
    new $P2751, "Undef"
  vivify_1051:
    push $P2750, $P2751
.annotate 'line', 1907
    set $P2741, $P2750
  if_2742_end:
.annotate 'line', 1904
    .return ($P2741)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2785"  :subid("242_1303928992.215") :outer("10_1303928992.215")
.annotate 'line', 1918
    .const 'Sub' $P3215 = "261_1303928992.215" 
    capture_lex $P3215
    .const 'Sub' $P2926 = "253_1303928992.215" 
    capture_lex $P2926
    .const 'Sub' $P2914 = "252_1303928992.215" 
    capture_lex $P2914
    .const 'Sub' $P2890 = "251_1303928992.215" 
    capture_lex $P2890
    .const 'Sub' $P2841 = "249_1303928992.215" 
    capture_lex $P2841
    .const 'Sub' $P2835 = "248_1303928992.215" 
    capture_lex $P2835
    .const 'Sub' $P2827 = "247_1303928992.215" 
    capture_lex $P2827
    .const 'Sub' $P2803 = "245_1303928992.215" 
    capture_lex $P2803
    .const 'Sub' $P2798 = "244_1303928992.215" 
    capture_lex $P2798
    .const 'Sub' $P2789 = "243_1303928992.215" 
    capture_lex $P2789
    .lex "$?PACKAGE", $P2787
    .lex "$?CLASS", $P2788
.annotate 'line', 1978
    .const 'Sub' $P2926 = "253_1303928992.215" 
    newclosure $P3213, $P2926
.annotate 'line', 1918
    .return ($P3213)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1052") :outer("242_1303928992.215")
.annotate 'line', 1918
    .const 'Sub' $P2786 = "242_1303928992.215" 
    .local pmc block
    set block, $P2786
    .const 'Sub' $P3215 = "261_1303928992.215" 
    capture_lex $P3215
    $P3215()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3214"  :anon :subid("261_1303928992.215") :outer("242_1303928992.215")
.annotate 'line', 1918
    nqp_get_sc_object $P3216, "1303928983.629", 5
    .local pmc type_obj
    set type_obj, $P3216
    get_how $P3217, type_obj
    .const 'Sub' $P3218 = "243_1303928992.215" 
    $P3217."add_method"(type_obj, "new", $P3218)
    get_how $P3219, type_obj
    .const 'Sub' $P3220 = "244_1303928992.215" 
    $P3219."add_method"(type_obj, "stop-after-first-arg", $P3220)
    get_how $P3221, type_obj
    .const 'Sub' $P3222 = "245_1303928992.215" 
    $P3221."add_method"(type_obj, "BUILD", $P3222)
    get_how $P3223, type_obj
    .const 'Sub' $P3224 = "247_1303928992.215" 
    $P3223."add_method"(type_obj, "add-stopper", $P3224)
    get_how $P3225, type_obj
    .const 'Sub' $P3226 = "248_1303928992.215" 
    $P3225."add_method"(type_obj, "split-option-aliases", $P3226)
    get_how $P3227, type_obj
    .const 'Sub' $P3228 = "249_1303928992.215" 
    $P3227."add_method"(type_obj, "add-spec", $P3228)
    get_how $P3229, type_obj
    .const 'Sub' $P3230 = "251_1303928992.215" 
    $P3229."add_method"(type_obj, "is-option", $P3230)
    get_how $P3231, type_obj
    .const 'Sub' $P3232 = "252_1303928992.215" 
    $P3231."add_method"(type_obj, "wants-value", $P3232)
    get_how $P3233, type_obj
    .const 'Sub' $P3234 = "253_1303928992.215" 
    $P3233."add_method"(type_obj, "parse", $P3234)
    get_how $P3235, type_obj
    $P3236 = $P3235."compose"(type_obj)
    .return ($P3236)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2790
    .param pmc param_2791
.annotate 'line', 1924
    .lex "self", param_2790
    .lex "@specs", param_2791
.annotate 'line', 1925
    new $P2792, "Undef"
    .lex "$obj", $P2792
    find_lex $P2793, "self"
    $P2794 = $P2793."CREATE"()
    store_lex "$obj", $P2794
.annotate 'line', 1926
    find_lex $P2795, "$obj"
    unless_null $P2795, vivify_1053
    new $P2795, "Undef"
  vivify_1053:
    find_lex $P2796, "@specs"
    unless_null $P2796, vivify_1054
    $P2796 = root_new ['parrot';'ResizablePMCArray']
  vivify_1054:
    $P2795."BUILD"($P2796 :named("specs"))
    find_lex $P2797, "$obj"
    unless_null $P2797, vivify_1055
    new $P2797, "Undef"
  vivify_1055:
.annotate 'line', 1924
    .return ($P2797)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2799
.annotate 'line', 1930
    .lex "self", param_2799
.annotate 'line', 1931
    new $P2800, "Integer"
    assign $P2800, 1
    find_lex $P2801, "self"
    find_lex $P2802, "$?CLASS"
    setattribute $P2801, $P2802, "$!stop-after-first-arg", $P2800
.annotate 'line', 1930
    .return ($P2800)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2804
    .param pmc param_2805 :optional :named("specs")
    .param int has_param_2805 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2819 = "246_1303928992.215" 
    capture_lex $P2819
    .lex "self", param_2804
    if has_param_2805, optparam_1056
    $P2806 = root_new ['parrot';'ResizablePMCArray']
    set param_2805, $P2806
  optparam_1056:
    .lex "@specs", param_2805
.annotate 'line', 1935
    new $P2807, "Integer"
    assign $P2807, 1
    find_lex $P2808, "self"
    find_lex $P2809, "$?CLASS"
    getattribute $P2810, $P2808, $P2809, "%!stopper"
    unless_null $P2810, vivify_1057
    $P2810 = root_new ['parrot';'Hash']
    setattribute $P2808, $P2809, "%!stopper", $P2810
  vivify_1057:
    set $P2810["--"], $P2807
.annotate 'line', 1936
    new $P2811, "Integer"
    assign $P2811, 0
    find_lex $P2812, "self"
    find_lex $P2813, "$?CLASS"
    setattribute $P2812, $P2813, "$!stop-after-first-arg", $P2811
.annotate 'line', 1937
    find_lex $P2815, "@specs"
    unless_null $P2815, vivify_1058
    $P2815 = root_new ['parrot';'ResizablePMCArray']
  vivify_1058:
    defined $I2816, $P2815
    unless $I2816, for_undef_1059
    iter $P2814, $P2815
    new $P2825, 'ExceptionHandler'
    set_label $P2825, loop2824_handler
    $P2825."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2825
  loop2824_test:
    unless $P2814, loop2824_done
    shift $P2817, $P2814
  loop2824_redo:
    .const 'Sub' $P2819 = "246_1303928992.215" 
    capture_lex $P2819
    $P2819($P2817)
  loop2824_next:
    goto loop2824_test
  loop2824_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2826, exception, 'type'
    eq $P2826, .CONTROL_LOOP_NEXT, loop2824_next
    eq $P2826, .CONTROL_LOOP_REDO, loop2824_redo
  loop2824_done:
    pop_eh 
  for_undef_1059:
.annotate 'line', 1934
    .return ($P2814)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2818"  :anon :subid("246_1303928992.215") :outer("245_1303928992.215")
    .param pmc param_2820
.annotate 'line', 1937
    .lex "$_", param_2820
.annotate 'line', 1938
    find_lex $P2821, "self"
    find_lex $P2822, "$_"
    unless_null $P2822, vivify_1060
    new $P2822, "Undef"
  vivify_1060:
    $P2823 = $P2821."add-spec"($P2822)
.annotate 'line', 1937
    .return ($P2823)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2828
    .param pmc param_2829
.annotate 'line', 1941
    .lex "self", param_2828
    .lex "$x", param_2829
.annotate 'line', 1942
    new $P2830, "Integer"
    assign $P2830, 1
    find_lex $P2831, "$x"
    unless_null $P2831, vivify_1061
    new $P2831, "Undef"
  vivify_1061:
    find_lex $P2832, "self"
    find_lex $P2833, "$?CLASS"
    getattribute $P2834, $P2832, $P2833, "%!stopper"
    unless_null $P2834, vivify_1062
    $P2834 = root_new ['parrot';'Hash']
    setattribute $P2832, $P2833, "%!stopper", $P2834
  vivify_1062:
    set $P2834[$P2831], $P2830
.annotate 'line', 1941
    .return ($P2830)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2836
    .param pmc param_2837
.annotate 'line', 1945
    .lex "self", param_2836
    .lex "$s", param_2837
.annotate 'line', 1946
    find_lex $P2838, "$s"
    unless_null $P2838, vivify_1063
    new $P2838, "Undef"
  vivify_1063:
    set $S2839, $P2838
    split $P2840, "|", $S2839
.annotate 'line', 1945
    .return ($P2840)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2842
    .param pmc param_2843
.annotate 'line', 1950
    .const 'Sub' $P2880 = "250_1303928992.215" 
    capture_lex $P2880
    .lex "self", param_2842
    .lex "$s", param_2843
.annotate 'line', 1951
    new $P2844, "Undef"
    .lex "$i", $P2844
.annotate 'line', 1952
    new $P2845, "Undef"
    .lex "$type", $P2845
.annotate 'line', 1953
    $P2846 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2846
.annotate 'line', 1951
    find_lex $P2847, "$s"
    unless_null $P2847, vivify_1064
    new $P2847, "Undef"
  vivify_1064:
    set $S2848, $P2847
    index $I2849, $S2848, "="
    new $P2850, 'Integer'
    set $P2850, $I2849
    store_lex "$i", $P2850
    find_lex $P2851, "$type"
    unless_null $P2851, vivify_1065
    new $P2851, "Undef"
  vivify_1065:
    find_lex $P2852, "@options"
    unless_null $P2852, vivify_1066
    $P2852 = root_new ['parrot';'ResizablePMCArray']
  vivify_1066:
.annotate 'line', 1954
    find_lex $P2854, "$i"
    unless_null $P2854, vivify_1067
    new $P2854, "Undef"
  vivify_1067:
    set $N2855, $P2854
    islt $I2856, $N2855, 0.0
    if $I2856, if_2853
.annotate 'line', 1958
    find_lex $P2861, "$s"
    unless_null $P2861, vivify_1068
    new $P2861, "Undef"
  vivify_1068:
    set $S2862, $P2861
    find_lex $P2863, "$i"
    unless_null $P2863, vivify_1069
    new $P2863, "Undef"
  vivify_1069:
    add $P2864, $P2863, 1
    set $I2865, $P2864
    substr $S2866, $S2862, $I2865
    new $P2867, 'String'
    set $P2867, $S2866
    store_lex "$type", $P2867
.annotate 'line', 1959
    find_lex $P2868, "self"
    find_lex $P2869, "$s"
    unless_null $P2869, vivify_1070
    new $P2869, "Undef"
  vivify_1070:
    set $S2870, $P2869
    find_lex $P2871, "$i"
    unless_null $P2871, vivify_1071
    new $P2871, "Undef"
  vivify_1071:
    set $I2872, $P2871
    substr $S2873, $S2870, 0, $I2872
    $P2874 = $P2868."split-option-aliases"($S2873)
    store_lex "@options", $P2874
.annotate 'line', 1957
    goto if_2853_end
  if_2853:
.annotate 'line', 1955
    new $P2857, "String"
    assign $P2857, "b"
    store_lex "$type", $P2857
.annotate 'line', 1956
    find_lex $P2858, "self"
    find_lex $P2859, "$s"
    unless_null $P2859, vivify_1072
    new $P2859, "Undef"
  vivify_1072:
    $P2860 = $P2858."split-option-aliases"($P2859)
    store_lex "@options", $P2860
  if_2853_end:
.annotate 'line', 1961
    find_lex $P2876, "@options"
    unless_null $P2876, vivify_1073
    $P2876 = root_new ['parrot';'ResizablePMCArray']
  vivify_1073:
    defined $I2877, $P2876
    unless $I2877, for_undef_1074
    iter $P2875, $P2876
    new $P2888, 'ExceptionHandler'
    set_label $P2888, loop2887_handler
    $P2888."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2888
  loop2887_test:
    unless $P2875, loop2887_done
    shift $P2878, $P2875
  loop2887_redo:
    .const 'Sub' $P2880 = "250_1303928992.215" 
    capture_lex $P2880
    $P2880($P2878)
  loop2887_next:
    goto loop2887_test
  loop2887_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2889, exception, 'type'
    eq $P2889, .CONTROL_LOOP_NEXT, loop2887_next
    eq $P2889, .CONTROL_LOOP_REDO, loop2887_redo
  loop2887_done:
    pop_eh 
  for_undef_1074:
.annotate 'line', 1950
    .return ($P2875)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2879"  :anon :subid("250_1303928992.215") :outer("249_1303928992.215")
    .param pmc param_2881
.annotate 'line', 1961
    .lex "$_", param_2881
.annotate 'line', 1962
    find_lex $P2882, "$type"
    unless_null $P2882, vivify_1075
    new $P2882, "Undef"
  vivify_1075:
    find_lex $P2883, "$_"
    unless_null $P2883, vivify_1076
    new $P2883, "Undef"
  vivify_1076:
    find_lex $P2884, "self"
    find_lex $P2885, "$?CLASS"
    getattribute $P2886, $P2884, $P2885, "%!options"
    unless_null $P2886, vivify_1077
    $P2886 = root_new ['parrot';'Hash']
    setattribute $P2884, $P2885, "%!options", $P2886
  vivify_1077:
    set $P2886[$P2883], $P2882
.annotate 'line', 1961
    .return ($P2882)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2893
    .param pmc param_2894
.annotate 'line', 1967
    new $P2892, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2892, control_2891
    push_eh $P2892
    .lex "self", param_2893
    .lex "$x", param_2894
.annotate 'line', 1968
    find_lex $P2898, "$x"
    unless_null $P2898, vivify_1078
    new $P2898, "Undef"
  vivify_1078:
    set $S2899, $P2898
    iseq $I2900, $S2899, "-"
    unless $I2900, unless_2897
    new $P2896, 'Integer'
    set $P2896, $I2900
    goto unless_2897_end
  unless_2897:
    find_lex $P2901, "$x"
    unless_null $P2901, vivify_1079
    new $P2901, "Undef"
  vivify_1079:
    set $S2902, $P2901
    iseq $I2903, $S2902, "--"
    new $P2896, 'Integer'
    set $P2896, $I2903
  unless_2897_end:
    unless $P2896, if_2895_end
    new $P2904, "Exception"
    set $P2904['type'], .CONTROL_RETURN
    new $P2905, "Integer"
    assign $P2905, 0
    setattribute $P2904, 'payload', $P2905
    throw $P2904
  if_2895_end:
.annotate 'line', 1969
    find_lex $P2907, "$x"
    unless_null $P2907, vivify_1080
    new $P2907, "Undef"
  vivify_1080:
    set $S2908, $P2907
    substr $S2909, $S2908, 0, 1
    iseq $I2910, $S2909, "-"
    unless $I2910, if_2906_end
    new $P2911, "Exception"
    set $P2911['type'], .CONTROL_RETURN
    new $P2912, "Integer"
    assign $P2912, 1
    setattribute $P2911, 'payload', $P2912
    throw $P2911
  if_2906_end:
.annotate 'line', 1967
    .return (0)
  control_2891:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2913, exception, "payload"
    .return ($P2913)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2915
    .param pmc param_2916
.annotate 'line', 1973
    .lex "self", param_2915
    .lex "$x", param_2916
.annotate 'line', 1974
    new $P2917, "Undef"
    .lex "$spec", $P2917
    find_lex $P2918, "$x"
    unless_null $P2918, vivify_1081
    new $P2918, "Undef"
  vivify_1081:
    find_lex $P2919, "self"
    find_lex $P2920, "$?CLASS"
    getattribute $P2921, $P2919, $P2920, "%!options"
    unless_null $P2921, vivify_1082
    $P2921 = root_new ['parrot';'Hash']
  vivify_1082:
    set $P2922, $P2921[$P2918]
    unless_null $P2922, vivify_1083
    new $P2922, "Undef"
  vivify_1083:
    store_lex "$spec", $P2922
.annotate 'line', 1975
    find_lex $P2923, "$spec"
    unless_null $P2923, vivify_1084
    new $P2923, "Undef"
  vivify_1084:
    set $S2924, $P2923
    iseq $I2925, $S2924, "s"
.annotate 'line', 1973
    .return ($I2925)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303928992.215") :outer("242_1303928992.215")
    .param pmc param_2929
    .param pmc param_2930
.annotate 'line', 1978
    .const 'Sub' $P3021 = "256_1303928992.215" 
    capture_lex $P3021
    .const 'Sub' $P2983 = "255_1303928992.215" 
    capture_lex $P2983
    .const 'Sub' $P2934 = "254_1303928992.215" 
    capture_lex $P2934
    new $P2928, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2928, control_2927
    push_eh $P2928
    .lex "self", param_2929
    .lex "@args", param_2930
.annotate 'line', 1979
    new $P2931, "Undef"
    .lex "$i", $P2931
.annotate 'line', 1980
    new $P2932, "Undef"
    .lex "$arg-count", $P2932
.annotate 'line', 1982
    new $P2933, "Undef"
    .lex "$result", $P2933
.annotate 'line', 1986
    .const 'Sub' $P2934 = "254_1303928992.215" 
    newclosure $P2982, $P2934
    .lex "get-value", $P2982
.annotate 'line', 2001
    .const 'Sub' $P2983 = "255_1303928992.215" 
    newclosure $P3001, $P2983
    .lex "slurp-rest", $P3001
.annotate 'line', 1979
    new $P3002, "Integer"
    assign $P3002, 0
    store_lex "$i", $P3002
.annotate 'line', 1980
    find_lex $P3003, "@args"
    unless_null $P3003, vivify_1110
    $P3003 = root_new ['parrot';'ResizablePMCArray']
  vivify_1110:
    set $N3004, $P3003
    new $P3005, 'Float'
    set $P3005, $N3004
    store_lex "$arg-count", $P3005
.annotate 'line', 1982
    get_hll_global $P3006, "GLOBAL"
    nqp_get_package_through_who $P3007, $P3006, "HLL"
    nqp_get_package_through_who $P3008, $P3007, "CommandLine"
    get_who $P3009, $P3008
    set $P3010, $P3009["Result"]
    $P3011 = $P3010."new"()
    store_lex "$result", $P3011
.annotate 'line', 1983
    find_lex $P3012, "$result"
    unless_null $P3012, vivify_1111
    new $P3012, "Undef"
  vivify_1111:
    $P3012."init"()
    find_lex $P3013, "get-value"
    find_lex $P3014, "slurp-rest"
.annotate 'line', 2009
    new $P3208, 'ExceptionHandler'
    set_label $P3208, loop3207_handler
    $P3208."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3208
  loop3207_test:
    find_lex $P3015, "$i"
    unless_null $P3015, vivify_1112
    new $P3015, "Undef"
  vivify_1112:
    set $N3016, $P3015
    find_lex $P3017, "$arg-count"
    unless_null $P3017, vivify_1113
    new $P3017, "Undef"
  vivify_1113:
    set $N3018, $P3017
    islt $I3019, $N3016, $N3018
    unless $I3019, loop3207_done
  loop3207_redo:
    .const 'Sub' $P3021 = "256_1303928992.215" 
    capture_lex $P3021
    $P3021()
  loop3207_next:
    goto loop3207_test
  loop3207_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3209, exception, 'type'
    eq $P3209, .CONTROL_LOOP_NEXT, loop3207_next
    eq $P3209, .CONTROL_LOOP_REDO, loop3207_redo
  loop3207_done:
    pop_eh 
.annotate 'line', 2061
    new $P3210, "Exception"
    set $P3210['type'], .CONTROL_RETURN
    find_lex $P3211, "$result"
    unless_null $P3211, vivify_1174
    new $P3211, "Undef"
  vivify_1174:
    setattribute $P3210, 'payload', $P3211
    throw $P3210
.annotate 'line', 1978
    .return ()
  control_2927:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3212, exception, "payload"
    .return ($P3212)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303928992.215") :outer("253_1303928992.215")
    .param pmc param_2935
.annotate 'line', 1986
    .lex "$opt", param_2935
.annotate 'line', 1987
    find_lex $P2938, "$i"
    unless_null $P2938, vivify_1085
    new $P2938, "Undef"
  vivify_1085:
    set $N2939, $P2938
    find_lex $P2940, "$arg-count"
    unless_null $P2940, vivify_1086
    new $P2940, "Undef"
  vivify_1086:
    sub $P2941, $P2940, 1
    set $N2942, $P2941
    iseq $I2943, $N2939, $N2942
    if $I2943, if_2937
.annotate 'line', 1989
    find_lex $P2950, "self"
    find_lex $P2951, "$i"
    unless_null $P2951, vivify_1087
    new $P2951, "Undef"
  vivify_1087:
    add $P2952, $P2951, 1
    set $I2953, $P2952
    find_lex $P2954, "@args"
    unless_null $P2954, vivify_1088
    $P2954 = root_new ['parrot';'ResizablePMCArray']
  vivify_1088:
    set $P2955, $P2954[$I2953]
    unless_null $P2955, vivify_1089
    new $P2955, "Undef"
  vivify_1089:
    $P2956 = $P2950."is-option"($P2955)
    if $P2956, if_2949
.annotate 'line', 1991
    find_lex $P2963, "$i"
    unless_null $P2963, vivify_1090
    new $P2963, "Undef"
  vivify_1090:
    add $P2964, $P2963, 1
    set $I2965, $P2964
    find_lex $P2966, "@args"
    unless_null $P2966, vivify_1091
    $P2966 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    set $P2967, $P2966[$I2965]
    unless_null $P2967, vivify_1092
    new $P2967, "Undef"
  vivify_1092:
    find_lex $P2968, "self"
    find_lex $P2969, "$?CLASS"
    getattribute $P2970, $P2968, $P2969, "%!stopper"
    unless_null $P2970, vivify_1093
    $P2970 = root_new ['parrot';'Hash']
  vivify_1093:
    set $P2971, $P2970[$P2967]
    unless_null $P2971, vivify_1094
    new $P2971, "Undef"
  vivify_1094:
    if $P2971, if_2962
.annotate 'line', 1993
    find_lex $P2976, "$i"
    unless_null $P2976, vivify_1095
    new $P2976, "Undef"
  vivify_1095:
    clone $P2977, $P2976
    inc $P2976
    find_lex $P2978, "$i"
    unless_null $P2978, vivify_1096
    new $P2978, "Undef"
  vivify_1096:
    set $I2979, $P2978
    find_lex $P2980, "@args"
    unless_null $P2980, vivify_1097
    $P2980 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
    set $P2981, $P2980[$I2979]
    unless_null $P2981, vivify_1098
    new $P2981, "Undef"
  vivify_1098:
    set $P2961, $P2981
.annotate 'line', 1991
    goto if_2962_end
  if_2962:
.annotate 'line', 1992
    new $P2972, 'String'
    set $P2972, "Option "
    find_lex $P2973, "$opt"
    unless_null $P2973, vivify_1099
    new $P2973, "Undef"
  vivify_1099:
    concat $P2974, $P2972, $P2973
    concat $P2975, $P2974, " needs a value, but is followed by a stopper"
    die $P2975
  if_2962_end:
.annotate 'line', 1991
    set $P2948, $P2961
.annotate 'line', 1989
    goto if_2949_end
  if_2949:
.annotate 'line', 1990
    new $P2957, 'String'
    set $P2957, "Option "
    find_lex $P2958, "$opt"
    unless_null $P2958, vivify_1100
    new $P2958, "Undef"
  vivify_1100:
    concat $P2959, $P2957, $P2958
    concat $P2960, $P2959, " needs a value, but is followed by an option"
    die $P2960
  if_2949_end:
.annotate 'line', 1989
    set $P2936, $P2948
.annotate 'line', 1987
    goto if_2937_end
  if_2937:
.annotate 'line', 1988
    new $P2944, 'String'
    set $P2944, "Option "
    find_lex $P2945, "$opt"
    unless_null $P2945, vivify_1101
    new $P2945, "Undef"
  vivify_1101:
    concat $P2946, $P2944, $P2945
    concat $P2947, $P2946, " needs a value"
    die $P2947
  if_2937_end:
.annotate 'line', 1986
    .return ($P2936)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303928992.215") :outer("253_1303928992.215")
.annotate 'line', 2001
    find_lex $P2984, "$i"
    unless_null $P2984, vivify_1102
    new $P2984, "Undef"
  vivify_1102:
    clone $P2985, $P2984
    inc $P2984
.annotate 'line', 2003
    new $P2999, 'ExceptionHandler'
    set_label $P2999, loop2998_handler
    $P2999."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2999
  loop2998_test:
    find_lex $P2986, "$i"
    unless_null $P2986, vivify_1103
    new $P2986, "Undef"
  vivify_1103:
    set $N2987, $P2986
    find_lex $P2988, "$arg-count"
    unless_null $P2988, vivify_1104
    new $P2988, "Undef"
  vivify_1104:
    set $N2989, $P2988
    islt $I2990, $N2987, $N2989
    unless $I2990, loop2998_done
  loop2998_redo:
.annotate 'line', 2004
    find_lex $P2991, "$result"
    unless_null $P2991, vivify_1105
    new $P2991, "Undef"
  vivify_1105:
    find_lex $P2992, "$i"
    unless_null $P2992, vivify_1106
    new $P2992, "Undef"
  vivify_1106:
    set $I2993, $P2992
    find_lex $P2994, "@args"
    unless_null $P2994, vivify_1107
    $P2994 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $P2995, $P2994[$I2993]
    unless_null $P2995, vivify_1108
    new $P2995, "Undef"
  vivify_1108:
    $P2991."add-argument"($P2995)
    find_lex $P2996, "$i"
    unless_null $P2996, vivify_1109
    new $P2996, "Undef"
  vivify_1109:
    clone $P2997, $P2996
    inc $P2996
  loop2998_next:
.annotate 'line', 2003
    goto loop2998_test
  loop2998_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3000, exception, 'type'
    eq $P3000, .CONTROL_LOOP_NEXT, loop2998_next
    eq $P3000, .CONTROL_LOOP_REDO, loop2998_redo
  loop2998_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I2990)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3020"  :anon :subid("256_1303928992.215") :outer("253_1303928992.215")
.annotate 'line', 2009
    .const 'Sub' $P3123 = "258_1303928992.215" 
    capture_lex $P3123
    .const 'Sub' $P3037 = "257_1303928992.215" 
    capture_lex $P3037
.annotate 'line', 2010
    new $P3022, "Undef"
    .lex "$cur", $P3022
    find_lex $P3023, "$i"
    unless_null $P3023, vivify_1114
    new $P3023, "Undef"
  vivify_1114:
    set $I3024, $P3023
    find_lex $P3025, "@args"
    unless_null $P3025, vivify_1115
    $P3025 = root_new ['parrot';'ResizablePMCArray']
  vivify_1115:
    set $P3026, $P3025[$I3024]
    unless_null $P3026, vivify_1116
    new $P3026, "Undef"
  vivify_1116:
    store_lex "$cur", $P3026
.annotate 'line', 2011
    find_lex $P3028, "self"
    find_lex $P3029, "$cur"
    unless_null $P3029, vivify_1117
    new $P3029, "Undef"
  vivify_1117:
    $P3030 = $P3028."is-option"($P3029)
    if $P3030, if_3027
.annotate 'line', 2053
    find_lex $P3194, "$cur"
    unless_null $P3194, vivify_1118
    new $P3194, "Undef"
  vivify_1118:
    find_lex $P3195, "self"
    find_lex $P3196, "$?CLASS"
    getattribute $P3197, $P3195, $P3196, "%!stopper"
    unless_null $P3197, vivify_1119
    $P3197 = root_new ['parrot';'Hash']
  vivify_1119:
    set $P3198, $P3197[$P3194]
    unless_null $P3198, vivify_1120
    new $P3198, "Undef"
  vivify_1120:
    if $P3198, if_3193
.annotate 'line', 2056
    find_lex $P3199, "$result"
    unless_null $P3199, vivify_1121
    new $P3199, "Undef"
  vivify_1121:
    find_lex $P3200, "$cur"
    unless_null $P3200, vivify_1122
    new $P3200, "Undef"
  vivify_1122:
    $P3199."add-argument"($P3200)
.annotate 'line', 2057
    find_lex $P3202, "self"
    find_lex $P3203, "$?CLASS"
    getattribute $P3204, $P3202, $P3203, "$!stop-after-first-arg"
    unless_null $P3204, vivify_1123
    new $P3204, "Undef"
  vivify_1123:
    unless $P3204, if_3201_end
    "slurp-rest"()
  if_3201_end:
.annotate 'line', 2055
    goto if_3193_end
  if_3193:
.annotate 'line', 2054
    "slurp-rest"()
  if_3193_end:
.annotate 'line', 2053
    goto if_3027_end
  if_3027:
.annotate 'line', 2012
    find_lex $P3032, "$cur"
    unless_null $P3032, vivify_1124
    new $P3032, "Undef"
  vivify_1124:
    set $S3033, $P3032
    substr $S3034, $S3033, 0, 2
    iseq $I3035, $S3034, "--"
    if $I3035, if_3031
.annotate 'line', 2031
    .const 'Sub' $P3123 = "258_1303928992.215" 
    capture_lex $P3123
    $P3123()
    goto if_3031_end
  if_3031:
.annotate 'line', 2012
    .const 'Sub' $P3037 = "257_1303928992.215" 
    capture_lex $P3037
    $P3037()
  if_3031_end:
  if_3027_end:
.annotate 'line', 2011
    find_lex $P3205, "$i"
    unless_null $P3205, vivify_1173
    new $P3205, "Undef"
  vivify_1173:
    clone $P3206, $P3205
    inc $P3205
.annotate 'line', 2009
    .return ($P3206)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3122"  :anon :subid("258_1303928992.215") :outer("256_1303928992.215")
.annotate 'line', 2031
    .const 'Sub' $P3168 = "259_1303928992.215" 
    capture_lex $P3168
.annotate 'line', 2032
    new $P3124, "Undef"
    .lex "$opt", $P3124
    find_lex $P3125, "$cur"
    unless_null $P3125, vivify_1125
    new $P3125, "Undef"
  vivify_1125:
    set $S3126, $P3125
    substr $S3127, $S3126, 1
    new $P3128, 'String'
    set $P3128, $S3127
    store_lex "$opt", $P3128
.annotate 'line', 2033
    find_lex $P3131, "$opt"
    unless_null $P3131, vivify_1126
    new $P3131, "Undef"
  vivify_1126:
    set $S3132, $P3131
    length $I3133, $S3132
    set $N3134, $I3133
    iseq $I3135, $N3134, 1.0
    if $I3135, if_3130
.annotate 'line', 2043
    .const 'Sub' $P3168 = "259_1303928992.215" 
    capture_lex $P3168
    $P3192 = $P3168()
    set $P3129, $P3192
.annotate 'line', 2033
    goto if_3130_end
  if_3130:
.annotate 'line', 2035
    find_lex $P3137, "$opt"
    unless_null $P3137, vivify_1134
    new $P3137, "Undef"
  vivify_1134:
    find_lex $P3138, "self"
    find_lex $P3139, "$?CLASS"
    getattribute $P3140, $P3138, $P3139, "%!options"
    unless_null $P3140, vivify_1135
    $P3140 = root_new ['parrot';'Hash']
  vivify_1135:
    set $P3141, $P3140[$P3137]
    unless_null $P3141, vivify_1136
    new $P3141, "Undef"
  vivify_1136:
    if $P3141, unless_3136_end
    new $P3142, 'String'
    set $P3142, "No such option -"
    find_lex $P3143, "$opt"
    unless_null $P3143, vivify_1137
    new $P3143, "Undef"
  vivify_1137:
    concat $P3144, $P3142, $P3143
    die $P3144
  unless_3136_end:
.annotate 'line', 2036
    find_lex $P3146, "self"
    find_lex $P3147, "$opt"
    unless_null $P3147, vivify_1138
    new $P3147, "Undef"
  vivify_1138:
    $P3148 = $P3146."wants-value"($P3147)
    if $P3148, if_3145
.annotate 'line', 2040
    find_lex $P3155, "$result"
    unless_null $P3155, vivify_1139
    new $P3155, "Undef"
  vivify_1139:
    find_lex $P3156, "$opt"
    unless_null $P3156, vivify_1140
    new $P3156, "Undef"
  vivify_1140:
    $P3155."add-option"($P3156, 1)
.annotate 'line', 2039
    goto if_3145_end
  if_3145:
.annotate 'line', 2037
    find_lex $P3149, "$result"
    unless_null $P3149, vivify_1141
    new $P3149, "Undef"
  vivify_1141:
    find_lex $P3150, "$opt"
    unless_null $P3150, vivify_1142
    new $P3150, "Undef"
  vivify_1142:
.annotate 'line', 2038
    new $P3151, 'String'
    set $P3151, "-"
    find_lex $P3152, "$opt"
    unless_null $P3152, vivify_1143
    new $P3152, "Undef"
  vivify_1143:
    concat $P3153, $P3151, $P3152
    $P3154 = "get-value"($P3153)
    $P3149."add-option"($P3150, $P3154)
  if_3145_end:
.annotate 'line', 2042
    new $P3159, 'String'
    set $P3159, "-"
    find_lex $P3160, "$opt"
    unless_null $P3160, vivify_1144
    new $P3160, "Undef"
  vivify_1144:
    concat $P3161, $P3159, $P3160
    find_lex $P3162, "self"
    find_lex $P3163, "$?CLASS"
    getattribute $P3164, $P3162, $P3163, "%!stopper"
    unless_null $P3164, vivify_1145
    $P3164 = root_new ['parrot';'Hash']
  vivify_1145:
    set $P3165, $P3164[$P3161]
    unless_null $P3165, vivify_1146
    new $P3165, "Undef"
  vivify_1146:
    if $P3165, if_3158
    set $P3157, $P3165
    goto if_3158_end
  if_3158:
    $P3166 = "slurp-rest"()
    set $P3157, $P3166
  if_3158_end:
.annotate 'line', 2033
    set $P3129, $P3157
  if_3130_end:
.annotate 'line', 2031
    .return ($P3129)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3167"  :anon :subid("259_1303928992.215") :outer("258_1303928992.215")
.annotate 'line', 2043
    .const 'Sub' $P3174 = "260_1303928992.215" 
    capture_lex $P3174
.annotate 'line', 2045
    new $P3169, "Undef"
    .lex "$iter", $P3169
    find_lex $P3170, "$opt"
    unless_null $P3170, vivify_1127
    new $P3170, "Undef"
  vivify_1127:
    iter $P3171, $P3170
    store_lex "$iter", $P3171
.annotate 'line', 2046
    new $P3190, 'ExceptionHandler'
    set_label $P3190, loop3189_handler
    $P3190."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3190
  loop3189_test:
    find_lex $P3172, "$iter"
    unless_null $P3172, vivify_1128
    new $P3172, "Undef"
  vivify_1128:
    unless $P3172, loop3189_done
  loop3189_redo:
    .const 'Sub' $P3174 = "260_1303928992.215" 
    capture_lex $P3174
    $P3174()
  loop3189_next:
    goto loop3189_test
  loop3189_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3191, exception, 'type'
    eq $P3191, .CONTROL_LOOP_NEXT, loop3189_next
    eq $P3191, .CONTROL_LOOP_REDO, loop3189_redo
  loop3189_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P3172)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3173"  :anon :subid("260_1303928992.215") :outer("259_1303928992.215")
.annotate 'line', 2047
    new $P3175, "Undef"
    .lex "$o", $P3175
    find_lex $P3176, "$iter"
    unless_null $P3176, vivify_1129
    new $P3176, "Undef"
  vivify_1129:
    shift $P3177, $P3176
    store_lex "$o", $P3177
.annotate 'line', 2048
    find_lex $P3179, "self"
    find_lex $P3180, "$o"
    unless_null $P3180, vivify_1130
    new $P3180, "Undef"
  vivify_1130:
    $P3181 = $P3179."wants-value"($P3180)
    unless $P3181, if_3178_end
    new $P3182, 'String'
    set $P3182, "Option -"
    find_lex $P3183, "$o"
    unless_null $P3183, vivify_1131
    new $P3183, "Undef"
  vivify_1131:
    concat $P3184, $P3182, $P3183
    concat $P3185, $P3184, " requires a value and cannot be grouped"
    die $P3185
  if_3178_end:
.annotate 'line', 2049
    find_lex $P3186, "$result"
    unless_null $P3186, vivify_1132
    new $P3186, "Undef"
  vivify_1132:
    find_lex $P3187, "$o"
    unless_null $P3187, vivify_1133
    new $P3187, "Undef"
  vivify_1133:
    $P3188 = $P3186."add-option"($P3187, 1)
.annotate 'line', 2046
    .return ($P3188)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3036"  :anon :subid("257_1303928992.215") :outer("256_1303928992.215")
.annotate 'line', 2014
    new $P3038, "Undef"
    .lex "$opt", $P3038
.annotate 'line', 2015
    new $P3039, "Undef"
    .lex "$idx", $P3039
.annotate 'line', 2016
    new $P3040, "Undef"
    .lex "$value", $P3040
.annotate 'line', 2017
    new $P3041, "Undef"
    .lex "$has-value", $P3041
.annotate 'line', 2014
    find_lex $P3042, "$i"
    unless_null $P3042, vivify_1147
    new $P3042, "Undef"
  vivify_1147:
    set $I3043, $P3042
    find_lex $P3044, "@args"
    unless_null $P3044, vivify_1148
    $P3044 = root_new ['parrot';'ResizablePMCArray']
  vivify_1148:
    set $P3045, $P3044[$I3043]
    unless_null $P3045, vivify_1149
    new $P3045, "Undef"
  vivify_1149:
    set $S3046, $P3045
    substr $S3047, $S3046, 2
    new $P3048, 'String'
    set $P3048, $S3047
    store_lex "$opt", $P3048
.annotate 'line', 2015
    find_lex $P3049, "$opt"
    unless_null $P3049, vivify_1150
    new $P3049, "Undef"
  vivify_1150:
    set $S3050, $P3049
    index $I3051, $S3050, "="
    new $P3052, 'Integer'
    set $P3052, $I3051
    store_lex "$idx", $P3052
.annotate 'line', 2016
    new $P3053, "Integer"
    assign $P3053, 1
    store_lex "$value", $P3053
.annotate 'line', 2017
    new $P3054, "Integer"
    assign $P3054, 0
    store_lex "$has-value", $P3054
.annotate 'line', 2019
    find_lex $P3056, "$idx"
    unless_null $P3056, vivify_1151
    new $P3056, "Undef"
  vivify_1151:
    set $N3057, $P3056
    isge $I3058, $N3057, 0.0
    unless $I3058, if_3055_end
.annotate 'line', 2020
    find_lex $P3059, "$opt"
    unless_null $P3059, vivify_1152
    new $P3059, "Undef"
  vivify_1152:
    set $S3060, $P3059
    find_lex $P3061, "$idx"
    unless_null $P3061, vivify_1153
    new $P3061, "Undef"
  vivify_1153:
    add $P3062, $P3061, 1
    set $I3063, $P3062
    substr $S3064, $S3060, $I3063
    new $P3065, 'String'
    set $P3065, $S3064
    store_lex "$value", $P3065
.annotate 'line', 2021
    find_lex $P3066, "$opt"
    unless_null $P3066, vivify_1154
    new $P3066, "Undef"
  vivify_1154:
    set $S3067, $P3066
    find_lex $P3068, "$idx"
    unless_null $P3068, vivify_1155
    new $P3068, "Undef"
  vivify_1155:
    set $I3069, $P3068
    substr $S3070, $S3067, 0, $I3069
    new $P3071, 'String'
    set $P3071, $S3070
    store_lex "$opt", $P3071
.annotate 'line', 2022
    new $P3072, "Integer"
    assign $P3072, 1
    store_lex "$has-value", $P3072
  if_3055_end:
.annotate 'line', 2024
    find_lex $P3077, "$opt"
    unless_null $P3077, vivify_1156
    new $P3077, "Undef"
  vivify_1156:
    find_lex $P3074, "self"
    find_lex $P3075, "$?CLASS"
    getattribute $P3076, $P3074, $P3075, "%!options"
    unless_null $P3076, vivify_1157
    $P3076 = root_new ['parrot';'Hash']
  vivify_1157:
    exists $I3078, $P3076[$P3077]
    if $I3078, unless_3073_end
    new $P3079, 'String'
    set $P3079, "Illegal option --"
    find_lex $P3080, "$opt"
    unless_null $P3080, vivify_1158
    new $P3080, "Undef"
  vivify_1158:
    concat $P3081, $P3079, $P3080
    die $P3081
  unless_3073_end:
.annotate 'line', 2025
    find_lex $P3085, "$opt"
    unless_null $P3085, vivify_1159
    new $P3085, "Undef"
  vivify_1159:
    find_lex $P3086, "self"
    find_lex $P3087, "$?CLASS"
    getattribute $P3088, $P3086, $P3087, "%!options"
    unless_null $P3088, vivify_1160
    $P3088 = root_new ['parrot';'Hash']
  vivify_1160:
    set $P3089, $P3088[$P3085]
    unless_null $P3089, vivify_1161
    new $P3089, "Undef"
  vivify_1161:
    set $S3090, $P3089
    isne $I3091, $S3090, "s"
    if $I3091, if_3084
    new $P3083, 'Integer'
    set $P3083, $I3091
    goto if_3084_end
  if_3084:
    find_lex $P3092, "$has-value"
    unless_null $P3092, vivify_1162
    new $P3092, "Undef"
  vivify_1162:
    set $P3083, $P3092
  if_3084_end:
    unless $P3083, if_3082_end
    new $P3093, 'String'
    set $P3093, "Option --"
    find_lex $P3094, "$opt"
    unless_null $P3094, vivify_1163
    new $P3094, "Undef"
  vivify_1163:
    concat $P3095, $P3093, $P3094
    concat $P3096, $P3095, " does not allow a value"
    die $P3096
  if_3082_end:
.annotate 'line', 2026
    find_lex $P3100, "$has-value"
    unless_null $P3100, vivify_1164
    new $P3100, "Undef"
  vivify_1164:
    isfalse $I3101, $P3100
    if $I3101, if_3099
    new $P3098, 'Integer'
    set $P3098, $I3101
    goto if_3099_end
  if_3099:
    find_lex $P3102, "self"
    find_lex $P3103, "$opt"
    unless_null $P3103, vivify_1165
    new $P3103, "Undef"
  vivify_1165:
    $P3104 = $P3102."wants-value"($P3103)
    set $P3098, $P3104
  if_3099_end:
    unless $P3098, if_3097_end
.annotate 'line', 2027
    new $P3105, 'String'
    set $P3105, "--"
    find_lex $P3106, "$opt"
    unless_null $P3106, vivify_1166
    new $P3106, "Undef"
  vivify_1166:
    concat $P3107, $P3105, $P3106
    $P3108 = "get-value"($P3107)
    store_lex "$value", $P3108
  if_3097_end:
.annotate 'line', 2029
    find_lex $P3109, "$result"
    unless_null $P3109, vivify_1167
    new $P3109, "Undef"
  vivify_1167:
    find_lex $P3110, "$opt"
    unless_null $P3110, vivify_1168
    new $P3110, "Undef"
  vivify_1168:
    find_lex $P3111, "$value"
    unless_null $P3111, vivify_1169
    new $P3111, "Undef"
  vivify_1169:
    $P3109."add-option"($P3110, $P3111)
.annotate 'line', 2030
    new $P3114, 'String'
    set $P3114, "--"
    find_lex $P3115, "$opt"
    unless_null $P3115, vivify_1170
    new $P3115, "Undef"
  vivify_1170:
    concat $P3116, $P3114, $P3115
    find_lex $P3117, "self"
    find_lex $P3118, "$?CLASS"
    getattribute $P3119, $P3117, $P3118, "%!stopper"
    unless_null $P3119, vivify_1171
    $P3119 = root_new ['parrot';'Hash']
  vivify_1171:
    set $P3120, $P3119[$P3116]
    unless_null $P3120, vivify_1172
    new $P3120, "Undef"
  vivify_1172:
    if $P3120, if_3113
    set $P3112, $P3120
    goto if_3113_end
  if_3113:
    find_lex $P3121, "slurp-rest"
    set $P3112, $P3121
  if_3113_end:
.annotate 'line', 2012
    .return ($P3112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3237"  :subid("262_1303928992.215") :outer("10_1303928992.215")
.annotate 'line', 2096
    .const 'Sub' $P4060 = "295_1303928992.215" 
    capture_lex $P4060
    .const 'Sub' $P3946 = "293_1303928992.215" 
    capture_lex $P3946
    .const 'Sub' $P3941 = "292_1303928992.215" 
    capture_lex $P3941
    .const 'Sub' $P3918 = "291_1303928992.215" 
    capture_lex $P3918
    .const 'Sub' $P3885 = "290_1303928992.215" 
    capture_lex $P3885
    .const 'Sub' $P3879 = "289_1303928992.215" 
    capture_lex $P3879
    .const 'Sub' $P3794 = "286_1303928992.215" 
    capture_lex $P3794
    .const 'Sub' $P3717 = "285_1303928992.215" 
    capture_lex $P3717
    .const 'Sub' $P3681 = "284_1303928992.215" 
    capture_lex $P3681
    .const 'Sub' $P3618 = "283_1303928992.215" 
    capture_lex $P3618
    .const 'Sub' $P3542 = "280_1303928992.215" 
    capture_lex $P3542
    .const 'Sub' $P3501 = "279_1303928992.215" 
    capture_lex $P3501
    .const 'Sub' $P3443 = "277_1303928992.215" 
    capture_lex $P3443
    .const 'Sub' $P3405 = "276_1303928992.215" 
    capture_lex $P3405
    .const 'Sub' $P3391 = "275_1303928992.215" 
    capture_lex $P3391
    .const 'Sub' $P3366 = "274_1303928992.215" 
    capture_lex $P3366
    .const 'Sub' $P3352 = "273_1303928992.215" 
    capture_lex $P3352
    .const 'Sub' $P3334 = "272_1303928992.215" 
    capture_lex $P3334
    .const 'Sub' $P3314 = "271_1303928992.215" 
    capture_lex $P3314
    .const 'Sub' $P3300 = "270_1303928992.215" 
    capture_lex $P3300
    .const 'Sub' $P3282 = "269_1303928992.215" 
    capture_lex $P3282
    .const 'Sub' $P3273 = "268_1303928992.215" 
    capture_lex $P3273
    .const 'Sub' $P3249 = "264_1303928992.215" 
    capture_lex $P3249
    .const 'Sub' $P3240 = "263_1303928992.215" 
    capture_lex $P3240
    .lex "Event", $P3239
.annotate 'line', 2117
    .const 'Sub' $P3240 = "263_1303928992.215" 
    newclosure $P3244, $P3240
    .lex "addr", $P3244
.annotate 'line', 2216
    new $P3245, "Undef"
    .lex "$loader", $P3245
    .lex "$?PACKAGE", $P3246
    .lex "$?CLASS", $P3247
.annotate 'line', 2098
    .const 'Sub' $P3249 = "264_1303928992.215" 
    capture_lex $P3249
    $P3249()
    find_lex $P3272, "addr"
.annotate 'line', 2216
    get_hll_global $P3442, "ModuleLoader"
    store_lex "$loader", $P3442
.annotate 'line', 2451
    .const 'Sub' $P3946 = "293_1303928992.215" 
    newclosure $P4058, $P3946
.annotate 'line', 2096
    .return ($P4058)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1175") :outer("262_1303928992.215")
.annotate 'line', 2096
    .const 'Sub' $P3238 = "262_1303928992.215" 
    .local pmc block
    set block, $P3238
    .const 'Sub' $P4060 = "295_1303928992.215" 
    capture_lex $P4060
    $P4060()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block4059"  :anon :subid("295_1303928992.215") :outer("262_1303928992.215")
.annotate 'line', 2096
    nqp_get_sc_object $P4061, "1303928983.629", 6
    .local pmc type_obj
    set type_obj, $P4061
    get_how $P4062, type_obj
    .const 'Sub' $P4063 = "268_1303928992.215" 
    $P4062."add_method"(type_obj, "new", $P4063)
    get_how $P4064, type_obj
    .const 'Sub' $P4065 = "269_1303928992.215" 
    $P4064."add_method"(type_obj, "BUILD", $P4065)
    get_how $P4066, type_obj
    .const 'Sub' $P4067 = "270_1303928992.215" 
    $P4066."add_method"(type_obj, "slot_for_object", $P4067)
    get_how $P4068, type_obj
    .const 'Sub' $P4069 = "271_1303928992.215" 
    $P4068."add_method"(type_obj, "get_slot_past_for_object", $P4069)
    get_how $P4070, type_obj
    .const 'Sub' $P4071 = "272_1303928992.215" 
    $P4070."add_method"(type_obj, "set_slot_past", $P4071)
    get_how $P4072, type_obj
    .const 'Sub' $P4073 = "273_1303928992.215" 
    $P4072."add_method"(type_obj, "set_cur_sc", $P4073)
    get_how $P4074, type_obj
    .const 'Sub' $P4075 = "274_1303928992.215" 
    $P4074."add_method"(type_obj, "add_object", $P4075)
    get_how $P4076, type_obj
    .const 'Sub' $P4077 = "275_1303928992.215" 
    $P4076."add_method"(type_obj, "add_event", $P4077)
    get_how $P4078, type_obj
    .const 'Sub' $P4079 = "276_1303928992.215" 
    $P4078."add_method"(type_obj, "get_object_sc_ref_past", $P4079)
    get_how $P4080, type_obj
    .const 'Sub' $P4081 = "277_1303928992.215" 
    $P4080."add_method"(type_obj, "load_setting", $P4081)
    get_how $P4082, type_obj
    .const 'Sub' $P4083 = "279_1303928992.215" 
    $P4082."add_method"(type_obj, "load_module", $P4083)
    get_how $P4084, type_obj
    .const 'Sub' $P4085 = "280_1303928992.215" 
    $P4084."add_method"(type_obj, "install_package_symbol", $P4085)
    get_how $P4086, type_obj
    .const 'Sub' $P4087 = "283_1303928992.215" 
    $P4086."add_method"(type_obj, "install_lexical_symbol", $P4087)
    get_how $P4088, type_obj
    .const 'Sub' $P4089 = "284_1303928992.215" 
    $P4088."add_method"(type_obj, "install_package_routine", $P4089)
    get_how $P4090, type_obj
    .const 'Sub' $P4091 = "285_1303928992.215" 
    $P4090."add_method"(type_obj, "pkg_create_mo", $P4091)
    get_how $P4092, type_obj
    .const 'Sub' $P4093 = "286_1303928992.215" 
    $P4092."add_method"(type_obj, "pkg_add_attribute", $P4093)
    get_how $P4094, type_obj
    .const 'Sub' $P4095 = "289_1303928992.215" 
    $P4094."add_method"(type_obj, "pkg_add_method", $P4095)
    get_how $P4096, type_obj
    .const 'Sub' $P4097 = "290_1303928992.215" 
    $P4096."add_method"(type_obj, "pkg_add_parent_or_role", $P4097)
    get_how $P4098, type_obj
    .const 'Sub' $P4099 = "291_1303928992.215" 
    $P4098."add_method"(type_obj, "pkg_compose", $P4099)
    get_how $P4100, type_obj
    .const 'Sub' $P4101 = "292_1303928992.215" 
    $P4100."add_method"(type_obj, "sc", $P4101)
    get_how $P4102, type_obj
    .const 'Sub' $P4103 = "293_1303928992.215" 
    $P4102."add_method"(type_obj, "to_past", $P4103)
    get_how $P4104, type_obj
    $P4105 = $P4104."compose"(type_obj)
    .return ($P4105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("263_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3241
.annotate 'line', 2117
    .lex "$obj", param_3241
.annotate 'line', 2118
    find_lex $P3242, "$obj"
    unless_null $P3242, vivify_1176
    new $P3242, "Undef"
  vivify_1176:
    get_addr $I3243, $P3242
.annotate 'line', 2117
    .return ($I3243)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3248"  :anon :subid("264_1303928992.215") :outer("262_1303928992.215")
.annotate 'line', 2098
    .const 'Sub' $P3264 = "267_1303928992.215" 
    capture_lex $P3264
    .const 'Sub' $P3257 = "266_1303928992.215" 
    capture_lex $P3257
    .const 'Sub' $P3252 = "265_1303928992.215" 
    capture_lex $P3252
    .lex "$?PACKAGE", $P3250
    .lex "$?CLASS", $P3251
.annotate 'line', 2105
    .const 'Sub' $P3257 = "266_1303928992.215" 
    newclosure $P3262, $P3257
.annotate 'line', 2098
    .return ($P3262)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1177") :outer("264_1303928992.215")
.annotate 'line', 2098
    .const 'Sub' $P3249 = "264_1303928992.215" 
    .local pmc block
    set block, $P3249
    .const 'Sub' $P3264 = "267_1303928992.215" 
    capture_lex $P3264
    $P3264()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3263"  :anon :subid("267_1303928992.215") :outer("264_1303928992.215")
.annotate 'line', 2098
    nqp_get_sc_object $P3265, "1303928983.629", 7
    .local pmc type_obj
    set type_obj, $P3265
    get_how $P3266, type_obj
    .const 'Sub' $P3267 = "265_1303928992.215" 
    $P3266."add_method"(type_obj, "deserialize_past", $P3267)
    get_how $P3268, type_obj
    .const 'Sub' $P3269 = "266_1303928992.215" 
    $P3268."add_method"(type_obj, "fixup_past", $P3269)
    get_how $P3270, type_obj
    $P3271 = $P3270."compose"(type_obj)
    .return ($P3271)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past"  :subid("265_1303928992.215") :outer("264_1303928992.215")
    .param pmc param_3253
.annotate 'line', 2101
    .lex "self", param_3253
    find_lex $P3254, "self"
    find_lex $P3255, "$?CLASS"
    getattribute $P3256, $P3254, $P3255, "$!deserialize_past"
    unless_null $P3256, vivify_1178
    new $P3256, "Undef"
  vivify_1178:
    .return ($P3256)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past"  :subid("266_1303928992.215") :outer("264_1303928992.215")
    .param pmc param_3258
.annotate 'line', 2105
    .lex "self", param_3258
    find_lex $P3259, "self"
    find_lex $P3260, "$?CLASS"
    getattribute $P3261, $P3259, $P3260, "$!fixup_past"
    unless_null $P3261, vivify_1179
    new $P3261, "Undef"
  vivify_1179:
    .return ($P3261)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3274
    .param pmc param_3275 :named("handle")
.annotate 'line', 2125
    .lex "self", param_3274
    .lex "$handle", param_3275
.annotate 'line', 2126
    new $P3276, "Undef"
    .lex "$obj", $P3276
    find_lex $P3277, "self"
    $P3278 = $P3277."CREATE"()
    store_lex "$obj", $P3278
.annotate 'line', 2127
    find_lex $P3279, "$obj"
    unless_null $P3279, vivify_1180
    new $P3279, "Undef"
  vivify_1180:
    find_lex $P3280, "$handle"
    unless_null $P3280, vivify_1181
    new $P3280, "Undef"
  vivify_1181:
    $P3279."BUILD"($P3280 :named("handle"))
    find_lex $P3281, "$obj"
    unless_null $P3281, vivify_1182
    new $P3281, "Undef"
  vivify_1182:
.annotate 'line', 2125
    .return ($P3281)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3283
    .param pmc param_3284 :optional :named("handle")
    .param int has_param_3284 :opt_flag
.annotate 'line', 2131
    .lex "self", param_3283
    if has_param_3284, optparam_1183
    new $P3285, "Undef"
    set param_3284, $P3285
  optparam_1183:
    .lex "$handle", param_3284
.annotate 'line', 2132
    find_lex $P3286, "$handle"
    unless_null $P3286, vivify_1184
    new $P3286, "Undef"
  vivify_1184:
    set $S3287, $P3286
    nqp_create_sc $P3288, $S3287
    find_lex $P3289, "self"
    find_lex $P3290, "$?CLASS"
    setattribute $P3289, $P3290, "$!sc", $P3288
.annotate 'line', 2133
    find_lex $P3291, "$handle"
    unless_null $P3291, vivify_1185
    new $P3291, "Undef"
  vivify_1185:
    find_lex $P3292, "self"
    find_lex $P3293, "$?CLASS"
    setattribute $P3292, $P3293, "$!handle", $P3291
.annotate 'line', 2134
    new $P3294, "Hash"
    find_lex $P3295, "self"
    find_lex $P3296, "$?CLASS"
    setattribute $P3295, $P3296, "%!addr_to_slot", $P3294
.annotate 'line', 2135
    new $P3297, "ResizablePMCArray"
    find_lex $P3298, "self"
    find_lex $P3299, "$?CLASS"
    setattribute $P3298, $P3299, "@!event_stream", $P3297
.annotate 'line', 2131
    .return ($P3297)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3301
    .param pmc param_3302
.annotate 'line', 2139
    .lex "self", param_3301
    .lex "$obj", param_3302
.annotate 'line', 2140
    new $P3303, "Undef"
    .lex "$slot", $P3303
    find_lex $P3304, "$obj"
    unless_null $P3304, vivify_1186
    new $P3304, "Undef"
  vivify_1186:
    $P3305 = "addr"($P3304)
    find_lex $P3306, "self"
    find_lex $P3307, "$?CLASS"
    getattribute $P3308, $P3306, $P3307, "%!addr_to_slot"
    unless_null $P3308, vivify_1187
    $P3308 = root_new ['parrot';'Hash']
  vivify_1187:
    set $P3309, $P3308[$P3305]
    unless_null $P3309, vivify_1188
    new $P3309, "Undef"
  vivify_1188:
    store_lex "$slot", $P3309
.annotate 'line', 2141
    find_lex $P3311, "$slot"
    unless_null $P3311, vivify_1189
    new $P3311, "Undef"
  vivify_1189:
    defined $I3312, $P3311
    if $I3312, unless_3310_end
.annotate 'line', 2142
    die "slot_for_object called on object not in context"
  unless_3310_end:
.annotate 'line', 2141
    find_lex $P3313, "$slot"
    unless_null $P3313, vivify_1190
    new $P3313, "Undef"
  vivify_1190:
.annotate 'line', 2139
    .return ($P3313)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3317
    .param pmc param_3318
.annotate 'line', 2151
    new $P3316, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3316, control_3315
    push_eh $P3316
    .lex "self", param_3317
    .lex "$obj", param_3318
.annotate 'line', 2152
    new $P3319, "Undef"
    .lex "$slot", $P3319
    find_lex $P3320, "self"
    find_lex $P3321, "$obj"
    unless_null $P3321, vivify_1191
    new $P3321, "Undef"
  vivify_1191:
    $P3322 = $P3320."slot_for_object"($P3321)
    store_lex "$slot", $P3322
.annotate 'line', 2153
    new $P3323, "Exception"
    set $P3323['type'], .CONTROL_RETURN
    get_hll_global $P3324, "GLOBAL"
    nqp_get_package_through_who $P3325, $P3324, "PAST"
    get_who $P3326, $P3325
    set $P3327, $P3326["Op"]
    find_lex $P3328, "self"
    find_lex $P3329, "$?CLASS"
    getattribute $P3330, $P3328, $P3329, "$!handle"
    unless_null $P3330, vivify_1192
    new $P3330, "Undef"
  vivify_1192:
    find_lex $P3331, "$slot"
    unless_null $P3331, vivify_1193
    new $P3331, "Undef"
  vivify_1193:
    $P3332 = $P3327."new"($P3330, $P3331, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3323, 'payload', $P3332
    throw $P3323
.annotate 'line', 2151
    .return ()
  control_3315:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3333, exception, "payload"
    .return ($P3333)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3337
    .param pmc param_3338
    .param pmc param_3339
.annotate 'line', 2157
    new $P3336, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3336, control_3335
    push_eh $P3336
    .lex "self", param_3337
    .lex "$slot", param_3338
    .lex "$past_to_set", param_3339
.annotate 'line', 2158
    new $P3340, "Exception"
    set $P3340['type'], .CONTROL_RETURN
    get_hll_global $P3341, "GLOBAL"
    nqp_get_package_through_who $P3342, $P3341, "PAST"
    get_who $P3343, $P3342
    set $P3344, $P3343["Op"]
    find_lex $P3345, "self"
    find_lex $P3346, "$?CLASS"
    getattribute $P3347, $P3345, $P3346, "$!handle"
    unless_null $P3347, vivify_1194
    new $P3347, "Undef"
  vivify_1194:
    find_lex $P3348, "$slot"
    unless_null $P3348, vivify_1195
    new $P3348, "Undef"
  vivify_1195:
    find_lex $P3349, "$past_to_set"
    unless_null $P3349, vivify_1196
    new $P3349, "Undef"
  vivify_1196:
    $P3350 = $P3344."new"($P3347, $P3348, $P3349, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3340, 'payload', $P3350
    throw $P3340
.annotate 'line', 2157
    .return ()
  control_3335:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3351, exception, "payload"
    .return ($P3351)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3353
    .param pmc param_3354
.annotate 'line', 2164
    .lex "self", param_3353
    .lex "$to_wrap", param_3354
.annotate 'line', 2165
    get_hll_global $P3355, "GLOBAL"
    nqp_get_package_through_who $P3356, $P3355, "PAST"
    get_who $P3357, $P3356
    set $P3358, $P3357["Op"]
    find_lex $P3359, "$to_wrap"
    unless_null $P3359, vivify_1197
    new $P3359, "Undef"
  vivify_1197:
.annotate 'line', 2168
    get_hll_global $P3360, "GLOBAL"
    nqp_get_package_through_who $P3361, $P3360, "PAST"
    get_who $P3362, $P3361
    set $P3363, $P3362["Var"]
    $P3364 = $P3363."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3365 = $P3358."new"($P3359, $P3364, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2164
    .return ($P3365)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3367
    .param pmc param_3368
.annotate 'line', 2173
    .lex "self", param_3367
    .lex "$obj", param_3368
.annotate 'line', 2175
    new $P3369, "Undef"
    .lex "$idx", $P3369
.annotate 'line', 2174
    find_lex $P3370, "$obj"
    unless_null $P3370, vivify_1198
    new $P3370, "Undef"
  vivify_1198:
    find_lex $P3371, "self"
    find_lex $P3372, "$?CLASS"
    getattribute $P3373, $P3371, $P3372, "$!sc"
    unless_null $P3373, vivify_1199
    new $P3373, "Undef"
  vivify_1199:
    nqp_set_sc_for_object $P3370, $P3373
.annotate 'line', 2175
    find_lex $P3374, "self"
    find_lex $P3375, "$?CLASS"
    getattribute $P3376, $P3374, $P3375, "$!sc"
    unless_null $P3376, vivify_1200
    new $P3376, "Undef"
  vivify_1200:
    $P3377 = $P3376."elems"()
    store_lex "$idx", $P3377
.annotate 'line', 2176
    find_lex $P3378, "$obj"
    unless_null $P3378, vivify_1201
    new $P3378, "Undef"
  vivify_1201:
    find_lex $P3379, "$idx"
    unless_null $P3379, vivify_1202
    new $P3379, "Undef"
  vivify_1202:
    set $I3380, $P3379
    find_lex $P3381, "self"
    find_lex $P3382, "$?CLASS"
    getattribute $P3383, $P3381, $P3382, "$!sc"
    unless_null $P3383, vivify_1203
    $P3383 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3381, $P3382, "$!sc", $P3383
  vivify_1203:
    set $P3383[$I3380], $P3378
.annotate 'line', 2177
    find_lex $P3384, "$idx"
    unless_null $P3384, vivify_1204
    new $P3384, "Undef"
  vivify_1204:
    find_lex $P3385, "$obj"
    unless_null $P3385, vivify_1205
    new $P3385, "Undef"
  vivify_1205:
    $P3386 = "addr"($P3385)
    find_lex $P3387, "self"
    find_lex $P3388, "$?CLASS"
    getattribute $P3389, $P3387, $P3388, "%!addr_to_slot"
    unless_null $P3389, vivify_1206
    $P3389 = root_new ['parrot';'Hash']
    setattribute $P3387, $P3388, "%!addr_to_slot", $P3389
  vivify_1206:
    set $P3389[$P3386], $P3384
    find_lex $P3390, "$idx"
    unless_null $P3390, vivify_1207
    new $P3390, "Undef"
  vivify_1207:
.annotate 'line', 2173
    .return ($P3390)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3392
    .param pmc param_3393 :optional :named("deserialize_past")
    .param int has_param_3393 :opt_flag
    .param pmc param_3395 :optional :named("fixup_past")
    .param int has_param_3395 :opt_flag
.annotate 'line', 2182
    .lex "self", param_3392
    if has_param_3393, optparam_1208
    new $P3394, "Undef"
    set param_3393, $P3394
  optparam_1208:
    .lex "$deserialize_past", param_3393
    if has_param_3395, optparam_1209
    new $P3396, "Undef"
    set param_3395, $P3396
  optparam_1209:
    .lex "$fixup_past", param_3395
.annotate 'line', 2183
    find_lex $P3397, "self"
    find_lex $P3398, "$?CLASS"
    getattribute $P3399, $P3397, $P3398, "@!event_stream"
    unless_null $P3399, vivify_1210
    $P3399 = root_new ['parrot';'ResizablePMCArray']
  vivify_1210:
    find_lex $P3400, "Event"
    find_lex $P3401, "$deserialize_past"
    unless_null $P3401, vivify_1211
    new $P3401, "Undef"
  vivify_1211:
    find_lex $P3402, "$fixup_past"
    unless_null $P3402, vivify_1212
    new $P3402, "Undef"
  vivify_1212:
    $P3403 = $P3400."new"($P3401 :named("deserialize_past"), $P3402 :named("fixup_past"))
    $P3404 = $P3399."push"($P3403)
.annotate 'line', 2182
    .return ($P3404)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3406
    .param pmc param_3407
.annotate 'line', 2190
    .lex "self", param_3406
    .lex "$obj", param_3407
.annotate 'line', 2193
    new $P3408, "Undef"
    .lex "$sc", $P3408
    find_lex $P3409, "$obj"
    unless_null $P3409, vivify_1213
    new $P3409, "Undef"
  vivify_1213:
    nqp_get_sc_for_object $P3410, $P3409
    store_lex "$sc", $P3410
.annotate 'line', 2194
    find_lex $P3412, "$sc"
    unless_null $P3412, vivify_1214
    new $P3412, "Undef"
  vivify_1214:
    defined $I3413, $P3412
    if $I3413, unless_3411_end
.annotate 'line', 2195
    new $P3414, "String"
    assign $P3414, "Object of type '"
    find_lex $P3415, "$obj"
    unless_null $P3415, vivify_1215
    new $P3415, "Undef"
  vivify_1215:
    get_how $P3416, $P3415
    find_lex $P3417, "$obj"
    unless_null $P3417, vivify_1216
    new $P3417, "Undef"
  vivify_1216:
    $S3418 = $P3416."name"($P3417)
    concat $P3419, $P3414, $S3418
    concat $P3420, $P3419, "' cannot be referenced without having been "
    concat $P3421, $P3420, "assigned a serialization context"
.annotate 'line', 2196
    die $P3421
  unless_3411_end:
.annotate 'line', 2202
    find_lex $P3424, "$sc"
    unless_null $P3424, vivify_1217
    new $P3424, "Undef"
  vivify_1217:
    find_lex $P3425, "self"
    find_lex $P3426, "$?CLASS"
    getattribute $P3427, $P3425, $P3426, "$!sc"
    unless_null $P3427, vivify_1218
    new $P3427, "Undef"
  vivify_1218:
    issame $I3428, $P3424, $P3427
    if $I3428, if_3423
.annotate 'line', 2206
    get_hll_global $P3432, "GLOBAL"
    nqp_get_package_through_who $P3433, $P3432, "PAST"
    get_who $P3434, $P3433
    set $P3435, $P3434["Op"]
.annotate 'line', 2207
    find_lex $P3436, "$sc"
    unless_null $P3436, vivify_1219
    new $P3436, "Undef"
  vivify_1219:
    $P3437 = $P3436."handle"()
    find_lex $P3438, "$sc"
    unless_null $P3438, vivify_1220
    new $P3438, "Undef"
  vivify_1220:
    find_lex $P3439, "$obj"
    unless_null $P3439, vivify_1221
    new $P3439, "Undef"
  vivify_1221:
    $P3440 = $P3438."slot_index_for"($P3439)
    $P3441 = $P3435."new"($P3437, $P3440, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2205
    set $P3422, $P3441
.annotate 'line', 2202
    goto if_3423_end
  if_3423:
.annotate 'line', 2203
    find_lex $P3429, "self"
    find_lex $P3430, "$obj"
    unless_null $P3430, vivify_1222
    new $P3430, "Undef"
  vivify_1222:
    $P3431 = $P3429."get_slot_past_for_object"($P3430)
.annotate 'line', 2202
    set $P3422, $P3431
  if_3423_end:
.annotate 'line', 2190
    .return ($P3422)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_setting"  :subid("277_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3446
    .param pmc param_3447
.annotate 'line', 2219
    .const 'Sub' $P3454 = "278_1303928992.215" 
    capture_lex $P3454
    new $P3445, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3445, control_3444
    push_eh $P3445
    .lex "self", param_3446
    .lex "$setting_name", param_3447
.annotate 'line', 2221
    find_lex $P3450, "$setting_name"
    unless_null $P3450, vivify_1223
    new $P3450, "Undef"
  vivify_1223:
    set $S3451, $P3450
    isne $I3452, $S3451, "NULL"
    if $I3452, if_3449
    new $P3448, 'Integer'
    set $P3448, $I3452
    goto if_3449_end
  if_3449:
    .const 'Sub' $P3454 = "278_1303928992.215" 
    capture_lex $P3454
    $P3499 = $P3454()
    set $P3448, $P3499
  if_3449_end:
.annotate 'line', 2219
    .return ($P3448)
  control_3444:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3500, exception, "payload"
    .return ($P3500)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "_block3453"  :anon :subid("278_1303928992.215") :outer("277_1303928992.215")
.annotate 'line', 2225
    new $P3455, "Undef"
    .lex "$setting", $P3455
.annotate 'line', 2226
    find_lex $P3456, "$loader"
    unless_null $P3456, vivify_1224
    new $P3456, "Undef"
  vivify_1224:
    find_lex $P3457, "$setting_name"
    unless_null $P3457, vivify_1225
    new $P3457, "Undef"
  vivify_1225:
    $P3458 = $P3456."load_setting"($P3457)
    find_dynamic_lex $P3461, "%*COMPILING"
    unless_null $P3461, vivify_1226
    get_hll_global $P3459, "GLOBAL"
    get_who $P3460, $P3459
    set $P3461, $P3460["%COMPILING"]
    unless_null $P3461, vivify_1227
    die "Contextual %*COMPILING not found"
  vivify_1227:
    store_dynamic_lex "%*COMPILING", $P3461
  vivify_1226:
    set $P3462, $P3461["%?OPTIONS"]
    unless_null $P3462, vivify_1228
    $P3462 = root_new ['parrot';'Hash']
    set $P3461["%?OPTIONS"], $P3462
  vivify_1228:
    set $P3462["outer_ctx"], $P3458
    store_lex "$setting", $P3458
.annotate 'line', 2229
    find_lex $P3463, "self"
    get_hll_global $P3464, "GLOBAL"
    nqp_get_package_through_who $P3465, $P3464, "PAST"
    get_who $P3466, $P3465
    set $P3467, $P3466["Stmts"]
.annotate 'line', 2230
    get_hll_global $P3468, "GLOBAL"
    nqp_get_package_through_who $P3469, $P3468, "PAST"
    get_who $P3470, $P3469
    set $P3471, $P3470["Op"]
    $P3472 = $P3471."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2233
    get_hll_global $P3473, "GLOBAL"
    nqp_get_package_through_who $P3474, $P3473, "PAST"
    get_who $P3475, $P3474
    set $P3476, $P3475["Op"]
.annotate 'line', 2235
    get_hll_global $P3477, "GLOBAL"
    nqp_get_package_through_who $P3478, $P3477, "PAST"
    get_who $P3479, $P3478
    set $P3480, $P3479["Var"]
    $P3481 = $P3480."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2236
    get_hll_global $P3482, "GLOBAL"
    nqp_get_package_through_who $P3483, $P3482, "PAST"
    get_who $P3484, $P3483
    set $P3485, $P3484["Op"]
.annotate 'line', 2238
    get_hll_global $P3486, "GLOBAL"
    nqp_get_package_through_who $P3487, $P3486, "PAST"
    get_who $P3488, $P3487
    set $P3489, $P3488["Var"]
    new $P3490, "ResizablePMCArray"
    $P3491 = $P3489."new"("ModuleLoader" :named("name"), $P3490 :named("namespace"), "package" :named("scope"))
    find_lex $P3492, "$setting_name"
    unless_null $P3492, vivify_1229
    new $P3492, "Undef"
  vivify_1229:
    $P3493 = $P3485."new"($P3491, $P3492, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2236
    $P3494 = $P3476."new"($P3481, $P3493, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2233
    $P3495 = $P3467."new"($P3472, $P3494)
.annotate 'line', 2229
    $P3463."add_event"($P3495 :named("deserialize_past"))
.annotate 'line', 2244
    new $P3496, "Exception"
    set $P3496['type'], .CONTROL_RETURN
    find_lex $P3497, "$setting"
    unless_null $P3497, vivify_1230
    new $P3497, "Undef"
  vivify_1230:
    getattribute $P3498, $P3497, "lex_pad"
    setattribute $P3496, 'payload', $P3498
    throw $P3496
.annotate 'line', 2221
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "load_module"  :subid("279_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3504
    .param pmc param_3505
    .param pmc param_3506
.annotate 'line', 2250
    new $P3503, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3503, control_3502
    push_eh $P3503
    .lex "self", param_3504
    .lex "$module_name", param_3505
    .lex "$cur_GLOBALish", param_3506
.annotate 'line', 2252
    new $P3507, "Undef"
    .lex "$module", $P3507
    find_lex $P3508, "$loader"
    unless_null $P3508, vivify_1231
    new $P3508, "Undef"
  vivify_1231:
    find_lex $P3509, "$module_name"
    unless_null $P3509, vivify_1232
    new $P3509, "Undef"
  vivify_1232:
    find_lex $P3510, "$cur_GLOBALish"
    unless_null $P3510, vivify_1233
    new $P3510, "Undef"
  vivify_1233:
    $P3511 = $P3508."load_module"($P3509, $P3510)
    store_lex "$module", $P3511
.annotate 'line', 2255
    find_lex $P3512, "self"
    get_hll_global $P3513, "GLOBAL"
    nqp_get_package_through_who $P3514, $P3513, "PAST"
    get_who $P3515, $P3514
    set $P3516, $P3515["Stmts"]
.annotate 'line', 2256
    get_hll_global $P3517, "GLOBAL"
    nqp_get_package_through_who $P3518, $P3517, "PAST"
    get_who $P3519, $P3518
    set $P3520, $P3519["Op"]
    $P3521 = $P3520."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2259
    get_hll_global $P3522, "GLOBAL"
    nqp_get_package_through_who $P3523, $P3522, "PAST"
    get_who $P3524, $P3523
    set $P3525, $P3524["Op"]
.annotate 'line', 2261
    get_hll_global $P3526, "GLOBAL"
    nqp_get_package_through_who $P3527, $P3526, "PAST"
    get_who $P3528, $P3527
    set $P3529, $P3528["Var"]
    new $P3530, "ResizablePMCArray"
    $P3531 = $P3529."new"("ModuleLoader" :named("name"), $P3530 :named("namespace"), "package" :named("scope"))
    find_lex $P3532, "$module_name"
    unless_null $P3532, vivify_1234
    new $P3532, "Undef"
  vivify_1234:
.annotate 'line', 2263
    find_lex $P3533, "self"
    find_lex $P3534, "$cur_GLOBALish"
    unless_null $P3534, vivify_1235
    new $P3534, "Undef"
  vivify_1235:
    $P3535 = $P3533."get_slot_past_for_object"($P3534)
    $P3536 = $P3525."new"($P3531, $P3532, $P3535, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2259
    $P3537 = $P3516."new"($P3521, $P3536)
.annotate 'line', 2255
    $P3512."add_event"($P3537 :named("deserialize_past"))
.annotate 'line', 2266
    new $P3538, "Exception"
    set $P3538['type'], .CONTROL_RETURN
    find_lex $P3539, "$module"
    unless_null $P3539, vivify_1236
    new $P3539, "Undef"
  vivify_1236:
    getattribute $P3540, $P3539, "lex_pad"
    setattribute $P3538, 'payload', $P3540
    throw $P3538
.annotate 'line', 2250
    .return ()
  control_3502:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3541, exception, "payload"
    .return ($P3541)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3543
    .param pmc param_3544
    .param pmc param_3545
    .param pmc param_3546
.annotate 'line', 2271
    .const 'Sub' $P3583 = "282_1303928992.215" 
    capture_lex $P3583
    .const 'Sub' $P3562 = "281_1303928992.215" 
    capture_lex $P3562
    .lex "self", param_3543
    .lex "$package", param_3544
    .lex "@sym", param_3545
    .lex "$obj", param_3546
.annotate 'line', 2273
    new $P3547, "Undef"
    .lex "$name", $P3547
.annotate 'line', 2276
    new $P3548, "Undef"
    .lex "$target", $P3548
.annotate 'line', 2283
    new $P3549, "Undef"
    .lex "$path", $P3549
.annotate 'line', 2272
    find_lex $P3550, "@sym"
    unless_null $P3550, vivify_1237
    $P3550 = root_new ['parrot';'ResizablePMCArray']
  vivify_1237:
    clone $P3551, $P3550
    store_lex "@sym", $P3551
.annotate 'line', 2273
    find_lex $P3552, "@sym"
    unless_null $P3552, vivify_1238
    $P3552 = root_new ['parrot';'ResizablePMCArray']
  vivify_1238:
    $P3553 = $P3552."pop"()
    set $S3554, $P3553
    new $P3555, 'String'
    set $P3555, $S3554
    store_lex "$name", $P3555
.annotate 'line', 2276
    find_lex $P3556, "$package"
    unless_null $P3556, vivify_1239
    new $P3556, "Undef"
  vivify_1239:
    store_lex "$target", $P3556
.annotate 'line', 2277
    find_lex $P3558, "@sym"
    unless_null $P3558, vivify_1240
    $P3558 = root_new ['parrot';'ResizablePMCArray']
  vivify_1240:
    defined $I3559, $P3558
    unless $I3559, for_undef_1241
    iter $P3557, $P3558
    new $P3569, 'ExceptionHandler'
    set_label $P3569, loop3568_handler
    $P3569."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3569
  loop3568_test:
    unless $P3557, loop3568_done
    shift $P3560, $P3557
  loop3568_redo:
    .const 'Sub' $P3562 = "281_1303928992.215" 
    capture_lex $P3562
    $P3562($P3560)
  loop3568_next:
    goto loop3568_test
  loop3568_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3570, exception, 'type'
    eq $P3570, .CONTROL_LOOP_NEXT, loop3568_next
    eq $P3570, .CONTROL_LOOP_REDO, loop3568_redo
  loop3568_done:
    pop_eh 
  for_undef_1241:
.annotate 'line', 2280
    find_lex $P3571, "$obj"
    unless_null $P3571, vivify_1244
    new $P3571, "Undef"
  vivify_1244:
    find_lex $P3572, "$name"
    unless_null $P3572, vivify_1245
    new $P3572, "Undef"
  vivify_1245:
    find_lex $P3573, "$target"
    unless_null $P3573, vivify_1246
    new $P3573, "Undef"
    store_lex "$target", $P3573
  vivify_1246:
    get_who $P3574, $P3573
    set $P3574[$P3572], $P3571
.annotate 'line', 2283
    find_lex $P3575, "self"
    find_lex $P3576, "$package"
    unless_null $P3576, vivify_1247
    new $P3576, "Undef"
  vivify_1247:
    $P3577 = $P3575."get_slot_past_for_object"($P3576)
    store_lex "$path", $P3577
.annotate 'line', 2284
    find_lex $P3579, "@sym"
    unless_null $P3579, vivify_1248
    $P3579 = root_new ['parrot';'ResizablePMCArray']
  vivify_1248:
    defined $I3580, $P3579
    unless $I3580, for_undef_1249
    iter $P3578, $P3579
    new $P3594, 'ExceptionHandler'
    set_label $P3594, loop3593_handler
    $P3594."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3594
  loop3593_test:
    unless $P3578, loop3593_done
    shift $P3581, $P3578
  loop3593_redo:
    .const 'Sub' $P3583 = "282_1303928992.215" 
    capture_lex $P3583
    $P3583($P3581)
  loop3593_next:
    goto loop3593_test
  loop3593_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3595, exception, 'type'
    eq $P3595, .CONTROL_LOOP_NEXT, loop3593_next
    eq $P3595, .CONTROL_LOOP_REDO, loop3593_redo
  loop3593_done:
    pop_eh 
  for_undef_1249:
.annotate 'line', 2287
    find_lex $P3596, "self"
    get_hll_global $P3597, "GLOBAL"
    nqp_get_package_through_who $P3598, $P3597, "PAST"
    get_who $P3599, $P3598
    set $P3600, $P3599["Op"]
.annotate 'line', 2289
    get_hll_global $P3601, "GLOBAL"
    nqp_get_package_through_who $P3602, $P3601, "PAST"
    get_who $P3603, $P3602
    set $P3604, $P3603["Var"]
.annotate 'line', 2291
    get_hll_global $P3605, "GLOBAL"
    nqp_get_package_through_who $P3606, $P3605, "PAST"
    get_who $P3607, $P3606
    set $P3608, $P3607["Op"]
    find_lex $P3609, "$path"
    unless_null $P3609, vivify_1252
    new $P3609, "Undef"
  vivify_1252:
    $P3610 = $P3608."new"($P3609, "get_who PP" :named("pirop"))
    find_lex $P3611, "$name"
    unless_null $P3611, vivify_1253
    new $P3611, "Undef"
  vivify_1253:
    $P3612 = $P3604."new"($P3610, $P3611, "keyed" :named("scope"))
.annotate 'line', 2294
    find_lex $P3613, "self"
    find_lex $P3614, "$obj"
    unless_null $P3614, vivify_1254
    new $P3614, "Undef"
  vivify_1254:
    $P3615 = $P3613."get_slot_past_for_object"($P3614)
    $P3616 = $P3600."new"($P3612, $P3615, "bind" :named("pasttype"))
.annotate 'line', 2287
    $P3617 = $P3596."add_event"($P3616 :named("deserialize_past"))
.annotate 'line', 2271
    .return ($P3617)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3561"  :anon :subid("281_1303928992.215") :outer("280_1303928992.215")
    .param pmc param_3563
.annotate 'line', 2277
    .lex "$_", param_3563
.annotate 'line', 2278
    find_lex $P3564, "$target"
    unless_null $P3564, vivify_1242
    new $P3564, "Undef"
  vivify_1242:
    find_lex $P3565, "$_"
    unless_null $P3565, vivify_1243
    new $P3565, "Undef"
  vivify_1243:
    set $S3566, $P3565
    nqp_get_package_through_who $P3567, $P3564, $S3566
    store_lex "$target", $P3567
.annotate 'line', 2277
    .return ($P3567)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3582"  :anon :subid("282_1303928992.215") :outer("280_1303928992.215")
    .param pmc param_3584
.annotate 'line', 2284
    .lex "$_", param_3584
.annotate 'line', 2285
    get_hll_global $P3585, "GLOBAL"
    nqp_get_package_through_who $P3586, $P3585, "PAST"
    get_who $P3587, $P3586
    set $P3588, $P3587["Op"]
    find_lex $P3589, "$path"
    unless_null $P3589, vivify_1250
    new $P3589, "Undef"
  vivify_1250:
    find_lex $P3590, "$_"
    unless_null $P3590, vivify_1251
    new $P3590, "Undef"
  vivify_1251:
    set $S3591, $P3590
    $P3592 = $P3588."new"($P3589, $S3591, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3592
.annotate 'line', 2284
    .return ($P3592)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3619
    .param pmc param_3620
    .param pmc param_3621
    .param pmc param_3622
.annotate 'line', 2302
    .lex "self", param_3619
    .lex "$block", param_3620
    .lex "$name", param_3621
    .lex "$obj", param_3622
.annotate 'line', 2308
    new $P3623, "Undef"
    .lex "$fixup", $P3623
.annotate 'line', 2304
    find_lex $P3624, "$block"
    unless_null $P3624, vivify_1255
    new $P3624, "Undef"
  vivify_1255:
    find_lex $P3625, "$name"
    unless_null $P3625, vivify_1256
    new $P3625, "Undef"
  vivify_1256:
    find_lex $P3626, "$obj"
    unless_null $P3626, vivify_1257
    new $P3626, "Undef"
  vivify_1257:
    $P3624."symbol"($P3625, "lexical" :named("scope"), $P3626 :named("value"))
.annotate 'line', 2305
    find_lex $P3627, "$block"
    unless_null $P3627, vivify_1258
    $P3627 = root_new ['parrot';'ResizablePMCArray']
  vivify_1258:
    set $P3628, $P3627[0]
    unless_null $P3628, vivify_1259
    new $P3628, "Undef"
  vivify_1259:
    get_hll_global $P3629, "GLOBAL"
    nqp_get_package_through_who $P3630, $P3629, "PAST"
    get_who $P3631, $P3630
    set $P3632, $P3631["Var"]
    find_lex $P3633, "$name"
    unless_null $P3633, vivify_1260
    new $P3633, "Undef"
  vivify_1260:
    $P3634 = $P3632."new"("lexical" :named("scope"), $P3633 :named("name"), 1 :named("isdecl"))
    $P3628."push"($P3634)
.annotate 'line', 2308
    get_hll_global $P3635, "GLOBAL"
    nqp_get_package_through_who $P3636, $P3635, "PAST"
    get_who $P3637, $P3636
    set $P3638, $P3637["Stmts"]
.annotate 'line', 2309
    get_hll_global $P3639, "GLOBAL"
    nqp_get_package_through_who $P3640, $P3639, "PAST"
    get_who $P3641, $P3640
    set $P3642, $P3641["Op"]
.annotate 'line', 2311
    get_hll_global $P3643, "GLOBAL"
    nqp_get_package_through_who $P3644, $P3643, "PAST"
    get_who $P3645, $P3644
    set $P3646, $P3645["Op"]
.annotate 'line', 2313
    get_hll_global $P3647, "GLOBAL"
    nqp_get_package_through_who $P3648, $P3647, "PAST"
    get_who $P3649, $P3648
    set $P3650, $P3649["Val"]
    find_lex $P3651, "$block"
    unless_null $P3651, vivify_1261
    new $P3651, "Undef"
  vivify_1261:
    $P3652 = $P3650."new"($P3651 :named("value"))
    $P3653 = $P3646."new"($P3652, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2315
    find_lex $P3654, "$name"
    unless_null $P3654, vivify_1262
    new $P3654, "Undef"
  vivify_1262:
    set $S3655, $P3654
    find_lex $P3656, "self"
    find_lex $P3657, "$obj"
    unless_null $P3657, vivify_1263
    new $P3657, "Undef"
  vivify_1263:
    $P3658 = $P3656."get_slot_past_for_object"($P3657)
    $P3659 = $P3642."new"($P3653, $S3655, $P3658, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2319
    get_hll_global $P3660, "GLOBAL"
    nqp_get_package_through_who $P3661, $P3660, "PAST"
    get_who $P3662, $P3661
    set $P3663, $P3662["Op"]
.annotate 'line', 2321
    get_hll_global $P3664, "GLOBAL"
    nqp_get_package_through_who $P3665, $P3664, "PAST"
    get_who $P3666, $P3665
    set $P3667, $P3666["Op"]
.annotate 'line', 2323
    get_hll_global $P3668, "GLOBAL"
    nqp_get_package_through_who $P3669, $P3668, "PAST"
    get_who $P3670, $P3669
    set $P3671, $P3670["Val"]
    find_lex $P3672, "$block"
    unless_null $P3672, vivify_1264
    new $P3672, "Undef"
  vivify_1264:
    $P3673 = $P3671."new"($P3672 :named("value"))
    $P3674 = $P3667."new"($P3673, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2321
    $P3675 = $P3663."new"($P3674, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2319
    $P3676 = $P3638."new"($P3659, $P3675)
.annotate 'line', 2308
    store_lex "$fixup", $P3676
.annotate 'line', 2327
    find_lex $P3677, "self"
    find_lex $P3678, "$fixup"
    unless_null $P3678, vivify_1265
    new $P3678, "Undef"
  vivify_1265:
    find_lex $P3679, "$fixup"
    unless_null $P3679, vivify_1266
    new $P3679, "Undef"
  vivify_1266:
    $P3680 = $P3677."add_event"($P3678 :named("deserialize_past"), $P3679 :named("fixup_past"))
.annotate 'line', 2302
    .return ($P3680)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("284_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3682
    .param pmc param_3683
    .param pmc param_3684
    .param pmc param_3685
.annotate 'line', 2332
    .lex "self", param_3682
    .lex "$package", param_3683
    .lex "$name", param_3684
    .lex "$past_block", param_3685
.annotate 'line', 2333
    new $P3686, "Undef"
    .lex "$fixup", $P3686
    get_hll_global $P3687, "GLOBAL"
    nqp_get_package_through_who $P3688, $P3687, "PAST"
    get_who $P3689, $P3688
    set $P3690, $P3689["Op"]
.annotate 'line', 2335
    get_hll_global $P3691, "GLOBAL"
    nqp_get_package_through_who $P3692, $P3691, "PAST"
    get_who $P3693, $P3692
    set $P3694, $P3693["Var"]
.annotate 'line', 2337
    get_hll_global $P3695, "GLOBAL"
    nqp_get_package_through_who $P3696, $P3695, "PAST"
    get_who $P3697, $P3696
    set $P3698, $P3697["Op"]
    find_lex $P3699, "self"
    find_lex $P3700, "$package"
    unless_null $P3700, vivify_1267
    new $P3700, "Undef"
  vivify_1267:
    $P3701 = $P3699."get_slot_past_for_object"($P3700)
    $P3702 = $P3698."new"($P3701, "get_who PP" :named("pirop"))
.annotate 'line', 2338
    find_lex $P3703, "$name"
    unless_null $P3703, vivify_1268
    new $P3703, "Undef"
  vivify_1268:
    set $S3704, $P3703
    $P3705 = $P3694."new"($P3702, $S3704, "keyed" :named("scope"))
.annotate 'line', 2340
    get_hll_global $P3706, "GLOBAL"
    nqp_get_package_through_who $P3707, $P3706, "PAST"
    get_who $P3708, $P3707
    set $P3709, $P3708["Val"]
    find_lex $P3710, "$past_block"
    unless_null $P3710, vivify_1269
    new $P3710, "Undef"
  vivify_1269:
    $P3711 = $P3709."new"($P3710 :named("value"))
    $P3712 = $P3690."new"($P3705, $P3711, "bind" :named("pasttype"))
.annotate 'line', 2333
    store_lex "$fixup", $P3712
.annotate 'line', 2342
    find_lex $P3713, "self"
    find_lex $P3714, "$fixup"
    unless_null $P3714, vivify_1270
    new $P3714, "Undef"
  vivify_1270:
    find_lex $P3715, "$fixup"
    unless_null $P3715, vivify_1271
    new $P3715, "Undef"
  vivify_1271:
    $P3716 = $P3713."add_event"($P3714 :named("deserialize_past"), $P3715 :named("fixup_past"))
.annotate 'line', 2332
    .return ($P3716)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("285_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3720
    .param pmc param_3721
    .param pmc param_3722 :optional :named("name")
    .param int has_param_3722 :opt_flag
    .param pmc param_3724 :optional :named("repr")
    .param int has_param_3724 :opt_flag
.annotate 'line', 2347
    new $P3719, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3719, control_3718
    push_eh $P3719
    .lex "self", param_3720
    .lex "$how", param_3721
    if has_param_3722, optparam_1272
    new $P3723, "Undef"
    set param_3722, $P3723
  optparam_1272:
    .lex "$name", param_3722
    if has_param_3724, optparam_1273
    new $P3725, "Undef"
    set param_3724, $P3725
  optparam_1273:
    .lex "$repr", param_3724
.annotate 'line', 2349
    $P3726 = root_new ['parrot';'Hash']
    .lex "%args", $P3726
.annotate 'line', 2352
    new $P3727, "Undef"
    .lex "$mo", $P3727
.annotate 'line', 2353
    new $P3728, "Undef"
    .lex "$slot", $P3728
.annotate 'line', 2357
    $P3729 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3729
.annotate 'line', 2358
    new $P3730, "Undef"
    .lex "$how_name", $P3730
.annotate 'line', 2359
    new $P3731, "Undef"
    .lex "$setup_call", $P3731
.annotate 'line', 2347
    find_lex $P3732, "%args"
    unless_null $P3732, vivify_1274
    $P3732 = root_new ['parrot';'Hash']
  vivify_1274:
.annotate 'line', 2350
    find_lex $P3734, "$name"
    unless_null $P3734, vivify_1275
    new $P3734, "Undef"
  vivify_1275:
    defined $I3735, $P3734
    unless $I3735, if_3733_end
    find_lex $P3736, "$name"
    unless_null $P3736, vivify_1276
    new $P3736, "Undef"
  vivify_1276:
    find_lex $P3737, "%args"
    unless_null $P3737, vivify_1277
    $P3737 = root_new ['parrot';'Hash']
    store_lex "%args", $P3737
  vivify_1277:
    set $P3737["name"], $P3736
  if_3733_end:
.annotate 'line', 2351
    find_lex $P3739, "$repr"
    unless_null $P3739, vivify_1278
    new $P3739, "Undef"
  vivify_1278:
    defined $I3740, $P3739
    unless $I3740, if_3738_end
    find_lex $P3741, "$repr"
    unless_null $P3741, vivify_1279
    new $P3741, "Undef"
  vivify_1279:
    find_lex $P3742, "%args"
    unless_null $P3742, vivify_1280
    $P3742 = root_new ['parrot';'Hash']
    store_lex "%args", $P3742
  vivify_1280:
    set $P3742["repr"], $P3741
  if_3738_end:
.annotate 'line', 2352
    find_lex $P3743, "$how"
    unless_null $P3743, vivify_1281
    new $P3743, "Undef"
  vivify_1281:
    find_lex $P3744, "%args"
    unless_null $P3744, vivify_1282
    $P3744 = root_new ['parrot';'Hash']
  vivify_1282:
    $P3745 = $P3743."new_type"($P3744 :flat)
    store_lex "$mo", $P3745
.annotate 'line', 2353
    find_lex $P3746, "self"
    find_lex $P3747, "$mo"
    unless_null $P3747, vivify_1283
    new $P3747, "Undef"
  vivify_1283:
    $P3748 = $P3746."add_object"($P3747)
    store_lex "$slot", $P3748
.annotate 'line', 2357
    find_lex $P3749, "$how"
    unless_null $P3749, vivify_1284
    new $P3749, "Undef"
  vivify_1284:
    get_how $P3750, $P3749
    find_lex $P3751, "$how"
    unless_null $P3751, vivify_1285
    new $P3751, "Undef"
  vivify_1285:
    $S3752 = $P3750."name"($P3751)
    split $P3753, "::", $S3752
    store_lex "@how_ns", $P3753
.annotate 'line', 2358
    find_lex $P3754, "@how_ns"
    unless_null $P3754, vivify_1286
    $P3754 = root_new ['parrot';'ResizablePMCArray']
  vivify_1286:
    $P3755 = $P3754."pop"()
    store_lex "$how_name", $P3755
.annotate 'line', 2359
    get_hll_global $P3756, "GLOBAL"
    nqp_get_package_through_who $P3757, $P3756, "PAST"
    get_who $P3758, $P3757
    set $P3759, $P3758["Op"]
.annotate 'line', 2361
    find_lex $P3760, "self"
    find_lex $P3761, "$how"
    unless_null $P3761, vivify_1287
    new $P3761, "Undef"
  vivify_1287:
    $P3762 = $P3760."get_object_sc_ref_past"($P3761)
    $P3763 = $P3759."new"($P3762, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2359
    store_lex "$setup_call", $P3763
.annotate 'line', 2363
    find_lex $P3765, "$name"
    unless_null $P3765, vivify_1288
    new $P3765, "Undef"
  vivify_1288:
    defined $I3766, $P3765
    unless $I3766, if_3764_end
.annotate 'line', 2364
    find_lex $P3767, "$setup_call"
    unless_null $P3767, vivify_1289
    new $P3767, "Undef"
  vivify_1289:
    get_hll_global $P3768, "GLOBAL"
    nqp_get_package_through_who $P3769, $P3768, "PAST"
    get_who $P3770, $P3769
    set $P3771, $P3770["Val"]
    find_lex $P3772, "$name"
    unless_null $P3772, vivify_1290
    new $P3772, "Undef"
  vivify_1290:
    $P3773 = $P3771."new"($P3772 :named("value"), "name" :named("named"))
    $P3767."push"($P3773)
  if_3764_end:
.annotate 'line', 2366
    find_lex $P3775, "$repr"
    unless_null $P3775, vivify_1291
    new $P3775, "Undef"
  vivify_1291:
    defined $I3776, $P3775
    unless $I3776, if_3774_end
.annotate 'line', 2367
    find_lex $P3777, "$setup_call"
    unless_null $P3777, vivify_1292
    new $P3777, "Undef"
  vivify_1292:
    get_hll_global $P3778, "GLOBAL"
    nqp_get_package_through_who $P3779, $P3778, "PAST"
    get_who $P3780, $P3779
    set $P3781, $P3780["Val"]
    find_lex $P3782, "$repr"
    unless_null $P3782, vivify_1293
    new $P3782, "Undef"
  vivify_1293:
    $P3783 = $P3781."new"($P3782 :named("value"), "repr" :named("named"))
    $P3777."push"($P3783)
  if_3774_end:
.annotate 'line', 2369
    find_lex $P3784, "self"
.annotate 'line', 2370
    find_lex $P3785, "self"
    find_lex $P3786, "$slot"
    unless_null $P3786, vivify_1294
    new $P3786, "Undef"
  vivify_1294:
    find_lex $P3787, "self"
    find_lex $P3788, "$setup_call"
    unless_null $P3788, vivify_1295
    new $P3788, "Undef"
  vivify_1295:
    $P3789 = $P3787."set_cur_sc"($P3788)
    $P3790 = $P3785."set_slot_past"($P3786, $P3789)
    $P3784."add_event"($P3790 :named("deserialize_past"))
.annotate 'line', 2373
    new $P3791, "Exception"
    set $P3791['type'], .CONTROL_RETURN
    find_lex $P3792, "$mo"
    unless_null $P3792, vivify_1296
    new $P3792, "Undef"
  vivify_1296:
    setattribute $P3791, 'payload', $P3792
    throw $P3791
.annotate 'line', 2347
    .return ()
  control_3718:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3793, exception, "payload"
    .return ($P3793)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_add_attribute"  :subid("286_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3795
    .param pmc param_3796
    .param pmc param_3797
    .param pmc param_3798
    .param pmc param_3799
.annotate 'line', 2381
    .const 'Sub' $P3845 = "288_1303928992.215" 
    capture_lex $P3845
    .const 'Sub' $P3824 = "287_1303928992.215" 
    capture_lex $P3824
    .lex "self", param_3795
    .lex "$obj", param_3796
    .lex "$meta_attr", param_3797
    .lex "%lit_args", param_3798
    .lex "%obj_args", param_3799
.annotate 'line', 2383
    new $P3800, "Undef"
    .lex "$attr", $P3800
.annotate 'line', 2387
    new $P3801, "Undef"
    .lex "$create_call", $P3801
.annotate 'line', 2399
    new $P3802, "Undef"
    .lex "$obj_slot_past", $P3802
.annotate 'line', 2383
    find_lex $P3803, "$meta_attr"
    unless_null $P3803, vivify_1297
    new $P3803, "Undef"
  vivify_1297:
    find_lex $P3804, "%lit_args"
    unless_null $P3804, vivify_1298
    $P3804 = root_new ['parrot';'Hash']
  vivify_1298:
    find_lex $P3805, "%obj_args"
    unless_null $P3805, vivify_1299
    $P3805 = root_new ['parrot';'Hash']
  vivify_1299:
    $P3806 = $P3803."new"($P3804 :flat, $P3805 :flat)
    store_lex "$attr", $P3806
.annotate 'line', 2384
    find_lex $P3807, "$obj"
    unless_null $P3807, vivify_1300
    new $P3807, "Undef"
  vivify_1300:
    get_how $P3808, $P3807
    find_lex $P3809, "$obj"
    unless_null $P3809, vivify_1301
    new $P3809, "Undef"
  vivify_1301:
    find_lex $P3810, "$attr"
    unless_null $P3810, vivify_1302
    new $P3810, "Undef"
  vivify_1302:
    $P3808."add_attribute"($P3809, $P3810)
.annotate 'line', 2387
    get_hll_global $P3811, "GLOBAL"
    nqp_get_package_through_who $P3812, $P3811, "PAST"
    get_who $P3813, $P3812
    set $P3814, $P3813["Op"]
.annotate 'line', 2389
    find_lex $P3815, "self"
    find_lex $P3816, "$meta_attr"
    unless_null $P3816, vivify_1303
    new $P3816, "Undef"
  vivify_1303:
    $P3817 = $P3815."get_object_sc_ref_past"($P3816)
    $P3818 = $P3814."new"($P3817, "callmethod" :named("pasttype"), "new" :named("name"))
.annotate 'line', 2387
    store_lex "$create_call", $P3818
.annotate 'line', 2391
    find_lex $P3820, "%lit_args"
    unless_null $P3820, vivify_1304
    $P3820 = root_new ['parrot';'Hash']
  vivify_1304:
    defined $I3821, $P3820
    unless $I3821, for_undef_1305
    iter $P3819, $P3820
    new $P3838, 'ExceptionHandler'
    set_label $P3838, loop3837_handler
    $P3838."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3838
  loop3837_test:
    unless $P3819, loop3837_done
    shift $P3822, $P3819
  loop3837_redo:
    .const 'Sub' $P3824 = "287_1303928992.215" 
    capture_lex $P3824
    $P3824($P3822)
  loop3837_next:
    goto loop3837_test
  loop3837_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3839, exception, 'type'
    eq $P3839, .CONTROL_LOOP_NEXT, loop3837_next
    eq $P3839, .CONTROL_LOOP_REDO, loop3837_redo
  loop3837_done:
    pop_eh 
  for_undef_1305:
.annotate 'line', 2394
    find_lex $P3841, "%obj_args"
    unless_null $P3841, vivify_1309
    $P3841 = root_new ['parrot';'Hash']
  vivify_1309:
    defined $I3842, $P3841
    unless $I3842, for_undef_1310
    iter $P3840, $P3841
    new $P3859, 'ExceptionHandler'
    set_label $P3859, loop3858_handler
    $P3859."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3859
  loop3858_test:
    unless $P3840, loop3858_done
    shift $P3843, $P3840
  loop3858_redo:
    .const 'Sub' $P3845 = "288_1303928992.215" 
    capture_lex $P3845
    $P3845($P3843)
  loop3858_next:
    goto loop3858_test
  loop3858_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3860, exception, 'type'
    eq $P3860, .CONTROL_LOOP_NEXT, loop3858_next
    eq $P3860, .CONTROL_LOOP_REDO, loop3858_redo
  loop3858_done:
    pop_eh 
  for_undef_1310:
.annotate 'line', 2399
    find_lex $P3861, "self"
    find_lex $P3862, "$obj"
    unless_null $P3862, vivify_1316
    new $P3862, "Undef"
  vivify_1316:
    $P3863 = $P3861."get_slot_past_for_object"($P3862)
    store_lex "$obj_slot_past", $P3863
.annotate 'line', 2400
    find_lex $P3864, "self"
    get_hll_global $P3865, "GLOBAL"
    nqp_get_package_through_who $P3866, $P3865, "PAST"
    get_who $P3867, $P3866
    set $P3868, $P3867["Op"]
.annotate 'line', 2402
    get_hll_global $P3869, "GLOBAL"
    nqp_get_package_through_who $P3870, $P3869, "PAST"
    get_who $P3871, $P3870
    set $P3872, $P3871["Op"]
    find_lex $P3873, "$obj_slot_past"
    unless_null $P3873, vivify_1317
    new $P3873, "Undef"
  vivify_1317:
    $P3874 = $P3872."new"($P3873, "get_how PP" :named("pirop"))
    find_lex $P3875, "$obj_slot_past"
    unless_null $P3875, vivify_1318
    new $P3875, "Undef"
  vivify_1318:
    find_lex $P3876, "$create_call"
    unless_null $P3876, vivify_1319
    new $P3876, "Undef"
  vivify_1319:
    $P3877 = $P3868."new"($P3874, $P3875, $P3876, "callmethod" :named("pasttype"), "add_attribute" :named("name"))
.annotate 'line', 2400
    $P3878 = $P3864."add_event"($P3877 :named("deserialize_past"))
.annotate 'line', 2381
    .return ($P3878)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3823"  :anon :subid("287_1303928992.215") :outer("286_1303928992.215")
    .param pmc param_3825
.annotate 'line', 2391
    .lex "$_", param_3825
.annotate 'line', 2392
    find_lex $P3826, "$create_call"
    unless_null $P3826, vivify_1306
    new $P3826, "Undef"
  vivify_1306:
    get_hll_global $P3827, "GLOBAL"
    nqp_get_package_through_who $P3828, $P3827, "PAST"
    get_who $P3829, $P3828
    set $P3830, $P3829["Val"]
    find_lex $P3831, "$_"
    unless_null $P3831, vivify_1307
    new $P3831, "Undef"
  vivify_1307:
    $P3832 = $P3831."value"()
    find_lex $P3833, "$_"
    unless_null $P3833, vivify_1308
    new $P3833, "Undef"
  vivify_1308:
    $P3834 = $P3833."key"()
    $P3835 = $P3830."new"($P3832 :named("value"), $P3834 :named("named"))
    $P3836 = $P3826."push"($P3835)
.annotate 'line', 2391
    .return ($P3836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3844"  :anon :subid("288_1303928992.215") :outer("286_1303928992.215")
    .param pmc param_3847
.annotate 'line', 2395
    new $P3846, "Undef"
    .lex "$lookup", $P3846
    .lex "$_", param_3847
    find_lex $P3848, "self"
    find_lex $P3849, "$_"
    unless_null $P3849, vivify_1311
    new $P3849, "Undef"
  vivify_1311:
    $P3850 = $P3849."value"()
    $P3851 = $P3848."get_object_sc_ref_past"($P3850)
    store_lex "$lookup", $P3851
.annotate 'line', 2396
    find_lex $P3852, "$lookup"
    unless_null $P3852, vivify_1312
    new $P3852, "Undef"
  vivify_1312:
    find_lex $P3853, "$_"
    unless_null $P3853, vivify_1313
    new $P3853, "Undef"
  vivify_1313:
    $P3854 = $P3853."key"()
    $P3852."named"($P3854)
.annotate 'line', 2397
    find_lex $P3855, "$create_call"
    unless_null $P3855, vivify_1314
    new $P3855, "Undef"
  vivify_1314:
    find_lex $P3856, "$lookup"
    unless_null $P3856, vivify_1315
    new $P3856, "Undef"
  vivify_1315:
    $P3857 = $P3855."push"($P3856)
.annotate 'line', 2394
    .return ($P3857)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("289_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3880
    .param pmc param_3881
    .param pmc param_3882
    .param pmc param_3883
    .param pmc param_3884
.annotate 'line', 2411
    .lex "self", param_3880
    .lex "$obj", param_3881
    .lex "$meta_method_name", param_3882
    .lex "$name", param_3883
    .lex "$method_past", param_3884
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("290_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3886
    .param pmc param_3887
    .param pmc param_3888
    .param pmc param_3889
.annotate 'line', 2416
    .lex "self", param_3886
    .lex "$obj", param_3887
    .lex "$meta_method_name", param_3888
    .lex "$to_add", param_3889
.annotate 'line', 2421
    new $P3890, "Undef"
    .lex "$slot_past", $P3890
.annotate 'line', 2418
    find_lex $P3891, "$obj"
    unless_null $P3891, vivify_1320
    new $P3891, "Undef"
  vivify_1320:
    get_how $P3892, $P3891
    find_lex $P3893, "$obj"
    unless_null $P3893, vivify_1321
    new $P3893, "Undef"
  vivify_1321:
    find_lex $P3894, "$to_add"
    unless_null $P3894, vivify_1322
    new $P3894, "Undef"
  vivify_1322:
    find_lex $P3895, "$meta_method_name"
    unless_null $P3895, vivify_1323
    new $P3895, "Undef"
  vivify_1323:
    set $S3896, $P3895
    $P3892.$S3896($P3893, $P3894)
.annotate 'line', 2421
    find_lex $P3897, "self"
    find_lex $P3898, "$obj"
    unless_null $P3898, vivify_1324
    new $P3898, "Undef"
  vivify_1324:
    $P3899 = $P3897."get_slot_past_for_object"($P3898)
    store_lex "$slot_past", $P3899
.annotate 'line', 2422
    find_lex $P3900, "self"
    get_hll_global $P3901, "GLOBAL"
    nqp_get_package_through_who $P3902, $P3901, "PAST"
    get_who $P3903, $P3902
    set $P3904, $P3903["Op"]
    find_lex $P3905, "$meta_method_name"
    unless_null $P3905, vivify_1325
    new $P3905, "Undef"
  vivify_1325:
.annotate 'line', 2424
    get_hll_global $P3906, "GLOBAL"
    nqp_get_package_through_who $P3907, $P3906, "PAST"
    get_who $P3908, $P3907
    set $P3909, $P3908["Op"]
    find_lex $P3910, "$slot_past"
    unless_null $P3910, vivify_1326
    new $P3910, "Undef"
  vivify_1326:
    $P3911 = $P3909."new"($P3910, "get_how PP" :named("pirop"))
    find_lex $P3912, "$slot_past"
    unless_null $P3912, vivify_1327
    new $P3912, "Undef"
  vivify_1327:
.annotate 'line', 2426
    find_lex $P3913, "self"
    find_lex $P3914, "$to_add"
    unless_null $P3914, vivify_1328
    new $P3914, "Undef"
  vivify_1328:
    $P3915 = $P3913."get_object_sc_ref_past"($P3914)
    $P3916 = $P3904."new"($P3911, $P3912, $P3915, "callmethod" :named("pasttype"), $P3905 :named("name"))
.annotate 'line', 2422
    $P3917 = $P3900."add_event"($P3916 :named("deserialize_past"))
.annotate 'line', 2416
    .return ($P3917)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("291_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3919
    .param pmc param_3920
.annotate 'line', 2431
    .lex "self", param_3919
    .lex "$obj", param_3920
.annotate 'line', 2436
    new $P3921, "Undef"
    .lex "$slot_past", $P3921
.annotate 'line', 2433
    find_lex $P3922, "$obj"
    unless_null $P3922, vivify_1329
    new $P3922, "Undef"
  vivify_1329:
    get_how $P3923, $P3922
    find_lex $P3924, "$obj"
    unless_null $P3924, vivify_1330
    new $P3924, "Undef"
  vivify_1330:
    $P3923."compose"($P3924)
.annotate 'line', 2436
    find_lex $P3925, "$obj"
    unless_null $P3925, vivify_1331
    new $P3925, "Undef"
  vivify_1331:
    $P3926 = "get_slot_past_for_object"($P3925)
    store_lex "$slot_past", $P3926
.annotate 'line', 2437
    find_lex $P3927, "self"
    get_hll_global $P3928, "GLOBAL"
    nqp_get_package_through_who $P3929, $P3928, "PAST"
    get_who $P3930, $P3929
    set $P3931, $P3930["Op"]
.annotate 'line', 2439
    get_hll_global $P3932, "GLOBAL"
    nqp_get_package_through_who $P3933, $P3932, "PAST"
    get_who $P3934, $P3933
    set $P3935, $P3934["Op"]
    find_lex $P3936, "$slot_past"
    unless_null $P3936, vivify_1332
    new $P3936, "Undef"
  vivify_1332:
    $P3937 = $P3935."new"($P3936, "get_how PP" :named("pirop"))
    find_lex $P3938, "$slot_past"
    unless_null $P3938, vivify_1333
    new $P3938, "Undef"
  vivify_1333:
    $P3939 = $P3931."new"($P3937, $P3938, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2437
    $P3940 = $P3927."add_event"($P3939 :named("deserialize_past"))
.annotate 'line', 2431
    .return ($P3940)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("292_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3942
.annotate 'line', 2445
    .lex "self", param_3942
    find_lex $P3943, "self"
    find_lex $P3944, "$?CLASS"
    getattribute $P3945, $P3943, $P3944, "$!sc"
    unless_null $P3945, vivify_1334
    new $P3945, "Undef"
  vivify_1334:
    .return ($P3945)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("293_1303928992.215") :outer("262_1303928992.215")
    .param pmc param_3947
.annotate 'line', 2451
    .const 'Sub' $P3967 = "294_1303928992.215" 
    capture_lex $P3967
    .lex "self", param_3947
.annotate 'line', 2452
    new $P3948, "Undef"
    .lex "$des", $P3948
.annotate 'line', 2453
    new $P3949, "Undef"
    .lex "$fix", $P3949
.annotate 'line', 2452
    get_hll_global $P3950, "GLOBAL"
    nqp_get_package_through_who $P3951, $P3950, "PAST"
    get_who $P3952, $P3951
    set $P3953, $P3952["Stmts"]
    $P3954 = $P3953."new"()
    store_lex "$des", $P3954
.annotate 'line', 2453
    get_hll_global $P3955, "GLOBAL"
    nqp_get_package_through_who $P3956, $P3955, "PAST"
    get_who $P3957, $P3956
    set $P3958, $P3957["Stmts"]
    $P3959 = $P3958."new"()
    store_lex "$fix", $P3959
.annotate 'line', 2454
    find_lex $P3961, "self"
    find_lex $P3962, "$?CLASS"
    getattribute $P3963, $P3961, $P3962, "@!event_stream"
    unless_null $P3963, vivify_1335
    $P3963 = root_new ['parrot';'ResizablePMCArray']
  vivify_1335:
    defined $I3964, $P3963
    unless $I3964, for_undef_1336
    iter $P3960, $P3963
    new $P3986, 'ExceptionHandler'
    set_label $P3986, loop3985_handler
    $P3986."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3986
  loop3985_test:
    unless $P3960, loop3985_done
    shift $P3965, $P3960
  loop3985_redo:
    .const 'Sub' $P3967 = "294_1303928992.215" 
    capture_lex $P3967
    $P3967($P3965)
  loop3985_next:
    goto loop3985_test
  loop3985_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3987, exception, 'type'
    eq $P3987, .CONTROL_LOOP_NEXT, loop3985_next
    eq $P3987, .CONTROL_LOOP_REDO, loop3985_redo
  loop3985_done:
    pop_eh 
  for_undef_1336:
.annotate 'line', 2458
    find_dynamic_lex $P3988, "$/"
    get_hll_global $P3989, "GLOBAL"
    nqp_get_package_through_who $P3990, $P3989, "PAST"
    get_who $P3991, $P3990
    set $P3992, $P3991["Op"]
.annotate 'line', 2460
    get_hll_global $P3993, "GLOBAL"
    nqp_get_package_through_who $P3994, $P3993, "PAST"
    get_who $P3995, $P3994
    set $P3996, $P3995["Op"]
.annotate 'line', 2462
    get_hll_global $P3997, "GLOBAL"
    nqp_get_package_through_who $P3998, $P3997, "PAST"
    get_who $P3999, $P3998
    set $P4000, $P3999["Op"]
    find_lex $P4001, "self"
    find_lex $P4002, "$?CLASS"
    getattribute $P4003, $P4001, $P4002, "$!handle"
    unless_null $P4003, vivify_1343
    new $P4003, "Undef"
  vivify_1343:
    $P4004 = $P4000."new"($P4003, "nqp_get_sc Ps" :named("pirop"))
    $P4005 = $P3996."new"($P4004, "isnull IP" :named("pirop"))
.annotate 'line', 2464
    get_hll_global $P4006, "GLOBAL"
    nqp_get_package_through_who $P4007, $P4006, "PAST"
    get_who $P4008, $P4007
    set $P4009, $P4008["Stmts"]
.annotate 'line', 2465
    get_hll_global $P4010, "GLOBAL"
    nqp_get_package_through_who $P4011, $P4010, "PAST"
    get_who $P4012, $P4011
    set $P4013, $P4012["Op"]
    $P4014 = $P4013."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2466
    get_hll_global $P4015, "GLOBAL"
    nqp_get_package_through_who $P4016, $P4015, "PAST"
    get_who $P4017, $P4016
    set $P4018, $P4017["Op"]
.annotate 'line', 2468
    get_hll_global $P4019, "GLOBAL"
    nqp_get_package_through_who $P4020, $P4019, "PAST"
    get_who $P4021, $P4020
    set $P4022, $P4021["Op"]
    $P4023 = $P4022."new"("getinterp P" :named("pirop"))
.annotate 'line', 2469
    get_hll_global $P4024, "GLOBAL"
    nqp_get_package_through_who $P4025, $P4024, "PAST"
    get_who $P4026, $P4025
    set $P4027, $P4026["Op"]
    $P4028 = $P4027."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2470
    get_hll_global $P4029, "GLOBAL"
    nqp_get_package_through_who $P4030, $P4029, "PAST"
    get_who $P4031, $P4030
    set $P4032, $P4031["Op"]
    $P4033 = $P4032."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P4034 = $P4018."new"($P4023, $P4028, $P4033, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2472
    get_hll_global $P4035, "GLOBAL"
    nqp_get_package_through_who $P4036, $P4035, "PAST"
    get_who $P4037, $P4036
    set $P4038, $P4037["Op"]
.annotate 'line', 2474
    get_hll_global $P4039, "GLOBAL"
    nqp_get_package_through_who $P4040, $P4039, "PAST"
    get_who $P4041, $P4040
    set $P4042, $P4041["Var"]
    $P4043 = $P4042."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2475
    get_hll_global $P4044, "GLOBAL"
    nqp_get_package_through_who $P4045, $P4044, "PAST"
    get_who $P4046, $P4045
    set $P4047, $P4046["Op"]
    find_lex $P4048, "self"
    find_lex $P4049, "$?CLASS"
    getattribute $P4050, $P4048, $P4049, "$!handle"
    unless_null $P4050, vivify_1344
    new $P4050, "Undef"
  vivify_1344:
    $P4051 = $P4047."new"($P4050, "nqp_create_sc Ps" :named("pirop"))
    $P4052 = $P4038."new"($P4043, $P4051, "bind" :named("pasttype"))
.annotate 'line', 2472
    find_lex $P4053, "$des"
    unless_null $P4053, vivify_1345
    new $P4053, "Undef"
  vivify_1345:
    $P4054 = $P4009."new"($P4014, $P4034, $P4052, $P4053)
.annotate 'line', 2464
    find_lex $P4055, "$fix"
    unless_null $P4055, vivify_1346
    new $P4055, "Undef"
  vivify_1346:
    $P4056 = $P3992."new"($P4005, $P4054, $P4055, "if" :named("pasttype"))
.annotate 'line', 2458
    $P4057 = $P3988."!make"($P4056)
.annotate 'line', 2451
    .return ($P4057)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3966"  :anon :subid("294_1303928992.215") :outer("293_1303928992.215")
    .param pmc param_3968
.annotate 'line', 2454
    .lex "$_", param_3968
.annotate 'line', 2455
    find_lex $P3970, "$_"
    unless_null $P3970, vivify_1337
    new $P3970, "Undef"
  vivify_1337:
    $P3971 = $P3970."deserialize_past"()
    defined $I3972, $P3971
    unless $I3972, if_3969_end
    find_lex $P3973, "$des"
    unless_null $P3973, vivify_1338
    new $P3973, "Undef"
  vivify_1338:
    find_lex $P3974, "$_"
    unless_null $P3974, vivify_1339
    new $P3974, "Undef"
  vivify_1339:
    $P3975 = $P3974."deserialize_past"()
    $P3973."push"($P3975)
  if_3969_end:
.annotate 'line', 2456
    find_lex $P3978, "$_"
    unless_null $P3978, vivify_1340
    new $P3978, "Undef"
  vivify_1340:
    $P3979 = $P3978."fixup_past"()
    defined $I3980, $P3979
    if $I3980, if_3977
    new $P3976, 'Integer'
    set $P3976, $I3980
    goto if_3977_end
  if_3977:
    find_lex $P3981, "$fix"
    unless_null $P3981, vivify_1341
    new $P3981, "Undef"
  vivify_1341:
    find_lex $P3982, "$_"
    unless_null $P3982, vivify_1342
    new $P3982, "Undef"
  vivify_1342:
    $P3983 = $P3982."fixup_past"()
    $P3984 = $P3981."push"($P3983)
    set $P3976, $P3984
  if_3977_end:
.annotate 'line', 2454
    .return ($P3976)
.end


.HLL "nqp"

.namespace []
.sub "_block4107" :load :anon :subid("296_1303928992.215")
.annotate 'line', 1064
    .const 'Sub' $P4109 = "10_1303928992.215" 
    $P4110 = $P4109()
    .return ($P4110)
.end

