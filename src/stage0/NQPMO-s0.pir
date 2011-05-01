
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304277392.509")
.annotate 'line', 0
    .const 'Sub' $P2365 = "172_1304277392.509" 
    capture_lex $P2365
    .const 'Sub' $P2297 = "162_1304277392.509" 
    capture_lex $P2297
    .const 'Sub' $P2108 = "147_1304277392.509" 
    capture_lex $P2108
    .const 'Sub' $P2041 = "137_1304277392.509" 
    capture_lex $P2041
    .const 'Sub' $P1043 = "80_1304277392.509" 
    capture_lex $P1043
    .const 'Sub' $P736 = "55_1304277392.509" 
    capture_lex $P736
    .const 'Sub' $P518 = "44_1304277392.509" 
    capture_lex $P518
    .const 'Sub' $P253 = "22_1304277392.509" 
    capture_lex $P253
    .const 'Sub' $P25 = "11_1304277392.509" 
    capture_lex $P25
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "RoleToRoleApplier", $P15
    .lex "NQPConcreteRoleHOW", $P16
    .lex "RoleToClassApplier", $P17
    .lex "NQPParametricRoleHOW", $P18
    .lex "NQPClassHOW", $P19
    .lex "NQPNativeHOW", $P20
    .lex "NQPAttribute", $P21
    .lex "NQPModuleHOW", $P22
    .lex "EXPORTHOW", $P23
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P25 = "11_1304277392.509" 
    capture_lex $P25
    $P25()
.annotate 'line', 99
    .const 'Sub' $P253 = "22_1304277392.509" 
    capture_lex $P253
    $P253()
.annotate 'line', 244
    .const 'Sub' $P518 = "44_1304277392.509" 
    capture_lex $P518
    $P518()
.annotate 'line', 320
    .const 'Sub' $P736 = "55_1304277392.509" 
    capture_lex $P736
    $P736()
.annotate 'line', 495
    .const 'Sub' $P1043 = "80_1304277392.509" 
    capture_lex $P1043
    $P1043()
.annotate 'line', 933
    .const 'Sub' $P2041 = "137_1304277392.509" 
    capture_lex $P2041
    $P2041()
.annotate 'line', 979
    .const 'Sub' $P2108 = "147_1304277392.509" 
    capture_lex $P2108
    $P2108()
.annotate 'line', 1050
    .const 'Sub' $P2297 = "162_1304277392.509" 
    capture_lex $P2297
    $P2297()
.annotate 'line', 1099
    .const 'Sub' $P2365 = "172_1304277392.509" 
    capture_lex $P2365
    $P2397 = $P2365()
.annotate 'line', 1
    .return ($P2397)
    .const 'Sub' $P2399 = "174_1304277392.509" 
    .return ($P2399)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post175") :outer("10_1304277392.509")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304277392.509" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2403, "1304277388.915"
    isnull $I2404, $P2403
    if $I2404, if_2402
    .const 'Sub' $P3118 = "10_1304277392.509" 
    $P3119 = $P3118."get_lexinfo"()
    nqp_get_sc_object $P3120, "1304277388.915", 0
    $P3119."set_static_lexpad_value"("GLOBALish", $P3120)
    .const 'Sub' $P3121 = "10_1304277392.509" 
    $P3122 = $P3121."get_lexinfo"()
    $P3122."finish_static_lexpad"()
    .const 'Sub' $P3123 = "10_1304277392.509" 
    $P3124 = $P3123."get_lexinfo"()
    nqp_get_sc_object $P3125, "1304277388.915", 0
    $P3124."set_static_lexpad_value"("$?PACKAGE", $P3125)
    .const 'Sub' $P3126 = "10_1304277392.509" 
    $P3127 = $P3126."get_lexinfo"()
    $P3127."finish_static_lexpad"()
    .const 'Sub' $P3128 = "10_1304277392.509" 
    $P3129 = $P3128."get_lexinfo"()
    nqp_get_sc_object $P3130, "1304277388.915", 1
    $P3129."set_static_lexpad_value"("RoleToRoleApplier", $P3130)
    .const 'Sub' $P3131 = "10_1304277392.509" 
    $P3132 = $P3131."get_lexinfo"()
    $P3132."finish_static_lexpad"()
    nqp_get_sc_object $P3133, "1304277388.915", 2
    .const 'Sub' $P3134 = "12_1304277392.509" 
    copy $P3133, $P3134
    .const 'Sub' $P3135 = "11_1304277392.509" 
    $P3136 = $P3135."get_lexinfo"()
    nqp_get_sc_object $P3137, "1304277388.915", 1
    $P3136."set_static_lexpad_value"("$?PACKAGE", $P3137)
    .const 'Sub' $P3138 = "11_1304277392.509" 
    $P3139 = $P3138."get_lexinfo"()
    $P3139."finish_static_lexpad"()
    .const 'Sub' $P3140 = "11_1304277392.509" 
    $P3141 = $P3140."get_lexinfo"()
    nqp_get_sc_object $P3142, "1304277388.915", 1
    $P3141."set_static_lexpad_value"("$?CLASS", $P3142)
    .const 'Sub' $P3143 = "11_1304277392.509" 
    $P3144 = $P3143."get_lexinfo"()
    $P3144."finish_static_lexpad"()
    .const 'Sub' $P3145 = "10_1304277392.509" 
    $P3146 = $P3145."get_lexinfo"()
    nqp_get_sc_object $P3147, "1304277388.915", 3
    $P3146."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3147)
    .const 'Sub' $P3148 = "10_1304277392.509" 
    $P3149 = $P3148."get_lexinfo"()
    $P3149."finish_static_lexpad"()
    nqp_get_sc_object $P3150, "1304277388.915", 4
    .const 'Sub' $P3151 = "23_1304277392.509" 
    copy $P3150, $P3151
    nqp_get_sc_object $P3152, "1304277388.915", 5
    .const 'Sub' $P3153 = "24_1304277392.509" 
    copy $P3152, $P3153
    nqp_get_sc_object $P3154, "1304277388.915", 6
    .const 'Sub' $P3155 = "25_1304277392.509" 
    copy $P3154, $P3155
    nqp_get_sc_object $P3156, "1304277388.915", 7
    .const 'Sub' $P3157 = "26_1304277392.509" 
    copy $P3156, $P3157
    nqp_get_sc_object $P3158, "1304277388.915", 8
    .const 'Sub' $P3159 = "27_1304277392.509" 
    copy $P3158, $P3159
    nqp_get_sc_object $P3160, "1304277388.915", 9
    .const 'Sub' $P3161 = "28_1304277392.509" 
    copy $P3160, $P3161
    nqp_get_sc_object $P3162, "1304277388.915", 10
    .const 'Sub' $P3163 = "29_1304277392.509" 
    copy $P3162, $P3163
    nqp_get_sc_object $P3164, "1304277388.915", 11
    .const 'Sub' $P3165 = "30_1304277392.509" 
    copy $P3164, $P3165
    nqp_get_sc_object $P3166, "1304277388.915", 12
    .const 'Sub' $P3167 = "31_1304277392.509" 
    copy $P3166, $P3167
    nqp_get_sc_object $P3168, "1304277388.915", 13
    .const 'Sub' $P3169 = "32_1304277392.509" 
    copy $P3168, $P3169
    nqp_get_sc_object $P3170, "1304277388.915", 14
    .const 'Sub' $P3171 = "34_1304277392.509" 
    copy $P3170, $P3171
    nqp_get_sc_object $P3172, "1304277388.915", 15
    .const 'Sub' $P3173 = "36_1304277392.509" 
    copy $P3172, $P3173
    nqp_get_sc_object $P3174, "1304277388.915", 16
    .const 'Sub' $P3175 = "37_1304277392.509" 
    copy $P3174, $P3175
    nqp_get_sc_object $P3176, "1304277388.915", 17
    .const 'Sub' $P3177 = "38_1304277392.509" 
    copy $P3176, $P3177
    nqp_get_sc_object $P3178, "1304277388.915", 18
    .const 'Sub' $P3179 = "39_1304277392.509" 
    copy $P3178, $P3179
    nqp_get_sc_object $P3180, "1304277388.915", 19
    .const 'Sub' $P3181 = "41_1304277392.509" 
    copy $P3180, $P3181
    nqp_get_sc_object $P3182, "1304277388.915", 20
    .const 'Sub' $P3183 = "42_1304277392.509" 
    copy $P3182, $P3183
    .const 'Sub' $P3184 = "22_1304277392.509" 
    $P3185 = $P3184."get_lexinfo"()
    nqp_get_sc_object $P3186, "1304277388.915", 3
    $P3185."set_static_lexpad_value"("$?PACKAGE", $P3186)
    .const 'Sub' $P3187 = "22_1304277392.509" 
    $P3188 = $P3187."get_lexinfo"()
    $P3188."finish_static_lexpad"()
    .const 'Sub' $P3189 = "22_1304277392.509" 
    $P3190 = $P3189."get_lexinfo"()
    nqp_get_sc_object $P3191, "1304277388.915", 3
    $P3190."set_static_lexpad_value"("$?CLASS", $P3191)
    .const 'Sub' $P3192 = "22_1304277392.509" 
    $P3193 = $P3192."get_lexinfo"()
    $P3193."finish_static_lexpad"()
    .const 'Sub' $P3194 = "10_1304277392.509" 
    $P3195 = $P3194."get_lexinfo"()
    nqp_get_sc_object $P3196, "1304277388.915", 21
    $P3195."set_static_lexpad_value"("RoleToClassApplier", $P3196)
    .const 'Sub' $P3197 = "10_1304277392.509" 
    $P3198 = $P3197."get_lexinfo"()
    $P3198."finish_static_lexpad"()
    nqp_get_sc_object $P3199, "1304277388.915", 22
    .const 'Sub' $P3200 = "49_1304277392.509" 
    copy $P3199, $P3200
    .const 'Sub' $P3201 = "44_1304277392.509" 
    $P3202 = $P3201."get_lexinfo"()
    nqp_get_sc_object $P3203, "1304277388.915", 21
    $P3202."set_static_lexpad_value"("$?PACKAGE", $P3203)
    .const 'Sub' $P3204 = "44_1304277392.509" 
    $P3205 = $P3204."get_lexinfo"()
    $P3205."finish_static_lexpad"()
    .const 'Sub' $P3206 = "44_1304277392.509" 
    $P3207 = $P3206."get_lexinfo"()
    nqp_get_sc_object $P3208, "1304277388.915", 21
    $P3207."set_static_lexpad_value"("$?CLASS", $P3208)
    .const 'Sub' $P3209 = "44_1304277392.509" 
    $P3210 = $P3209."get_lexinfo"()
    $P3210."finish_static_lexpad"()
    .const 'Sub' $P3211 = "10_1304277392.509" 
    $P3212 = $P3211."get_lexinfo"()
    nqp_get_sc_object $P3213, "1304277388.915", 23
    $P3212."set_static_lexpad_value"("NQPParametricRoleHOW", $P3213)
    .const 'Sub' $P3214 = "10_1304277392.509" 
    $P3215 = $P3214."get_lexinfo"()
    $P3215."finish_static_lexpad"()
    nqp_get_sc_object $P3216, "1304277388.915", 24
    .const 'Sub' $P3217 = "56_1304277392.509" 
    copy $P3216, $P3217
    nqp_get_sc_object $P3218, "1304277388.915", 25
    .const 'Sub' $P3219 = "57_1304277392.509" 
    copy $P3218, $P3219
    nqp_get_sc_object $P3220, "1304277388.915", 26
    .const 'Sub' $P3221 = "58_1304277392.509" 
    copy $P3220, $P3221
    nqp_get_sc_object $P3222, "1304277388.915", 27
    .const 'Sub' $P3223 = "59_1304277392.509" 
    copy $P3222, $P3223
    nqp_get_sc_object $P3224, "1304277388.915", 28
    .const 'Sub' $P3225 = "60_1304277392.509" 
    copy $P3224, $P3225
    nqp_get_sc_object $P3226, "1304277388.915", 29
    .const 'Sub' $P3227 = "61_1304277392.509" 
    copy $P3226, $P3227
    nqp_get_sc_object $P3228, "1304277388.915", 30
    .const 'Sub' $P3229 = "62_1304277392.509" 
    copy $P3228, $P3229
    nqp_get_sc_object $P3230, "1304277388.915", 31
    .const 'Sub' $P3231 = "63_1304277392.509" 
    copy $P3230, $P3231
    nqp_get_sc_object $P3232, "1304277388.915", 32
    .const 'Sub' $P3233 = "64_1304277392.509" 
    copy $P3232, $P3233
    nqp_get_sc_object $P3234, "1304277388.915", 33
    .const 'Sub' $P3235 = "65_1304277392.509" 
    copy $P3234, $P3235
    nqp_get_sc_object $P3236, "1304277388.915", 34
    .const 'Sub' $P3237 = "66_1304277392.509" 
    copy $P3236, $P3237
    nqp_get_sc_object $P3238, "1304277388.915", 35
    .const 'Sub' $P3239 = "67_1304277392.509" 
    copy $P3238, $P3239
    nqp_get_sc_object $P3240, "1304277388.915", 36
    .const 'Sub' $P3241 = "72_1304277392.509" 
    copy $P3240, $P3241
    nqp_get_sc_object $P3242, "1304277388.915", 37
    .const 'Sub' $P3243 = "74_1304277392.509" 
    copy $P3242, $P3243
    nqp_get_sc_object $P3244, "1304277388.915", 38
    .const 'Sub' $P3245 = "75_1304277392.509" 
    copy $P3244, $P3245
    nqp_get_sc_object $P3246, "1304277388.915", 39
    .const 'Sub' $P3247 = "76_1304277392.509" 
    copy $P3246, $P3247
    nqp_get_sc_object $P3248, "1304277388.915", 40
    .const 'Sub' $P3249 = "78_1304277392.509" 
    copy $P3248, $P3249
    .const 'Sub' $P3250 = "55_1304277392.509" 
    $P3251 = $P3250."get_lexinfo"()
    nqp_get_sc_object $P3252, "1304277388.915", 23
    $P3251."set_static_lexpad_value"("$?PACKAGE", $P3252)
    .const 'Sub' $P3253 = "55_1304277392.509" 
    $P3254 = $P3253."get_lexinfo"()
    $P3254."finish_static_lexpad"()
    .const 'Sub' $P3255 = "55_1304277392.509" 
    $P3256 = $P3255."get_lexinfo"()
    nqp_get_sc_object $P3257, "1304277388.915", 23
    $P3256."set_static_lexpad_value"("$?CLASS", $P3257)
    .const 'Sub' $P3258 = "55_1304277392.509" 
    $P3259 = $P3258."get_lexinfo"()
    $P3259."finish_static_lexpad"()
    .const 'Sub' $P3260 = "10_1304277392.509" 
    $P3261 = $P3260."get_lexinfo"()
    nqp_get_sc_object $P3262, "1304277388.915", 41
    $P3261."set_static_lexpad_value"("NQPClassHOW", $P3262)
    .const 'Sub' $P3263 = "10_1304277392.509" 
    $P3264 = $P3263."get_lexinfo"()
    $P3264."finish_static_lexpad"()
    nqp_get_sc_object $P3265, "1304277388.915", 42
    .const 'Sub' $P3266 = "91_1304277392.509" 
    copy $P3265, $P3266
    nqp_get_sc_object $P3267, "1304277388.915", 43
    .const 'Sub' $P3268 = "92_1304277392.509" 
    copy $P3267, $P3268
    nqp_get_sc_object $P3269, "1304277388.915", 44
    .const 'Sub' $P3270 = "93_1304277392.509" 
    copy $P3269, $P3270
    nqp_get_sc_object $P3271, "1304277388.915", 45
    .const 'Sub' $P3272 = "94_1304277392.509" 
    copy $P3271, $P3272
    nqp_get_sc_object $P3273, "1304277388.915", 46
    .const 'Sub' $P3274 = "95_1304277392.509" 
    copy $P3273, $P3274
    nqp_get_sc_object $P3275, "1304277388.915", 47
    .const 'Sub' $P3276 = "96_1304277392.509" 
    copy $P3275, $P3276
    nqp_get_sc_object $P3277, "1304277388.915", 48
    .const 'Sub' $P3278 = "97_1304277392.509" 
    copy $P3277, $P3278
    nqp_get_sc_object $P3279, "1304277388.915", 49
    .const 'Sub' $P3280 = "99_1304277392.509" 
    copy $P3279, $P3280
    nqp_get_sc_object $P3281, "1304277388.915", 50
    .const 'Sub' $P3282 = "100_1304277392.509" 
    copy $P3281, $P3282
    nqp_get_sc_object $P3283, "1304277388.915", 51
    .const 'Sub' $P3284 = "102_1304277392.509" 
    copy $P3283, $P3284
    nqp_get_sc_object $P3285, "1304277388.915", 52
    .const 'Sub' $P3286 = "103_1304277392.509" 
    copy $P3285, $P3286
    nqp_get_sc_object $P3287, "1304277388.915", 53
    .const 'Sub' $P3288 = "107_1304277392.509" 
    copy $P3287, $P3288
    nqp_get_sc_object $P3289, "1304277388.915", 54
    .const 'Sub' $P3290 = "112_1304277392.509" 
    copy $P3289, $P3290
    nqp_get_sc_object $P3291, "1304277388.915", 55
    .const 'Sub' $P3292 = "115_1304277392.509" 
    copy $P3291, $P3292
    nqp_get_sc_object $P3293, "1304277388.915", 56
    .const 'Sub' $P3294 = "118_1304277392.509" 
    copy $P3293, $P3294
    nqp_get_sc_object $P3295, "1304277388.915", 57
    .const 'Sub' $P3296 = "121_1304277392.509" 
    copy $P3295, $P3296
    nqp_get_sc_object $P3297, "1304277388.915", 58
    .const 'Sub' $P3298 = "122_1304277392.509" 
    copy $P3297, $P3298
    nqp_get_sc_object $P3299, "1304277388.915", 59
    .const 'Sub' $P3300 = "123_1304277392.509" 
    copy $P3299, $P3300
    nqp_get_sc_object $P3301, "1304277388.915", 60
    .const 'Sub' $P3302 = "125_1304277392.509" 
    copy $P3301, $P3302
    nqp_get_sc_object $P3303, "1304277388.915", 61
    .const 'Sub' $P3304 = "126_1304277392.509" 
    copy $P3303, $P3304
    nqp_get_sc_object $P3305, "1304277388.915", 62
    .const 'Sub' $P3306 = "127_1304277392.509" 
    copy $P3305, $P3306
    nqp_get_sc_object $P3307, "1304277388.915", 63
    .const 'Sub' $P3308 = "129_1304277392.509" 
    copy $P3307, $P3308
    nqp_get_sc_object $P3309, "1304277388.915", 64
    .const 'Sub' $P3310 = "130_1304277392.509" 
    copy $P3309, $P3310
    nqp_get_sc_object $P3311, "1304277388.915", 65
    .const 'Sub' $P3312 = "131_1304277392.509" 
    copy $P3311, $P3312
    nqp_get_sc_object $P3313, "1304277388.915", 66
    .const 'Sub' $P3314 = "132_1304277392.509" 
    copy $P3313, $P3314
    nqp_get_sc_object $P3315, "1304277388.915", 67
    .const 'Sub' $P3316 = "134_1304277392.509" 
    copy $P3315, $P3316
    .const 'Sub' $P3317 = "80_1304277392.509" 
    $P3318 = $P3317."get_lexinfo"()
    nqp_get_sc_object $P3319, "1304277388.915", 41
    $P3318."set_static_lexpad_value"("$?PACKAGE", $P3319)
    .const 'Sub' $P3320 = "80_1304277392.509" 
    $P3321 = $P3320."get_lexinfo"()
    $P3321."finish_static_lexpad"()
    .const 'Sub' $P3322 = "80_1304277392.509" 
    $P3323 = $P3322."get_lexinfo"()
    nqp_get_sc_object $P3324, "1304277388.915", 41
    $P3323."set_static_lexpad_value"("$?CLASS", $P3324)
    .const 'Sub' $P3325 = "80_1304277392.509" 
    $P3326 = $P3325."get_lexinfo"()
    $P3326."finish_static_lexpad"()
    .const 'Sub' $P3327 = "10_1304277392.509" 
    $P3328 = $P3327."get_lexinfo"()
    nqp_get_sc_object $P3329, "1304277388.915", 68
    $P3328."set_static_lexpad_value"("NQPNativeHOW", $P3329)
    .const 'Sub' $P3330 = "10_1304277392.509" 
    $P3331 = $P3330."get_lexinfo"()
    $P3331."finish_static_lexpad"()
    nqp_get_sc_object $P3332, "1304277388.915", 69
    .const 'Sub' $P3333 = "138_1304277392.509" 
    copy $P3332, $P3333
    nqp_get_sc_object $P3334, "1304277388.915", 70
    .const 'Sub' $P3335 = "139_1304277392.509" 
    copy $P3334, $P3335
    nqp_get_sc_object $P3336, "1304277388.915", 71
    .const 'Sub' $P3337 = "140_1304277392.509" 
    copy $P3336, $P3337
    nqp_get_sc_object $P3338, "1304277388.915", 72
    .const 'Sub' $P3339 = "141_1304277392.509" 
    copy $P3338, $P3339
    nqp_get_sc_object $P3340, "1304277388.915", 73
    .const 'Sub' $P3341 = "142_1304277392.509" 
    copy $P3340, $P3341
    nqp_get_sc_object $P3342, "1304277388.915", 74
    .const 'Sub' $P3343 = "143_1304277392.509" 
    copy $P3342, $P3343
    nqp_get_sc_object $P3344, "1304277388.915", 75
    .const 'Sub' $P3345 = "144_1304277392.509" 
    copy $P3344, $P3345
    nqp_get_sc_object $P3346, "1304277388.915", 76
    .const 'Sub' $P3347 = "145_1304277392.509" 
    copy $P3346, $P3347
    .const 'Sub' $P3348 = "137_1304277392.509" 
    $P3349 = $P3348."get_lexinfo"()
    nqp_get_sc_object $P3350, "1304277388.915", 68
    $P3349."set_static_lexpad_value"("$?PACKAGE", $P3350)
    .const 'Sub' $P3351 = "137_1304277392.509" 
    $P3352 = $P3351."get_lexinfo"()
    $P3352."finish_static_lexpad"()
    .const 'Sub' $P3353 = "137_1304277392.509" 
    $P3354 = $P3353."get_lexinfo"()
    nqp_get_sc_object $P3355, "1304277388.915", 68
    $P3354."set_static_lexpad_value"("$?CLASS", $P3355)
    .const 'Sub' $P3356 = "137_1304277392.509" 
    $P3357 = $P3356."get_lexinfo"()
    $P3357."finish_static_lexpad"()
    .const 'Sub' $P3358 = "10_1304277392.509" 
    $P3359 = $P3358."get_lexinfo"()
    nqp_get_sc_object $P3360, "1304277388.915", 77
    $P3359."set_static_lexpad_value"("NQPAttribute", $P3360)
    .const 'Sub' $P3361 = "10_1304277392.509" 
    $P3362 = $P3361."get_lexinfo"()
    $P3362."finish_static_lexpad"()
    nqp_get_sc_object $P3363, "1304277388.915", 78
    .const 'Sub' $P3364 = "150_1304277392.509" 
    copy $P3363, $P3364
    nqp_get_sc_object $P3365, "1304277388.915", 79
    .const 'Sub' $P3366 = "151_1304277392.509" 
    copy $P3365, $P3366
    nqp_get_sc_object $P3367, "1304277388.915", 80
    .const 'Sub' $P3368 = "152_1304277392.509" 
    copy $P3367, $P3368
    nqp_get_sc_object $P3369, "1304277388.915", 81
    .const 'Sub' $P3370 = "153_1304277392.509" 
    copy $P3369, $P3370
    nqp_get_sc_object $P3371, "1304277388.915", 82
    .const 'Sub' $P3372 = "154_1304277392.509" 
    copy $P3371, $P3372
    nqp_get_sc_object $P3373, "1304277388.915", 83
    .const 'Sub' $P3374 = "155_1304277392.509" 
    copy $P3373, $P3374
    nqp_get_sc_object $P3375, "1304277388.915", 84
    .const 'Sub' $P3376 = "160_1304277392.509" 
    copy $P3375, $P3376
    .const 'Sub' $P3377 = "147_1304277392.509" 
    $P3378 = $P3377."get_lexinfo"()
    nqp_get_sc_object $P3379, "1304277388.915", 77
    $P3378."set_static_lexpad_value"("$?PACKAGE", $P3379)
    .const 'Sub' $P3380 = "147_1304277392.509" 
    $P3381 = $P3380."get_lexinfo"()
    $P3381."finish_static_lexpad"()
    .const 'Sub' $P3382 = "147_1304277392.509" 
    $P3383 = $P3382."get_lexinfo"()
    nqp_get_sc_object $P3384, "1304277388.915", 77
    $P3383."set_static_lexpad_value"("$?CLASS", $P3384)
    .const 'Sub' $P3385 = "147_1304277392.509" 
    $P3386 = $P3385."get_lexinfo"()
    $P3386."finish_static_lexpad"()
    .const 'Sub' $P3387 = "10_1304277392.509" 
    $P3388 = $P3387."get_lexinfo"()
    nqp_get_sc_object $P3389, "1304277388.915", 85
    $P3388."set_static_lexpad_value"("NQPModuleHOW", $P3389)
    .const 'Sub' $P3390 = "10_1304277392.509" 
    $P3391 = $P3390."get_lexinfo"()
    $P3391."finish_static_lexpad"()
    nqp_get_sc_object $P3392, "1304277388.915", 86
    .const 'Sub' $P3393 = "163_1304277392.509" 
    copy $P3392, $P3393
    nqp_get_sc_object $P3394, "1304277388.915", 87
    .const 'Sub' $P3395 = "164_1304277392.509" 
    copy $P3394, $P3395
    nqp_get_sc_object $P3396, "1304277388.915", 88
    .const 'Sub' $P3397 = "165_1304277392.509" 
    copy $P3396, $P3397
    nqp_get_sc_object $P3398, "1304277388.915", 89
    .const 'Sub' $P3399 = "166_1304277392.509" 
    copy $P3398, $P3399
    nqp_get_sc_object $P3400, "1304277388.915", 90
    .const 'Sub' $P3401 = "167_1304277392.509" 
    copy $P3400, $P3401
    nqp_get_sc_object $P3402, "1304277388.915", 91
    .const 'Sub' $P3403 = "168_1304277392.509" 
    copy $P3402, $P3403
    nqp_get_sc_object $P3404, "1304277388.915", 92
    .const 'Sub' $P3405 = "169_1304277392.509" 
    copy $P3404, $P3405
    nqp_get_sc_object $P3406, "1304277388.915", 93
    .const 'Sub' $P3407 = "170_1304277392.509" 
    copy $P3406, $P3407
    .const 'Sub' $P3408 = "162_1304277392.509" 
    $P3409 = $P3408."get_lexinfo"()
    nqp_get_sc_object $P3410, "1304277388.915", 85
    $P3409."set_static_lexpad_value"("$?PACKAGE", $P3410)
    .const 'Sub' $P3411 = "162_1304277392.509" 
    $P3412 = $P3411."get_lexinfo"()
    $P3412."finish_static_lexpad"()
    .const 'Sub' $P3413 = "162_1304277392.509" 
    $P3414 = $P3413."get_lexinfo"()
    nqp_get_sc_object $P3415, "1304277388.915", 85
    $P3414."set_static_lexpad_value"("$?CLASS", $P3415)
    .const 'Sub' $P3416 = "162_1304277392.509" 
    $P3417 = $P3416."get_lexinfo"()
    $P3417."finish_static_lexpad"()
    .const 'Sub' $P3418 = "10_1304277392.509" 
    $P3419 = $P3418."get_lexinfo"()
    nqp_get_sc_object $P3420, "1304277388.915", 94
    $P3419."set_static_lexpad_value"("EXPORTHOW", $P3420)
    .const 'Sub' $P3421 = "10_1304277392.509" 
    $P3422 = $P3421."get_lexinfo"()
    $P3422."finish_static_lexpad"()
    .const 'Sub' $P3423 = "172_1304277392.509" 
    $P3424 = $P3423."get_lexinfo"()
    nqp_get_sc_object $P3425, "1304277388.915", 94
    $P3424."set_static_lexpad_value"("$?PACKAGE", $P3425)
    .const 'Sub' $P3426 = "172_1304277392.509" 
    $P3427 = $P3426."get_lexinfo"()
    $P3427."finish_static_lexpad"()
    .const 'Sub' $P3428 = "172_1304277392.509" 
    $P3429 = $P3428."get_lexinfo"()
    nqp_get_sc_object $P3430, "1304277388.915", 94
    $P3429."set_static_lexpad_value"("$?CLASS", $P3430)
    .const 'Sub' $P3431 = "172_1304277392.509" 
    $P3432 = $P3431."get_lexinfo"()
    $P3432."finish_static_lexpad"()
    goto if_2402_end
  if_2402:
    nqp_dynop_setup 
    getinterp $P2405
    get_class $P2406, "LexPad"
    get_class $P2407, "NQPLexPad"
    $P2405."hll_map"($P2406, $P2407)
    nqp_create_sc $P2408, "1304277388.915"
    .local pmc cur_sc
    set cur_sc, $P2408
    nqp_get_sc_object $P2409, "__6MODEL_CORE__", 0
    $P2410 = $P2409."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2410, cur_sc
    nqp_set_sc_object "1304277388.915", 0, $P2410
    .const 'Sub' $P2411 = "10_1304277392.509" 
    $P2412 = $P2411."get_lexinfo"()
    nqp_get_sc_object $P2413, "1304277388.915", 0
    $P2412."set_static_lexpad_value"("GLOBALish", $P2413)
    .const 'Sub' $P2414 = "10_1304277392.509" 
    $P2415 = $P2414."get_lexinfo"()
    $P2415."finish_static_lexpad"()
    .const 'Sub' $P2416 = "10_1304277392.509" 
    $P2417 = $P2416."get_lexinfo"()
    nqp_get_sc_object $P2418, "1304277388.915", 0
    $P2417."set_static_lexpad_value"("$?PACKAGE", $P2418)
    .const 'Sub' $P2419 = "10_1304277392.509" 
    $P2420 = $P2419."get_lexinfo"()
    $P2420."finish_static_lexpad"()
    nqp_get_sc_object $P2421, "__6MODEL_CORE__", 0
    $P2422 = $P2421."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2422, cur_sc
    nqp_set_sc_object "1304277388.915", 1, $P2422
    nqp_get_sc_object $P2423, "1304277388.915", 1
    nqp_get_sc_object $P2424, "1304277388.915", 0
    get_who $P2425, $P2424
    set $P2425["RoleToRoleApplier"], $P2423
    .const 'Sub' $P2426 = "10_1304277392.509" 
    $P2427 = $P2426."get_lexinfo"()
    nqp_get_sc_object $P2428, "1304277388.915", 1
    $P2427."set_static_lexpad_value"("RoleToRoleApplier", $P2428)
    .const 'Sub' $P2429 = "10_1304277392.509" 
    $P2430 = $P2429."get_lexinfo"()
    $P2430."finish_static_lexpad"()
    nqp_get_sc_object $P2431, "1304277388.915", 1
    get_how $P2432, $P2431
    nqp_get_sc_object $P2433, "1304277388.915", 1
    .const 'Sub' $P2434 = "12_1304277392.509" 
    $P2432."add_method"($P2433, "apply", $P2434)
    .const 'Sub' $P2435 = "11_1304277392.509" 
    $P2436 = $P2435."get_lexinfo"()
    nqp_get_sc_object $P2437, "1304277388.915", 1
    $P2436."set_static_lexpad_value"("$?PACKAGE", $P2437)
    .const 'Sub' $P2438 = "11_1304277392.509" 
    $P2439 = $P2438."get_lexinfo"()
    $P2439."finish_static_lexpad"()
    .const 'Sub' $P2440 = "11_1304277392.509" 
    $P2441 = $P2440."get_lexinfo"()
    nqp_get_sc_object $P2442, "1304277388.915", 1
    $P2441."set_static_lexpad_value"("$?CLASS", $P2442)
    .const 'Sub' $P2443 = "11_1304277392.509" 
    $P2444 = $P2443."get_lexinfo"()
    $P2444."finish_static_lexpad"()
    nqp_get_sc_object $P2445, "__6MODEL_CORE__", 0
    $P2446 = $P2445."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2446, cur_sc
    nqp_set_sc_object "1304277388.915", 3, $P2446
    nqp_get_sc_object $P2447, "1304277388.915", 3
    nqp_get_sc_object $P2448, "1304277388.915", 0
    get_who $P2449, $P2448
    set $P2449["NQPConcreteRoleHOW"], $P2447
    .const 'Sub' $P2450 = "10_1304277392.509" 
    $P2451 = $P2450."get_lexinfo"()
    nqp_get_sc_object $P2452, "1304277388.915", 3
    $P2451."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2452)
    .const 'Sub' $P2453 = "10_1304277392.509" 
    $P2454 = $P2453."get_lexinfo"()
    $P2454."finish_static_lexpad"()
    nqp_get_sc_object $P2455, "1304277388.915", 3
    get_how $P2456, $P2455
    nqp_get_sc_object $P2457, "1304277388.915", 3
    nqp_get_sc_object $P2458, "__6MODEL_CORE__", 2
    $P2459 = $P2458."new"("$!name" :named("name"))
    $P2456."add_attribute"($P2457, $P2459)
    nqp_get_sc_object $P2460, "1304277388.915", 3
    get_how $P2461, $P2460
    nqp_get_sc_object $P2462, "1304277388.915", 3
    nqp_get_sc_object $P2463, "__6MODEL_CORE__", 2
    $P2464 = $P2463."new"("$!instance_of" :named("name"))
    $P2461."add_attribute"($P2462, $P2464)
    nqp_get_sc_object $P2465, "1304277388.915", 3
    get_how $P2466, $P2465
    nqp_get_sc_object $P2467, "1304277388.915", 3
    nqp_get_sc_object $P2468, "__6MODEL_CORE__", 2
    $P2469 = $P2468."new"("%!attributes" :named("name"))
    $P2466."add_attribute"($P2467, $P2469)
    nqp_get_sc_object $P2470, "1304277388.915", 3
    get_how $P2471, $P2470
    nqp_get_sc_object $P2472, "1304277388.915", 3
    nqp_get_sc_object $P2473, "__6MODEL_CORE__", 2
    $P2474 = $P2473."new"("%!methods" :named("name"))
    $P2471."add_attribute"($P2472, $P2474)
    nqp_get_sc_object $P2475, "1304277388.915", 3
    get_how $P2476, $P2475
    nqp_get_sc_object $P2477, "1304277388.915", 3
    nqp_get_sc_object $P2478, "__6MODEL_CORE__", 2
    $P2479 = $P2478."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2476."add_attribute"($P2477, $P2479)
    nqp_get_sc_object $P2480, "1304277388.915", 3
    get_how $P2481, $P2480
    nqp_get_sc_object $P2482, "1304277388.915", 3
    nqp_get_sc_object $P2483, "__6MODEL_CORE__", 2
    $P2484 = $P2483."new"("@!collisions" :named("name"))
    $P2481."add_attribute"($P2482, $P2484)
    nqp_get_sc_object $P2485, "1304277388.915", 3
    get_how $P2486, $P2485
    nqp_get_sc_object $P2487, "1304277388.915", 3
    nqp_get_sc_object $P2488, "__6MODEL_CORE__", 2
    $P2489 = $P2488."new"("@!roles" :named("name"))
    $P2486."add_attribute"($P2487, $P2489)
    nqp_get_sc_object $P2490, "1304277388.915", 3
    get_how $P2491, $P2490
    nqp_get_sc_object $P2492, "1304277388.915", 3
    nqp_get_sc_object $P2493, "__6MODEL_CORE__", 2
    $P2494 = $P2493."new"("@!done" :named("name"))
    $P2491."add_attribute"($P2492, $P2494)
    nqp_get_sc_object $P2495, "1304277388.915", 3
    get_how $P2496, $P2495
    nqp_get_sc_object $P2497, "1304277388.915", 3
    nqp_get_sc_object $P2498, "__6MODEL_CORE__", 2
    $P2499 = $P2498."new"("$!composed" :named("name"))
    $P2496."add_attribute"($P2497, $P2499)
    nqp_get_sc_object $P2500, "1304277388.915", 3
    get_how $P2501, $P2500
    nqp_get_sc_object $P2502, "1304277388.915", 3
    .const 'Sub' $P2503 = "23_1304277392.509" 
    $P2501."add_method"($P2502, "new", $P2503)
    nqp_get_sc_object $P2504, "1304277388.915", 3
    get_how $P2505, $P2504
    nqp_get_sc_object $P2506, "1304277388.915", 3
    .const 'Sub' $P2507 = "24_1304277392.509" 
    $P2505."add_method"($P2506, "BUILD", $P2507)
    nqp_get_sc_object $P2508, "1304277388.915", 3
    get_how $P2509, $P2508
    nqp_get_sc_object $P2510, "1304277388.915", 3
    .const 'Sub' $P2511 = "25_1304277392.509" 
    $P2509."add_method"($P2510, "new_type", $P2511)
    nqp_get_sc_object $P2512, "1304277388.915", 3
    get_how $P2513, $P2512
    nqp_get_sc_object $P2514, "1304277388.915", 3
    .const 'Sub' $P2515 = "26_1304277392.509" 
    $P2513."add_method"($P2514, "add_method", $P2515)
    nqp_get_sc_object $P2516, "1304277388.915", 3
    get_how $P2517, $P2516
    nqp_get_sc_object $P2518, "1304277388.915", 3
    .const 'Sub' $P2519 = "27_1304277392.509" 
    $P2517."add_method"($P2518, "add_multi_method", $P2519)
    nqp_get_sc_object $P2520, "1304277388.915", 3
    get_how $P2521, $P2520
    nqp_get_sc_object $P2522, "1304277388.915", 3
    .const 'Sub' $P2523 = "28_1304277392.509" 
    $P2521."add_method"($P2522, "add_attribute", $P2523)
    nqp_get_sc_object $P2524, "1304277388.915", 3
    get_how $P2525, $P2524
    nqp_get_sc_object $P2526, "1304277388.915", 3
    .const 'Sub' $P2527 = "29_1304277392.509" 
    $P2525."add_method"($P2526, "add_parent", $P2527)
    nqp_get_sc_object $P2528, "1304277388.915", 3
    get_how $P2529, $P2528
    nqp_get_sc_object $P2530, "1304277388.915", 3
    .const 'Sub' $P2531 = "30_1304277392.509" 
    $P2529."add_method"($P2530, "add_role", $P2531)
    nqp_get_sc_object $P2532, "1304277388.915", 3
    get_how $P2533, $P2532
    nqp_get_sc_object $P2534, "1304277388.915", 3
    .const 'Sub' $P2535 = "31_1304277392.509" 
    $P2533."add_method"($P2534, "add_collision", $P2535)
    nqp_get_sc_object $P2536, "1304277388.915", 3
    get_how $P2537, $P2536
    nqp_get_sc_object $P2538, "1304277388.915", 3
    .const 'Sub' $P2539 = "32_1304277392.509" 
    $P2537."add_method"($P2538, "compose", $P2539)
    nqp_get_sc_object $P2540, "1304277388.915", 3
    get_how $P2541, $P2540
    nqp_get_sc_object $P2542, "1304277388.915", 3
    .const 'Sub' $P2543 = "34_1304277392.509" 
    $P2541."add_method"($P2542, "methods", $P2543)
    nqp_get_sc_object $P2544, "1304277388.915", 3
    get_how $P2545, $P2544
    nqp_get_sc_object $P2546, "1304277388.915", 3
    .const 'Sub' $P2547 = "36_1304277392.509" 
    $P2545."add_method"($P2546, "method_table", $P2547)
    nqp_get_sc_object $P2548, "1304277388.915", 3
    get_how $P2549, $P2548
    nqp_get_sc_object $P2550, "1304277388.915", 3
    .const 'Sub' $P2551 = "37_1304277392.509" 
    $P2549."add_method"($P2550, "collisions", $P2551)
    nqp_get_sc_object $P2552, "1304277388.915", 3
    get_how $P2553, $P2552
    nqp_get_sc_object $P2554, "1304277388.915", 3
    .const 'Sub' $P2555 = "38_1304277392.509" 
    $P2553."add_method"($P2554, "name", $P2555)
    nqp_get_sc_object $P2556, "1304277388.915", 3
    get_how $P2557, $P2556
    nqp_get_sc_object $P2558, "1304277388.915", 3
    .const 'Sub' $P2559 = "39_1304277392.509" 
    $P2557."add_method"($P2558, "attributes", $P2559)
    nqp_get_sc_object $P2560, "1304277388.915", 3
    get_how $P2561, $P2560
    nqp_get_sc_object $P2562, "1304277388.915", 3
    .const 'Sub' $P2563 = "41_1304277392.509" 
    $P2561."add_method"($P2562, "roles", $P2563)
    nqp_get_sc_object $P2564, "1304277388.915", 3
    get_how $P2565, $P2564
    nqp_get_sc_object $P2566, "1304277388.915", 3
    .const 'Sub' $P2567 = "42_1304277392.509" 
    $P2565."add_method"($P2566, "instance_of", $P2567)
    .const 'Sub' $P2568 = "22_1304277392.509" 
    $P2569 = $P2568."get_lexinfo"()
    nqp_get_sc_object $P2570, "1304277388.915", 3
    $P2569."set_static_lexpad_value"("$?PACKAGE", $P2570)
    .const 'Sub' $P2571 = "22_1304277392.509" 
    $P2572 = $P2571."get_lexinfo"()
    $P2572."finish_static_lexpad"()
    .const 'Sub' $P2573 = "22_1304277392.509" 
    $P2574 = $P2573."get_lexinfo"()
    nqp_get_sc_object $P2575, "1304277388.915", 3
    $P2574."set_static_lexpad_value"("$?CLASS", $P2575)
    .const 'Sub' $P2576 = "22_1304277392.509" 
    $P2577 = $P2576."get_lexinfo"()
    $P2577."finish_static_lexpad"()
    nqp_get_sc_object $P2578, "__6MODEL_CORE__", 0
    $P2579 = $P2578."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2579, cur_sc
    nqp_set_sc_object "1304277388.915", 21, $P2579
    nqp_get_sc_object $P2580, "1304277388.915", 21
    nqp_get_sc_object $P2581, "1304277388.915", 0
    get_who $P2582, $P2581
    set $P2582["RoleToClassApplier"], $P2580
    .const 'Sub' $P2583 = "10_1304277392.509" 
    $P2584 = $P2583."get_lexinfo"()
    nqp_get_sc_object $P2585, "1304277388.915", 21
    $P2584."set_static_lexpad_value"("RoleToClassApplier", $P2585)
    .const 'Sub' $P2586 = "10_1304277392.509" 
    $P2587 = $P2586."get_lexinfo"()
    $P2587."finish_static_lexpad"()
    nqp_get_sc_object $P2588, "1304277388.915", 21
    get_how $P2589, $P2588
    nqp_get_sc_object $P2590, "1304277388.915", 21
    .const 'Sub' $P2591 = "49_1304277392.509" 
    $P2589."add_method"($P2590, "apply", $P2591)
    .const 'Sub' $P2592 = "44_1304277392.509" 
    $P2593 = $P2592."get_lexinfo"()
    nqp_get_sc_object $P2594, "1304277388.915", 21
    $P2593."set_static_lexpad_value"("$?PACKAGE", $P2594)
    .const 'Sub' $P2595 = "44_1304277392.509" 
    $P2596 = $P2595."get_lexinfo"()
    $P2596."finish_static_lexpad"()
    .const 'Sub' $P2597 = "44_1304277392.509" 
    $P2598 = $P2597."get_lexinfo"()
    nqp_get_sc_object $P2599, "1304277388.915", 21
    $P2598."set_static_lexpad_value"("$?CLASS", $P2599)
    .const 'Sub' $P2600 = "44_1304277392.509" 
    $P2601 = $P2600."get_lexinfo"()
    $P2601."finish_static_lexpad"()
    nqp_get_sc_object $P2602, "__6MODEL_CORE__", 0
    $P2603 = $P2602."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2603, cur_sc
    nqp_set_sc_object "1304277388.915", 23, $P2603
    nqp_get_sc_object $P2604, "1304277388.915", 23
    nqp_get_sc_object $P2605, "1304277388.915", 0
    get_who $P2606, $P2605
    set $P2606["NQPParametricRoleHOW"], $P2604
    .const 'Sub' $P2607 = "10_1304277392.509" 
    $P2608 = $P2607."get_lexinfo"()
    nqp_get_sc_object $P2609, "1304277388.915", 23
    $P2608."set_static_lexpad_value"("NQPParametricRoleHOW", $P2609)
    .const 'Sub' $P2610 = "10_1304277392.509" 
    $P2611 = $P2610."get_lexinfo"()
    $P2611."finish_static_lexpad"()
    nqp_get_sc_object $P2612, "1304277388.915", 23
    get_how $P2613, $P2612
    nqp_get_sc_object $P2614, "1304277388.915", 23
    nqp_get_sc_object $P2615, "__6MODEL_CORE__", 2
    $P2616 = $P2615."new"("$!name" :named("name"))
    $P2613."add_attribute"($P2614, $P2616)
    nqp_get_sc_object $P2617, "1304277388.915", 23
    get_how $P2618, $P2617
    nqp_get_sc_object $P2619, "1304277388.915", 23
    nqp_get_sc_object $P2620, "__6MODEL_CORE__", 2
    $P2621 = $P2620."new"("%!attributes" :named("name"))
    $P2618."add_attribute"($P2619, $P2621)
    nqp_get_sc_object $P2622, "1304277388.915", 23
    get_how $P2623, $P2622
    nqp_get_sc_object $P2624, "1304277388.915", 23
    nqp_get_sc_object $P2625, "__6MODEL_CORE__", 2
    $P2626 = $P2625."new"("%!methods" :named("name"))
    $P2623."add_attribute"($P2624, $P2626)
    nqp_get_sc_object $P2627, "1304277388.915", 23
    get_how $P2628, $P2627
    nqp_get_sc_object $P2629, "1304277388.915", 23
    nqp_get_sc_object $P2630, "__6MODEL_CORE__", 2
    $P2631 = $P2630."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2628."add_attribute"($P2629, $P2631)
    nqp_get_sc_object $P2632, "1304277388.915", 23
    get_how $P2633, $P2632
    nqp_get_sc_object $P2634, "1304277388.915", 23
    nqp_get_sc_object $P2635, "__6MODEL_CORE__", 2
    $P2636 = $P2635."new"("@!roles" :named("name"))
    $P2633."add_attribute"($P2634, $P2636)
    nqp_get_sc_object $P2637, "1304277388.915", 23
    get_how $P2638, $P2637
    nqp_get_sc_object $P2639, "1304277388.915", 23
    nqp_get_sc_object $P2640, "__6MODEL_CORE__", 2
    $P2641 = $P2640."new"("$!composed" :named("name"))
    $P2638."add_attribute"($P2639, $P2641)
    nqp_get_sc_object $P2642, "1304277388.915", 23
    get_how $P2643, $P2642
    nqp_get_sc_object $P2644, "1304277388.915", 23
    nqp_get_sc_object $P2645, "__6MODEL_CORE__", 2
    $P2646 = $P2645."new"("$!body_block" :named("name"))
    $P2643."add_attribute"($P2644, $P2646)
    nqp_get_sc_object $P2647, "1304277388.915", 23
    get_how $P2648, $P2647
    nqp_get_sc_object $P2649, "1304277388.915", 23
    .const 'Sub' $P2650 = "56_1304277392.509" 
    $P2648."add_method"($P2649, "new", $P2650)
    nqp_get_sc_object $P2651, "1304277388.915", 23
    get_how $P2652, $P2651
    nqp_get_sc_object $P2653, "1304277388.915", 23
    .const 'Sub' $P2654 = "57_1304277392.509" 
    $P2652."add_method"($P2653, "BUILD", $P2654)
    nqp_get_sc_object $P2655, "1304277388.915", 23
    get_how $P2656, $P2655
    nqp_get_sc_object $P2657, "1304277388.915", 23
    .const 'Sub' $P2658 = "58_1304277392.509" 
    $P2656."add_method"($P2657, "new_type", $P2658)
    nqp_get_sc_object $P2659, "1304277388.915", 23
    get_how $P2660, $P2659
    nqp_get_sc_object $P2661, "1304277388.915", 23
    .const 'Sub' $P2662 = "59_1304277392.509" 
    $P2660."add_method"($P2661, "set_body_block", $P2662)
    nqp_get_sc_object $P2663, "1304277388.915", 23
    get_how $P2664, $P2663
    nqp_get_sc_object $P2665, "1304277388.915", 23
    .const 'Sub' $P2666 = "60_1304277392.509" 
    $P2664."add_method"($P2665, "add_method", $P2666)
    nqp_get_sc_object $P2667, "1304277388.915", 23
    get_how $P2668, $P2667
    nqp_get_sc_object $P2669, "1304277388.915", 23
    .const 'Sub' $P2670 = "61_1304277392.509" 
    $P2668."add_method"($P2669, "add_multi_method", $P2670)
    nqp_get_sc_object $P2671, "1304277388.915", 23
    get_how $P2672, $P2671
    nqp_get_sc_object $P2673, "1304277388.915", 23
    .const 'Sub' $P2674 = "62_1304277392.509" 
    $P2672."add_method"($P2673, "add_attribute", $P2674)
    nqp_get_sc_object $P2675, "1304277388.915", 23
    get_how $P2676, $P2675
    nqp_get_sc_object $P2677, "1304277388.915", 23
    .const 'Sub' $P2678 = "63_1304277392.509" 
    $P2676."add_method"($P2677, "add_parent", $P2678)
    nqp_get_sc_object $P2679, "1304277388.915", 23
    get_how $P2680, $P2679
    nqp_get_sc_object $P2681, "1304277388.915", 23
    .const 'Sub' $P2682 = "64_1304277392.509" 
    $P2680."add_method"($P2681, "add_role", $P2682)
    nqp_get_sc_object $P2683, "1304277388.915", 23
    get_how $P2684, $P2683
    nqp_get_sc_object $P2685, "1304277388.915", 23
    .const 'Sub' $P2686 = "65_1304277392.509" 
    $P2684."add_method"($P2685, "compose", $P2686)
    nqp_get_sc_object $P2687, "1304277388.915", 23
    get_how $P2688, $P2687
    nqp_get_sc_object $P2689, "1304277388.915", 23
    .const 'Sub' $P2690 = "66_1304277392.509" 
    $P2688."add_method"($P2689, "parametric", $P2690)
    nqp_get_sc_object $P2691, "1304277388.915", 23
    get_how $P2692, $P2691
    nqp_get_sc_object $P2693, "1304277388.915", 23
    .const 'Sub' $P2694 = "67_1304277392.509" 
    $P2692."add_method"($P2693, "instantiate", $P2694)
    nqp_get_sc_object $P2695, "1304277388.915", 23
    get_how $P2696, $P2695
    nqp_get_sc_object $P2697, "1304277388.915", 23
    .const 'Sub' $P2698 = "72_1304277392.509" 
    $P2696."add_method"($P2697, "methods", $P2698)
    nqp_get_sc_object $P2699, "1304277388.915", 23
    get_how $P2700, $P2699
    nqp_get_sc_object $P2701, "1304277388.915", 23
    .const 'Sub' $P2702 = "74_1304277392.509" 
    $P2700."add_method"($P2701, "method_table", $P2702)
    nqp_get_sc_object $P2703, "1304277388.915", 23
    get_how $P2704, $P2703
    nqp_get_sc_object $P2705, "1304277388.915", 23
    .const 'Sub' $P2706 = "75_1304277392.509" 
    $P2704."add_method"($P2705, "name", $P2706)
    nqp_get_sc_object $P2707, "1304277388.915", 23
    get_how $P2708, $P2707
    nqp_get_sc_object $P2709, "1304277388.915", 23
    .const 'Sub' $P2710 = "76_1304277392.509" 
    $P2708."add_method"($P2709, "attributes", $P2710)
    nqp_get_sc_object $P2711, "1304277388.915", 23
    get_how $P2712, $P2711
    nqp_get_sc_object $P2713, "1304277388.915", 23
    .const 'Sub' $P2714 = "78_1304277392.509" 
    $P2712."add_method"($P2713, "roles", $P2714)
    .const 'Sub' $P2715 = "55_1304277392.509" 
    $P2716 = $P2715."get_lexinfo"()
    nqp_get_sc_object $P2717, "1304277388.915", 23
    $P2716."set_static_lexpad_value"("$?PACKAGE", $P2717)
    .const 'Sub' $P2718 = "55_1304277392.509" 
    $P2719 = $P2718."get_lexinfo"()
    $P2719."finish_static_lexpad"()
    .const 'Sub' $P2720 = "55_1304277392.509" 
    $P2721 = $P2720."get_lexinfo"()
    nqp_get_sc_object $P2722, "1304277388.915", 23
    $P2721."set_static_lexpad_value"("$?CLASS", $P2722)
    .const 'Sub' $P2723 = "55_1304277392.509" 
    $P2724 = $P2723."get_lexinfo"()
    $P2724."finish_static_lexpad"()
    nqp_get_sc_object $P2725, "__6MODEL_CORE__", 0
    $P2726 = $P2725."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2726, cur_sc
    nqp_set_sc_object "1304277388.915", 41, $P2726
    nqp_get_sc_object $P2727, "1304277388.915", 41
    nqp_get_sc_object $P2728, "1304277388.915", 0
    get_who $P2729, $P2728
    set $P2729["NQPClassHOW"], $P2727
    .const 'Sub' $P2730 = "10_1304277392.509" 
    $P2731 = $P2730."get_lexinfo"()
    nqp_get_sc_object $P2732, "1304277388.915", 41
    $P2731."set_static_lexpad_value"("NQPClassHOW", $P2732)
    .const 'Sub' $P2733 = "10_1304277392.509" 
    $P2734 = $P2733."get_lexinfo"()
    $P2734."finish_static_lexpad"()
    nqp_get_sc_object $P2735, "1304277388.915", 41
    get_how $P2736, $P2735
    nqp_get_sc_object $P2737, "1304277388.915", 41
    nqp_get_sc_object $P2738, "__6MODEL_CORE__", 2
    $P2739 = $P2738."new"("$!name" :named("name"))
    $P2736."add_attribute"($P2737, $P2739)
    nqp_get_sc_object $P2740, "1304277388.915", 41
    get_how $P2741, $P2740
    nqp_get_sc_object $P2742, "1304277388.915", 41
    nqp_get_sc_object $P2743, "__6MODEL_CORE__", 2
    $P2744 = $P2743."new"("%!attributes" :named("name"))
    $P2741."add_attribute"($P2742, $P2744)
    nqp_get_sc_object $P2745, "1304277388.915", 41
    get_how $P2746, $P2745
    nqp_get_sc_object $P2747, "1304277388.915", 41
    nqp_get_sc_object $P2748, "__6MODEL_CORE__", 2
    $P2749 = $P2748."new"("%!methods" :named("name"))
    $P2746."add_attribute"($P2747, $P2749)
    nqp_get_sc_object $P2750, "1304277388.915", 41
    get_how $P2751, $P2750
    nqp_get_sc_object $P2752, "1304277388.915", 41
    nqp_get_sc_object $P2753, "__6MODEL_CORE__", 2
    $P2754 = $P2753."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2751."add_attribute"($P2752, $P2754)
    nqp_get_sc_object $P2755, "1304277388.915", 41
    get_how $P2756, $P2755
    nqp_get_sc_object $P2757, "1304277388.915", 41
    nqp_get_sc_object $P2758, "__6MODEL_CORE__", 2
    $P2759 = $P2758."new"("@!parents" :named("name"))
    $P2756."add_attribute"($P2757, $P2759)
    nqp_get_sc_object $P2760, "1304277388.915", 41
    get_how $P2761, $P2760
    nqp_get_sc_object $P2762, "1304277388.915", 41
    nqp_get_sc_object $P2763, "__6MODEL_CORE__", 2
    $P2764 = $P2763."new"("@!roles" :named("name"))
    $P2761."add_attribute"($P2762, $P2764)
    nqp_get_sc_object $P2765, "1304277388.915", 41
    get_how $P2766, $P2765
    nqp_get_sc_object $P2767, "1304277388.915", 41
    nqp_get_sc_object $P2768, "__6MODEL_CORE__", 2
    $P2769 = $P2768."new"("$!default_parent" :named("name"))
    $P2766."add_attribute"($P2767, $P2769)
    nqp_get_sc_object $P2770, "1304277388.915", 41
    get_how $P2771, $P2770
    nqp_get_sc_object $P2772, "1304277388.915", 41
    nqp_get_sc_object $P2773, "__6MODEL_CORE__", 2
    $P2774 = $P2773."new"("@!vtable" :named("name"))
    $P2771."add_attribute"($P2772, $P2774)
    nqp_get_sc_object $P2775, "1304277388.915", 41
    get_how $P2776, $P2775
    nqp_get_sc_object $P2777, "1304277388.915", 41
    nqp_get_sc_object $P2778, "__6MODEL_CORE__", 2
    $P2779 = $P2778."new"("%!method-vtable-slots" :named("name"))
    $P2776."add_attribute"($P2777, $P2779)
    nqp_get_sc_object $P2780, "1304277388.915", 41
    get_how $P2781, $P2780
    nqp_get_sc_object $P2782, "1304277388.915", 41
    nqp_get_sc_object $P2783, "__6MODEL_CORE__", 2
    $P2784 = $P2783."new"("$!composed" :named("name"))
    $P2781."add_attribute"($P2782, $P2784)
    nqp_get_sc_object $P2785, "1304277388.915", 41
    get_how $P2786, $P2785
    nqp_get_sc_object $P2787, "1304277388.915", 41
    nqp_get_sc_object $P2788, "__6MODEL_CORE__", 2
    $P2789 = $P2788."new"("@!mro" :named("name"))
    $P2786."add_attribute"($P2787, $P2789)
    nqp_get_sc_object $P2790, "1304277388.915", 41
    get_how $P2791, $P2790
    nqp_get_sc_object $P2792, "1304277388.915", 41
    nqp_get_sc_object $P2793, "__6MODEL_CORE__", 2
    $P2794 = $P2793."new"("@!done" :named("name"))
    $P2791."add_attribute"($P2792, $P2794)
    nqp_get_sc_object $P2795, "1304277388.915", 41
    get_how $P2796, $P2795
    nqp_get_sc_object $P2797, "1304277388.915", 41
    nqp_get_sc_object $P2798, "__6MODEL_CORE__", 2
    $P2799 = $P2798."new"("%!parrot_vtable_mapping" :named("name"))
    $P2796."add_attribute"($P2797, $P2799)
    nqp_get_sc_object $P2800, "1304277388.915", 41
    get_how $P2801, $P2800
    nqp_get_sc_object $P2802, "1304277388.915", 41
    .const 'Sub' $P2803 = "91_1304277392.509" 
    $P2801."add_method"($P2802, "new", $P2803)
    nqp_get_sc_object $P2804, "1304277388.915", 41
    get_how $P2805, $P2804
    nqp_get_sc_object $P2806, "1304277388.915", 41
    .const 'Sub' $P2807 = "92_1304277392.509" 
    $P2805."add_method"($P2806, "BUILD", $P2807)
    nqp_get_sc_object $P2808, "1304277388.915", 41
    get_how $P2809, $P2808
    nqp_get_sc_object $P2810, "1304277388.915", 41
    .const 'Sub' $P2811 = "93_1304277392.509" 
    $P2809."add_method"($P2810, "new_type", $P2811)
    nqp_get_sc_object $P2812, "1304277388.915", 41
    get_how $P2813, $P2812
    nqp_get_sc_object $P2814, "1304277388.915", 41
    .const 'Sub' $P2815 = "94_1304277392.509" 
    $P2813."add_method"($P2814, "add_method", $P2815)
    nqp_get_sc_object $P2816, "1304277388.915", 41
    get_how $P2817, $P2816
    nqp_get_sc_object $P2818, "1304277388.915", 41
    .const 'Sub' $P2819 = "95_1304277392.509" 
    $P2817."add_method"($P2818, "add_multi_method", $P2819)
    nqp_get_sc_object $P2820, "1304277388.915", 41
    get_how $P2821, $P2820
    nqp_get_sc_object $P2822, "1304277388.915", 41
    .const 'Sub' $P2823 = "96_1304277392.509" 
    $P2821."add_method"($P2822, "add_attribute", $P2823)
    nqp_get_sc_object $P2824, "1304277388.915", 41
    get_how $P2825, $P2824
    nqp_get_sc_object $P2826, "1304277388.915", 41
    .const 'Sub' $P2827 = "97_1304277392.509" 
    $P2825."add_method"($P2826, "add_parent", $P2827)
    nqp_get_sc_object $P2828, "1304277388.915", 41
    get_how $P2829, $P2828
    nqp_get_sc_object $P2830, "1304277388.915", 41
    .const 'Sub' $P2831 = "99_1304277392.509" 
    $P2829."add_method"($P2830, "set_default_parent", $P2831)
    nqp_get_sc_object $P2832, "1304277388.915", 41
    get_how $P2833, $P2832
    nqp_get_sc_object $P2834, "1304277388.915", 41
    .const 'Sub' $P2835 = "100_1304277392.509" 
    $P2833."add_method"($P2834, "add_role", $P2835)
    nqp_get_sc_object $P2836, "1304277388.915", 41
    get_how $P2837, $P2836
    nqp_get_sc_object $P2838, "1304277388.915", 41
    .const 'Sub' $P2839 = "102_1304277392.509" 
    $P2837."add_method"($P2838, "add_parrot_vtable_mapping", $P2839)
    nqp_get_sc_object $P2840, "1304277388.915", 41
    get_how $P2841, $P2840
    nqp_get_sc_object $P2842, "1304277388.915", 41
    .const 'Sub' $P2843 = "103_1304277392.509" 
    $P2841."add_method"($P2842, "compose", $P2843)
    nqp_get_sc_object $P2844, "1304277388.915", 41
    get_how $P2845, $P2844
    nqp_get_sc_object $P2846, "1304277388.915", 41
    .const 'Sub' $P2847 = "107_1304277392.509" 
    $P2845."add_method"($P2846, "incorporate_multi_candidates", $P2847)
    nqp_get_sc_object $P2848, "1304277388.915", 41
    get_how $P2849, $P2848
    nqp_get_sc_object $P2850, "1304277388.915", 41
    .const 'Sub' $P2851 = "112_1304277392.509" 
    $P2849."add_method"($P2850, "publish_type_cache", $P2851)
    nqp_get_sc_object $P2852, "1304277388.915", 41
    get_how $P2853, $P2852
    nqp_get_sc_object $P2854, "1304277388.915", 41
    .const 'Sub' $P2855 = "115_1304277392.509" 
    $P2853."add_method"($P2854, "publish_method_cache", $P2855)
    nqp_get_sc_object $P2856, "1304277388.915", 41
    get_how $P2857, $P2856
    nqp_get_sc_object $P2858, "1304277388.915", 41
    .const 'Sub' $P2859 = "118_1304277392.509" 
    $P2857."add_method"($P2858, "publish_parrot_vtable_mapping", $P2859)
    nqp_get_sc_object $P2860, "1304277388.915", 41
    get_how $P2861, $P2860
    nqp_get_sc_object $P2862, "1304277388.915", 41
    .const 'Sub' $P2863 = "121_1304277392.509" 
    $P2861."add_method"($P2862, "parents", $P2863)
    nqp_get_sc_object $P2864, "1304277388.915", 41
    get_how $P2865, $P2864
    nqp_get_sc_object $P2866, "1304277388.915", 41
    .const 'Sub' $P2867 = "122_1304277392.509" 
    $P2865."add_method"($P2866, "roles", $P2867)
    nqp_get_sc_object $P2868, "1304277388.915", 41
    get_how $P2869, $P2868
    nqp_get_sc_object $P2870, "1304277388.915", 41
    .const 'Sub' $P2871 = "123_1304277392.509" 
    $P2869."add_method"($P2870, "methods", $P2871)
    nqp_get_sc_object $P2872, "1304277388.915", 41
    get_how $P2873, $P2872
    nqp_get_sc_object $P2874, "1304277388.915", 41
    .const 'Sub' $P2875 = "125_1304277392.509" 
    $P2873."add_method"($P2874, "method_table", $P2875)
    nqp_get_sc_object $P2876, "1304277388.915", 41
    get_how $P2877, $P2876
    nqp_get_sc_object $P2878, "1304277388.915", 41
    .const 'Sub' $P2879 = "126_1304277392.509" 
    $P2877."add_method"($P2878, "name", $P2879)
    nqp_get_sc_object $P2880, "1304277388.915", 41
    get_how $P2881, $P2880
    nqp_get_sc_object $P2882, "1304277388.915", 41
    .const 'Sub' $P2883 = "127_1304277392.509" 
    $P2881."add_method"($P2882, "attributes", $P2883)
    nqp_get_sc_object $P2884, "1304277388.915", 41
    get_how $P2885, $P2884
    nqp_get_sc_object $P2886, "1304277388.915", 41
    .const 'Sub' $P2887 = "129_1304277392.509" 
    $P2885."add_method"($P2886, "parrot_vtable_mappings", $P2887)
    nqp_get_sc_object $P2888, "1304277388.915", 41
    get_how $P2889, $P2888
    nqp_get_sc_object $P2890, "1304277388.915", 41
    .const 'Sub' $P2891 = "130_1304277392.509" 
    $P2889."add_method"($P2890, "isa", $P2891)
    nqp_get_sc_object $P2892, "1304277388.915", 41
    get_how $P2893, $P2892
    nqp_get_sc_object $P2894, "1304277388.915", 41
    .const 'Sub' $P2895 = "131_1304277392.509" 
    $P2893."add_method"($P2894, "does", $P2895)
    nqp_get_sc_object $P2896, "1304277388.915", 41
    get_how $P2897, $P2896
    nqp_get_sc_object $P2898, "1304277388.915", 41
    .const 'Sub' $P2899 = "132_1304277392.509" 
    $P2897."add_method"($P2898, "can", $P2899)
    nqp_get_sc_object $P2900, "1304277388.915", 41
    get_how $P2901, $P2900
    nqp_get_sc_object $P2902, "1304277388.915", 41
    .const 'Sub' $P2903 = "134_1304277392.509" 
    $P2901."add_method"($P2902, "find_method", $P2903)
    .const 'Sub' $P2904 = "80_1304277392.509" 
    $P2905 = $P2904."get_lexinfo"()
    nqp_get_sc_object $P2906, "1304277388.915", 41
    $P2905."set_static_lexpad_value"("$?PACKAGE", $P2906)
    .const 'Sub' $P2907 = "80_1304277392.509" 
    $P2908 = $P2907."get_lexinfo"()
    $P2908."finish_static_lexpad"()
    .const 'Sub' $P2909 = "80_1304277392.509" 
    $P2910 = $P2909."get_lexinfo"()
    nqp_get_sc_object $P2911, "1304277388.915", 41
    $P2910."set_static_lexpad_value"("$?CLASS", $P2911)
    .const 'Sub' $P2912 = "80_1304277392.509" 
    $P2913 = $P2912."get_lexinfo"()
    $P2913."finish_static_lexpad"()
    nqp_get_sc_object $P2914, "__6MODEL_CORE__", 0
    $P2915 = $P2914."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2915, cur_sc
    nqp_set_sc_object "1304277388.915", 68, $P2915
    nqp_get_sc_object $P2916, "1304277388.915", 68
    nqp_get_sc_object $P2917, "1304277388.915", 0
    get_who $P2918, $P2917
    set $P2918["NQPNativeHOW"], $P2916
    .const 'Sub' $P2919 = "10_1304277392.509" 
    $P2920 = $P2919."get_lexinfo"()
    nqp_get_sc_object $P2921, "1304277388.915", 68
    $P2920."set_static_lexpad_value"("NQPNativeHOW", $P2921)
    .const 'Sub' $P2922 = "10_1304277392.509" 
    $P2923 = $P2922."get_lexinfo"()
    $P2923."finish_static_lexpad"()
    nqp_get_sc_object $P2924, "1304277388.915", 68
    get_how $P2925, $P2924
    nqp_get_sc_object $P2926, "1304277388.915", 68
    nqp_get_sc_object $P2927, "__6MODEL_CORE__", 2
    $P2928 = $P2927."new"("$!name" :named("name"))
    $P2925."add_attribute"($P2926, $P2928)
    nqp_get_sc_object $P2929, "1304277388.915", 68
    get_how $P2930, $P2929
    nqp_get_sc_object $P2931, "1304277388.915", 68
    nqp_get_sc_object $P2932, "__6MODEL_CORE__", 2
    $P2933 = $P2932."new"("$!composed" :named("name"))
    $P2930."add_attribute"($P2931, $P2933)
    nqp_get_sc_object $P2934, "1304277388.915", 68
    get_how $P2935, $P2934
    nqp_get_sc_object $P2936, "1304277388.915", 68
    .const 'Sub' $P2937 = "138_1304277392.509" 
    $P2935."add_method"($P2936, "new", $P2937)
    nqp_get_sc_object $P2938, "1304277388.915", 68
    get_how $P2939, $P2938
    nqp_get_sc_object $P2940, "1304277388.915", 68
    .const 'Sub' $P2941 = "139_1304277392.509" 
    $P2939."add_method"($P2940, "BUILD", $P2941)
    nqp_get_sc_object $P2942, "1304277388.915", 68
    get_how $P2943, $P2942
    nqp_get_sc_object $P2944, "1304277388.915", 68
    .const 'Sub' $P2945 = "140_1304277392.509" 
    $P2943."add_method"($P2944, "new_type", $P2945)
    nqp_get_sc_object $P2946, "1304277388.915", 68
    get_how $P2947, $P2946
    nqp_get_sc_object $P2948, "1304277388.915", 68
    .const 'Sub' $P2949 = "141_1304277392.509" 
    $P2947."add_method"($P2948, "add_method", $P2949)
    nqp_get_sc_object $P2950, "1304277388.915", 68
    get_how $P2951, $P2950
    nqp_get_sc_object $P2952, "1304277388.915", 68
    .const 'Sub' $P2953 = "142_1304277392.509" 
    $P2951."add_method"($P2952, "add_multi_method", $P2953)
    nqp_get_sc_object $P2954, "1304277388.915", 68
    get_how $P2955, $P2954
    nqp_get_sc_object $P2956, "1304277388.915", 68
    .const 'Sub' $P2957 = "143_1304277392.509" 
    $P2955."add_method"($P2956, "add_attribute", $P2957)
    nqp_get_sc_object $P2958, "1304277388.915", 68
    get_how $P2959, $P2958
    nqp_get_sc_object $P2960, "1304277388.915", 68
    .const 'Sub' $P2961 = "144_1304277392.509" 
    $P2959."add_method"($P2960, "compose", $P2961)
    nqp_get_sc_object $P2962, "1304277388.915", 68
    get_how $P2963, $P2962
    nqp_get_sc_object $P2964, "1304277388.915", 68
    .const 'Sub' $P2965 = "145_1304277392.509" 
    $P2963."add_method"($P2964, "name", $P2965)
    .const 'Sub' $P2966 = "137_1304277392.509" 
    $P2967 = $P2966."get_lexinfo"()
    nqp_get_sc_object $P2968, "1304277388.915", 68
    $P2967."set_static_lexpad_value"("$?PACKAGE", $P2968)
    .const 'Sub' $P2969 = "137_1304277392.509" 
    $P2970 = $P2969."get_lexinfo"()
    $P2970."finish_static_lexpad"()
    .const 'Sub' $P2971 = "137_1304277392.509" 
    $P2972 = $P2971."get_lexinfo"()
    nqp_get_sc_object $P2973, "1304277388.915", 68
    $P2972."set_static_lexpad_value"("$?CLASS", $P2973)
    .const 'Sub' $P2974 = "137_1304277392.509" 
    $P2975 = $P2974."get_lexinfo"()
    $P2975."finish_static_lexpad"()
    nqp_get_sc_object $P2976, "__6MODEL_CORE__", 0
    $P2977 = $P2976."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2977, cur_sc
    nqp_set_sc_object "1304277388.915", 77, $P2977
    nqp_get_sc_object $P2978, "1304277388.915", 77
    nqp_get_sc_object $P2979, "1304277388.915", 0
    get_who $P2980, $P2979
    set $P2980["NQPAttribute"], $P2978
    .const 'Sub' $P2981 = "10_1304277392.509" 
    $P2982 = $P2981."get_lexinfo"()
    nqp_get_sc_object $P2983, "1304277388.915", 77
    $P2982."set_static_lexpad_value"("NQPAttribute", $P2983)
    .const 'Sub' $P2984 = "10_1304277392.509" 
    $P2985 = $P2984."get_lexinfo"()
    $P2985."finish_static_lexpad"()
    nqp_get_sc_object $P2986, "1304277388.915", 77
    get_how $P2987, $P2986
    nqp_get_sc_object $P2988, "1304277388.915", 77
    nqp_get_sc_object $P2989, "__6MODEL_CORE__", 2
    $P2990 = $P2989."new"("$!name" :named("name"))
    $P2987."add_attribute"($P2988, $P2990)
    nqp_get_sc_object $P2991, "1304277388.915", 77
    get_how $P2992, $P2991
    nqp_get_sc_object $P2993, "1304277388.915", 77
    nqp_get_sc_object $P2994, "__6MODEL_CORE__", 2
    $P2995 = $P2994."new"("$!type" :named("name"))
    $P2992."add_attribute"($P2993, $P2995)
    nqp_get_sc_object $P2996, "1304277388.915", 77
    get_how $P2997, $P2996
    nqp_get_sc_object $P2998, "1304277388.915", 77
    nqp_get_sc_object $P2999, "__6MODEL_CORE__", 2
    $P3000 = $P2999."new"("$!box_target" :named("name"))
    $P2997."add_attribute"($P2998, $P3000)
    nqp_get_sc_object $P3001, "1304277388.915", 77
    get_how $P3002, $P3001
    nqp_get_sc_object $P3003, "1304277388.915", 77
    .const 'Sub' $P3004 = "150_1304277392.509" 
    $P3002."add_method"($P3003, "new", $P3004)
    nqp_get_sc_object $P3005, "1304277388.915", 77
    get_how $P3006, $P3005
    nqp_get_sc_object $P3007, "1304277388.915", 77
    .const 'Sub' $P3008 = "151_1304277392.509" 
    $P3006."add_method"($P3007, "BUILD", $P3008)
    nqp_get_sc_object $P3009, "1304277388.915", 77
    get_how $P3010, $P3009
    nqp_get_sc_object $P3011, "1304277388.915", 77
    .const 'Sub' $P3012 = "152_1304277392.509" 
    $P3010."add_method"($P3011, "name", $P3012)
    nqp_get_sc_object $P3013, "1304277388.915", 77
    get_how $P3014, $P3013
    nqp_get_sc_object $P3015, "1304277388.915", 77
    .const 'Sub' $P3016 = "153_1304277392.509" 
    $P3014."add_method"($P3015, "type", $P3016)
    nqp_get_sc_object $P3017, "1304277388.915", 77
    get_how $P3018, $P3017
    nqp_get_sc_object $P3019, "1304277388.915", 77
    .const 'Sub' $P3020 = "154_1304277392.509" 
    $P3018."add_method"($P3019, "box_target", $P3020)
    nqp_get_sc_object $P3021, "1304277388.915", 77
    get_how $P3022, $P3021
    nqp_get_sc_object $P3023, "1304277388.915", 77
    .const 'Sub' $P3024 = "155_1304277392.509" 
    $P3022."add_method"($P3023, "compose", $P3024)
    nqp_get_sc_object $P3025, "1304277388.915", 77
    get_how $P3026, $P3025
    nqp_get_sc_object $P3027, "1304277388.915", 77
    .const 'Sub' $P3028 = "160_1304277392.509" 
    $P3026."add_method"($P3027, "has_mutator", $P3028)
    .const 'Sub' $P3029 = "147_1304277392.509" 
    $P3030 = $P3029."get_lexinfo"()
    nqp_get_sc_object $P3031, "1304277388.915", 77
    $P3030."set_static_lexpad_value"("$?PACKAGE", $P3031)
    .const 'Sub' $P3032 = "147_1304277392.509" 
    $P3033 = $P3032."get_lexinfo"()
    $P3033."finish_static_lexpad"()
    .const 'Sub' $P3034 = "147_1304277392.509" 
    $P3035 = $P3034."get_lexinfo"()
    nqp_get_sc_object $P3036, "1304277388.915", 77
    $P3035."set_static_lexpad_value"("$?CLASS", $P3036)
    .const 'Sub' $P3037 = "147_1304277392.509" 
    $P3038 = $P3037."get_lexinfo"()
    $P3038."finish_static_lexpad"()
    nqp_get_sc_object $P3039, "__6MODEL_CORE__", 0
    $P3040 = $P3039."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P3040, cur_sc
    nqp_set_sc_object "1304277388.915", 85, $P3040
    nqp_get_sc_object $P3041, "1304277388.915", 85
    nqp_get_sc_object $P3042, "1304277388.915", 0
    get_who $P3043, $P3042
    set $P3043["NQPModuleHOW"], $P3041
    .const 'Sub' $P3044 = "10_1304277392.509" 
    $P3045 = $P3044."get_lexinfo"()
    nqp_get_sc_object $P3046, "1304277388.915", 85
    $P3045."set_static_lexpad_value"("NQPModuleHOW", $P3046)
    .const 'Sub' $P3047 = "10_1304277392.509" 
    $P3048 = $P3047."get_lexinfo"()
    $P3048."finish_static_lexpad"()
    nqp_get_sc_object $P3049, "1304277388.915", 85
    get_how $P3050, $P3049
    nqp_get_sc_object $P3051, "1304277388.915", 85
    nqp_get_sc_object $P3052, "__6MODEL_CORE__", 2
    $P3053 = $P3052."new"("$!name" :named("name"))
    $P3050."add_attribute"($P3051, $P3053)
    nqp_get_sc_object $P3054, "1304277388.915", 85
    get_how $P3055, $P3054
    nqp_get_sc_object $P3056, "1304277388.915", 85
    nqp_get_sc_object $P3057, "__6MODEL_CORE__", 2
    $P3058 = $P3057."new"("$!composed" :named("name"))
    $P3055."add_attribute"($P3056, $P3058)
    nqp_get_sc_object $P3059, "1304277388.915", 85
    get_how $P3060, $P3059
    nqp_get_sc_object $P3061, "1304277388.915", 85
    .const 'Sub' $P3062 = "163_1304277392.509" 
    $P3060."add_method"($P3061, "new", $P3062)
    nqp_get_sc_object $P3063, "1304277388.915", 85
    get_how $P3064, $P3063
    nqp_get_sc_object $P3065, "1304277388.915", 85
    .const 'Sub' $P3066 = "164_1304277392.509" 
    $P3064."add_method"($P3065, "BUILD", $P3066)
    nqp_get_sc_object $P3067, "1304277388.915", 85
    get_how $P3068, $P3067
    nqp_get_sc_object $P3069, "1304277388.915", 85
    .const 'Sub' $P3070 = "165_1304277392.509" 
    $P3068."add_method"($P3069, "new_type", $P3070)
    nqp_get_sc_object $P3071, "1304277388.915", 85
    get_how $P3072, $P3071
    nqp_get_sc_object $P3073, "1304277388.915", 85
    .const 'Sub' $P3074 = "166_1304277392.509" 
    $P3072."add_method"($P3073, "add_method", $P3074)
    nqp_get_sc_object $P3075, "1304277388.915", 85
    get_how $P3076, $P3075
    nqp_get_sc_object $P3077, "1304277388.915", 85
    .const 'Sub' $P3078 = "167_1304277392.509" 
    $P3076."add_method"($P3077, "add_multi_method", $P3078)
    nqp_get_sc_object $P3079, "1304277388.915", 85
    get_how $P3080, $P3079
    nqp_get_sc_object $P3081, "1304277388.915", 85
    .const 'Sub' $P3082 = "168_1304277392.509" 
    $P3080."add_method"($P3081, "add_attribute", $P3082)
    nqp_get_sc_object $P3083, "1304277388.915", 85
    get_how $P3084, $P3083
    nqp_get_sc_object $P3085, "1304277388.915", 85
    .const 'Sub' $P3086 = "169_1304277392.509" 
    $P3084."add_method"($P3085, "compose", $P3086)
    nqp_get_sc_object $P3087, "1304277388.915", 85
    get_how $P3088, $P3087
    nqp_get_sc_object $P3089, "1304277388.915", 85
    .const 'Sub' $P3090 = "170_1304277392.509" 
    $P3088."add_method"($P3089, "name", $P3090)
    .const 'Sub' $P3091 = "162_1304277392.509" 
    $P3092 = $P3091."get_lexinfo"()
    nqp_get_sc_object $P3093, "1304277388.915", 85
    $P3092."set_static_lexpad_value"("$?PACKAGE", $P3093)
    .const 'Sub' $P3094 = "162_1304277392.509" 
    $P3095 = $P3094."get_lexinfo"()
    $P3095."finish_static_lexpad"()
    .const 'Sub' $P3096 = "162_1304277392.509" 
    $P3097 = $P3096."get_lexinfo"()
    nqp_get_sc_object $P3098, "1304277388.915", 85
    $P3097."set_static_lexpad_value"("$?CLASS", $P3098)
    .const 'Sub' $P3099 = "162_1304277392.509" 
    $P3100 = $P3099."get_lexinfo"()
    $P3100."finish_static_lexpad"()
    nqp_get_sc_object $P3101, "__6MODEL_CORE__", 0
    $P3102 = $P3101."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P3102, cur_sc
    nqp_set_sc_object "1304277388.915", 94, $P3102
    .const 'Sub' $P3103 = "10_1304277392.509" 
    $P3104 = $P3103."get_lexinfo"()
    nqp_get_sc_object $P3105, "1304277388.915", 94
    $P3104."set_static_lexpad_value"("EXPORTHOW", $P3105)
    .const 'Sub' $P3106 = "10_1304277392.509" 
    $P3107 = $P3106."get_lexinfo"()
    $P3107."finish_static_lexpad"()
    .const 'Sub' $P3108 = "172_1304277392.509" 
    $P3109 = $P3108."get_lexinfo"()
    nqp_get_sc_object $P3110, "1304277388.915", 94
    $P3109."set_static_lexpad_value"("$?PACKAGE", $P3110)
    .const 'Sub' $P3111 = "172_1304277392.509" 
    $P3112 = $P3111."get_lexinfo"()
    $P3112."finish_static_lexpad"()
    .const 'Sub' $P3113 = "172_1304277392.509" 
    $P3114 = $P3113."get_lexinfo"()
    nqp_get_sc_object $P3115, "1304277388.915", 94
    $P3114."set_static_lexpad_value"("$?CLASS", $P3115)
    .const 'Sub' $P3116 = "172_1304277392.509" 
    $P3117 = $P3116."get_lexinfo"()
    $P3117."finish_static_lexpad"()
  if_2402_end:
    nqp_get_sc_object $P3433, "1304277388.915", 0
    set_hll_global "GLOBAL", $P3433
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block24"  :subid("11_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 7
    .const 'Sub' $P248 = "21_1304277392.509" 
    capture_lex $P248
    .const 'Sub' $P28 = "12_1304277392.509" 
    capture_lex $P28
    .lex "$?PACKAGE", $P26
    .lex "$?CLASS", $P27
.annotate 'line', 8
    .const 'Sub' $P28 = "12_1304277392.509" 
    newclosure $P246, $P28
.annotate 'line', 7
    .return ($P246)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "" :load :init :subid("post176") :outer("11_1304277392.509")
.annotate 'line', 7
    .const 'Sub' $P25 = "11_1304277392.509" 
    .local pmc block
    set block, $P25
    .const 'Sub' $P248 = "21_1304277392.509" 
    capture_lex $P248
    $P248()
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block247"  :anon :subid("21_1304277392.509") :outer("11_1304277392.509")
.annotate 'line', 7
    nqp_get_sc_object $P249, "1304277388.915", 1
    .local pmc type_obj
    set type_obj, $P249
    get_how $P250, type_obj
    $P251 = $P250."compose"(type_obj)
    .return ($P251)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("12_1304277392.509") :outer("11_1304277392.509")
    .param pmc param_31
    .param pmc param_32
    .param pmc param_33
.annotate 'line', 8
    .const 'Sub' $P173 = "18_1304277392.509" 
    capture_lex $P173
    .const 'Sub' $P131 = "17_1304277392.509" 
    capture_lex $P131
    .const 'Sub' $P117 = "16_1304277392.509" 
    capture_lex $P117
    .const 'Sub' $P44 = "13_1304277392.509" 
    capture_lex $P44
    new $P30, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P30, control_29
    push_eh $P30
    .lex "self", param_31
    .lex "$target", param_32
    .lex "@roles", param_33
.annotate 'line', 10
    $P34 = root_new ['parrot';'Hash']
    .lex "%meth_info", $P34
.annotate 'line', 36
    $P35 = root_new ['parrot';'Hash']
    .lex "%target_meth_info", $P35
.annotate 'line', 37
    $P36 = root_new ['parrot';'ResizablePMCArray']
    .lex "@target_meths", $P36
.annotate 'line', 62
    $P37 = root_new ['parrot';'ResizablePMCArray']
    .lex "@all_roles", $P37
.annotate 'line', 8
    find_lex $P38, "%meth_info"
    unless_null $P38, vivify_177
    $P38 = root_new ['parrot';'Hash']
  vivify_177:
.annotate 'line', 11
    find_lex $P40, "@roles"
    unless_null $P40, vivify_178
    $P40 = root_new ['parrot';'ResizablePMCArray']
  vivify_178:
    defined $I41, $P40
    unless $I41, for_undef_179
    iter $P39, $P40
    new $P105, 'ExceptionHandler'
    set_label $P105, loop104_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop104_test:
    unless $P39, loop104_done
    shift $P42, $P39
  loop104_redo:
    .const 'Sub' $P44 = "13_1304277392.509" 
    capture_lex $P44
    $P44($P42)
  loop104_next:
    goto loop104_test
  loop104_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop104_next
    eq $P106, .CONTROL_LOOP_REDO, loop104_redo
  loop104_done:
    pop_eh 
  for_undef_179:
    find_lex $P107, "%target_meth_info"
    unless_null $P107, vivify_203
    $P107 = root_new ['parrot';'Hash']
  vivify_203:
.annotate 'line', 37
    find_lex $P108, "$target"
    unless_null $P108, vivify_204
    new $P108, "Undef"
  vivify_204:
    get_how $P109, $P108
    find_lex $P110, "$target"
    unless_null $P110, vivify_205
    new $P110, "Undef"
  vivify_205:
    $P111 = $P109."methods"($P110)
    store_lex "@target_meths", $P111
.annotate 'line', 38
    find_lex $P113, "@target_meths"
    unless_null $P113, vivify_206
    $P113 = root_new ['parrot';'ResizablePMCArray']
  vivify_206:
    defined $I114, $P113
    unless $I114, for_undef_207
    iter $P112, $P113
    new $P124, 'ExceptionHandler'
    set_label $P124, loop123_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop123_test:
    unless $P112, loop123_done
    shift $P115, $P112
  loop123_redo:
    .const 'Sub' $P117 = "16_1304277392.509" 
    capture_lex $P117
    $P117($P115)
  loop123_next:
    goto loop123_test
  loop123_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop123_next
    eq $P125, .CONTROL_LOOP_REDO, loop123_redo
  loop123_done:
    pop_eh 
  for_undef_207:
.annotate 'line', 43
    find_lex $P127, "%meth_info"
    unless_null $P127, vivify_211
    $P127 = root_new ['parrot';'Hash']
  vivify_211:
    defined $I128, $P127
    unless $I128, for_undef_212
    iter $P126, $P127
    new $P165, 'ExceptionHandler'
    set_label $P165, loop164_handler
    $P165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P165
  loop164_test:
    unless $P126, loop164_done
    shift $P129, $P126
  loop164_redo:
    .const 'Sub' $P131 = "17_1304277392.509" 
    capture_lex $P131
    $P131($P129)
  loop164_next:
    goto loop164_test
  loop164_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P166, exception, 'type'
    eq $P166, .CONTROL_LOOP_NEXT, loop164_next
    eq $P166, .CONTROL_LOOP_REDO, loop164_redo
  loop164_done:
    pop_eh 
  for_undef_212:
    find_lex $P167, "@all_roles"
    unless_null $P167, vivify_229
    $P167 = root_new ['parrot';'ResizablePMCArray']
  vivify_229:
.annotate 'line', 63
    find_lex $P169, "@roles"
    unless_null $P169, vivify_230
    $P169 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    defined $I170, $P169
    unless $I170, for_undef_231
    iter $P168, $P169
    new $P241, 'ExceptionHandler'
    set_label $P241, loop240_handler
    $P241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P241
  loop240_test:
    unless $P168, loop240_done
    shift $P171, $P168
  loop240_redo:
    .const 'Sub' $P173 = "18_1304277392.509" 
    capture_lex $P173
    $P173($P171)
  loop240_next:
    goto loop240_test
  loop240_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P242, exception, 'type'
    eq $P242, .CONTROL_LOOP_NEXT, loop240_next
    eq $P242, .CONTROL_LOOP_REDO, loop240_redo
  loop240_done:
    pop_eh 
  for_undef_231:
.annotate 'line', 92
    new $P243, "Exception"
    set $P243['type'], .CONTROL_RETURN
    find_lex $P244, "@all_roles"
    unless_null $P244, vivify_253
    $P244 = root_new ['parrot';'ResizablePMCArray']
  vivify_253:
    setattribute $P243, 'payload', $P244
    throw $P243
.annotate 'line', 8
    .return ()
  control_29:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block43"  :anon :subid("13_1304277392.509") :outer("12_1304277392.509")
    .param pmc param_46
.annotate 'line', 11
    .const 'Sub' $P56 = "14_1304277392.509" 
    capture_lex $P56
.annotate 'line', 12
    $P45 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P45
    .lex "$_", param_46
    find_lex $P47, "$_"
    unless_null $P47, vivify_180
    new $P47, "Undef"
  vivify_180:
    get_how $P48, $P47
    find_lex $P49, "$_"
    unless_null $P49, vivify_181
    new $P49, "Undef"
  vivify_181:
    $P50 = $P48."methods"($P49)
    store_lex "@methods", $P50
.annotate 'line', 13
    find_lex $P52, "@methods"
    unless_null $P52, vivify_182
    $P52 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    defined $I53, $P52
    unless $I53, for_undef_183
    iter $P51, $P52
    new $P102, 'ExceptionHandler'
    set_label $P102, loop101_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop101_test:
    unless $P51, loop101_done
    shift $P54, $P51
  loop101_redo:
    .const 'Sub' $P56 = "14_1304277392.509" 
    capture_lex $P56
    $P56($P54)
  loop101_next:
    goto loop101_test
  loop101_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, 'type'
    eq $P103, .CONTROL_LOOP_NEXT, loop101_next
    eq $P103, .CONTROL_LOOP_REDO, loop101_redo
  loop101_done:
    pop_eh 
  for_undef_183:
.annotate 'line', 11
    .return ($P51)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block55"  :anon :subid("14_1304277392.509") :outer("13_1304277392.509")
    .param pmc param_61
.annotate 'line', 13
    .const 'Sub' $P84 = "15_1304277392.509" 
    capture_lex $P84
.annotate 'line', 14
    new $P57, "Undef"
    .lex "$name", $P57
.annotate 'line', 15
    new $P58, "Undef"
    .lex "$meth", $P58
.annotate 'line', 16
    $P59 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meth_list", $P59
.annotate 'line', 23
    new $P60, "Undef"
    .lex "$found", $P60
    .lex "$_", param_61
.annotate 'line', 14
    find_lex $P62, "$_"
    unless_null $P62, vivify_184
    new $P62, "Undef"
  vivify_184:
    set $S63, $P62
    new $P64, 'String'
    set $P64, $S63
    store_lex "$name", $P64
.annotate 'line', 15
    find_lex $P65, "$_"
    unless_null $P65, vivify_185
    new $P65, "Undef"
  vivify_185:
    store_lex "$meth", $P65
    find_lex $P66, "@meth_list"
    unless_null $P66, vivify_186
    $P66 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
.annotate 'line', 17
    find_lex $P68, "$name"
    unless_null $P68, vivify_187
    new $P68, "Undef"
  vivify_187:
    find_lex $P69, "%meth_info"
    unless_null $P69, vivify_188
    $P69 = root_new ['parrot';'Hash']
  vivify_188:
    set $P70, $P69[$P68]
    unless_null $P70, vivify_189
    new $P70, "Undef"
  vivify_189:
    defined $I71, $P70
    if $I71, if_67
.annotate 'line', 21
    find_lex $P75, "@meth_list"
    unless_null $P75, vivify_190
    $P75 = root_new ['parrot';'ResizablePMCArray']
  vivify_190:
    find_lex $P76, "$name"
    unless_null $P76, vivify_191
    new $P76, "Undef"
  vivify_191:
    find_lex $P77, "%meth_info"
    unless_null $P77, vivify_192
    $P77 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P77
  vivify_192:
    set $P77[$P76], $P75
.annotate 'line', 20
    goto if_67_end
  if_67:
.annotate 'line', 18
    find_lex $P72, "$name"
    unless_null $P72, vivify_193
    new $P72, "Undef"
  vivify_193:
    find_lex $P73, "%meth_info"
    unless_null $P73, vivify_194
    $P73 = root_new ['parrot';'Hash']
  vivify_194:
    set $P74, $P73[$P72]
    unless_null $P74, vivify_195
    new $P74, "Undef"
  vivify_195:
    store_lex "@meth_list", $P74
  if_67_end:
.annotate 'line', 23
    new $P78, "Integer"
    assign $P78, 0
    store_lex "$found", $P78
.annotate 'line', 24
    find_lex $P80, "@meth_list"
    unless_null $P80, vivify_196
    $P80 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    defined $I81, $P80
    unless $I81, for_undef_197
    iter $P79, $P80
    new $P93, 'ExceptionHandler'
    set_label $P93, loop92_handler
    $P93."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P93
  loop92_test:
    unless $P79, loop92_done
    shift $P82, $P79
  loop92_redo:
    .const 'Sub' $P84 = "15_1304277392.509" 
    capture_lex $P84
    $P84($P82)
  loop92_next:
    goto loop92_test
  loop92_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P94, exception, 'type'
    eq $P94, .CONTROL_LOOP_NEXT, loop92_next
    eq $P94, .CONTROL_LOOP_REDO, loop92_redo
  loop92_done:
    pop_eh 
  for_undef_197:
.annotate 'line', 29
    find_lex $P97, "$found"
    unless_null $P97, vivify_200
    new $P97, "Undef"
  vivify_200:
    unless $P97, unless_96
    set $P95, $P97
    goto unless_96_end
  unless_96:
.annotate 'line', 30
    find_lex $P98, "@meth_list"
    unless_null $P98, vivify_201
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_201:
    find_lex $P99, "$meth"
    unless_null $P99, vivify_202
    new $P99, "Undef"
  vivify_202:
    $P100 = $P98."push"($P99)
.annotate 'line', 29
    set $P95, $P100
  unless_96_end:
.annotate 'line', 13
    .return ($P95)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block83"  :anon :subid("15_1304277392.509") :outer("14_1304277392.509")
    .param pmc param_85
.annotate 'line', 24
    .lex "$_", param_85
.annotate 'line', 25
    find_lex $P88, "$meth"
    unless_null $P88, vivify_198
    new $P88, "Undef"
  vivify_198:
    find_lex $P89, "$_"
    unless_null $P89, vivify_199
    new $P89, "Undef"
  vivify_199:
    issame $I90, $P88, $P89
    if $I90, if_87
    new $P86, 'Integer'
    set $P86, $I90
    goto if_87_end
  if_87:
.annotate 'line', 26
    new $P91, "Integer"
    assign $P91, 1
    store_lex "$found", $P91
.annotate 'line', 25
    set $P86, $P91
  if_87_end:
.annotate 'line', 24
    .return ($P86)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block116"  :anon :subid("16_1304277392.509") :outer("12_1304277392.509")
    .param pmc param_118
.annotate 'line', 38
    .lex "$_", param_118
.annotate 'line', 39
    find_lex $P119, "$_"
    unless_null $P119, vivify_208
    new $P119, "Undef"
  vivify_208:
    find_lex $P120, "$_"
    unless_null $P120, vivify_209
    new $P120, "Undef"
  vivify_209:
    set $S121, $P120
    find_lex $P122, "%target_meth_info"
    unless_null $P122, vivify_210
    $P122 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P122
  vivify_210:
    set $P122[$S121], $P119
.annotate 'line', 38
    .return ($P119)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block130"  :anon :subid("17_1304277392.509") :outer("12_1304277392.509")
    .param pmc param_134
.annotate 'line', 44
    new $P132, "Undef"
    .lex "$name", $P132
.annotate 'line', 45
    $P133 = root_new ['parrot';'ResizablePMCArray']
    .lex "@add_meths", $P133
    .lex "$_", param_134
.annotate 'line', 44
    find_lex $P135, "$_"
    unless_null $P135, vivify_213
    new $P135, "Undef"
  vivify_213:
    set $S136, $P135
    new $P137, 'String'
    set $P137, $S136
    store_lex "$name", $P137
.annotate 'line', 45
    find_lex $P138, "$name"
    unless_null $P138, vivify_214
    new $P138, "Undef"
  vivify_214:
    find_lex $P139, "%meth_info"
    unless_null $P139, vivify_215
    $P139 = root_new ['parrot';'Hash']
  vivify_215:
    set $P140, $P139[$P138]
    unless_null $P140, vivify_216
    new $P140, "Undef"
  vivify_216:
    store_lex "@add_meths", $P140
.annotate 'line', 49
    find_lex $P143, "$name"
    unless_null $P143, vivify_217
    new $P143, "Undef"
  vivify_217:
    find_lex $P144, "%target_meth_info"
    unless_null $P144, vivify_218
    $P144 = root_new ['parrot';'Hash']
  vivify_218:
    set $P145, $P144[$P143]
    unless_null $P145, vivify_219
    new $P145, "Undef"
  vivify_219:
    defined $I146, $P145
    unless $I146, unless_142
    new $P141, 'Integer'
    set $P141, $I146
    goto unless_142_end
  unless_142:
.annotate 'line', 51
    find_lex $P149, "@add_meths"
    unless_null $P149, vivify_220
    $P149 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    set $N150, $P149
    iseq $I151, $N150, 1.0
    if $I151, if_148
.annotate 'line', 56
    find_lex $P159, "$target"
    unless_null $P159, vivify_221
    new $P159, "Undef"
  vivify_221:
    get_how $P160, $P159
    find_lex $P161, "$target"
    unless_null $P161, vivify_222
    new $P161, "Undef"
  vivify_222:
    find_lex $P162, "$name"
    unless_null $P162, vivify_223
    new $P162, "Undef"
  vivify_223:
    $P163 = $P160."add_collision"($P161, $P162)
.annotate 'line', 54
    set $P147, $P163
.annotate 'line', 51
    goto if_148_end
  if_148:
.annotate 'line', 52
    find_lex $P152, "$target"
    unless_null $P152, vivify_224
    new $P152, "Undef"
  vivify_224:
    get_how $P153, $P152
    find_lex $P154, "$target"
    unless_null $P154, vivify_225
    new $P154, "Undef"
  vivify_225:
    find_lex $P155, "$name"
    unless_null $P155, vivify_226
    new $P155, "Undef"
  vivify_226:
    find_lex $P156, "@add_meths"
    unless_null $P156, vivify_227
    $P156 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    set $P157, $P156[0]
    unless_null $P157, vivify_228
    new $P157, "Undef"
  vivify_228:
    $P158 = $P153."add_method"($P154, $P155, $P157)
.annotate 'line', 51
    set $P147, $P158
  if_148_end:
.annotate 'line', 49
    set $P141, $P147
  unless_142_end:
.annotate 'line', 43
    .return ($P141)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block172"  :anon :subid("18_1304277392.509") :outer("12_1304277392.509")
    .param pmc param_176
.annotate 'line', 63
    .const 'Sub' $P187 = "19_1304277392.509" 
    capture_lex $P187
.annotate 'line', 64
    new $P174, "Undef"
    .lex "$how", $P174
.annotate 'line', 67
    $P175 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P175
    .lex "$_", param_176
.annotate 'line', 64
    find_lex $P177, "$_"
    unless_null $P177, vivify_232
    new $P177, "Undef"
  vivify_232:
    get_how $P178, $P177
    store_lex "$how", $P178
.annotate 'line', 67
    find_lex $P179, "$how"
    unless_null $P179, vivify_233
    new $P179, "Undef"
  vivify_233:
    find_lex $P180, "$_"
    unless_null $P180, vivify_234
    new $P180, "Undef"
  vivify_234:
    $P181 = $P179."attributes"($P180)
    store_lex "@attributes", $P181
.annotate 'line', 68
    find_lex $P183, "@attributes"
    unless_null $P183, vivify_235
    $P183 = root_new ['parrot';'ResizablePMCArray']
  vivify_235:
    defined $I184, $P183
    unless $I184, for_undef_236
    iter $P182, $P183
    new $P235, 'ExceptionHandler'
    set_label $P235, loop234_handler
    $P235."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P235
  loop234_test:
    unless $P182, loop234_done
    shift $P185, $P182
  loop234_redo:
    .const 'Sub' $P187 = "19_1304277392.509" 
    capture_lex $P187
    $P187($P185)
  loop234_next:
    goto loop234_test
  loop234_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P236, exception, 'type'
    eq $P236, .CONTROL_LOOP_NEXT, loop234_next
    eq $P236, .CONTROL_LOOP_REDO, loop234_redo
  loop234_done:
    pop_eh 
  for_undef_236:
.annotate 'line', 89
    find_lex $P237, "@all_roles"
    unless_null $P237, vivify_251
    $P237 = root_new ['parrot';'ResizablePMCArray']
  vivify_251:
    find_lex $P238, "$_"
    unless_null $P238, vivify_252
    new $P238, "Undef"
  vivify_252:
    $P239 = $P237."push"($P238)
.annotate 'line', 63
    .return ($P239)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block186"  :anon :subid("19_1304277392.509") :outer("18_1304277392.509")
    .param pmc param_191
.annotate 'line', 68
    .const 'Sub' $P203 = "20_1304277392.509" 
    capture_lex $P203
.annotate 'line', 69
    new $P188, "Undef"
    .lex "$add_attr", $P188
.annotate 'line', 70
    new $P189, "Undef"
    .lex "$skip", $P189
.annotate 'line', 71
    $P190 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cur_attrs", $P190
    .lex "$_", param_191
.annotate 'line', 69
    find_lex $P192, "$_"
    unless_null $P192, vivify_237
    new $P192, "Undef"
  vivify_237:
    store_lex "$add_attr", $P192
.annotate 'line', 70
    new $P193, "Integer"
    assign $P193, 0
    store_lex "$skip", $P193
.annotate 'line', 71
    find_lex $P194, "$target"
    unless_null $P194, vivify_238
    new $P194, "Undef"
  vivify_238:
    get_how $P195, $P194
    find_lex $P196, "$target"
    unless_null $P196, vivify_239
    new $P196, "Undef"
  vivify_239:
    $P197 = $P195."attributes"($P196)
    store_lex "@cur_attrs", $P197
.annotate 'line', 72
    find_lex $P199, "@cur_attrs"
    unless_null $P199, vivify_240
    $P199 = root_new ['parrot';'ResizablePMCArray']
  vivify_240:
    defined $I200, $P199
    unless $I200, for_undef_241
    iter $P198, $P199
    new $P224, 'ExceptionHandler'
    set_label $P224, loop223_handler
    $P224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P224
  loop223_test:
    unless $P198, loop223_done
    shift $P201, $P198
  loop223_redo:
    .const 'Sub' $P203 = "20_1304277392.509" 
    capture_lex $P203
    $P203($P201)
  loop223_next:
    goto loop223_test
  loop223_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P225, exception, 'type'
    eq $P225, .CONTROL_LOOP_NEXT, loop223_next
    eq $P225, .CONTROL_LOOP_REDO, loop223_redo
  loop223_done:
    pop_eh 
  for_undef_241:
.annotate 'line', 82
    find_lex $P228, "$skip"
    unless_null $P228, vivify_247
    new $P228, "Undef"
  vivify_247:
    unless $P228, unless_227
    set $P226, $P228
    goto unless_227_end
  unless_227:
.annotate 'line', 83
    find_lex $P229, "$target"
    unless_null $P229, vivify_248
    new $P229, "Undef"
  vivify_248:
    get_how $P230, $P229
    find_lex $P231, "$target"
    unless_null $P231, vivify_249
    new $P231, "Undef"
  vivify_249:
    find_lex $P232, "$add_attr"
    unless_null $P232, vivify_250
    new $P232, "Undef"
  vivify_250:
    $P233 = $P230."add_attribute"($P231, $P232)
.annotate 'line', 82
    set $P226, $P233
  unless_227_end:
.annotate 'line', 68
    .return ($P226)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block202"  :anon :subid("20_1304277392.509") :outer("19_1304277392.509")
    .param pmc param_204
.annotate 'line', 72
    .lex "$_", param_204
.annotate 'line', 73
    find_lex $P207, "$_"
    unless_null $P207, vivify_242
    new $P207, "Undef"
  vivify_242:
    find_lex $P208, "$add_attr"
    unless_null $P208, vivify_243
    new $P208, "Undef"
  vivify_243:
    issame $I209, $P207, $P208
    if $I209, if_206
.annotate 'line', 77
    find_lex $P213, "$_"
    unless_null $P213, vivify_244
    new $P213, "Undef"
  vivify_244:
    $S214 = $P213."name"()
    find_lex $P215, "$add_attr"
    unless_null $P215, vivify_245
    new $P215, "Undef"
  vivify_245:
    $S216 = $P215."name"()
    iseq $I217, $S214, $S216
    if $I217, if_212
    new $P211, 'Integer'
    set $P211, $I217
    goto if_212_end
  if_212:
.annotate 'line', 78
    new $P218, "String"
    assign $P218, "Attribute '"
    find_lex $P219, "$_"
    unless_null $P219, vivify_246
    new $P219, "Undef"
  vivify_246:
    $S220 = $P219."name"()
    concat $P221, $P218, $S220
    concat $P222, $P221, "' conflicts in role composition"
    die $P222
  if_212_end:
.annotate 'line', 76
    set $P205, $P211
.annotate 'line', 73
    goto if_206_end
  if_206:
.annotate 'line', 74
    new $P210, "Integer"
    assign $P210, 1
    store_lex "$skip", $P210
.annotate 'line', 73
    set $P205, $P210
  if_206_end:
.annotate 'line', 72
    .return ($P205)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block252"  :subid("22_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 99
    .const 'Sub' $P513 = "43_1304277392.509" 
    capture_lex $P513
    .const 'Sub' $P505 = "42_1304277392.509" 
    capture_lex $P505
    .const 'Sub' $P499 = "41_1304277392.509" 
    capture_lex $P499
    .const 'Sub' $P475 = "39_1304277392.509" 
    capture_lex $P475
    .const 'Sub' $P469 = "38_1304277392.509" 
    capture_lex $P469
    .const 'Sub' $P463 = "37_1304277392.509" 
    capture_lex $P463
    .const 'Sub' $P457 = "36_1304277392.509" 
    capture_lex $P457
    .const 'Sub' $P433 = "34_1304277392.509" 
    capture_lex $P433
    .const 'Sub' $P384 = "32_1304277392.509" 
    capture_lex $P384
    .const 'Sub' $P371 = "31_1304277392.509" 
    capture_lex $P371
    .const 'Sub' $P358 = "30_1304277392.509" 
    capture_lex $P358
    .const 'Sub' $P354 = "29_1304277392.509" 
    capture_lex $P354
    .const 'Sub' $P333 = "28_1304277392.509" 
    capture_lex $P333
    .const 'Sub' $P312 = "27_1304277392.509" 
    capture_lex $P312
    .const 'Sub' $P293 = "26_1304277392.509" 
    capture_lex $P293
    .const 'Sub' $P277 = "25_1304277392.509" 
    capture_lex $P277
    .const 'Sub' $P267 = "24_1304277392.509" 
    capture_lex $P267
    .const 'Sub' $P256 = "23_1304277392.509" 
    capture_lex $P256
    .lex "$?PACKAGE", $P254
    .lex "$?CLASS", $P255
.annotate 'line', 238
    .const 'Sub' $P505 = "42_1304277392.509" 
    newclosure $P511, $P505
.annotate 'line', 99
    .return ($P511)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "" :load :init :subid("post254") :outer("22_1304277392.509")
.annotate 'line', 99
    .const 'Sub' $P253 = "22_1304277392.509" 
    .local pmc block
    set block, $P253
    .const 'Sub' $P513 = "43_1304277392.509" 
    capture_lex $P513
    $P513()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block512"  :anon :subid("43_1304277392.509") :outer("22_1304277392.509")
.annotate 'line', 99
    nqp_get_sc_object $P514, "1304277388.915", 3
    .local pmc type_obj
    set type_obj, $P514
    get_how $P515, type_obj
    $P516 = $P515."compose"(type_obj)
    .return ($P516)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("23_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_257
    .param pmc param_258 :named("name")
    .param pmc param_259 :named("instance_of")
.annotate 'line', 131
    .lex "self", param_257
    .lex "$name", param_258
    .lex "$instance_of", param_259
.annotate 'line', 132
    new $P260, "Undef"
    .lex "$obj", $P260
    find_lex $P261, "self"
    repr_instance_of $P262, $P261
    store_lex "$obj", $P262
.annotate 'line', 133
    find_lex $P263, "$obj"
    unless_null $P263, vivify_255
    new $P263, "Undef"
  vivify_255:
    find_lex $P264, "$name"
    unless_null $P264, vivify_256
    new $P264, "Undef"
  vivify_256:
    find_lex $P265, "$instance_of"
    unless_null $P265, vivify_257
    new $P265, "Undef"
  vivify_257:
    $P263."BUILD"($P264 :named("name"), $P265 :named("instance_of"))
    find_lex $P266, "$obj"
    unless_null $P266, vivify_258
    new $P266, "Undef"
  vivify_258:
.annotate 'line', 131
    .return ($P266)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("24_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_268
    .param pmc param_269 :named("name")
    .param pmc param_270 :named("instance_of")
.annotate 'line', 137
    .lex "self", param_268
    .lex "$name", param_269
    .lex "$instance_of", param_270
.annotate 'line', 138
    find_lex $P271, "$name"
    unless_null $P271, vivify_259
    new $P271, "Undef"
  vivify_259:
    find_lex $P272, "self"
    find_lex $P273, "$?CLASS"
    setattribute $P272, $P273, "$!name", $P271
.annotate 'line', 139
    find_lex $P274, "$instance_of"
    unless_null $P274, vivify_260
    new $P274, "Undef"
  vivify_260:
    find_lex $P275, "self"
    find_lex $P276, "$?CLASS"
    setattribute $P275, $P276, "$!instance_of", $P274
.annotate 'line', 137
    .return ($P274)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("25_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_278
    .param pmc param_283 :named("instance_of")
    .param pmc param_279 :optional :named("name")
    .param int has_param_279 :opt_flag
    .param pmc param_281 :optional :named("repr")
    .param int has_param_281 :opt_flag
.annotate 'line', 144
    .lex "self", param_278
    if has_param_279, optparam_261
    new $P280, "String"
    assign $P280, "<anon>"
    set param_279, $P280
  optparam_261:
    .lex "$name", param_279
    if has_param_281, optparam_262
    new $P282, "String"
    assign $P282, "P6opaque"
    set param_281, $P282
  optparam_262:
    .lex "$repr", param_281
    .lex "$instance_of", param_283
.annotate 'line', 145
    new $P284, "Undef"
    .lex "$metarole", $P284
    find_lex $P285, "self"
    find_lex $P286, "$name"
    unless_null $P286, vivify_263
    new $P286, "Undef"
  vivify_263:
    find_lex $P287, "$instance_of"
    unless_null $P287, vivify_264
    new $P287, "Undef"
  vivify_264:
    $P288 = $P285."new"($P286 :named("name"), $P287 :named("instance_of"))
    store_lex "$metarole", $P288
.annotate 'line', 146
    find_lex $P289, "$metarole"
    unless_null $P289, vivify_265
    new $P289, "Undef"
  vivify_265:
    find_lex $P290, "$repr"
    unless_null $P290, vivify_266
    new $P290, "Undef"
  vivify_266:
    set $S291, $P290
    repr_type_object_for $P292, $P289, $S291
.annotate 'line', 144
    .return ($P292)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("26_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_294
    .param pmc param_295
    .param pmc param_296
    .param pmc param_297
.annotate 'line', 149
    .lex "self", param_294
    .lex "$obj", param_295
    .lex "$name", param_296
    .lex "$code_obj", param_297
.annotate 'line', 150
    find_lex $P299, "$name"
    unless_null $P299, vivify_267
    new $P299, "Undef"
  vivify_267:
    find_lex $P300, "self"
    find_lex $P301, "$?CLASS"
    getattribute $P302, $P300, $P301, "%!methods"
    unless_null $P302, vivify_268
    $P302 = root_new ['parrot';'Hash']
  vivify_268:
    set $P303, $P302[$P299]
    unless_null $P303, vivify_269
    new $P303, "Undef"
  vivify_269:
    unless $P303, if_298_end
.annotate 'line', 151
    new $P304, "String"
    assign $P304, "This role already has a method named "
    find_lex $P305, "$name"
    unless_null $P305, vivify_270
    new $P305, "Undef"
  vivify_270:
    concat $P306, $P304, $P305
    die $P306
  if_298_end:
.annotate 'line', 153
    find_lex $P307, "$code_obj"
    unless_null $P307, vivify_271
    new $P307, "Undef"
  vivify_271:
    find_lex $P308, "$name"
    unless_null $P308, vivify_272
    new $P308, "Undef"
  vivify_272:
    find_lex $P309, "self"
    find_lex $P310, "$?CLASS"
    getattribute $P311, $P309, $P310, "%!methods"
    unless_null $P311, vivify_273
    $P311 = root_new ['parrot';'Hash']
    setattribute $P309, $P310, "%!methods", $P311
  vivify_273:
    set $P311[$P308], $P307
.annotate 'line', 149
    .return ($P307)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("27_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_313
    .param pmc param_314
    .param pmc param_315
    .param pmc param_316
.annotate 'line', 156
    .lex "self", param_313
    .lex "$obj", param_314
    .lex "$name", param_315
    .lex "$code_obj", param_316
.annotate 'line', 157
    $P317 = root_new ['parrot';'Hash']
    .lex "%todo", $P317
.annotate 'line', 156
    find_lex $P318, "%todo"
    unless_null $P318, vivify_274
    $P318 = root_new ['parrot';'Hash']
  vivify_274:
.annotate 'line', 158
    find_lex $P319, "$name"
    unless_null $P319, vivify_275
    new $P319, "Undef"
  vivify_275:
    find_lex $P320, "%todo"
    unless_null $P320, vivify_276
    $P320 = root_new ['parrot';'Hash']
    store_lex "%todo", $P320
  vivify_276:
    set $P320["name"], $P319
.annotate 'line', 159
    find_lex $P321, "$code_obj"
    unless_null $P321, vivify_277
    new $P321, "Undef"
  vivify_277:
    find_lex $P322, "%todo"
    unless_null $P322, vivify_278
    $P322 = root_new ['parrot';'Hash']
    store_lex "%todo", $P322
  vivify_278:
    set $P322["code"], $P321
.annotate 'line', 160
    find_lex $P323, "%todo"
    unless_null $P323, vivify_279
    $P323 = root_new ['parrot';'Hash']
  vivify_279:
    find_lex $P324, "self"
    find_lex $P325, "$?CLASS"
    getattribute $P326, $P324, $P325, "@!multi_methods_to_incorporate"
    unless_null $P326, vivify_280
    $P326 = root_new ['parrot';'ResizablePMCArray']
  vivify_280:
    set $N327, $P326
    set $I328, $N327
    find_lex $P329, "self"
    find_lex $P330, "$?CLASS"
    getattribute $P331, $P329, $P330, "@!multi_methods_to_incorporate"
    unless_null $P331, vivify_281
    $P331 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P329, $P330, "@!multi_methods_to_incorporate", $P331
  vivify_281:
    set $P331[$I328], $P323
    find_lex $P332, "$code_obj"
    unless_null $P332, vivify_282
    new $P332, "Undef"
  vivify_282:
.annotate 'line', 156
    .return ($P332)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("28_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_334
    .param pmc param_335
    .param pmc param_336
.annotate 'line', 164
    .lex "self", param_334
    .lex "$obj", param_335
    .lex "$meta_attr", param_336
.annotate 'line', 165
    new $P337, "Undef"
    .lex "$name", $P337
    find_lex $P338, "$meta_attr"
    unless_null $P338, vivify_283
    new $P338, "Undef"
  vivify_283:
    $P339 = $P338."name"()
    store_lex "$name", $P339
.annotate 'line', 166
    find_lex $P341, "$name"
    unless_null $P341, vivify_284
    new $P341, "Undef"
  vivify_284:
    find_lex $P342, "self"
    find_lex $P343, "$?CLASS"
    getattribute $P344, $P342, $P343, "%!attributes"
    unless_null $P344, vivify_285
    $P344 = root_new ['parrot';'Hash']
  vivify_285:
    set $P345, $P344[$P341]
    unless_null $P345, vivify_286
    new $P345, "Undef"
  vivify_286:
    unless $P345, if_340_end
.annotate 'line', 167
    new $P346, "String"
    assign $P346, "This role already has an attribute named "
    find_lex $P347, "$name"
    unless_null $P347, vivify_287
    new $P347, "Undef"
  vivify_287:
    concat $P348, $P346, $P347
    die $P348
  if_340_end:
.annotate 'line', 169
    find_lex $P349, "$meta_attr"
    unless_null $P349, vivify_288
    new $P349, "Undef"
  vivify_288:
    find_lex $P350, "$name"
    unless_null $P350, vivify_289
    new $P350, "Undef"
  vivify_289:
    find_lex $P351, "self"
    find_lex $P352, "$?CLASS"
    getattribute $P353, $P351, $P352, "%!attributes"
    unless_null $P353, vivify_290
    $P353 = root_new ['parrot';'Hash']
    setattribute $P351, $P352, "%!attributes", $P353
  vivify_290:
    set $P353[$P350], $P349
.annotate 'line', 164
    .return ($P349)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("29_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_355
    .param pmc param_356
    .param pmc param_357
.annotate 'line', 172
    .lex "self", param_355
    .lex "$obj", param_356
    .lex "$parent", param_357
.annotate 'line', 173
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 172
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("30_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_359
    .param pmc param_360
    .param pmc param_361
.annotate 'line', 176
    .lex "self", param_359
    .lex "$obj", param_360
    .lex "$role", param_361
.annotate 'line', 177
    find_lex $P362, "$role"
    unless_null $P362, vivify_291
    new $P362, "Undef"
  vivify_291:
    find_lex $P363, "self"
    find_lex $P364, "$?CLASS"
    getattribute $P365, $P363, $P364, "@!roles"
    unless_null $P365, vivify_292
    $P365 = root_new ['parrot';'ResizablePMCArray']
  vivify_292:
    set $N366, $P365
    set $I367, $N366
    find_lex $P368, "self"
    find_lex $P369, "$?CLASS"
    getattribute $P370, $P368, $P369, "@!roles"
    unless_null $P370, vivify_293
    $P370 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P368, $P369, "@!roles", $P370
  vivify_293:
    set $P370[$I367], $P362
.annotate 'line', 176
    .return ($P362)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("31_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_372
    .param pmc param_373
    .param pmc param_374
.annotate 'line', 180
    .lex "self", param_372
    .lex "$obj", param_373
    .lex "$colliding_name", param_374
.annotate 'line', 181
    find_lex $P375, "$colliding_name"
    unless_null $P375, vivify_294
    new $P375, "Undef"
  vivify_294:
    find_lex $P376, "self"
    find_lex $P377, "$?CLASS"
    getattribute $P378, $P376, $P377, "@!collisions"
    unless_null $P378, vivify_295
    $P378 = root_new ['parrot';'ResizablePMCArray']
  vivify_295:
    set $N379, $P378
    set $I380, $N379
    find_lex $P381, "self"
    find_lex $P382, "$?CLASS"
    getattribute $P383, $P381, $P382, "@!collisions"
    unless_null $P383, vivify_296
    $P383 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P381, $P382, "@!collisions", $P383
  vivify_296:
    set $P383[$I380], $P375
.annotate 'line', 180
    .return ($P375)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("32_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_385
    .param pmc param_386
.annotate 'line', 185
    .const 'Sub' $P398 = "33_1304277392.509" 
    capture_lex $P398
    .lex "self", param_385
    .lex "$obj", param_386
.annotate 'line', 188
    find_lex $P388, "self"
    find_lex $P389, "$?CLASS"
    getattribute $P390, $P388, $P389, "@!roles"
    unless_null $P390, vivify_297
    $P390 = root_new ['parrot';'ResizablePMCArray']
  vivify_297:
    unless $P390, if_387_end
.annotate 'line', 189
    find_lex $P392, "self"
    find_lex $P393, "$?CLASS"
    getattribute $P394, $P392, $P393, "@!roles"
    unless_null $P394, vivify_298
    $P394 = root_new ['parrot';'ResizablePMCArray']
  vivify_298:
    defined $I395, $P394
    unless $I395, for_undef_299
    iter $P391, $P394
    new $P422, 'ExceptionHandler'
    set_label $P422, loop421_handler
    $P422."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P422
  loop421_test:
    unless $P391, loop421_done
    shift $P396, $P391
  loop421_redo:
    .const 'Sub' $P398 = "33_1304277392.509" 
    capture_lex $P398
    $P398($P396)
  loop421_next:
    goto loop421_test
  loop421_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P423, exception, 'type'
    eq $P423, .CONTROL_LOOP_NEXT, loop421_next
    eq $P423, .CONTROL_LOOP_REDO, loop421_redo
  loop421_done:
    pop_eh 
  for_undef_299:
.annotate 'line', 193
    find_lex $P424, "RoleToRoleApplier"
    find_lex $P425, "$obj"
    unless_null $P425, vivify_307
    new $P425, "Undef"
  vivify_307:
    find_lex $P426, "self"
    find_lex $P427, "$?CLASS"
    getattribute $P428, $P426, $P427, "@!roles"
    unless_null $P428, vivify_308
    $P428 = root_new ['parrot';'ResizablePMCArray']
  vivify_308:
    $P424."apply"($P425, $P428)
  if_387_end:
.annotate 'line', 197
    new $P429, "Integer"
    assign $P429, 1
    find_lex $P430, "self"
    find_lex $P431, "$?CLASS"
    setattribute $P430, $P431, "$!composed", $P429
    find_lex $P432, "$obj"
    unless_null $P432, vivify_309
    new $P432, "Undef"
  vivify_309:
.annotate 'line', 185
    .return ($P432)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block397"  :anon :subid("33_1304277392.509") :outer("32_1304277392.509")
    .param pmc param_399
.annotate 'line', 189
    .lex "$_", param_399
.annotate 'line', 190
    find_lex $P400, "$_"
    unless_null $P400, vivify_300
    new $P400, "Undef"
  vivify_300:
    find_lex $P401, "self"
    find_lex $P402, "$?CLASS"
    getattribute $P403, $P401, $P402, "@!done"
    unless_null $P403, vivify_301
    $P403 = root_new ['parrot';'ResizablePMCArray']
  vivify_301:
    set $N404, $P403
    set $I405, $N404
    find_lex $P406, "self"
    find_lex $P407, "$?CLASS"
    getattribute $P408, $P406, $P407, "@!done"
    unless_null $P408, vivify_302
    $P408 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P406, $P407, "@!done", $P408
  vivify_302:
    set $P408[$I405], $P400
.annotate 'line', 191
    find_lex $P409, "$_"
    unless_null $P409, vivify_303
    new $P409, "Undef"
  vivify_303:
    get_how $P410, $P409
    find_lex $P411, "$_"
    unless_null $P411, vivify_304
    new $P411, "Undef"
  vivify_304:
    $P412 = $P410."instance_of"($P411)
    find_lex $P413, "self"
    find_lex $P414, "$?CLASS"
    getattribute $P415, $P413, $P414, "@!done"
    unless_null $P415, vivify_305
    $P415 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
    set $N416, $P415
    set $I417, $N416
    find_lex $P418, "self"
    find_lex $P419, "$?CLASS"
    getattribute $P420, $P418, $P419, "@!done"
    unless_null $P420, vivify_306
    $P420 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P418, $P419, "@!done", $P420
  vivify_306:
    set $P420[$I417], $P412
.annotate 'line', 189
    .return ($P412)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("34_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_434
    .param pmc param_435
    .param pmc param_436 :optional :named("local")
    .param int has_param_436 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P447 = "35_1304277392.509" 
    capture_lex $P447
    .lex "self", param_434
    .lex "$obj", param_435
    if has_param_436, optparam_310
    new $P437, "Undef"
    set param_436, $P437
  optparam_310:
    .lex "$local", param_436
.annotate 'line', 207
    $P438 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P438
.annotate 'line', 206
    find_lex $P439, "@meths"
    unless_null $P439, vivify_311
    $P439 = root_new ['parrot';'ResizablePMCArray']
  vivify_311:
.annotate 'line', 208
    find_lex $P441, "self"
    find_lex $P442, "$?CLASS"
    getattribute $P443, $P441, $P442, "%!methods"
    unless_null $P443, vivify_312
    $P443 = root_new ['parrot';'Hash']
  vivify_312:
    defined $I444, $P443
    unless $I444, for_undef_313
    iter $P440, $P443
    new $P454, 'ExceptionHandler'
    set_label $P454, loop453_handler
    $P454."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P454
  loop453_test:
    unless $P440, loop453_done
    shift $P445, $P440
  loop453_redo:
    .const 'Sub' $P447 = "35_1304277392.509" 
    capture_lex $P447
    $P447($P445)
  loop453_next:
    goto loop453_test
  loop453_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P455, exception, 'type'
    eq $P455, .CONTROL_LOOP_NEXT, loop453_next
    eq $P455, .CONTROL_LOOP_REDO, loop453_redo
  loop453_done:
    pop_eh 
  for_undef_313:
    find_lex $P456, "@meths"
    unless_null $P456, vivify_316
    $P456 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
.annotate 'line', 206
    .return ($P456)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block446"  :anon :subid("35_1304277392.509") :outer("34_1304277392.509")
    .param pmc param_448
.annotate 'line', 208
    .lex "$_", param_448
.annotate 'line', 209
    find_lex $P449, "@meths"
    unless_null $P449, vivify_314
    $P449 = root_new ['parrot';'ResizablePMCArray']
  vivify_314:
    find_lex $P450, "$_"
    unless_null $P450, vivify_315
    new $P450, "Undef"
  vivify_315:
    $P451 = $P450."value"()
    $P452 = $P449."push"($P451)
.annotate 'line', 208
    .return ($P452)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("36_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_458
    .param pmc param_459
.annotate 'line', 214
    .lex "self", param_458
    .lex "$obj", param_459
    find_lex $P460, "self"
    find_lex $P461, "$?CLASS"
    getattribute $P462, $P460, $P461, "%!methods"
    unless_null $P462, vivify_317
    $P462 = root_new ['parrot';'Hash']
  vivify_317:
    .return ($P462)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("37_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_464
    .param pmc param_465
.annotate 'line', 218
    .lex "self", param_464
    .lex "$obj", param_465
    find_lex $P466, "self"
    find_lex $P467, "$?CLASS"
    getattribute $P468, $P466, $P467, "@!collisions"
    unless_null $P468, vivify_318
    $P468 = root_new ['parrot';'ResizablePMCArray']
  vivify_318:
    .return ($P468)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("38_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_470
    .param pmc param_471
.annotate 'line', 222
    .lex "self", param_470
    .lex "$obj", param_471
    find_lex $P472, "self"
    find_lex $P473, "$?CLASS"
    getattribute $P474, $P472, $P473, "$!name"
    unless_null $P474, vivify_319
    new $P474, "Undef"
  vivify_319:
    .return ($P474)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("39_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_476
    .param pmc param_477
    .param pmc param_478 :optional :named("local")
    .param int has_param_478 :opt_flag
.annotate 'line', 226
    .const 'Sub' $P489 = "40_1304277392.509" 
    capture_lex $P489
    .lex "self", param_476
    .lex "$obj", param_477
    if has_param_478, optparam_320
    new $P479, "Undef"
    set param_478, $P479
  optparam_320:
    .lex "$local", param_478
.annotate 'line', 227
    $P480 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P480
.annotate 'line', 226
    find_lex $P481, "@attrs"
    unless_null $P481, vivify_321
    $P481 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
.annotate 'line', 228
    find_lex $P483, "self"
    find_lex $P484, "$?CLASS"
    getattribute $P485, $P483, $P484, "%!attributes"
    unless_null $P485, vivify_322
    $P485 = root_new ['parrot';'Hash']
  vivify_322:
    defined $I486, $P485
    unless $I486, for_undef_323
    iter $P482, $P485
    new $P496, 'ExceptionHandler'
    set_label $P496, loop495_handler
    $P496."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P496
  loop495_test:
    unless $P482, loop495_done
    shift $P487, $P482
  loop495_redo:
    .const 'Sub' $P489 = "40_1304277392.509" 
    capture_lex $P489
    $P489($P487)
  loop495_next:
    goto loop495_test
  loop495_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P497, exception, 'type'
    eq $P497, .CONTROL_LOOP_NEXT, loop495_next
    eq $P497, .CONTROL_LOOP_REDO, loop495_redo
  loop495_done:
    pop_eh 
  for_undef_323:
    find_lex $P498, "@attrs"
    unless_null $P498, vivify_326
    $P498 = root_new ['parrot';'ResizablePMCArray']
  vivify_326:
.annotate 'line', 226
    .return ($P498)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block488"  :anon :subid("40_1304277392.509") :outer("39_1304277392.509")
    .param pmc param_490
.annotate 'line', 228
    .lex "$_", param_490
.annotate 'line', 229
    find_lex $P491, "@attrs"
    unless_null $P491, vivify_324
    $P491 = root_new ['parrot';'ResizablePMCArray']
  vivify_324:
    find_lex $P492, "$_"
    unless_null $P492, vivify_325
    new $P492, "Undef"
  vivify_325:
    $P493 = $P492."value"()
    $P494 = $P491."push"($P493)
.annotate 'line', 228
    .return ($P494)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("41_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_500
    .param pmc param_501
.annotate 'line', 234
    .lex "self", param_500
    .lex "$obj", param_501
    find_lex $P502, "self"
    find_lex $P503, "$?CLASS"
    getattribute $P504, $P502, $P503, "@!roles"
    unless_null $P504, vivify_327
    $P504 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    .return ($P504)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("42_1304277392.509") :outer("22_1304277392.509")
    .param pmc param_506
    .param pmc param_507
.annotate 'line', 238
    .lex "self", param_506
    .lex "$obj", param_507
    find_lex $P508, "self"
    find_lex $P509, "$?CLASS"
    getattribute $P510, $P508, $P509, "$!instance_of"
    unless_null $P510, vivify_328
    new $P510, "Undef"
  vivify_328:
    .return ($P510)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block517"  :subid("44_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 244
    .const 'Sub' $P731 = "54_1304277392.509" 
    capture_lex $P731
    .const 'Sub' $P591 = "49_1304277392.509" 
    capture_lex $P591
    .const 'Sub' $P554 = "47_1304277392.509" 
    capture_lex $P554
    .const 'Sub' $P519 = "45_1304277392.509" 
    capture_lex $P519
.annotate 'line', 246
    .const 'Sub' $P519 = "45_1304277392.509" 
    newclosure $P553, $P519
    .lex "has_method", $P553
.annotate 'line', 254
    .const 'Sub' $P554 = "47_1304277392.509" 
    newclosure $P586, $P554
    .lex "has_attribute", $P586
.annotate 'line', 244
    .lex "$?PACKAGE", $P587
    .lex "$?CLASS", $P588
    find_lex $P589, "has_method"
    find_lex $P590, "has_attribute"
.annotate 'line', 262
    .const 'Sub' $P591 = "49_1304277392.509" 
    newclosure $P729, $P591
.annotate 'line', 244
    .return ($P729)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "" :load :init :subid("post329") :outer("44_1304277392.509")
.annotate 'line', 244
    .const 'Sub' $P518 = "44_1304277392.509" 
    .local pmc block
    set block, $P518
    .const 'Sub' $P731 = "54_1304277392.509" 
    capture_lex $P731
    $P731()
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block730"  :anon :subid("54_1304277392.509") :outer("44_1304277392.509")
.annotate 'line', 244
    nqp_get_sc_object $P732, "1304277388.915", 21
    .local pmc type_obj
    set type_obj, $P732
    get_how $P733, type_obj
    $P734 = $P733."compose"(type_obj)
    .return ($P734)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("45_1304277392.509") :outer("44_1304277392.509")
    .param pmc param_522
    .param pmc param_523
    .param pmc param_524
.annotate 'line', 246
    .const 'Sub' $P536 = "46_1304277392.509" 
    capture_lex $P536
    new $P521, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P521, control_520
    push_eh $P521
    .lex "$target", param_522
    .lex "$name", param_523
    .lex "$local", param_524
.annotate 'line', 247
    $P525 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P525
    find_lex $P526, "$target"
    unless_null $P526, vivify_330
    new $P526, "Undef"
  vivify_330:
    get_how $P527, $P526
    find_lex $P528, "$target"
    unless_null $P528, vivify_331
    new $P528, "Undef"
  vivify_331:
    find_lex $P529, "$local"
    unless_null $P529, vivify_332
    new $P529, "Undef"
  vivify_332:
    $P530 = $P527."methods"($P528, $P529 :named("local"))
    store_lex "@methods", $P530
.annotate 'line', 248
    find_lex $P532, "@methods"
    unless_null $P532, vivify_333
    $P532 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    defined $I533, $P532
    unless $I533, for_undef_334
    iter $P531, $P532
    new $P548, 'ExceptionHandler'
    set_label $P548, loop547_handler
    $P548."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P548
  loop547_test:
    unless $P531, loop547_done
    shift $P534, $P531
  loop547_redo:
    .const 'Sub' $P536 = "46_1304277392.509" 
    capture_lex $P536
    $P536($P534)
  loop547_next:
    goto loop547_test
  loop547_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P549, exception, 'type'
    eq $P549, .CONTROL_LOOP_NEXT, loop547_next
    eq $P549, .CONTROL_LOOP_REDO, loop547_redo
  loop547_done:
    pop_eh 
  for_undef_334:
.annotate 'line', 251
    new $P550, "Exception"
    set $P550['type'], .CONTROL_RETURN
    new $P551, "Integer"
    assign $P551, 0
    setattribute $P550, 'payload', $P551
    throw $P550
.annotate 'line', 246
    .return ()
  control_520:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P552, exception, "payload"
    .return ($P552)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block535"  :anon :subid("46_1304277392.509") :outer("45_1304277392.509")
    .param pmc param_537
.annotate 'line', 248
    .lex "$_", param_537
.annotate 'line', 249
    find_lex $P540, "$_"
    unless_null $P540, vivify_335
    new $P540, "Undef"
  vivify_335:
    set $S541, $P540
    find_lex $P542, "$name"
    unless_null $P542, vivify_336
    new $P542, "Undef"
  vivify_336:
    set $S543, $P542
    iseq $I544, $S541, $S543
    if $I544, if_539
    new $P538, 'Integer'
    set $P538, $I544
    goto if_539_end
  if_539:
    new $P545, "Exception"
    set $P545['type'], .CONTROL_RETURN
    new $P546, "Integer"
    assign $P546, 1
    setattribute $P545, 'payload', $P546
    throw $P545
  if_539_end:
.annotate 'line', 248
    .return ($P538)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("47_1304277392.509") :outer("44_1304277392.509")
    .param pmc param_557
    .param pmc param_558
.annotate 'line', 254
    .const 'Sub' $P569 = "48_1304277392.509" 
    capture_lex $P569
    new $P556, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P556, control_555
    push_eh $P556
    .lex "$target", param_557
    .lex "$name", param_558
.annotate 'line', 255
    $P559 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P559
    find_lex $P560, "$target"
    unless_null $P560, vivify_337
    new $P560, "Undef"
  vivify_337:
    get_how $P561, $P560
    find_lex $P562, "$target"
    unless_null $P562, vivify_338
    new $P562, "Undef"
  vivify_338:
    $P563 = $P561."attributes"($P562, 1 :named("local"))
    store_lex "@attributes", $P563
.annotate 'line', 256
    find_lex $P565, "@attributes"
    unless_null $P565, vivify_339
    $P565 = root_new ['parrot';'ResizablePMCArray']
  vivify_339:
    defined $I566, $P565
    unless $I566, for_undef_340
    iter $P564, $P565
    new $P581, 'ExceptionHandler'
    set_label $P581, loop580_handler
    $P581."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P581
  loop580_test:
    unless $P564, loop580_done
    shift $P567, $P564
  loop580_redo:
    .const 'Sub' $P569 = "48_1304277392.509" 
    capture_lex $P569
    $P569($P567)
  loop580_next:
    goto loop580_test
  loop580_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P582, exception, 'type'
    eq $P582, .CONTROL_LOOP_NEXT, loop580_next
    eq $P582, .CONTROL_LOOP_REDO, loop580_redo
  loop580_done:
    pop_eh 
  for_undef_340:
.annotate 'line', 259
    new $P583, "Exception"
    set $P583['type'], .CONTROL_RETURN
    new $P584, "Integer"
    assign $P584, 0
    setattribute $P583, 'payload', $P584
    throw $P583
.annotate 'line', 254
    .return ()
  control_555:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P585, exception, "payload"
    .return ($P585)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block568"  :anon :subid("48_1304277392.509") :outer("47_1304277392.509")
    .param pmc param_570
.annotate 'line', 256
    .lex "$_", param_570
.annotate 'line', 257
    find_lex $P573, "$_"
    unless_null $P573, vivify_341
    new $P573, "Undef"
  vivify_341:
    $S574 = $P573."name"()
    find_lex $P575, "$name"
    unless_null $P575, vivify_342
    new $P575, "Undef"
  vivify_342:
    set $S576, $P575
    iseq $I577, $S574, $S576
    if $I577, if_572
    new $P571, 'Integer'
    set $P571, $I577
    goto if_572_end
  if_572:
    new $P578, "Exception"
    set $P578['type'], .CONTROL_RETURN
    new $P579, "Integer"
    assign $P579, 1
    setattribute $P578, 'payload', $P579
    throw $P578
  if_572_end:
.annotate 'line', 256
    .return ($P571)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("49_1304277392.509") :outer("44_1304277392.509")
    .param pmc param_592
    .param pmc param_593
    .param pmc param_594
.annotate 'line', 262
    .const 'Sub' $P700 = "53_1304277392.509" 
    capture_lex $P700
    .const 'Sub' $P674 = "52_1304277392.509" 
    capture_lex $P674
    .const 'Sub' $P645 = "51_1304277392.509" 
    capture_lex $P645
    .const 'Sub' $P625 = "50_1304277392.509" 
    capture_lex $P625
    .lex "self", param_592
    .lex "$target", param_593
    .lex "@roles", param_594
.annotate 'line', 265
    new $P595, "Undef"
    .lex "$to_compose", $P595
.annotate 'line', 266
    new $P596, "Undef"
    .lex "$to_compose_meta", $P596
.annotate 'line', 281
    $P597 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P597
.annotate 'line', 290
    $P598 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P598
.annotate 'line', 298
    $P599 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P599
.annotate 'line', 310
    $P600 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P600
.annotate 'line', 262
    find_lex $P601, "$to_compose"
    unless_null $P601, vivify_343
    new $P601, "Undef"
  vivify_343:
    find_lex $P602, "$to_compose_meta"
    unless_null $P602, vivify_344
    new $P602, "Undef"
  vivify_344:
.annotate 'line', 267
    find_lex $P604, "@roles"
    unless_null $P604, vivify_345
    $P604 = root_new ['parrot';'ResizablePMCArray']
  vivify_345:
    set $N605, $P604
    iseq $I606, $N605, 1.0
    if $I606, if_603
.annotate 'line', 272
    find_lex $P611, "NQPConcreteRoleHOW"
    find_lex $P612, "$?PACKAGE"
    get_who $P613, $P612
    set $P616, $P613["NQPMu"]
    unless_null $P616, vivify_346
    get_hll_global $P614, "GLOBAL"
    get_who $P615, $P614
    set $P616, $P615["NQPMu"]
  vivify_346:
    $P617 = $P611."new_type"($P616 :named("instance_of"))
    store_lex "$to_compose", $P617
.annotate 'line', 273
    find_lex $P618, "$to_compose"
    unless_null $P618, vivify_347
    new $P618, "Undef"
  vivify_347:
    get_how $P619, $P618
    store_lex "$to_compose_meta", $P619
.annotate 'line', 274
    find_lex $P621, "@roles"
    unless_null $P621, vivify_348
    $P621 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    defined $I622, $P621
    unless $I622, for_undef_349
    iter $P620, $P621
    new $P632, 'ExceptionHandler'
    set_label $P632, loop631_handler
    $P632."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P632
  loop631_test:
    unless $P620, loop631_done
    shift $P623, $P620
  loop631_redo:
    .const 'Sub' $P625 = "50_1304277392.509" 
    capture_lex $P625
    $P625($P623)
  loop631_next:
    goto loop631_test
  loop631_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P633, exception, 'type'
    eq $P633, .CONTROL_LOOP_NEXT, loop631_next
    eq $P633, .CONTROL_LOOP_REDO, loop631_redo
  loop631_done:
    pop_eh 
  for_undef_349:
.annotate 'line', 277
    find_lex $P634, "$to_compose_meta"
    unless_null $P634, vivify_353
    new $P634, "Undef"
  vivify_353:
    find_lex $P635, "$to_compose"
    unless_null $P635, vivify_354
    new $P635, "Undef"
  vivify_354:
    $P636 = $P634."compose"($P635)
    store_lex "$to_compose", $P636
.annotate 'line', 271
    goto if_603_end
  if_603:
.annotate 'line', 268
    find_lex $P607, "@roles"
    unless_null $P607, vivify_355
    $P607 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    set $P608, $P607[0]
    unless_null $P608, vivify_356
    new $P608, "Undef"
  vivify_356:
    store_lex "$to_compose", $P608
.annotate 'line', 269
    find_lex $P609, "$to_compose"
    unless_null $P609, vivify_357
    new $P609, "Undef"
  vivify_357:
    get_how $P610, $P609
    store_lex "$to_compose_meta", $P610
  if_603_end:
.annotate 'line', 281
    find_lex $P637, "$to_compose_meta"
    unless_null $P637, vivify_358
    new $P637, "Undef"
  vivify_358:
    find_lex $P638, "$to_compose"
    unless_null $P638, vivify_359
    new $P638, "Undef"
  vivify_359:
    $P639 = $P637."collisions"($P638)
    store_lex "@collisions", $P639
.annotate 'line', 282
    find_lex $P641, "@collisions"
    unless_null $P641, vivify_360
    $P641 = root_new ['parrot';'ResizablePMCArray']
  vivify_360:
    defined $I642, $P641
    unless $I642, for_undef_361
    iter $P640, $P641
    new $P664, 'ExceptionHandler'
    set_label $P664, loop663_handler
    $P664."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P664
  loop663_test:
    unless $P640, loop663_done
    shift $P643, $P640
  loop663_redo:
    .const 'Sub' $P645 = "51_1304277392.509" 
    capture_lex $P645
    $P645($P643)
  loop663_next:
    goto loop663_test
  loop663_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P665, exception, 'type'
    eq $P665, .CONTROL_LOOP_NEXT, loop663_next
    eq $P665, .CONTROL_LOOP_REDO, loop663_redo
  loop663_done:
    pop_eh 
  for_undef_361:
.annotate 'line', 290
    find_lex $P666, "$to_compose_meta"
    unless_null $P666, vivify_367
    new $P666, "Undef"
  vivify_367:
    find_lex $P667, "$to_compose"
    unless_null $P667, vivify_368
    new $P667, "Undef"
  vivify_368:
    $P668 = $P666."methods"($P667)
    store_lex "@methods", $P668
.annotate 'line', 291
    find_lex $P670, "@methods"
    unless_null $P670, vivify_369
    $P670 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    defined $I671, $P670
    unless $I671, for_undef_370
    iter $P669, $P670
    new $P690, 'ExceptionHandler'
    set_label $P690, loop689_handler
    $P690."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P690
  loop689_test:
    unless $P669, loop689_done
    shift $P672, $P669
  loop689_redo:
    .const 'Sub' $P674 = "52_1304277392.509" 
    capture_lex $P674
    $P674($P672)
  loop689_next:
    goto loop689_test
  loop689_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P691, exception, 'type'
    eq $P691, .CONTROL_LOOP_NEXT, loop689_next
    eq $P691, .CONTROL_LOOP_REDO, loop689_redo
  loop689_done:
    pop_eh 
  for_undef_370:
.annotate 'line', 298
    find_lex $P692, "$to_compose_meta"
    unless_null $P692, vivify_377
    new $P692, "Undef"
  vivify_377:
    find_lex $P693, "$to_compose"
    unless_null $P693, vivify_378
    new $P693, "Undef"
  vivify_378:
    $P694 = $P692."attributes"($P693)
    store_lex "@attributes", $P694
.annotate 'line', 299
    find_lex $P696, "@attributes"
    unless_null $P696, vivify_379
    $P696 = root_new ['parrot';'ResizablePMCArray']
  vivify_379:
    defined $I697, $P696
    unless $I697, for_undef_380
    iter $P695, $P696
    new $P724, 'ExceptionHandler'
    set_label $P724, loop723_handler
    $P724."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P724
  loop723_test:
    unless $P695, loop723_done
    shift $P698, $P695
  loop723_redo:
    .const 'Sub' $P700 = "53_1304277392.509" 
    capture_lex $P700
    $P700($P698)
  loop723_next:
    goto loop723_test
  loop723_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P725, exception, 'type'
    eq $P725, .CONTROL_LOOP_NEXT, loop723_next
    eq $P725, .CONTROL_LOOP_REDO, loop723_redo
  loop723_done:
    pop_eh 
  for_undef_380:
    find_lex $P726, "@done"
    unless_null $P726, vivify_389
    $P726 = root_new ['parrot';'ResizablePMCArray']
  vivify_389:
.annotate 'line', 311
    find_lex $P727, "$to_compose"
    unless_null $P727, vivify_390
    new $P727, "Undef"
  vivify_390:
    find_lex $P728, "@done"
    unless_null $P728, vivify_391
    $P728 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P728
  vivify_391:
    set $P728[0], $P727
.annotate 'line', 262
    .return ($P727)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block624"  :anon :subid("50_1304277392.509") :outer("49_1304277392.509")
    .param pmc param_626
.annotate 'line', 274
    .lex "$_", param_626
.annotate 'line', 275
    find_lex $P627, "$to_compose_meta"
    unless_null $P627, vivify_350
    new $P627, "Undef"
  vivify_350:
    find_lex $P628, "$to_compose"
    unless_null $P628, vivify_351
    new $P628, "Undef"
  vivify_351:
    find_lex $P629, "$_"
    unless_null $P629, vivify_352
    new $P629, "Undef"
  vivify_352:
    $P630 = $P627."add_role"($P628, $P629)
.annotate 'line', 274
    .return ($P630)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block644"  :anon :subid("51_1304277392.509") :outer("49_1304277392.509")
    .param pmc param_646
.annotate 'line', 282
    .lex "$_", param_646
.annotate 'line', 283
    find_lex $P649, "$target"
    unless_null $P649, vivify_362
    new $P649, "Undef"
  vivify_362:
    find_lex $P650, "$_"
    unless_null $P650, vivify_363
    new $P650, "Undef"
  vivify_363:
    set $S651, $P650
    $P652 = "has_method"($P649, $S651, 1)
    unless $P652, unless_648
    set $P647, $P652
    goto unless_648_end
  unless_648:
.annotate 'line', 284
    new $P653, 'String'
    set $P653, "Method '"
    find_lex $P654, "$_"
    unless_null $P654, vivify_364
    new $P654, "Undef"
  vivify_364:
    concat $P655, $P653, $P654
    concat $P656, $P655, "' collides and a resolution must be provided by the class '"
.annotate 'line', 285
    find_lex $P657, "$target"
    unless_null $P657, vivify_365
    new $P657, "Undef"
  vivify_365:
    get_how $P658, $P657
    find_lex $P659, "$target"
    unless_null $P659, vivify_366
    new $P659, "Undef"
  vivify_366:
    $S660 = $P658."name"($P659)
    concat $P661, $P656, $S660
.annotate 'line', 284
    concat $P662, $P661, "'"
.annotate 'line', 285
    die $P662
  unless_648_end:
.annotate 'line', 282
    .return ($P647)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block673"  :anon :subid("52_1304277392.509") :outer("49_1304277392.509")
    .param pmc param_675
.annotate 'line', 291
    .lex "$_", param_675
.annotate 'line', 292
    find_lex $P678, "$target"
    unless_null $P678, vivify_371
    new $P678, "Undef"
  vivify_371:
    find_lex $P679, "$_"
    unless_null $P679, vivify_372
    new $P679, "Undef"
  vivify_372:
    set $S680, $P679
    $P681 = "has_method"($P678, $S680, 0)
    unless $P681, unless_677
    set $P676, $P681
    goto unless_677_end
  unless_677:
.annotate 'line', 293
    find_lex $P682, "$target"
    unless_null $P682, vivify_373
    new $P682, "Undef"
  vivify_373:
    get_how $P683, $P682
    find_lex $P684, "$target"
    unless_null $P684, vivify_374
    new $P684, "Undef"
  vivify_374:
    find_lex $P685, "$_"
    unless_null $P685, vivify_375
    new $P685, "Undef"
  vivify_375:
    set $S686, $P685
    find_lex $P687, "$_"
    unless_null $P687, vivify_376
    new $P687, "Undef"
  vivify_376:
    $P688 = $P683."add_method"($P684, $S686, $P687)
.annotate 'line', 292
    set $P676, $P688
  unless_677_end:
.annotate 'line', 291
    .return ($P676)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block699"  :anon :subid("53_1304277392.509") :outer("49_1304277392.509")
    .param pmc param_701
.annotate 'line', 299
    .lex "$_", param_701
.annotate 'line', 300
    find_lex $P703, "$target"
    unless_null $P703, vivify_381
    new $P703, "Undef"
  vivify_381:
    find_lex $P704, "$_"
    unless_null $P704, vivify_382
    new $P704, "Undef"
  vivify_382:
    $P705 = $P704."name"()
    $P706 = "has_attribute"($P703, $P705)
    unless $P706, if_702_end
.annotate 'line', 301
    new $P707, "String"
    assign $P707, "Attribute '"
    find_lex $P708, "$_"
    unless_null $P708, vivify_383
    new $P708, "Undef"
  vivify_383:
    $S709 = $P708."name"()
    concat $P710, $P707, $S709
    concat $P711, $P710, "' already exists in the class '"
.annotate 'line', 302
    find_lex $P712, "$target"
    unless_null $P712, vivify_384
    new $P712, "Undef"
  vivify_384:
    get_how $P713, $P712
    find_lex $P714, "$target"
    unless_null $P714, vivify_385
    new $P714, "Undef"
  vivify_385:
    $S715 = $P713."name"($P714)
    concat $P716, $P711, $S715
.annotate 'line', 301
    concat $P717, $P716, "', but a role also wishes to compose it"
.annotate 'line', 302
    die $P717
  if_702_end:
.annotate 'line', 304
    find_lex $P718, "$target"
    unless_null $P718, vivify_386
    new $P718, "Undef"
  vivify_386:
    get_how $P719, $P718
    find_lex $P720, "$target"
    unless_null $P720, vivify_387
    new $P720, "Undef"
  vivify_387:
    find_lex $P721, "$_"
    unless_null $P721, vivify_388
    new $P721, "Undef"
  vivify_388:
    $P722 = $P719."add_attribute"($P720, $P721)
.annotate 'line', 299
    .return ($P722)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block735"  :subid("55_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 320
    .const 'Sub' $P1038 = "79_1304277392.509" 
    capture_lex $P1038
    .const 'Sub' $P1030 = "78_1304277392.509" 
    capture_lex $P1030
    .const 'Sub' $P1006 = "76_1304277392.509" 
    capture_lex $P1006
    .const 'Sub' $P1000 = "75_1304277392.509" 
    capture_lex $P1000
    .const 'Sub' $P994 = "74_1304277392.509" 
    capture_lex $P994
    .const 'Sub' $P970 = "72_1304277392.509" 
    capture_lex $P970
    .const 'Sub' $P864 = "67_1304277392.509" 
    capture_lex $P864
    .const 'Sub' $P861 = "66_1304277392.509" 
    capture_lex $P861
    .const 'Sub' $P854 = "65_1304277392.509" 
    capture_lex $P854
    .const 'Sub' $P841 = "64_1304277392.509" 
    capture_lex $P841
    .const 'Sub' $P837 = "63_1304277392.509" 
    capture_lex $P837
    .const 'Sub' $P816 = "62_1304277392.509" 
    capture_lex $P816
    .const 'Sub' $P795 = "61_1304277392.509" 
    capture_lex $P795
    .const 'Sub' $P776 = "60_1304277392.509" 
    capture_lex $P776
    .const 'Sub' $P769 = "59_1304277392.509" 
    capture_lex $P769
    .const 'Sub' $P754 = "58_1304277392.509" 
    capture_lex $P754
    .const 'Sub' $P748 = "57_1304277392.509" 
    capture_lex $P748
    .const 'Sub' $P739 = "56_1304277392.509" 
    capture_lex $P739
    .lex "$?PACKAGE", $P737
    .lex "$?CLASS", $P738
.annotate 'line', 485
    .const 'Sub' $P1030 = "78_1304277392.509" 
    newclosure $P1036, $P1030
.annotate 'line', 320
    .return ($P1036)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "" :load :init :subid("post392") :outer("55_1304277392.509")
.annotate 'line', 320
    .const 'Sub' $P736 = "55_1304277392.509" 
    .local pmc block
    set block, $P736
    .const 'Sub' $P1038 = "79_1304277392.509" 
    capture_lex $P1038
    $P1038()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1037"  :anon :subid("79_1304277392.509") :outer("55_1304277392.509")
.annotate 'line', 320
    nqp_get_sc_object $P1039, "1304277388.915", 23
    .local pmc type_obj
    set type_obj, $P1039
    get_how $P1040, type_obj
    $P1041 = $P1040."compose"(type_obj)
    .return ($P1041)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("56_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_740
    .param pmc param_741 :named("name")
.annotate 'line', 350
    .lex "self", param_740
    .lex "$name", param_741
.annotate 'line', 351
    new $P742, "Undef"
    .lex "$obj", $P742
    find_lex $P743, "self"
    repr_instance_of $P744, $P743
    store_lex "$obj", $P744
.annotate 'line', 352
    find_lex $P745, "$obj"
    unless_null $P745, vivify_393
    new $P745, "Undef"
  vivify_393:
    find_lex $P746, "$name"
    unless_null $P746, vivify_394
    new $P746, "Undef"
  vivify_394:
    $P745."BUILD"($P746 :named("name"))
    find_lex $P747, "$obj"
    unless_null $P747, vivify_395
    new $P747, "Undef"
  vivify_395:
.annotate 'line', 350
    .return ($P747)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("57_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_749
    .param pmc param_750 :named("name")
.annotate 'line', 356
    .lex "self", param_749
    .lex "$name", param_750
.annotate 'line', 357
    find_lex $P751, "$name"
    unless_null $P751, vivify_396
    new $P751, "Undef"
  vivify_396:
    find_lex $P752, "self"
    find_lex $P753, "$?CLASS"
    setattribute $P752, $P753, "$!name", $P751
.annotate 'line', 356
    .return ($P751)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("58_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_755
    .param pmc param_756 :optional :named("name")
    .param int has_param_756 :opt_flag
    .param pmc param_758 :optional :named("repr")
    .param int has_param_758 :opt_flag
.annotate 'line', 362
    .lex "self", param_755
    if has_param_756, optparam_397
    new $P757, "String"
    assign $P757, "<anon>"
    set param_756, $P757
  optparam_397:
    .lex "$name", param_756
    if has_param_758, optparam_398
    new $P759, "String"
    assign $P759, "P6opaque"
    set param_758, $P759
  optparam_398:
    .lex "$repr", param_758
.annotate 'line', 363
    new $P760, "Undef"
    .lex "$metarole", $P760
    find_lex $P761, "self"
    find_lex $P762, "$name"
    unless_null $P762, vivify_399
    new $P762, "Undef"
  vivify_399:
    $P763 = $P761."new"($P762 :named("name"))
    store_lex "$metarole", $P763
.annotate 'line', 365
    find_lex $P764, "$metarole"
    unless_null $P764, vivify_400
    new $P764, "Undef"
  vivify_400:
    find_lex $P765, "$repr"
    unless_null $P765, vivify_401
    new $P765, "Undef"
  vivify_401:
    set $S766, $P765
    repr_type_object_for $P767, $P764, $S766
    $P768 = root_new ['parrot';'Hash']
    set_who $P767, $P768
.annotate 'line', 362
    .return ($P767)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("59_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_770
    .param pmc param_771
    .param pmc param_772
.annotate 'line', 369
    .lex "self", param_770
    .lex "$obj", param_771
    .lex "$body_block", param_772
.annotate 'line', 370
    find_lex $P773, "$body_block"
    unless_null $P773, vivify_402
    new $P773, "Undef"
  vivify_402:
    find_lex $P774, "self"
    find_lex $P775, "$?CLASS"
    setattribute $P774, $P775, "$!body_block", $P773
.annotate 'line', 369
    .return ($P773)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("60_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_777
    .param pmc param_778
    .param pmc param_779
    .param pmc param_780
.annotate 'line', 373
    .lex "self", param_777
    .lex "$obj", param_778
    .lex "$name", param_779
    .lex "$code_obj", param_780
.annotate 'line', 374
    find_lex $P782, "$name"
    unless_null $P782, vivify_403
    new $P782, "Undef"
  vivify_403:
    find_lex $P783, "self"
    find_lex $P784, "$?CLASS"
    getattribute $P785, $P783, $P784, "%!methods"
    unless_null $P785, vivify_404
    $P785 = root_new ['parrot';'Hash']
  vivify_404:
    set $P786, $P785[$P782]
    unless_null $P786, vivify_405
    new $P786, "Undef"
  vivify_405:
    unless $P786, if_781_end
.annotate 'line', 375
    new $P787, "String"
    assign $P787, "This role already has a method named "
    find_lex $P788, "$name"
    unless_null $P788, vivify_406
    new $P788, "Undef"
  vivify_406:
    concat $P789, $P787, $P788
    die $P789
  if_781_end:
.annotate 'line', 377
    find_lex $P790, "$code_obj"
    unless_null $P790, vivify_407
    new $P790, "Undef"
  vivify_407:
    find_lex $P791, "$name"
    unless_null $P791, vivify_408
    new $P791, "Undef"
  vivify_408:
    find_lex $P792, "self"
    find_lex $P793, "$?CLASS"
    getattribute $P794, $P792, $P793, "%!methods"
    unless_null $P794, vivify_409
    $P794 = root_new ['parrot';'Hash']
    setattribute $P792, $P793, "%!methods", $P794
  vivify_409:
    set $P794[$P791], $P790
.annotate 'line', 373
    .return ($P790)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("61_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_796
    .param pmc param_797
    .param pmc param_798
    .param pmc param_799
.annotate 'line', 380
    .lex "self", param_796
    .lex "$obj", param_797
    .lex "$name", param_798
    .lex "$code_obj", param_799
.annotate 'line', 381
    $P800 = root_new ['parrot';'Hash']
    .lex "%todo", $P800
.annotate 'line', 380
    find_lex $P801, "%todo"
    unless_null $P801, vivify_410
    $P801 = root_new ['parrot';'Hash']
  vivify_410:
.annotate 'line', 382
    find_lex $P802, "$name"
    unless_null $P802, vivify_411
    new $P802, "Undef"
  vivify_411:
    find_lex $P803, "%todo"
    unless_null $P803, vivify_412
    $P803 = root_new ['parrot';'Hash']
    store_lex "%todo", $P803
  vivify_412:
    set $P803["name"], $P802
.annotate 'line', 383
    find_lex $P804, "$code_obj"
    unless_null $P804, vivify_413
    new $P804, "Undef"
  vivify_413:
    find_lex $P805, "%todo"
    unless_null $P805, vivify_414
    $P805 = root_new ['parrot';'Hash']
    store_lex "%todo", $P805
  vivify_414:
    set $P805["code"], $P804
.annotate 'line', 384
    find_lex $P806, "%todo"
    unless_null $P806, vivify_415
    $P806 = root_new ['parrot';'Hash']
  vivify_415:
    find_lex $P807, "self"
    find_lex $P808, "$?CLASS"
    getattribute $P809, $P807, $P808, "@!multi_methods_to_incorporate"
    unless_null $P809, vivify_416
    $P809 = root_new ['parrot';'ResizablePMCArray']
  vivify_416:
    set $N810, $P809
    set $I811, $N810
    find_lex $P812, "self"
    find_lex $P813, "$?CLASS"
    getattribute $P814, $P812, $P813, "@!multi_methods_to_incorporate"
    unless_null $P814, vivify_417
    $P814 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P812, $P813, "@!multi_methods_to_incorporate", $P814
  vivify_417:
    set $P814[$I811], $P806
    find_lex $P815, "$code_obj"
    unless_null $P815, vivify_418
    new $P815, "Undef"
  vivify_418:
.annotate 'line', 380
    .return ($P815)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("62_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_817
    .param pmc param_818
    .param pmc param_819
.annotate 'line', 388
    .lex "self", param_817
    .lex "$obj", param_818
    .lex "$meta_attr", param_819
.annotate 'line', 389
    new $P820, "Undef"
    .lex "$name", $P820
    find_lex $P821, "$meta_attr"
    unless_null $P821, vivify_419
    new $P821, "Undef"
  vivify_419:
    $P822 = $P821."name"()
    store_lex "$name", $P822
.annotate 'line', 390
    find_lex $P824, "$name"
    unless_null $P824, vivify_420
    new $P824, "Undef"
  vivify_420:
    find_lex $P825, "self"
    find_lex $P826, "$?CLASS"
    getattribute $P827, $P825, $P826, "%!attributes"
    unless_null $P827, vivify_421
    $P827 = root_new ['parrot';'Hash']
  vivify_421:
    set $P828, $P827[$P824]
    unless_null $P828, vivify_422
    new $P828, "Undef"
  vivify_422:
    unless $P828, if_823_end
.annotate 'line', 391
    new $P829, "String"
    assign $P829, "This role already has an attribute named "
    find_lex $P830, "$name"
    unless_null $P830, vivify_423
    new $P830, "Undef"
  vivify_423:
    concat $P831, $P829, $P830
    die $P831
  if_823_end:
.annotate 'line', 393
    find_lex $P832, "$meta_attr"
    unless_null $P832, vivify_424
    new $P832, "Undef"
  vivify_424:
    find_lex $P833, "$name"
    unless_null $P833, vivify_425
    new $P833, "Undef"
  vivify_425:
    find_lex $P834, "self"
    find_lex $P835, "$?CLASS"
    getattribute $P836, $P834, $P835, "%!attributes"
    unless_null $P836, vivify_426
    $P836 = root_new ['parrot';'Hash']
    setattribute $P834, $P835, "%!attributes", $P836
  vivify_426:
    set $P836[$P833], $P832
.annotate 'line', 388
    .return ($P832)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("63_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_838
    .param pmc param_839
    .param pmc param_840
.annotate 'line', 396
    .lex "self", param_838
    .lex "$obj", param_839
    .lex "$parent", param_840
.annotate 'line', 397
    die "A role cannot inherit from a class"
.annotate 'line', 396
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("64_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_842
    .param pmc param_843
    .param pmc param_844
.annotate 'line', 400
    .lex "self", param_842
    .lex "$obj", param_843
    .lex "$role", param_844
.annotate 'line', 401
    find_lex $P845, "$role"
    unless_null $P845, vivify_427
    new $P845, "Undef"
  vivify_427:
    find_lex $P846, "self"
    find_lex $P847, "$?CLASS"
    getattribute $P848, $P846, $P847, "@!roles"
    unless_null $P848, vivify_428
    $P848 = root_new ['parrot';'ResizablePMCArray']
  vivify_428:
    set $N849, $P848
    set $I850, $N849
    find_lex $P851, "self"
    find_lex $P852, "$?CLASS"
    getattribute $P853, $P851, $P852, "@!roles"
    unless_null $P853, vivify_429
    $P853 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P851, $P852, "@!roles", $P853
  vivify_429:
    set $P853[$I850], $P845
.annotate 'line', 400
    .return ($P845)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("65_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_855
    .param pmc param_856
.annotate 'line', 405
    .lex "self", param_855
    .lex "$obj", param_856
.annotate 'line', 406
    new $P857, "Integer"
    assign $P857, 1
    find_lex $P858, "self"
    find_lex $P859, "$?CLASS"
    setattribute $P858, $P859, "$!composed", $P857
    find_lex $P860, "$obj"
    unless_null $P860, vivify_430
    new $P860, "Undef"
  vivify_430:
.annotate 'line', 405
    .return ($P860)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("66_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_862
    .param pmc param_863
.annotate 'line', 416
    .lex "self", param_862
    .lex "$obj", param_863
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("67_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_867
    .param pmc param_868
    .param pmc param_869
.annotate 'line', 422
    .const 'Sub' $P948 = "71_1304277392.509" 
    capture_lex $P948
    .const 'Sub' $P927 = "70_1304277392.509" 
    capture_lex $P927
    .const 'Sub' $P906 = "69_1304277392.509" 
    capture_lex $P906
    .const 'Sub' $P888 = "68_1304277392.509" 
    capture_lex $P888
    new $P866, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P866, control_865
    push_eh $P866
    .lex "self", param_867
    .lex "$obj", param_868
    .lex "$class_arg", param_869
.annotate 'line', 428
    new $P870, "Undef"
    .lex "$irole", $P870
.annotate 'line', 425
    find_lex $P871, "self"
    find_lex $P872, "$?CLASS"
    getattribute $P873, $P871, $P872, "$!body_block"
    unless_null $P873, vivify_431
    new $P873, "Undef"
  vivify_431:
    find_lex $P874, "$class_arg"
    unless_null $P874, vivify_432
    new $P874, "Undef"
  vivify_432:
    $P873($P874)
.annotate 'line', 428
    find_lex $P875, "NQPConcreteRoleHOW"
    find_lex $P876, "self"
    find_lex $P877, "$?CLASS"
    getattribute $P878, $P876, $P877, "$!name"
    unless_null $P878, vivify_433
    new $P878, "Undef"
  vivify_433:
    find_lex $P879, "$obj"
    unless_null $P879, vivify_434
    new $P879, "Undef"
  vivify_434:
    $P880 = $P875."new_type"($P878 :named("name"), $P879 :named("instance_of"))
    store_lex "$irole", $P880
.annotate 'line', 432
    find_lex $P882, "self"
    find_lex $P883, "$?CLASS"
    getattribute $P884, $P882, $P883, "%!attributes"
    unless_null $P884, vivify_435
    $P884 = root_new ['parrot';'Hash']
  vivify_435:
    defined $I885, $P884
    unless $I885, for_undef_436
    iter $P881, $P884
    new $P897, 'ExceptionHandler'
    set_label $P897, loop896_handler
    $P897."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P897
  loop896_test:
    unless $P881, loop896_done
    shift $P886, $P881
  loop896_redo:
    .const 'Sub' $P888 = "68_1304277392.509" 
    capture_lex $P888
    $P888($P886)
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
  for_undef_436:
.annotate 'line', 438
    find_lex $P900, "self"
    find_lex $P901, "$?CLASS"
    getattribute $P902, $P900, $P901, "%!methods"
    unless_null $P902, vivify_440
    $P902 = root_new ['parrot';'Hash']
  vivify_440:
    defined $I903, $P902
    unless $I903, for_undef_441
    iter $P899, $P902
    new $P918, 'ExceptionHandler'
    set_label $P918, loop917_handler
    $P918."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P918
  loop917_test:
    unless $P899, loop917_done
    shift $P904, $P899
  loop917_redo:
    .const 'Sub' $P906 = "69_1304277392.509" 
    capture_lex $P906
    $P906($P904)
  loop917_next:
    goto loop917_test
  loop917_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P919, exception, 'type'
    eq $P919, .CONTROL_LOOP_NEXT, loop917_next
    eq $P919, .CONTROL_LOOP_REDO, loop917_redo
  loop917_done:
    pop_eh 
  for_undef_441:
.annotate 'line', 441
    find_lex $P921, "self"
    find_lex $P922, "$?CLASS"
    getattribute $P923, $P921, $P922, "@!multi_methods_to_incorporate"
    unless_null $P923, vivify_446
    $P923 = root_new ['parrot';'ResizablePMCArray']
  vivify_446:
    defined $I924, $P923
    unless $I924, for_undef_447
    iter $P920, $P923
    new $P939, 'ExceptionHandler'
    set_label $P939, loop938_handler
    $P939."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P939
  loop938_test:
    unless $P920, loop938_done
    shift $P925, $P920
  loop938_redo:
    .const 'Sub' $P927 = "70_1304277392.509" 
    capture_lex $P927
    $P927($P925)
  loop938_next:
    goto loop938_test
  loop938_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P940, exception, 'type'
    eq $P940, .CONTROL_LOOP_NEXT, loop938_next
    eq $P940, .CONTROL_LOOP_REDO, loop938_redo
  loop938_done:
    pop_eh 
  for_undef_447:
.annotate 'line', 446
    find_lex $P942, "self"
    find_lex $P943, "$?CLASS"
    getattribute $P944, $P942, $P943, "@!roles"
    unless_null $P944, vivify_454
    $P944 = root_new ['parrot';'ResizablePMCArray']
  vivify_454:
    defined $I945, $P944
    unless $I945, for_undef_455
    iter $P941, $P944
    new $P962, 'ExceptionHandler'
    set_label $P962, loop961_handler
    $P962."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P962
  loop961_test:
    unless $P941, loop961_done
    shift $P946, $P941
  loop961_redo:
    .const 'Sub' $P948 = "71_1304277392.509" 
    capture_lex $P948
    $P948($P946)
  loop961_next:
    goto loop961_test
  loop961_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P963, exception, 'type'
    eq $P963, .CONTROL_LOOP_NEXT, loop961_next
    eq $P963, .CONTROL_LOOP_REDO, loop961_redo
  loop961_done:
    pop_eh 
  for_undef_455:
.annotate 'line', 452
    find_lex $P964, "$irole"
    unless_null $P964, vivify_462
    new $P964, "Undef"
  vivify_462:
    get_how $P965, $P964
    find_lex $P966, "$irole"
    unless_null $P966, vivify_463
    new $P966, "Undef"
  vivify_463:
    $P965."compose"($P966)
.annotate 'line', 453
    new $P967, "Exception"
    set $P967['type'], .CONTROL_RETURN
    find_lex $P968, "$irole"
    unless_null $P968, vivify_464
    new $P968, "Undef"
  vivify_464:
    setattribute $P967, 'payload', $P968
    throw $P967
.annotate 'line', 422
    .return ()
  control_865:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P969, exception, "payload"
    .return ($P969)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block887"  :anon :subid("68_1304277392.509") :outer("67_1304277392.509")
    .param pmc param_889
.annotate 'line', 432
    .lex "$_", param_889
.annotate 'line', 433
    find_lex $P890, "$irole"
    unless_null $P890, vivify_437
    new $P890, "Undef"
  vivify_437:
    get_how $P891, $P890
    find_lex $P892, "$irole"
    unless_null $P892, vivify_438
    new $P892, "Undef"
  vivify_438:
    find_lex $P893, "$_"
    unless_null $P893, vivify_439
    new $P893, "Undef"
  vivify_439:
    $P894 = $P893."value"()
    $P895 = $P891."add_attribute"($P892, $P894)
.annotate 'line', 432
    .return ($P895)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block905"  :anon :subid("69_1304277392.509") :outer("67_1304277392.509")
    .param pmc param_907
.annotate 'line', 438
    .lex "$_", param_907
.annotate 'line', 439
    find_lex $P908, "$irole"
    unless_null $P908, vivify_442
    new $P908, "Undef"
  vivify_442:
    get_how $P909, $P908
    find_lex $P910, "$irole"
    unless_null $P910, vivify_443
    new $P910, "Undef"
  vivify_443:
    find_lex $P911, "$_"
    unless_null $P911, vivify_444
    new $P911, "Undef"
  vivify_444:
    $P912 = $P911."key"()
    find_lex $P913, "$_"
    unless_null $P913, vivify_445
    new $P913, "Undef"
  vivify_445:
    $P914 = $P913."value"()
    clone $P915, $P914
    $P916 = $P909."add_method"($P910, $P912, $P915)
.annotate 'line', 438
    .return ($P916)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block926"  :anon :subid("70_1304277392.509") :outer("67_1304277392.509")
    .param pmc param_928
.annotate 'line', 441
    .lex "$_", param_928
.annotate 'line', 442
    find_lex $P929, "$irole"
    unless_null $P929, vivify_448
    new $P929, "Undef"
  vivify_448:
    get_how $P930, $P929
    find_lex $P931, "$irole"
    unless_null $P931, vivify_449
    new $P931, "Undef"
  vivify_449:
    find_lex $P932, "$_"
    unless_null $P932, vivify_450
    $P932 = root_new ['parrot';'Hash']
  vivify_450:
    set $P933, $P932["name"]
    unless_null $P933, vivify_451
    new $P933, "Undef"
  vivify_451:
    find_lex $P934, "$_"
    unless_null $P934, vivify_452
    $P934 = root_new ['parrot';'Hash']
  vivify_452:
    set $P935, $P934["code"]
    unless_null $P935, vivify_453
    new $P935, "Undef"
  vivify_453:
    clone $P936, $P935
    $P937 = $P930."add_multi_method"($P931, $P933, $P936)
.annotate 'line', 441
    .return ($P937)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block947"  :anon :subid("71_1304277392.509") :outer("67_1304277392.509")
    .param pmc param_950
.annotate 'line', 447
    new $P949, "Undef"
    .lex "$instantiated", $P949
    .lex "$_", param_950
    find_lex $P951, "$irole"
    unless_null $P951, vivify_456
    new $P951, "Undef"
  vivify_456:
    get_how $P952, $P951
    find_lex $P953, "$irole"
    unless_null $P953, vivify_457
    new $P953, "Undef"
  vivify_457:
    find_lex $P954, "$class_arg"
    unless_null $P954, vivify_458
    new $P954, "Undef"
  vivify_458:
    $P955 = $P952."instantiate"($P953, $P954)
    store_lex "$instantiated", $P955
.annotate 'line', 448
    find_lex $P956, "$irole"
    unless_null $P956, vivify_459
    new $P956, "Undef"
  vivify_459:
    get_how $P957, $P956
    find_lex $P958, "$irole"
    unless_null $P958, vivify_460
    new $P958, "Undef"
  vivify_460:
    find_lex $P959, "$instantiated"
    unless_null $P959, vivify_461
    new $P959, "Undef"
  vivify_461:
    $P960 = $P957."add_role"($P958, $P959)
.annotate 'line', 446
    .return ($P960)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("72_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_971
    .param pmc param_972
    .param pmc param_973 :optional :named("local")
    .param int has_param_973 :opt_flag
.annotate 'line', 461
    .const 'Sub' $P984 = "73_1304277392.509" 
    capture_lex $P984
    .lex "self", param_971
    .lex "$obj", param_972
    if has_param_973, optparam_465
    new $P974, "Undef"
    set param_973, $P974
  optparam_465:
    .lex "$local", param_973
.annotate 'line', 462
    $P975 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P975
.annotate 'line', 461
    find_lex $P976, "@meths"
    unless_null $P976, vivify_466
    $P976 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
.annotate 'line', 463
    find_lex $P978, "self"
    find_lex $P979, "$?CLASS"
    getattribute $P980, $P978, $P979, "%!methods"
    unless_null $P980, vivify_467
    $P980 = root_new ['parrot';'Hash']
  vivify_467:
    defined $I981, $P980
    unless $I981, for_undef_468
    iter $P977, $P980
    new $P991, 'ExceptionHandler'
    set_label $P991, loop990_handler
    $P991."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P991
  loop990_test:
    unless $P977, loop990_done
    shift $P982, $P977
  loop990_redo:
    .const 'Sub' $P984 = "73_1304277392.509" 
    capture_lex $P984
    $P984($P982)
  loop990_next:
    goto loop990_test
  loop990_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P992, exception, 'type'
    eq $P992, .CONTROL_LOOP_NEXT, loop990_next
    eq $P992, .CONTROL_LOOP_REDO, loop990_redo
  loop990_done:
    pop_eh 
  for_undef_468:
    find_lex $P993, "@meths"
    unless_null $P993, vivify_471
    $P993 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
.annotate 'line', 461
    .return ($P993)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block983"  :anon :subid("73_1304277392.509") :outer("72_1304277392.509")
    .param pmc param_985
.annotate 'line', 463
    .lex "$_", param_985
.annotate 'line', 464
    find_lex $P986, "@meths"
    unless_null $P986, vivify_469
    $P986 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    find_lex $P987, "$_"
    unless_null $P987, vivify_470
    new $P987, "Undef"
  vivify_470:
    $P988 = $P987."value"()
    $P989 = $P986."push"($P988)
.annotate 'line', 463
    .return ($P989)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("74_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_995
    .param pmc param_996
.annotate 'line', 469
    .lex "self", param_995
    .lex "$obj", param_996
    find_lex $P997, "self"
    find_lex $P998, "$?CLASS"
    getattribute $P999, $P997, $P998, "%!methods"
    unless_null $P999, vivify_472
    $P999 = root_new ['parrot';'Hash']
  vivify_472:
    .return ($P999)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("75_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_1001
    .param pmc param_1002
.annotate 'line', 473
    .lex "self", param_1001
    .lex "$obj", param_1002
    find_lex $P1003, "self"
    find_lex $P1004, "$?CLASS"
    getattribute $P1005, $P1003, $P1004, "$!name"
    unless_null $P1005, vivify_473
    new $P1005, "Undef"
  vivify_473:
    .return ($P1005)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("76_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_1007
    .param pmc param_1008
    .param pmc param_1009 :optional :named("local")
    .param int has_param_1009 :opt_flag
.annotate 'line', 477
    .const 'Sub' $P1020 = "77_1304277392.509" 
    capture_lex $P1020
    .lex "self", param_1007
    .lex "$obj", param_1008
    if has_param_1009, optparam_474
    new $P1010, "Undef"
    set param_1009, $P1010
  optparam_474:
    .lex "$local", param_1009
.annotate 'line', 478
    $P1011 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1011
.annotate 'line', 477
    find_lex $P1012, "@attrs"
    unless_null $P1012, vivify_475
    $P1012 = root_new ['parrot';'ResizablePMCArray']
  vivify_475:
.annotate 'line', 479
    find_lex $P1014, "self"
    find_lex $P1015, "$?CLASS"
    getattribute $P1016, $P1014, $P1015, "%!attributes"
    unless_null $P1016, vivify_476
    $P1016 = root_new ['parrot';'Hash']
  vivify_476:
    defined $I1017, $P1016
    unless $I1017, for_undef_477
    iter $P1013, $P1016
    new $P1027, 'ExceptionHandler'
    set_label $P1027, loop1026_handler
    $P1027."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1027
  loop1026_test:
    unless $P1013, loop1026_done
    shift $P1018, $P1013
  loop1026_redo:
    .const 'Sub' $P1020 = "77_1304277392.509" 
    capture_lex $P1020
    $P1020($P1018)
  loop1026_next:
    goto loop1026_test
  loop1026_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1028, exception, 'type'
    eq $P1028, .CONTROL_LOOP_NEXT, loop1026_next
    eq $P1028, .CONTROL_LOOP_REDO, loop1026_redo
  loop1026_done:
    pop_eh 
  for_undef_477:
    find_lex $P1029, "@attrs"
    unless_null $P1029, vivify_480
    $P1029 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
.annotate 'line', 477
    .return ($P1029)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1019"  :anon :subid("77_1304277392.509") :outer("76_1304277392.509")
    .param pmc param_1021
.annotate 'line', 479
    .lex "$_", param_1021
.annotate 'line', 480
    find_lex $P1022, "@attrs"
    unless_null $P1022, vivify_478
    $P1022 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
    find_lex $P1023, "$_"
    unless_null $P1023, vivify_479
    new $P1023, "Undef"
  vivify_479:
    $P1024 = $P1023."value"()
    $P1025 = $P1022."push"($P1024)
.annotate 'line', 479
    .return ($P1025)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("78_1304277392.509") :outer("55_1304277392.509")
    .param pmc param_1031
    .param pmc param_1032
.annotate 'line', 485
    .lex "self", param_1031
    .lex "$obj", param_1032
    find_lex $P1033, "self"
    find_lex $P1034, "$?CLASS"
    getattribute $P1035, $P1033, $P1034, "@!roles"
    unless_null $P1035, vivify_481
    $P1035 = root_new ['parrot';'ResizablePMCArray']
  vivify_481:
    .return ($P1035)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1042"  :subid("80_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 495
    .const 'Sub' $P2036 = "136_1304277392.509" 
    capture_lex $P2036
    .const 'Sub' $P1999 = "134_1304277392.509" 
    capture_lex $P1999
    .const 'Sub' $P1963 = "132_1304277392.509" 
    capture_lex $P1963
    .const 'Sub' $P1929 = "131_1304277392.509" 
    capture_lex $P1929
    .const 'Sub' $P1892 = "130_1304277392.509" 
    capture_lex $P1892
    .const 'Sub' $P1885 = "129_1304277392.509" 
    capture_lex $P1885
    .const 'Sub' $P1862 = "127_1304277392.509" 
    capture_lex $P1862
    .const 'Sub' $P1856 = "126_1304277392.509" 
    capture_lex $P1856
    .const 'Sub' $P1850 = "125_1304277392.509" 
    capture_lex $P1850
    .const 'Sub' $P1827 = "123_1304277392.509" 
    capture_lex $P1827
    .const 'Sub' $P1820 = "122_1304277392.509" 
    capture_lex $P1820
    .const 'Sub' $P1806 = "121_1304277392.509" 
    capture_lex $P1806
    .const 'Sub' $P1757 = "118_1304277392.509" 
    capture_lex $P1757
    .const 'Sub' $P1712 = "115_1304277392.509" 
    capture_lex $P1712
    .const 'Sub' $P1675 = "112_1304277392.509" 
    capture_lex $P1675
    .const 'Sub' $P1545 = "107_1304277392.509" 
    capture_lex $P1545
    .const 'Sub' $P1439 = "103_1304277392.509" 
    capture_lex $P1439
    .const 'Sub' $P1413 = "102_1304277392.509" 
    capture_lex $P1413
    .const 'Sub' $P1379 = "100_1304277392.509" 
    capture_lex $P1379
    .const 'Sub' $P1372 = "99_1304277392.509" 
    capture_lex $P1372
    .const 'Sub' $P1334 = "97_1304277392.509" 
    capture_lex $P1334
    .const 'Sub' $P1313 = "96_1304277392.509" 
    capture_lex $P1313
    .const 'Sub' $P1292 = "95_1304277392.509" 
    capture_lex $P1292
    .const 'Sub' $P1257 = "94_1304277392.509" 
    capture_lex $P1257
    .const 'Sub' $P1242 = "93_1304277392.509" 
    capture_lex $P1242
    .const 'Sub' $P1235 = "92_1304277392.509" 
    capture_lex $P1235
    .const 'Sub' $P1225 = "91_1304277392.509" 
    capture_lex $P1225
    .const 'Sub' $P1086 = "84_1304277392.509" 
    capture_lex $P1086
    .const 'Sub' $P1044 = "81_1304277392.509" 
    capture_lex $P1044
.annotate 'line', 714
    .const 'Sub' $P1044 = "81_1304277392.509" 
    newclosure $P1085, $P1044
    .lex "compute_c3_mro", $P1085
.annotate 'line', 736
    .const 'Sub' $P1086 = "84_1304277392.509" 
    newclosure $P1222, $P1086
    .lex "c3_merge", $P1222
.annotate 'line', 495
    .lex "$?PACKAGE", $P1223
    .lex "$?CLASS", $P1224
.annotate 'line', 660
    find_lex $P1673, "compute_c3_mro"
    find_lex $P1674, "c3_merge"
.annotate 'line', 920
    .const 'Sub' $P1999 = "134_1304277392.509" 
    newclosure $P2034, $P1999
.annotate 'line', 495
    .return ($P2034)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "" :load :init :subid("post482") :outer("80_1304277392.509")
.annotate 'line', 495
    .const 'Sub' $P1043 = "80_1304277392.509" 
    .local pmc block
    set block, $P1043
    .const 'Sub' $P2036 = "136_1304277392.509" 
    capture_lex $P2036
    $P2036()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block2035"  :anon :subid("136_1304277392.509") :outer("80_1304277392.509")
.annotate 'line', 495
    nqp_get_sc_object $P2037, "1304277388.915", 41
    .local pmc type_obj
    set type_obj, $P2037
    get_how $P2038, type_obj
    $P2039 = $P2038."compose"(type_obj)
    .return ($P2039)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("81_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1047
.annotate 'line', 714
    .const 'Sub' $P1059 = "82_1304277392.509" 
    capture_lex $P1059
    new $P1046, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1046, control_1045
    push_eh $P1046
    .lex "$class", param_1047
.annotate 'line', 715
    $P1048 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1048
.annotate 'line', 718
    $P1049 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1049
.annotate 'line', 715
    find_lex $P1050, "$class"
    unless_null $P1050, vivify_483
    new $P1050, "Undef"
  vivify_483:
    get_how $P1051, $P1050
    find_lex $P1052, "$class"
    unless_null $P1052, vivify_484
    new $P1052, "Undef"
  vivify_484:
    $P1053 = $P1051."parents"($P1052, 1 :named("local"))
    store_lex "@immediate_parents", $P1053
    find_lex $P1054, "@result"
    unless_null $P1054, vivify_485
    $P1054 = root_new ['parrot';'ResizablePMCArray']
  vivify_485:
.annotate 'line', 719
    find_lex $P1056, "@immediate_parents"
    unless_null $P1056, vivify_486
    $P1056 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    set $N1057, $P1056
    unless $N1057, if_1055_end
    .const 'Sub' $P1059 = "82_1304277392.509" 
    capture_lex $P1059
    $P1059()
  if_1055_end:
.annotate 'line', 731
    find_lex $P1080, "@result"
    unless_null $P1080, vivify_495
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_495:
    find_lex $P1081, "$class"
    unless_null $P1081, vivify_496
    new $P1081, "Undef"
  vivify_496:
    $P1080."unshift"($P1081)
.annotate 'line', 732
    new $P1082, "Exception"
    set $P1082['type'], .CONTROL_RETURN
    find_lex $P1083, "@result"
    unless_null $P1083, vivify_497
    $P1083 = root_new ['parrot';'ResizablePMCArray']
  vivify_497:
    setattribute $P1082, 'payload', $P1083
    throw $P1082
.annotate 'line', 714
    .return ()
  control_1045:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1084, exception, "payload"
    .return ($P1084)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1058"  :anon :subid("82_1304277392.509") :outer("81_1304277392.509")
.annotate 'line', 719
    .const 'Sub' $P1067 = "83_1304277392.509" 
    capture_lex $P1067
.annotate 'line', 722
    $P1060 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1060
.annotate 'line', 719
    find_lex $P1061, "@merge_list"
    unless_null $P1061, vivify_487
    $P1061 = root_new ['parrot';'ResizablePMCArray']
  vivify_487:
.annotate 'line', 723
    find_lex $P1063, "@immediate_parents"
    unless_null $P1063, vivify_488
    $P1063 = root_new ['parrot';'ResizablePMCArray']
  vivify_488:
    defined $I1064, $P1063
    unless $I1064, for_undef_489
    iter $P1062, $P1063
    new $P1074, 'ExceptionHandler'
    set_label $P1074, loop1073_handler
    $P1074."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1074
  loop1073_test:
    unless $P1062, loop1073_done
    shift $P1065, $P1062
  loop1073_redo:
    .const 'Sub' $P1067 = "83_1304277392.509" 
    capture_lex $P1067
    $P1067($P1065)
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
  for_undef_489:
.annotate 'line', 726
    find_lex $P1076, "@merge_list"
    unless_null $P1076, vivify_492
    $P1076 = root_new ['parrot';'ResizablePMCArray']
  vivify_492:
    find_lex $P1077, "@immediate_parents"
    unless_null $P1077, vivify_493
    $P1077 = root_new ['parrot';'ResizablePMCArray']
  vivify_493:
    $P1076."push"($P1077)
.annotate 'line', 727
    find_lex $P1078, "@merge_list"
    unless_null $P1078, vivify_494
    $P1078 = root_new ['parrot';'ResizablePMCArray']
  vivify_494:
    $P1079 = "c3_merge"($P1078)
    store_lex "@result", $P1079
.annotate 'line', 719
    .return ($P1079)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1066"  :anon :subid("83_1304277392.509") :outer("82_1304277392.509")
    .param pmc param_1068
.annotate 'line', 723
    .lex "$_", param_1068
.annotate 'line', 724
    find_lex $P1069, "@merge_list"
    unless_null $P1069, vivify_490
    $P1069 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    find_lex $P1070, "$_"
    unless_null $P1070, vivify_491
    new $P1070, "Undef"
  vivify_491:
    $P1071 = "compute_c3_mro"($P1070)
    $P1072 = $P1069."push"($P1071)
.annotate 'line', 723
    .return ($P1072)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("84_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1089
.annotate 'line', 736
    .const 'Sub' $P1182 = "89_1304277392.509" 
    capture_lex $P1182
    .const 'Sub' $P1104 = "85_1304277392.509" 
    capture_lex $P1104
    new $P1088, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1088, control_1087
    push_eh $P1088
    .lex "@merge_list", param_1089
.annotate 'line', 737
    $P1090 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1090
.annotate 'line', 738
    new $P1091, "Undef"
    .lex "$accepted", $P1091
.annotate 'line', 739
    new $P1092, "Undef"
    .lex "$something_accepted", $P1092
.annotate 'line', 740
    new $P1093, "Undef"
    .lex "$cand_count", $P1093
.annotate 'line', 783
    new $P1094, "Undef"
    .lex "$i", $P1094
.annotate 'line', 736
    find_lex $P1095, "@result"
    unless_null $P1095, vivify_498
    $P1095 = root_new ['parrot';'ResizablePMCArray']
  vivify_498:
    find_lex $P1096, "$accepted"
    unless_null $P1096, vivify_499
    new $P1096, "Undef"
  vivify_499:
.annotate 'line', 739
    new $P1097, "Integer"
    assign $P1097, 0
    store_lex "$something_accepted", $P1097
.annotate 'line', 740
    new $P1098, "Integer"
    assign $P1098, 0
    store_lex "$cand_count", $P1098
.annotate 'line', 743
    find_lex $P1100, "@merge_list"
    unless_null $P1100, vivify_500
    $P1100 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    defined $I1101, $P1100
    unless $I1101, for_undef_501
    iter $P1099, $P1100
    new $P1165, 'ExceptionHandler'
    set_label $P1165, loop1164_handler
    $P1165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1165
  loop1164_test:
    unless $P1099, loop1164_done
    shift $P1102, $P1099
  loop1164_redo:
    .const 'Sub' $P1104 = "85_1304277392.509" 
    capture_lex $P1104
    $P1104($P1102)
  loop1164_next:
    goto loop1164_test
  loop1164_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1166, exception, 'type'
    eq $P1166, .CONTROL_LOOP_NEXT, loop1164_next
    eq $P1166, .CONTROL_LOOP_REDO, loop1164_redo
  loop1164_done:
    pop_eh 
  for_undef_501:
.annotate 'line', 773
    find_lex $P1168, "$cand_count"
    unless_null $P1168, vivify_520
    new $P1168, "Undef"
  vivify_520:
    set $N1169, $P1168
    iseq $I1170, $N1169, 0.0
    unless $I1170, if_1167_end
.annotate 'line', 774
    new $P1171, "Exception"
    set $P1171['type'], .CONTROL_RETURN
    find_lex $P1172, "@result"
    unless_null $P1172, vivify_521
    $P1172 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    setattribute $P1171, 'payload', $P1172
    throw $P1171
  if_1167_end:
.annotate 'line', 778
    find_lex $P1174, "$something_accepted"
    unless_null $P1174, vivify_522
    new $P1174, "Undef"
  vivify_522:
    if $P1174, unless_1173_end
.annotate 'line', 779
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1173_end:
.annotate 'line', 783
    new $P1175, "Integer"
    assign $P1175, 0
    store_lex "$i", $P1175
.annotate 'line', 784
    new $P1213, 'ExceptionHandler'
    set_label $P1213, loop1212_handler
    $P1213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1213
  loop1212_test:
    find_lex $P1176, "$i"
    unless_null $P1176, vivify_523
    new $P1176, "Undef"
  vivify_523:
    set $N1177, $P1176
    find_lex $P1178, "@merge_list"
    unless_null $P1178, vivify_524
    $P1178 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    set $N1179, $P1178
    islt $I1180, $N1177, $N1179
    unless $I1180, loop1212_done
  loop1212_redo:
    .const 'Sub' $P1182 = "89_1304277392.509" 
    capture_lex $P1182
    $P1182()
  loop1212_next:
    goto loop1212_test
  loop1212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1214, exception, 'type'
    eq $P1214, .CONTROL_LOOP_NEXT, loop1212_next
    eq $P1214, .CONTROL_LOOP_REDO, loop1212_redo
  loop1212_done:
    pop_eh 
.annotate 'line', 797
    find_lex $P1215, "@merge_list"
    unless_null $P1215, vivify_538
    $P1215 = root_new ['parrot';'ResizablePMCArray']
  vivify_538:
    $P1216 = "c3_merge"($P1215)
    store_lex "@result", $P1216
.annotate 'line', 798
    find_lex $P1217, "@result"
    unless_null $P1217, vivify_539
    $P1217 = root_new ['parrot';'ResizablePMCArray']
  vivify_539:
    find_lex $P1218, "$accepted"
    unless_null $P1218, vivify_540
    new $P1218, "Undef"
  vivify_540:
    $P1217."unshift"($P1218)
.annotate 'line', 799
    new $P1219, "Exception"
    set $P1219['type'], .CONTROL_RETURN
    find_lex $P1220, "@result"
    unless_null $P1220, vivify_541
    $P1220 = root_new ['parrot';'ResizablePMCArray']
  vivify_541:
    setattribute $P1219, 'payload', $P1220
    throw $P1219
.annotate 'line', 736
    .return ()
  control_1087:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1221, exception, "payload"
    .return ($P1221)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1103"  :anon :subid("85_1304277392.509") :outer("84_1304277392.509")
    .param pmc param_1106
.annotate 'line', 743
    .const 'Sub' $P1113 = "86_1304277392.509" 
    capture_lex $P1113
.annotate 'line', 744
    $P1105 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1105
    .lex "$_", param_1106
    find_lex $P1107, "$_"
    unless_null $P1107, vivify_502
    new $P1107, "Undef"
  vivify_502:
    store_lex "@cand_list", $P1107
.annotate 'line', 745
    find_lex $P1110, "@cand_list"
    unless_null $P1110, vivify_503
    $P1110 = root_new ['parrot';'ResizablePMCArray']
  vivify_503:
    set $N1111, $P1110
    if $N1111, if_1109
    new $P1108, 'Float'
    set $P1108, $N1111
    goto if_1109_end
  if_1109:
    .const 'Sub' $P1113 = "86_1304277392.509" 
    capture_lex $P1113
    $P1163 = $P1113()
    set $P1108, $P1163
  if_1109_end:
.annotate 'line', 743
    .return ($P1108)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1112"  :anon :subid("86_1304277392.509") :outer("85_1304277392.509")
.annotate 'line', 745
    .const 'Sub' $P1126 = "87_1304277392.509" 
    capture_lex $P1126
.annotate 'line', 746
    new $P1114, "Undef"
    .lex "$rejected", $P1114
.annotate 'line', 747
    new $P1115, "Undef"
    .lex "$cand_class", $P1115
.annotate 'line', 746
    new $P1116, "Integer"
    assign $P1116, 0
    store_lex "$rejected", $P1116
.annotate 'line', 747
    find_lex $P1117, "@cand_list"
    unless_null $P1117, vivify_504
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_504:
    set $P1118, $P1117[0]
    unless_null $P1118, vivify_505
    new $P1118, "Undef"
  vivify_505:
    store_lex "$cand_class", $P1118
.annotate 'line', 748
    find_lex $P1119, "$cand_count"
    unless_null $P1119, vivify_506
    new $P1119, "Undef"
  vivify_506:
    add $P1120, $P1119, 1
    store_lex "$cand_count", $P1120
.annotate 'line', 749
    find_lex $P1122, "@merge_list"
    unless_null $P1122, vivify_507
    $P1122 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    defined $I1123, $P1122
    unless $I1123, for_undef_508
    iter $P1121, $P1122
    new $P1161, 'ExceptionHandler'
    set_label $P1161, loop1160_handler
    $P1161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1161
  loop1160_test:
    unless $P1121, loop1160_done
    shift $P1124, $P1121
  loop1160_redo:
    .const 'Sub' $P1126 = "87_1304277392.509" 
    capture_lex $P1126
    $P1126($P1124)
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
  for_undef_508:
.annotate 'line', 745
    .return ($P1121)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1125"  :anon :subid("87_1304277392.509") :outer("86_1304277392.509")
    .param pmc param_1127
.annotate 'line', 749
    .const 'Sub' $P1133 = "88_1304277392.509" 
    capture_lex $P1133
    .lex "$_", param_1127
.annotate 'line', 751
    find_lex $P1129, "$_"
    unless_null $P1129, vivify_509
    new $P1129, "Undef"
  vivify_509:
    find_lex $P1130, "@cand_list"
    unless_null $P1130, vivify_510
    $P1130 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    issame $I1131, $P1129, $P1130
    if $I1131, unless_1128_end
    .const 'Sub' $P1133 = "88_1304277392.509" 
    capture_lex $P1133
    $P1133()
  unless_1128_end:
.annotate 'line', 763
    find_lex $P1156, "$rejected"
    unless_null $P1156, vivify_518
    new $P1156, "Undef"
  vivify_518:
    unless $P1156, unless_1155
    set $P1154, $P1156
    goto unless_1155_end
  unless_1155:
.annotate 'line', 764
    find_lex $P1157, "$cand_class"
    unless_null $P1157, vivify_519
    new $P1157, "Undef"
  vivify_519:
    store_lex "$accepted", $P1157
.annotate 'line', 765
    new $P1158, "Integer"
    assign $P1158, 1
    store_lex "$something_accepted", $P1158
.annotate 'line', 766
    set $I1159, .CONTROL_LOOP_LAST
    die 0, $I1159
  unless_1155_end:
.annotate 'line', 749
    .return ($P1154)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1132"  :anon :subid("88_1304277392.509") :outer("87_1304277392.509")
.annotate 'line', 753
    new $P1134, "Undef"
    .lex "$cur_pos", $P1134
    new $P1135, "Integer"
    assign $P1135, 1
    store_lex "$cur_pos", $P1135
.annotate 'line', 754
    new $P1152, 'ExceptionHandler'
    set_label $P1152, loop1151_handler
    $P1152."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1152
  loop1151_test:
    find_lex $P1136, "$cur_pos"
    unless_null $P1136, vivify_511
    new $P1136, "Undef"
  vivify_511:
    set $N1137, $P1136
    find_lex $P1138, "$_"
    unless_null $P1138, vivify_512
    new $P1138, "Undef"
  vivify_512:
    set $N1139, $P1138
    isle $I1140, $N1137, $N1139
    unless $I1140, loop1151_done
  loop1151_redo:
.annotate 'line', 755
    find_lex $P1142, "$cur_pos"
    unless_null $P1142, vivify_513
    new $P1142, "Undef"
  vivify_513:
    set $I1143, $P1142
    find_lex $P1144, "$_"
    unless_null $P1144, vivify_514
    $P1144 = root_new ['parrot';'ResizablePMCArray']
  vivify_514:
    set $P1145, $P1144[$I1143]
    unless_null $P1145, vivify_515
    new $P1145, "Undef"
  vivify_515:
    find_lex $P1146, "$cand_class"
    unless_null $P1146, vivify_516
    new $P1146, "Undef"
  vivify_516:
    issame $I1147, $P1145, $P1146
    unless $I1147, if_1141_end
.annotate 'line', 756
    new $P1148, "Integer"
    assign $P1148, 1
    store_lex "$rejected", $P1148
  if_1141_end:
.annotate 'line', 758
    find_lex $P1149, "$cur_pos"
    unless_null $P1149, vivify_517
    new $P1149, "Undef"
  vivify_517:
    add $P1150, $P1149, 1
    store_lex "$cur_pos", $P1150
  loop1151_next:
.annotate 'line', 754
    goto loop1151_test
  loop1151_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1153, exception, 'type'
    eq $P1153, .CONTROL_LOOP_NEXT, loop1151_next
    eq $P1153, .CONTROL_LOOP_REDO, loop1151_redo
  loop1151_done:
    pop_eh 
.annotate 'line', 751
    .return ($I1140)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1181"  :anon :subid("89_1304277392.509") :outer("84_1304277392.509")
.annotate 'line', 784
    .const 'Sub' $P1193 = "90_1304277392.509" 
    capture_lex $P1193
.annotate 'line', 785
    $P1183 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1183
.annotate 'line', 784
    find_lex $P1184, "@new_list"
    unless_null $P1184, vivify_525
    $P1184 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
.annotate 'line', 786
    find_lex $P1186, "$i"
    unless_null $P1186, vivify_526
    new $P1186, "Undef"
  vivify_526:
    set $I1187, $P1186
    find_lex $P1188, "@merge_list"
    unless_null $P1188, vivify_527
    $P1188 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    set $P1189, $P1188[$I1187]
    unless_null $P1189, vivify_528
    new $P1189, "Undef"
  vivify_528:
    defined $I1190, $P1189
    unless $I1190, for_undef_529
    iter $P1185, $P1189
    new $P1204, 'ExceptionHandler'
    set_label $P1204, loop1203_handler
    $P1204."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1204
  loop1203_test:
    unless $P1185, loop1203_done
    shift $P1191, $P1185
  loop1203_redo:
    .const 'Sub' $P1193 = "90_1304277392.509" 
    capture_lex $P1193
    $P1193($P1191)
  loop1203_next:
    goto loop1203_test
  loop1203_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1205, exception, 'type'
    eq $P1205, .CONTROL_LOOP_NEXT, loop1203_next
    eq $P1205, .CONTROL_LOOP_REDO, loop1203_redo
  loop1203_done:
    pop_eh 
  for_undef_529:
.annotate 'line', 791
    find_lex $P1206, "@new_list"
    unless_null $P1206, vivify_534
    $P1206 = root_new ['parrot';'ResizablePMCArray']
  vivify_534:
    find_lex $P1207, "$i"
    unless_null $P1207, vivify_535
    new $P1207, "Undef"
  vivify_535:
    set $I1208, $P1207
    find_lex $P1209, "@merge_list"
    unless_null $P1209, vivify_536
    $P1209 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1209
  vivify_536:
    set $P1209[$I1208], $P1206
.annotate 'line', 792
    find_lex $P1210, "$i"
    unless_null $P1210, vivify_537
    new $P1210, "Undef"
  vivify_537:
    add $P1211, $P1210, 1
    store_lex "$i", $P1211
.annotate 'line', 784
    .return ($P1211)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1192"  :anon :subid("90_1304277392.509") :outer("89_1304277392.509")
    .param pmc param_1194
.annotate 'line', 786
    .lex "$_", param_1194
.annotate 'line', 787
    find_lex $P1197, "$_"
    unless_null $P1197, vivify_530
    new $P1197, "Undef"
  vivify_530:
    find_lex $P1198, "$accepted"
    unless_null $P1198, vivify_531
    new $P1198, "Undef"
  vivify_531:
    issame $I1199, $P1197, $P1198
    unless $I1199, unless_1196
    new $P1195, 'Integer'
    set $P1195, $I1199
    goto unless_1196_end
  unless_1196:
.annotate 'line', 788
    find_lex $P1200, "@new_list"
    unless_null $P1200, vivify_532
    $P1200 = root_new ['parrot';'ResizablePMCArray']
  vivify_532:
    find_lex $P1201, "$_"
    unless_null $P1201, vivify_533
    new $P1201, "Undef"
  vivify_533:
    $P1202 = $P1200."push"($P1201)
.annotate 'line', 787
    set $P1195, $P1202
  unless_1196_end:
.annotate 'line', 786
    .return ($P1195)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("91_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1226
    .param pmc param_1227 :optional :named("name")
    .param int has_param_1227 :opt_flag
.annotate 'line', 532
    .lex "self", param_1226
    if has_param_1227, optparam_542
    new $P1228, "Undef"
    set param_1227, $P1228
  optparam_542:
    .lex "$name", param_1227
.annotate 'line', 533
    new $P1229, "Undef"
    .lex "$obj", $P1229
    find_lex $P1230, "self"
    repr_instance_of $P1231, $P1230
    store_lex "$obj", $P1231
.annotate 'line', 534
    find_lex $P1232, "$obj"
    unless_null $P1232, vivify_543
    new $P1232, "Undef"
  vivify_543:
    find_lex $P1233, "$name"
    unless_null $P1233, vivify_544
    new $P1233, "Undef"
  vivify_544:
    $P1232."BUILD"($P1233 :named("name"))
    find_lex $P1234, "$obj"
    unless_null $P1234, vivify_545
    new $P1234, "Undef"
  vivify_545:
.annotate 'line', 532
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("92_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1236
    .param pmc param_1237 :optional :named("name")
    .param int has_param_1237 :opt_flag
.annotate 'line', 538
    .lex "self", param_1236
    if has_param_1237, optparam_546
    new $P1238, "Undef"
    set param_1237, $P1238
  optparam_546:
    .lex "$name", param_1237
.annotate 'line', 539
    find_lex $P1239, "$name"
    unless_null $P1239, vivify_547
    new $P1239, "Undef"
  vivify_547:
    find_lex $P1240, "self"
    find_lex $P1241, "$?CLASS"
    setattribute $P1240, $P1241, "$!name", $P1239
.annotate 'line', 538
    .return ($P1239)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("93_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1243
    .param pmc param_1244 :optional :named("name")
    .param int has_param_1244 :opt_flag
    .param pmc param_1246 :optional :named("repr")
    .param int has_param_1246 :opt_flag
.annotate 'line', 544
    .lex "self", param_1243
    if has_param_1244, optparam_548
    new $P1245, "String"
    assign $P1245, "<anon>"
    set param_1244, $P1245
  optparam_548:
    .lex "$name", param_1244
    if has_param_1246, optparam_549
    new $P1247, "String"
    assign $P1247, "P6opaque"
    set param_1246, $P1247
  optparam_549:
    .lex "$repr", param_1246
.annotate 'line', 545
    new $P1248, "Undef"
    .lex "$metaclass", $P1248
    find_lex $P1249, "self"
    find_lex $P1250, "$name"
    unless_null $P1250, vivify_550
    new $P1250, "Undef"
  vivify_550:
    $P1251 = $P1249."new"($P1250 :named("name"))
    store_lex "$metaclass", $P1251
.annotate 'line', 547
    find_lex $P1252, "$metaclass"
    unless_null $P1252, vivify_551
    new $P1252, "Undef"
  vivify_551:
    find_lex $P1253, "$repr"
    unless_null $P1253, vivify_552
    new $P1253, "Undef"
  vivify_552:
    set $S1254, $P1253
    repr_type_object_for $P1255, $P1252, $S1254
    $P1256 = root_new ['parrot';'Hash']
    set_who $P1255, $P1256
.annotate 'line', 544
    .return ($P1255)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("94_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1258
    .param pmc param_1259
    .param pmc param_1260
    .param pmc param_1261
.annotate 'line', 551
    .lex "self", param_1258
    .lex "$obj", param_1259
    .lex "$name", param_1260
    .lex "$code_obj", param_1261
.annotate 'line', 552
    find_lex $P1263, "$name"
    unless_null $P1263, vivify_553
    new $P1263, "Undef"
  vivify_553:
    find_lex $P1264, "self"
    find_lex $P1265, "$?CLASS"
    getattribute $P1266, $P1264, $P1265, "%!methods"
    unless_null $P1266, vivify_554
    $P1266 = root_new ['parrot';'Hash']
  vivify_554:
    set $P1267, $P1266[$P1263]
    unless_null $P1267, vivify_555
    new $P1267, "Undef"
  vivify_555:
    unless $P1267, if_1262_end
.annotate 'line', 553
    new $P1268, "String"
    assign $P1268, "This class already has a method named "
    find_lex $P1269, "$name"
    unless_null $P1269, vivify_556
    new $P1269, "Undef"
  vivify_556:
    concat $P1270, $P1268, $P1269
    die $P1270
  if_1262_end:
.annotate 'line', 555
    find_lex $P1274, "$code_obj"
    unless_null $P1274, vivify_557
    new $P1274, "Undef"
  vivify_557:
    isnull $I1275, $P1274
    unless $I1275, unless_1273
    new $P1272, 'Integer'
    set $P1272, $I1275
    goto unless_1273_end
  unless_1273:
    find_lex $P1276, "$code_obj"
    unless_null $P1276, vivify_558
    new $P1276, "Undef"
  vivify_558:
    isa $I1277, $P1276, "Undef"
    new $P1272, 'Integer'
    set $P1272, $I1277
  unless_1273_end:
    unless $P1272, if_1271_end
.annotate 'line', 556
    new $P1278, 'String'
    set $P1278, "Cannot add a null method '"
    find_lex $P1279, "$name"
    unless_null $P1279, vivify_559
    new $P1279, "Undef"
  vivify_559:
    concat $P1280, $P1278, $P1279
    concat $P1281, $P1280, "' to class '"
    find_lex $P1282, "self"
    find_lex $P1283, "$?CLASS"
    getattribute $P1284, $P1282, $P1283, "$!name"
    unless_null $P1284, vivify_560
    new $P1284, "Undef"
  vivify_560:
    concat $P1285, $P1281, $P1284
    concat $P1286, $P1285, "'"
    die $P1286
  if_1271_end:
.annotate 'line', 558
    find_lex $P1287, "$code_obj"
    unless_null $P1287, vivify_561
    new $P1287, "Undef"
  vivify_561:
    find_lex $P1288, "$name"
    unless_null $P1288, vivify_562
    new $P1288, "Undef"
  vivify_562:
    find_lex $P1289, "self"
    find_lex $P1290, "$?CLASS"
    getattribute $P1291, $P1289, $P1290, "%!methods"
    unless_null $P1291, vivify_563
    $P1291 = root_new ['parrot';'Hash']
    setattribute $P1289, $P1290, "%!methods", $P1291
  vivify_563:
    set $P1291[$P1288], $P1287
.annotate 'line', 551
    .return ($P1287)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("95_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1293
    .param pmc param_1294
    .param pmc param_1295
    .param pmc param_1296
.annotate 'line', 561
    .lex "self", param_1293
    .lex "$obj", param_1294
    .lex "$name", param_1295
    .lex "$code_obj", param_1296
.annotate 'line', 567
    $P1297 = root_new ['parrot';'Hash']
    .lex "%todo", $P1297
.annotate 'line', 561
    find_lex $P1298, "%todo"
    unless_null $P1298, vivify_564
    $P1298 = root_new ['parrot';'Hash']
  vivify_564:
.annotate 'line', 568
    find_lex $P1299, "$name"
    unless_null $P1299, vivify_565
    new $P1299, "Undef"
  vivify_565:
    find_lex $P1300, "%todo"
    unless_null $P1300, vivify_566
    $P1300 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1300
  vivify_566:
    set $P1300["name"], $P1299
.annotate 'line', 569
    find_lex $P1301, "$code_obj"
    unless_null $P1301, vivify_567
    new $P1301, "Undef"
  vivify_567:
    find_lex $P1302, "%todo"
    unless_null $P1302, vivify_568
    $P1302 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1302
  vivify_568:
    set $P1302["code"], $P1301
.annotate 'line', 570
    find_lex $P1303, "%todo"
    unless_null $P1303, vivify_569
    $P1303 = root_new ['parrot';'Hash']
  vivify_569:
    find_lex $P1304, "self"
    find_lex $P1305, "$?CLASS"
    getattribute $P1306, $P1304, $P1305, "@!multi_methods_to_incorporate"
    unless_null $P1306, vivify_570
    $P1306 = root_new ['parrot';'ResizablePMCArray']
  vivify_570:
    set $N1307, $P1306
    set $I1308, $N1307
    find_lex $P1309, "self"
    find_lex $P1310, "$?CLASS"
    getattribute $P1311, $P1309, $P1310, "@!multi_methods_to_incorporate"
    unless_null $P1311, vivify_571
    $P1311 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1309, $P1310, "@!multi_methods_to_incorporate", $P1311
  vivify_571:
    set $P1311[$I1308], $P1303
    find_lex $P1312, "$code_obj"
    unless_null $P1312, vivify_572
    new $P1312, "Undef"
  vivify_572:
.annotate 'line', 561
    .return ($P1312)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("96_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1314
    .param pmc param_1315
    .param pmc param_1316
.annotate 'line', 574
    .lex "self", param_1314
    .lex "$obj", param_1315
    .lex "$meta_attr", param_1316
.annotate 'line', 575
    new $P1317, "Undef"
    .lex "$name", $P1317
    find_lex $P1318, "$meta_attr"
    unless_null $P1318, vivify_573
    new $P1318, "Undef"
  vivify_573:
    $P1319 = $P1318."name"()
    store_lex "$name", $P1319
.annotate 'line', 576
    find_lex $P1321, "$name"
    unless_null $P1321, vivify_574
    new $P1321, "Undef"
  vivify_574:
    find_lex $P1322, "self"
    find_lex $P1323, "$?CLASS"
    getattribute $P1324, $P1322, $P1323, "%!attributes"
    unless_null $P1324, vivify_575
    $P1324 = root_new ['parrot';'Hash']
  vivify_575:
    set $P1325, $P1324[$P1321]
    unless_null $P1325, vivify_576
    new $P1325, "Undef"
  vivify_576:
    unless $P1325, if_1320_end
.annotate 'line', 577
    new $P1326, "String"
    assign $P1326, "This class already has an attribute named "
    find_lex $P1327, "$name"
    unless_null $P1327, vivify_577
    new $P1327, "Undef"
  vivify_577:
    concat $P1328, $P1326, $P1327
    die $P1328
  if_1320_end:
.annotate 'line', 579
    find_lex $P1329, "$meta_attr"
    unless_null $P1329, vivify_578
    new $P1329, "Undef"
  vivify_578:
    find_lex $P1330, "$name"
    unless_null $P1330, vivify_579
    new $P1330, "Undef"
  vivify_579:
    find_lex $P1331, "self"
    find_lex $P1332, "$?CLASS"
    getattribute $P1333, $P1331, $P1332, "%!attributes"
    unless_null $P1333, vivify_580
    $P1333 = root_new ['parrot';'Hash']
    setattribute $P1331, $P1332, "%!attributes", $P1333
  vivify_580:
    set $P1333[$P1330], $P1329
.annotate 'line', 574
    .return ($P1329)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("97_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1335
    .param pmc param_1336
    .param pmc param_1337
.annotate 'line', 582
    .const 'Sub' $P1349 = "98_1304277392.509" 
    capture_lex $P1349
    .lex "self", param_1335
    .lex "$obj", param_1336
    .lex "$parent", param_1337
.annotate 'line', 583
    find_lex $P1339, "self"
    find_lex $P1340, "$?CLASS"
    getattribute $P1341, $P1339, $P1340, "$!composed"
    unless_null $P1341, vivify_581
    new $P1341, "Undef"
  vivify_581:
    unless $P1341, if_1338_end
.annotate 'line', 584
    die "NQPClassHOW does not support adding parents after being composed."
  if_1338_end:
.annotate 'line', 586
    find_lex $P1343, "self"
    find_lex $P1344, "$?CLASS"
    getattribute $P1345, $P1343, $P1344, "@!parents"
    unless_null $P1345, vivify_582
    $P1345 = root_new ['parrot';'ResizablePMCArray']
  vivify_582:
    defined $I1346, $P1345
    unless $I1346, for_undef_583
    iter $P1342, $P1345
    new $P1361, 'ExceptionHandler'
    set_label $P1361, loop1360_handler
    $P1361."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1361
  loop1360_test:
    unless $P1342, loop1360_done
    shift $P1347, $P1342
  loop1360_redo:
    .const 'Sub' $P1349 = "98_1304277392.509" 
    capture_lex $P1349
    $P1349($P1347)
  loop1360_next:
    goto loop1360_test
  loop1360_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1362, exception, 'type'
    eq $P1362, .CONTROL_LOOP_NEXT, loop1360_next
    eq $P1362, .CONTROL_LOOP_REDO, loop1360_redo
  loop1360_done:
    pop_eh 
  for_undef_583:
.annotate 'line', 591
    find_lex $P1363, "$parent"
    unless_null $P1363, vivify_587
    new $P1363, "Undef"
  vivify_587:
    find_lex $P1364, "self"
    find_lex $P1365, "$?CLASS"
    getattribute $P1366, $P1364, $P1365, "@!parents"
    unless_null $P1366, vivify_588
    $P1366 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $N1367, $P1366
    set $I1368, $N1367
    find_lex $P1369, "self"
    find_lex $P1370, "$?CLASS"
    getattribute $P1371, $P1369, $P1370, "@!parents"
    unless_null $P1371, vivify_589
    $P1371 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1369, $P1370, "@!parents", $P1371
  vivify_589:
    set $P1371[$I1368], $P1363
.annotate 'line', 582
    .return ($P1363)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1348"  :anon :subid("98_1304277392.509") :outer("97_1304277392.509")
    .param pmc param_1350
.annotate 'line', 586
    .lex "$_", param_1350
.annotate 'line', 587
    find_lex $P1353, "$_"
    unless_null $P1353, vivify_584
    new $P1353, "Undef"
  vivify_584:
    find_lex $P1354, "$parent"
    unless_null $P1354, vivify_585
    new $P1354, "Undef"
  vivify_585:
    issame $I1355, $P1353, $P1354
    if $I1355, if_1352
    new $P1351, 'Integer'
    set $P1351, $I1355
    goto if_1352_end
  if_1352:
.annotate 'line', 588
    new $P1356, "String"
    assign $P1356, "Already have "
    find_lex $P1357, "$parent"
    unless_null $P1357, vivify_586
    new $P1357, "Undef"
  vivify_586:
    concat $P1358, $P1356, $P1357
    concat $P1359, $P1358, " as a parent class."
    die $P1359
  if_1352_end:
.annotate 'line', 586
    .return ($P1351)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("99_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1373
    .param pmc param_1374
    .param pmc param_1375
.annotate 'line', 594
    .lex "self", param_1373
    .lex "$obj", param_1374
    .lex "$parent", param_1375
.annotate 'line', 595
    find_lex $P1376, "$parent"
    unless_null $P1376, vivify_590
    new $P1376, "Undef"
  vivify_590:
    find_lex $P1377, "self"
    find_lex $P1378, "$?CLASS"
    setattribute $P1377, $P1378, "$!default_parent", $P1376
.annotate 'line', 594
    .return ($P1376)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("100_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1380
    .param pmc param_1381
    .param pmc param_1382
.annotate 'line', 598
    .const 'Sub' $P1390 = "101_1304277392.509" 
    capture_lex $P1390
    .lex "self", param_1380
    .lex "$obj", param_1381
    .lex "$role", param_1382
.annotate 'line', 599
    find_lex $P1384, "self"
    find_lex $P1385, "$?CLASS"
    getattribute $P1386, $P1384, $P1385, "@!roles"
    unless_null $P1386, vivify_591
    $P1386 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I1387, $P1386
    unless $I1387, for_undef_592
    iter $P1383, $P1386
    new $P1402, 'ExceptionHandler'
    set_label $P1402, loop1401_handler
    $P1402."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1402
  loop1401_test:
    unless $P1383, loop1401_done
    shift $P1388, $P1383
  loop1401_redo:
    .const 'Sub' $P1390 = "101_1304277392.509" 
    capture_lex $P1390
    $P1390($P1388)
  loop1401_next:
    goto loop1401_test
  loop1401_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1403, exception, 'type'
    eq $P1403, .CONTROL_LOOP_NEXT, loop1401_next
    eq $P1403, .CONTROL_LOOP_REDO, loop1401_redo
  loop1401_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 604
    find_lex $P1404, "$role"
    unless_null $P1404, vivify_596
    new $P1404, "Undef"
  vivify_596:
    find_lex $P1405, "self"
    find_lex $P1406, "$?CLASS"
    getattribute $P1407, $P1405, $P1406, "@!roles"
    unless_null $P1407, vivify_597
    $P1407 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $N1408, $P1407
    set $I1409, $N1408
    find_lex $P1410, "self"
    find_lex $P1411, "$?CLASS"
    getattribute $P1412, $P1410, $P1411, "@!roles"
    unless_null $P1412, vivify_598
    $P1412 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1410, $P1411, "@!roles", $P1412
  vivify_598:
    set $P1412[$I1409], $P1404
.annotate 'line', 598
    .return ($P1404)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1389"  :anon :subid("101_1304277392.509") :outer("100_1304277392.509")
    .param pmc param_1391
.annotate 'line', 599
    .lex "$_", param_1391
.annotate 'line', 600
    find_lex $P1394, "$_"
    unless_null $P1394, vivify_593
    new $P1394, "Undef"
  vivify_593:
    find_lex $P1395, "$role"
    unless_null $P1395, vivify_594
    new $P1395, "Undef"
  vivify_594:
    issame $I1396, $P1394, $P1395
    if $I1396, if_1393
    new $P1392, 'Integer'
    set $P1392, $I1396
    goto if_1393_end
  if_1393:
.annotate 'line', 601
    new $P1397, "String"
    assign $P1397, "The role "
    find_lex $P1398, "$role"
    unless_null $P1398, vivify_595
    new $P1398, "Undef"
  vivify_595:
    concat $P1399, $P1397, $P1398
    concat $P1400, $P1399, " has already been added."
    die $P1400
  if_1393_end:
.annotate 'line', 599
    .return ($P1392)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("102_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1414
    .param pmc param_1415
    .param pmc param_1416
    .param pmc param_1417
.annotate 'line', 607
    .lex "self", param_1414
    .lex "$obj", param_1415
    .lex "$name", param_1416
    .lex "$meth", param_1417
.annotate 'line', 608
    find_lex $P1419, "$name"
    unless_null $P1419, vivify_599
    new $P1419, "Undef"
  vivify_599:
    find_lex $P1420, "self"
    find_lex $P1421, "$?CLASS"
    getattribute $P1422, $P1420, $P1421, "%!parrot_vtable_mapping"
    unless_null $P1422, vivify_600
    $P1422 = root_new ['parrot';'Hash']
  vivify_600:
    set $P1423, $P1422[$P1419]
    unless_null $P1423, vivify_601
    new $P1423, "Undef"
  vivify_601:
    defined $I1424, $P1423
    unless $I1424, if_1418_end
.annotate 'line', 609
    new $P1425, "String"
    assign $P1425, "Class '"
    find_lex $P1426, "self"
    find_lex $P1427, "$?CLASS"
    getattribute $P1428, $P1426, $P1427, "$!name"
    unless_null $P1428, vivify_602
    new $P1428, "Undef"
  vivify_602:
    concat $P1429, $P1425, $P1428
    concat $P1430, $P1429, "' already has a Parrot v-table override for '"
    find_lex $P1431, "$name"
    unless_null $P1431, vivify_603
    new $P1431, "Undef"
  vivify_603:
    concat $P1432, $P1430, $P1431
.annotate 'line', 610
    concat $P1433, $P1432, "'"
.annotate 'line', 611
    die $P1433
  if_1418_end:
.annotate 'line', 613
    find_lex $P1434, "$meth"
    unless_null $P1434, vivify_604
    new $P1434, "Undef"
  vivify_604:
    find_lex $P1435, "$name"
    unless_null $P1435, vivify_605
    new $P1435, "Undef"
  vivify_605:
    find_lex $P1436, "self"
    find_lex $P1437, "$?CLASS"
    getattribute $P1438, $P1436, $P1437, "%!parrot_vtable_mapping"
    unless_null $P1438, vivify_606
    $P1438 = root_new ['parrot';'Hash']
    setattribute $P1436, $P1437, "%!parrot_vtable_mapping", $P1438
  vivify_606:
    set $P1438[$P1435], $P1434
.annotate 'line', 607
    .return ($P1434)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("103_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1440
    .param pmc param_1441
.annotate 'line', 616
    .const 'Sub' $P1530 = "106_1304277392.509" 
    capture_lex $P1530
    .const 'Sub' $P1447 = "104_1304277392.509" 
    capture_lex $P1447
    .lex "self", param_1440
    .lex "$obj", param_1441
.annotate 'line', 620
    find_lex $P1443, "self"
    find_lex $P1444, "$?CLASS"
    getattribute $P1445, $P1443, $P1444, "@!roles"
    unless_null $P1445, vivify_607
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    unless $P1445, if_1442_end
    .const 'Sub' $P1447 = "104_1304277392.509" 
    capture_lex $P1447
    $P1447()
  if_1442_end:
.annotate 'line', 633
    find_lex $P1495, "self"
    find_lex $P1496, "$?CLASS"
    getattribute $P1497, $P1495, $P1496, "@!parents"
    unless_null $P1497, vivify_624
    $P1497 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    set $N1498, $P1497
    iseq $I1499, $N1498, 0.0
    if $I1499, if_1494
    new $P1493, 'Integer'
    set $P1493, $I1499
    goto if_1494_end
  if_1494:
    find_lex $P1500, "self"
    find_lex $P1501, "$?CLASS"
    getattribute $P1502, $P1500, $P1501, "$!name"
    unless_null $P1502, vivify_625
    new $P1502, "Undef"
  vivify_625:
    set $S1503, $P1502
    isne $I1504, $S1503, "NQPMu"
    new $P1493, 'Integer'
    set $P1493, $I1504
  if_1494_end:
    unless $P1493, if_1492_end
.annotate 'line', 634
    find_lex $P1505, "self"
    find_lex $P1506, "$obj"
    unless_null $P1506, vivify_626
    new $P1506, "Undef"
  vivify_626:
    find_lex $P1507, "self"
    find_lex $P1508, "$?CLASS"
    getattribute $P1509, $P1507, $P1508, "$!default_parent"
    unless_null $P1509, vivify_627
    new $P1509, "Undef"
  vivify_627:
    $P1505."add_parent"($P1506, $P1509)
  if_1492_end:
.annotate 'line', 639
    find_lex $P1511, "self"
    find_lex $P1512, "$?CLASS"
    getattribute $P1513, $P1511, $P1512, "$!composed"
    unless_null $P1513, vivify_628
    new $P1513, "Undef"
  vivify_628:
    if $P1513, unless_1510_end
.annotate 'line', 640
    find_lex $P1514, "$obj"
    unless_null $P1514, vivify_629
    new $P1514, "Undef"
  vivify_629:
    $P1515 = "compute_c3_mro"($P1514)
    find_lex $P1516, "self"
    find_lex $P1517, "$?CLASS"
    setattribute $P1516, $P1517, "@!mro", $P1515
.annotate 'line', 641
    new $P1518, "Integer"
    assign $P1518, 1
    find_lex $P1519, "self"
    find_lex $P1520, "$?CLASS"
    setattribute $P1519, $P1520, "$!composed", $P1518
  unless_1510_end:
.annotate 'line', 645
    find_lex $P1521, "self"
    find_lex $P1522, "$obj"
    unless_null $P1522, vivify_630
    new $P1522, "Undef"
  vivify_630:
    $P1521."incorporate_multi_candidates"($P1522)
.annotate 'line', 648
    find_lex $P1524, "self"
    find_lex $P1525, "$obj"
    unless_null $P1525, vivify_631
    new $P1525, "Undef"
  vivify_631:
    $P1526 = $P1524."attributes"($P1525, "0" :named("local"))
    defined $I1527, $P1526
    unless $I1527, for_undef_632
    iter $P1523, $P1526
    new $P1536, 'ExceptionHandler'
    set_label $P1536, loop1535_handler
    $P1536."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1536
  loop1535_test:
    unless $P1523, loop1535_done
    shift $P1528, $P1523
  loop1535_redo:
    .const 'Sub' $P1530 = "106_1304277392.509" 
    capture_lex $P1530
    $P1530($P1528)
  loop1535_next:
    goto loop1535_test
  loop1535_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1537, exception, 'type'
    eq $P1537, .CONTROL_LOOP_NEXT, loop1535_next
    eq $P1537, .CONTROL_LOOP_REDO, loop1535_redo
  loop1535_done:
    pop_eh 
  for_undef_632:
.annotate 'line', 651
    find_lex $P1538, "self"
    find_lex $P1539, "$obj"
    unless_null $P1539, vivify_635
    new $P1539, "Undef"
  vivify_635:
    $P1538."publish_type_cache"($P1539)
.annotate 'line', 652
    find_lex $P1540, "self"
    find_lex $P1541, "$obj"
    unless_null $P1541, vivify_636
    new $P1541, "Undef"
  vivify_636:
    $P1540."publish_method_cache"($P1541)
.annotate 'line', 655
    find_lex $P1542, "self"
    find_lex $P1543, "$obj"
    unless_null $P1543, vivify_637
    new $P1543, "Undef"
  vivify_637:
    $P1542."publish_parrot_vtable_mapping"($P1543)
    find_lex $P1544, "$obj"
    unless_null $P1544, vivify_638
    new $P1544, "Undef"
  vivify_638:
.annotate 'line', 616
    .return ($P1544)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1446"  :anon :subid("104_1304277392.509") :outer("103_1304277392.509")
.annotate 'line', 620
    .const 'Sub' $P1457 = "105_1304277392.509" 
    capture_lex $P1457
.annotate 'line', 621
    $P1448 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1448
.annotate 'line', 620
    find_lex $P1449, "@instantiated_roles"
    unless_null $P1449, vivify_608
    $P1449 = root_new ['parrot';'ResizablePMCArray']
  vivify_608:
.annotate 'line', 622
    find_lex $P1451, "self"
    find_lex $P1452, "$?CLASS"
    getattribute $P1453, $P1451, $P1452, "@!roles"
    unless_null $P1453, vivify_609
    $P1453 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    defined $I1454, $P1453
    unless $I1454, for_undef_610
    iter $P1450, $P1453
    new $P1486, 'ExceptionHandler'
    set_label $P1486, loop1485_handler
    $P1486."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1486
  loop1485_test:
    unless $P1450, loop1485_done
    shift $P1455, $P1450
  loop1485_redo:
    .const 'Sub' $P1457 = "105_1304277392.509" 
    capture_lex $P1457
    $P1457($P1455)
  loop1485_next:
    goto loop1485_test
  loop1485_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1487, exception, 'type'
    eq $P1487, .CONTROL_LOOP_NEXT, loop1485_next
    eq $P1487, .CONTROL_LOOP_REDO, loop1485_redo
  loop1485_done:
    pop_eh 
  for_undef_610:
.annotate 'line', 628
    find_lex $P1488, "RoleToClassApplier"
    find_lex $P1489, "$obj"
    unless_null $P1489, vivify_622
    new $P1489, "Undef"
  vivify_622:
    find_lex $P1490, "@instantiated_roles"
    unless_null $P1490, vivify_623
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    $P1491 = $P1488."apply"($P1489, $P1490)
.annotate 'line', 620
    .return ($P1491)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1456"  :anon :subid("105_1304277392.509") :outer("104_1304277392.509")
    .param pmc param_1459
.annotate 'line', 623
    new $P1458, "Undef"
    .lex "$ins", $P1458
    .lex "$_", param_1459
    find_lex $P1460, "$_"
    unless_null $P1460, vivify_611
    new $P1460, "Undef"
  vivify_611:
    get_how $P1461, $P1460
    find_lex $P1462, "$_"
    unless_null $P1462, vivify_612
    new $P1462, "Undef"
  vivify_612:
    find_lex $P1463, "$obj"
    unless_null $P1463, vivify_613
    new $P1463, "Undef"
  vivify_613:
    $P1464 = $P1461."instantiate"($P1462, $P1463)
    store_lex "$ins", $P1464
.annotate 'line', 624
    find_lex $P1465, "@instantiated_roles"
    unless_null $P1465, vivify_614
    $P1465 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P1466, "$ins"
    unless_null $P1466, vivify_615
    new $P1466, "Undef"
  vivify_615:
    $P1465."push"($P1466)
.annotate 'line', 625
    find_lex $P1467, "$_"
    unless_null $P1467, vivify_616
    new $P1467, "Undef"
  vivify_616:
    find_lex $P1468, "self"
    find_lex $P1469, "$?CLASS"
    getattribute $P1470, $P1468, $P1469, "@!done"
    unless_null $P1470, vivify_617
    $P1470 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    set $N1471, $P1470
    set $I1472, $N1471
    find_lex $P1473, "self"
    find_lex $P1474, "$?CLASS"
    getattribute $P1475, $P1473, $P1474, "@!done"
    unless_null $P1475, vivify_618
    $P1475 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1473, $P1474, "@!done", $P1475
  vivify_618:
    set $P1475[$I1472], $P1467
.annotate 'line', 626
    find_lex $P1476, "$ins"
    unless_null $P1476, vivify_619
    new $P1476, "Undef"
  vivify_619:
    find_lex $P1477, "self"
    find_lex $P1478, "$?CLASS"
    getattribute $P1479, $P1477, $P1478, "@!done"
    unless_null $P1479, vivify_620
    $P1479 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    set $N1480, $P1479
    set $I1481, $N1480
    find_lex $P1482, "self"
    find_lex $P1483, "$?CLASS"
    getattribute $P1484, $P1482, $P1483, "@!done"
    unless_null $P1484, vivify_621
    $P1484 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1482, $P1483, "@!done", $P1484
  vivify_621:
    set $P1484[$I1481], $P1476
.annotate 'line', 622
    .return ($P1476)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1529"  :anon :subid("106_1304277392.509") :outer("103_1304277392.509")
    .param pmc param_1531
.annotate 'line', 648
    .lex "$_", param_1531
    find_lex $P1532, "$_"
    unless_null $P1532, vivify_633
    new $P1532, "Undef"
  vivify_633:
    find_lex $P1533, "$obj"
    unless_null $P1533, vivify_634
    new $P1533, "Undef"
  vivify_634:
    $P1534 = $P1532."compose"($P1533)
    .return ($P1534)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("107_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1546
    .param pmc param_1547
.annotate 'line', 660
    .const 'Sub' $P1562 = "108_1304277392.509" 
    capture_lex $P1562
    .lex "self", param_1546
    .lex "$obj", param_1547
.annotate 'line', 661
    new $P1548, "Undef"
    .lex "$num_todo", $P1548
.annotate 'line', 662
    new $P1549, "Undef"
    .lex "$i", $P1549
.annotate 'line', 661
    find_lex $P1550, "self"
    find_lex $P1551, "$?CLASS"
    getattribute $P1552, $P1550, $P1551, "@!multi_methods_to_incorporate"
    unless_null $P1552, vivify_639
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_639:
    set $N1553, $P1552
    new $P1554, 'Float'
    set $P1554, $N1553
    store_lex "$num_todo", $P1554
.annotate 'line', 662
    new $P1555, "Integer"
    assign $P1555, 0
    store_lex "$i", $P1555
.annotate 'line', 663
    new $P1671, 'ExceptionHandler'
    set_label $P1671, loop1670_handler
    $P1671."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1671
  loop1670_test:
    find_lex $P1556, "$i"
    unless_null $P1556, vivify_640
    new $P1556, "Undef"
  vivify_640:
    set $N1557, $P1556
    find_lex $P1558, "$num_todo"
    unless_null $P1558, vivify_641
    new $P1558, "Undef"
  vivify_641:
    set $N1559, $P1558
    isne $I1560, $N1557, $N1559
    unless $I1560, loop1670_done
  loop1670_redo:
    .const 'Sub' $P1562 = "108_1304277392.509" 
    capture_lex $P1562
    $P1562()
  loop1670_next:
    goto loop1670_test
  loop1670_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1672, exception, 'type'
    eq $P1672, .CONTROL_LOOP_NEXT, loop1670_next
    eq $P1672, .CONTROL_LOOP_REDO, loop1670_redo
  loop1670_done:
    pop_eh 
.annotate 'line', 660
    .return ($I1560)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1561"  :anon :subid("108_1304277392.509") :outer("107_1304277392.509")
.annotate 'line', 663
    .const 'Sub' $P1598 = "109_1304277392.509" 
    capture_lex $P1598
.annotate 'line', 665
    new $P1563, "Undef"
    .lex "$name", $P1563
.annotate 'line', 666
    new $P1564, "Undef"
    .lex "$code", $P1564
.annotate 'line', 670
    new $P1565, "Undef"
    .lex "$dispatcher", $P1565
.annotate 'line', 665
    find_lex $P1566, "$i"
    unless_null $P1566, vivify_642
    new $P1566, "Undef"
  vivify_642:
    set $I1567, $P1566
    find_lex $P1568, "self"
    find_lex $P1569, "$?CLASS"
    getattribute $P1570, $P1568, $P1569, "@!multi_methods_to_incorporate"
    unless_null $P1570, vivify_643
    $P1570 = root_new ['parrot';'ResizablePMCArray']
  vivify_643:
    set $P1571, $P1570[$I1567]
    unless_null $P1571, vivify_644
    $P1571 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1572, $P1571["name"]
    unless_null $P1572, vivify_645
    new $P1572, "Undef"
  vivify_645:
    store_lex "$name", $P1572
.annotate 'line', 666
    find_lex $P1573, "$i"
    unless_null $P1573, vivify_646
    new $P1573, "Undef"
  vivify_646:
    set $I1574, $P1573
    find_lex $P1575, "self"
    find_lex $P1576, "$?CLASS"
    getattribute $P1577, $P1575, $P1576, "@!multi_methods_to_incorporate"
    unless_null $P1577, vivify_647
    $P1577 = root_new ['parrot';'ResizablePMCArray']
  vivify_647:
    set $P1578, $P1577[$I1574]
    unless_null $P1578, vivify_648
    $P1578 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1579, $P1578["code"]
    unless_null $P1579, vivify_649
    new $P1579, "Undef"
  vivify_649:
    store_lex "$code", $P1579
.annotate 'line', 670
    find_lex $P1580, "$name"
    unless_null $P1580, vivify_650
    new $P1580, "Undef"
  vivify_650:
    find_lex $P1581, "self"
    find_lex $P1582, "$?CLASS"
    getattribute $P1583, $P1581, $P1582, "%!methods"
    unless_null $P1583, vivify_651
    $P1583 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1584, $P1583[$P1580]
    unless_null $P1584, vivify_652
    new $P1584, "Undef"
  vivify_652:
    store_lex "$dispatcher", $P1584
.annotate 'line', 671
    find_lex $P1586, "$dispatcher"
    unless_null $P1586, vivify_653
    new $P1586, "Undef"
  vivify_653:
    defined $I1587, $P1586
    if $I1587, if_1585
.annotate 'line', 681
    .const 'Sub' $P1598 = "109_1304277392.509" 
    capture_lex $P1598
    $P1598()
    goto if_1585_end
  if_1585:
.annotate 'line', 674
    find_lex $P1589, "$dispatcher"
    unless_null $P1589, vivify_678
    new $P1589, "Undef"
  vivify_678:
    is_dispatcher $I1590, $P1589
    if $I1590, if_1588
.annotate 'line', 678
    new $P1593, 'String'
    set $P1593, "Cannot have a multi candidate for "
    find_lex $P1594, "$name"
    unless_null $P1594, vivify_679
    new $P1594, "Undef"
  vivify_679:
    concat $P1595, $P1593, $P1594
    concat $P1596, $P1595, " when an only method is also in the class"
    die $P1596
.annotate 'line', 677
    goto if_1588_end
  if_1588:
.annotate 'line', 675
    find_lex $P1591, "$dispatcher"
    unless_null $P1591, vivify_680
    new $P1591, "Undef"
  vivify_680:
    find_lex $P1592, "$code"
    unless_null $P1592, vivify_681
    new $P1592, "Undef"
  vivify_681:
    push_dispatchee $P1591, $P1592
  if_1588_end:
  if_1585_end:
.annotate 'line', 709
    find_lex $P1668, "$i"
    unless_null $P1668, vivify_682
    new $P1668, "Undef"
  vivify_682:
    add $P1669, $P1668, 1
    store_lex "$i", $P1669
.annotate 'line', 663
    .return ($P1669)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1597"  :anon :subid("109_1304277392.509") :outer("108_1304277392.509")
.annotate 'line', 681
    .const 'Sub' $P1615 = "110_1304277392.509" 
    capture_lex $P1615
.annotate 'line', 683
    new $P1599, "Undef"
    .lex "$j", $P1599
.annotate 'line', 684
    new $P1600, "Undef"
    .lex "$found", $P1600
.annotate 'line', 683
    new $P1601, "Integer"
    assign $P1601, 1
    store_lex "$j", $P1601
.annotate 'line', 684
    new $P1602, "Integer"
    assign $P1602, 0
    store_lex "$found", $P1602
.annotate 'line', 685
    new $P1659, 'ExceptionHandler'
    set_label $P1659, loop1658_handler
    $P1659."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1659
  loop1658_test:
    find_lex $P1605, "$j"
    unless_null $P1605, vivify_654
    new $P1605, "Undef"
  vivify_654:
    set $N1606, $P1605
    find_lex $P1607, "self"
    find_lex $P1608, "$?CLASS"
    getattribute $P1609, $P1607, $P1608, "@!mro"
    unless_null $P1609, vivify_655
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_655:
    set $N1610, $P1609
    isne $I1611, $N1606, $N1610
    if $I1611, if_1604
    new $P1603, 'Integer'
    set $P1603, $I1611
    goto if_1604_end
  if_1604:
    find_lex $P1612, "$found"
    unless_null $P1612, vivify_656
    new $P1612, "Undef"
  vivify_656:
    isfalse $I1613, $P1612
    new $P1603, 'Integer'
    set $P1603, $I1613
  if_1604_end:
    unless $P1603, loop1658_done
  loop1658_redo:
    .const 'Sub' $P1615 = "110_1304277392.509" 
    capture_lex $P1615
    $P1615()
  loop1658_next:
    goto loop1658_test
  loop1658_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1660, exception, 'type'
    eq $P1660, .CONTROL_LOOP_NEXT, loop1658_next
    eq $P1660, .CONTROL_LOOP_REDO, loop1658_redo
  loop1658_done:
    pop_eh 
.annotate 'line', 705
    find_lex $P1663, "$found"
    unless_null $P1663, vivify_676
    new $P1663, "Undef"
  vivify_676:
    unless $P1663, unless_1662
    set $P1661, $P1663
    goto unless_1662_end
  unless_1662:
.annotate 'line', 706
    new $P1664, 'String'
    set $P1664, "Could not find a proto for multi "
    find_lex $P1665, "$name"
    unless_null $P1665, vivify_677
    new $P1665, "Undef"
  vivify_677:
    concat $P1666, $P1664, $P1665
    concat $P1667, $P1666, ", and proto generation is NYI"
    die $P1667
  unless_1662_end:
.annotate 'line', 681
    .return ($P1661)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1614"  :anon :subid("110_1304277392.509") :outer("109_1304277392.509")
.annotate 'line', 685
    .const 'Sub' $P1639 = "111_1304277392.509" 
    capture_lex $P1639
.annotate 'line', 686
    new $P1616, "Undef"
    .lex "$parent", $P1616
.annotate 'line', 687
    $P1617 = root_new ['parrot';'Hash']
    .lex "%meths", $P1617
.annotate 'line', 688
    new $P1618, "Undef"
    .lex "$dispatcher", $P1618
.annotate 'line', 686
    find_lex $P1619, "$j"
    unless_null $P1619, vivify_657
    new $P1619, "Undef"
  vivify_657:
    set $I1620, $P1619
    find_lex $P1621, "self"
    find_lex $P1622, "$?CLASS"
    getattribute $P1623, $P1621, $P1622, "@!mro"
    unless_null $P1623, vivify_658
    $P1623 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
    set $P1624, $P1623[$I1620]
    unless_null $P1624, vivify_659
    new $P1624, "Undef"
  vivify_659:
    store_lex "$parent", $P1624
.annotate 'line', 687
    find_lex $P1625, "$parent"
    unless_null $P1625, vivify_660
    new $P1625, "Undef"
  vivify_660:
    get_how $P1626, $P1625
    find_lex $P1627, "$parent"
    unless_null $P1627, vivify_661
    new $P1627, "Undef"
  vivify_661:
    $P1628 = $P1626."method_table"($P1627)
    store_lex "%meths", $P1628
.annotate 'line', 688
    find_lex $P1629, "$name"
    unless_null $P1629, vivify_662
    new $P1629, "Undef"
  vivify_662:
    find_lex $P1630, "%meths"
    unless_null $P1630, vivify_663
    $P1630 = root_new ['parrot';'Hash']
  vivify_663:
    set $P1631, $P1630[$P1629]
    unless_null $P1631, vivify_664
    new $P1631, "Undef"
  vivify_664:
    store_lex "$dispatcher", $P1631
.annotate 'line', 689
    find_lex $P1633, "$dispatcher"
    unless_null $P1633, vivify_665
    new $P1633, "Undef"
  vivify_665:
    defined $I1634, $P1633
    unless $I1634, if_1632_end
.annotate 'line', 692
    find_lex $P1636, "$dispatcher"
    unless_null $P1636, vivify_666
    new $P1636, "Undef"
  vivify_666:
    is_dispatcher $I1637, $P1636
    if $I1637, if_1635
.annotate 'line', 700
    new $P1652, 'String'
    set $P1652, "Could not find a proto for multi "
    find_lex $P1653, "$name"
    unless_null $P1653, vivify_667
    new $P1653, "Undef"
  vivify_667:
    concat $P1654, $P1652, $P1653
    concat $P1655, $P1654, " (it may exist, but an only is hiding it if so)"
    die $P1655
.annotate 'line', 699
    goto if_1635_end
  if_1635:
.annotate 'line', 692
    .const 'Sub' $P1639 = "111_1304277392.509" 
    capture_lex $P1639
    $P1639()
  if_1635_end:
  if_1632_end:
.annotate 'line', 703
    find_lex $P1656, "$j"
    unless_null $P1656, vivify_675
    new $P1656, "Undef"
  vivify_675:
    add $P1657, $P1656, 1
    store_lex "$j", $P1657
.annotate 'line', 685
    .return ($P1657)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1638"  :anon :subid("111_1304277392.509") :outer("110_1304277392.509")
.annotate 'line', 694
    $P1640 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1640
.annotate 'line', 692
    find_lex $P1641, "@new_dispatchees"
    unless_null $P1641, vivify_668
    $P1641 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
.annotate 'line', 695
    find_lex $P1642, "$code"
    unless_null $P1642, vivify_669
    new $P1642, "Undef"
  vivify_669:
    find_lex $P1643, "@new_dispatchees"
    unless_null $P1643, vivify_670
    $P1643 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1643
  vivify_670:
    set $P1643[0], $P1642
.annotate 'line', 696
    find_lex $P1644, "$dispatcher"
    unless_null $P1644, vivify_671
    new $P1644, "Undef"
  vivify_671:
    find_lex $P1645, "@new_dispatchees"
    unless_null $P1645, vivify_672
    $P1645 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
    create_dispatch_and_add_candidates $P1646, $P1644, $P1645
    find_lex $P1647, "$name"
    unless_null $P1647, vivify_673
    new $P1647, "Undef"
  vivify_673:
    find_lex $P1648, "self"
    find_lex $P1649, "$?CLASS"
    getattribute $P1650, $P1648, $P1649, "%!methods"
    unless_null $P1650, vivify_674
    $P1650 = root_new ['parrot';'Hash']
    setattribute $P1648, $P1649, "%!methods", $P1650
  vivify_674:
    set $P1650[$P1647], $P1646
.annotate 'line', 697
    new $P1651, "Integer"
    assign $P1651, 1
    store_lex "$found", $P1651
.annotate 'line', 692
    .return ($P1651)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("112_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1676
    .param pmc param_1677
.annotate 'line', 802
    .const 'Sub' $P1702 = "114_1304277392.509" 
    capture_lex $P1702
    .const 'Sub' $P1687 = "113_1304277392.509" 
    capture_lex $P1687
    .lex "self", param_1676
    .lex "$obj", param_1677
.annotate 'line', 803
    $P1678 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1678
.annotate 'line', 802
    find_lex $P1679, "@tc"
    unless_null $P1679, vivify_683
    $P1679 = root_new ['parrot';'ResizablePMCArray']
  vivify_683:
.annotate 'line', 804
    find_lex $P1681, "self"
    find_lex $P1682, "$?CLASS"
    getattribute $P1683, $P1681, $P1682, "@!mro"
    unless_null $P1683, vivify_684
    $P1683 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    defined $I1684, $P1683
    unless $I1684, for_undef_685
    iter $P1680, $P1683
    new $P1693, 'ExceptionHandler'
    set_label $P1693, loop1692_handler
    $P1693."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1693
  loop1692_test:
    unless $P1680, loop1692_done
    shift $P1685, $P1680
  loop1692_redo:
    .const 'Sub' $P1687 = "113_1304277392.509" 
    capture_lex $P1687
    $P1687($P1685)
  loop1692_next:
    goto loop1692_test
  loop1692_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1694, exception, 'type'
    eq $P1694, .CONTROL_LOOP_NEXT, loop1692_next
    eq $P1694, .CONTROL_LOOP_REDO, loop1692_redo
  loop1692_done:
    pop_eh 
  for_undef_685:
.annotate 'line', 805
    find_lex $P1696, "self"
    find_lex $P1697, "$?CLASS"
    getattribute $P1698, $P1696, $P1697, "@!done"
    unless_null $P1698, vivify_688
    $P1698 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    defined $I1699, $P1698
    unless $I1699, for_undef_689
    iter $P1695, $P1698
    new $P1708, 'ExceptionHandler'
    set_label $P1708, loop1707_handler
    $P1708."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1708
  loop1707_test:
    unless $P1695, loop1707_done
    shift $P1700, $P1695
  loop1707_redo:
    .const 'Sub' $P1702 = "114_1304277392.509" 
    capture_lex $P1702
    $P1702($P1700)
  loop1707_next:
    goto loop1707_test
  loop1707_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1709, exception, 'type'
    eq $P1709, .CONTROL_LOOP_NEXT, loop1707_next
    eq $P1709, .CONTROL_LOOP_REDO, loop1707_redo
  loop1707_done:
    pop_eh 
  for_undef_689:
.annotate 'line', 806
    find_lex $P1710, "$obj"
    unless_null $P1710, vivify_692
    new $P1710, "Undef"
  vivify_692:
    find_lex $P1711, "@tc"
    unless_null $P1711, vivify_693
    $P1711 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    publish_type_check_cache $P1710, $P1711
.annotate 'line', 802
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1686"  :anon :subid("113_1304277392.509") :outer("112_1304277392.509")
    .param pmc param_1688
.annotate 'line', 804
    .lex "$_", param_1688
    find_lex $P1689, "@tc"
    unless_null $P1689, vivify_686
    $P1689 = root_new ['parrot';'ResizablePMCArray']
  vivify_686:
    find_lex $P1690, "$_"
    unless_null $P1690, vivify_687
    new $P1690, "Undef"
  vivify_687:
    $P1691 = $P1689."push"($P1690)
    .return ($P1691)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1701"  :anon :subid("114_1304277392.509") :outer("112_1304277392.509")
    .param pmc param_1703
.annotate 'line', 805
    .lex "$_", param_1703
    find_lex $P1704, "@tc"
    unless_null $P1704, vivify_690
    $P1704 = root_new ['parrot';'ResizablePMCArray']
  vivify_690:
    find_lex $P1705, "$_"
    unless_null $P1705, vivify_691
    new $P1705, "Undef"
  vivify_691:
    $P1706 = $P1704."push"($P1705)
    .return ($P1706)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("115_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1713
    .param pmc param_1714
.annotate 'line', 809
    .const 'Sub' $P1724 = "116_1304277392.509" 
    capture_lex $P1724
    .lex "self", param_1713
    .lex "$obj", param_1714
.annotate 'line', 812
    $P1715 = root_new ['parrot';'Hash']
    .lex "%cache", $P1715
.annotate 'line', 809
    find_lex $P1716, "%cache"
    unless_null $P1716, vivify_694
    $P1716 = root_new ['parrot';'Hash']
  vivify_694:
.annotate 'line', 813
    find_lex $P1718, "self"
    find_lex $P1719, "$?CLASS"
    getattribute $P1720, $P1718, $P1719, "@!mro"
    unless_null $P1720, vivify_695
    $P1720 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    defined $I1721, $P1720
    unless $I1721, for_undef_696
    iter $P1717, $P1720
    new $P1753, 'ExceptionHandler'
    set_label $P1753, loop1752_handler
    $P1753."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1753
  loop1752_test:
    unless $P1717, loop1752_done
    shift $P1722, $P1717
  loop1752_redo:
    .const 'Sub' $P1724 = "116_1304277392.509" 
    capture_lex $P1724
    $P1724($P1722)
  loop1752_next:
    goto loop1752_test
  loop1752_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1754, exception, 'type'
    eq $P1754, .CONTROL_LOOP_NEXT, loop1752_next
    eq $P1754, .CONTROL_LOOP_REDO, loop1752_redo
  loop1752_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 821
    find_lex $P1755, "$obj"
    unless_null $P1755, vivify_707
    new $P1755, "Undef"
  vivify_707:
    find_lex $P1756, "%cache"
    unless_null $P1756, vivify_708
    $P1756 = root_new ['parrot';'Hash']
  vivify_708:
    publish_method_cache $P1755, $P1756
.annotate 'line', 809
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1723"  :anon :subid("116_1304277392.509") :outer("115_1304277392.509")
    .param pmc param_1726
.annotate 'line', 813
    .const 'Sub' $P1736 = "117_1304277392.509" 
    capture_lex $P1736
.annotate 'line', 814
    $P1725 = root_new ['parrot';'Hash']
    .lex "%methods", $P1725
    .lex "$_", param_1726
    find_lex $P1727, "$_"
    unless_null $P1727, vivify_697
    new $P1727, "Undef"
  vivify_697:
    get_how $P1728, $P1727
    find_lex $P1729, "$_"
    unless_null $P1729, vivify_698
    new $P1729, "Undef"
  vivify_698:
    $P1730 = $P1728."method_table"($P1729)
    store_lex "%methods", $P1730
.annotate 'line', 815
    find_lex $P1732, "%methods"
    unless_null $P1732, vivify_699
    $P1732 = root_new ['parrot';'Hash']
  vivify_699:
    defined $I1733, $P1732
    unless $I1733, for_undef_700
    iter $P1731, $P1732
    new $P1750, 'ExceptionHandler'
    set_label $P1750, loop1749_handler
    $P1750."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1750
  loop1749_test:
    unless $P1731, loop1749_done
    shift $P1734, $P1731
  loop1749_redo:
    .const 'Sub' $P1736 = "117_1304277392.509" 
    capture_lex $P1736
    $P1736($P1734)
  loop1749_next:
    goto loop1749_test
  loop1749_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1751, exception, 'type'
    eq $P1751, .CONTROL_LOOP_NEXT, loop1749_next
    eq $P1751, .CONTROL_LOOP_REDO, loop1749_redo
  loop1749_done:
    pop_eh 
  for_undef_700:
.annotate 'line', 813
    .return ($P1731)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1735"  :anon :subid("117_1304277392.509") :outer("116_1304277392.509")
    .param pmc param_1737
.annotate 'line', 815
    .lex "$_", param_1737
.annotate 'line', 816
    find_lex $P1740, "$_"
    unless_null $P1740, vivify_701
    new $P1740, "Undef"
  vivify_701:
    $P1741 = $P1740."key"()
    find_lex $P1742, "%cache"
    unless_null $P1742, vivify_702
    $P1742 = root_new ['parrot';'Hash']
  vivify_702:
    set $P1743, $P1742[$P1741]
    unless_null $P1743, vivify_703
    new $P1743, "Undef"
  vivify_703:
    unless $P1743, unless_1739
    set $P1738, $P1743
    goto unless_1739_end
  unless_1739:
.annotate 'line', 817
    find_lex $P1744, "$_"
    unless_null $P1744, vivify_704
    new $P1744, "Undef"
  vivify_704:
    $P1745 = $P1744."value"()
    find_lex $P1746, "$_"
    unless_null $P1746, vivify_705
    new $P1746, "Undef"
  vivify_705:
    $P1747 = $P1746."key"()
    find_lex $P1748, "%cache"
    unless_null $P1748, vivify_706
    $P1748 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1748
  vivify_706:
    set $P1748[$P1747], $P1745
.annotate 'line', 816
    set $P1738, $P1745
  unless_1739_end:
.annotate 'line', 815
    .return ($P1738)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("118_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1758
    .param pmc param_1759
.annotate 'line', 824
    .const 'Sub' $P1769 = "119_1304277392.509" 
    capture_lex $P1769
    .lex "self", param_1758
    .lex "$obj", param_1759
.annotate 'line', 825
    $P1760 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1760
.annotate 'line', 824
    find_lex $P1761, "%mapping"
    unless_null $P1761, vivify_709
    $P1761 = root_new ['parrot';'Hash']
  vivify_709:
.annotate 'line', 826
    find_lex $P1763, "self"
    find_lex $P1764, "$?CLASS"
    getattribute $P1765, $P1763, $P1764, "@!mro"
    unless_null $P1765, vivify_710
    $P1765 = root_new ['parrot';'ResizablePMCArray']
  vivify_710:
    defined $I1766, $P1765
    unless $I1766, for_undef_711
    iter $P1762, $P1765
    new $P1798, 'ExceptionHandler'
    set_label $P1798, loop1797_handler
    $P1798."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1798
  loop1797_test:
    unless $P1762, loop1797_done
    shift $P1767, $P1762
  loop1797_redo:
    .const 'Sub' $P1769 = "119_1304277392.509" 
    capture_lex $P1769
    $P1769($P1767)
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
  for_undef_711:
.annotate 'line', 834
    find_lex $P1802, "%mapping"
    unless_null $P1802, vivify_722
    $P1802 = root_new ['parrot';'Hash']
  vivify_722:
    set $N1803, $P1802
    if $N1803, if_1801
    new $P1800, 'Float'
    set $P1800, $N1803
    goto if_1801_end
  if_1801:
.annotate 'line', 835
    find_lex $P1804, "$obj"
    unless_null $P1804, vivify_723
    new $P1804, "Undef"
  vivify_723:
    find_lex $P1805, "%mapping"
    unless_null $P1805, vivify_724
    $P1805 = root_new ['parrot';'Hash']
  vivify_724:
    stable_publish_vtable_mapping $P1804, $P1805
  if_1801_end:
.annotate 'line', 824
    .return ($P1800)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1768"  :anon :subid("119_1304277392.509") :outer("118_1304277392.509")
    .param pmc param_1771
.annotate 'line', 826
    .const 'Sub' $P1781 = "120_1304277392.509" 
    capture_lex $P1781
.annotate 'line', 827
    $P1770 = root_new ['parrot';'Hash']
    .lex "%map", $P1770
    .lex "$_", param_1771
    find_lex $P1772, "$_"
    unless_null $P1772, vivify_712
    new $P1772, "Undef"
  vivify_712:
    get_how $P1773, $P1772
    find_lex $P1774, "$_"
    unless_null $P1774, vivify_713
    new $P1774, "Undef"
  vivify_713:
    $P1775 = $P1773."parrot_vtable_mappings"($P1774, 1 :named("local"))
    store_lex "%map", $P1775
.annotate 'line', 828
    find_lex $P1777, "%map"
    unless_null $P1777, vivify_714
    $P1777 = root_new ['parrot';'Hash']
  vivify_714:
    defined $I1778, $P1777
    unless $I1778, for_undef_715
    iter $P1776, $P1777
    new $P1795, 'ExceptionHandler'
    set_label $P1795, loop1794_handler
    $P1795."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1795
  loop1794_test:
    unless $P1776, loop1794_done
    shift $P1779, $P1776
  loop1794_redo:
    .const 'Sub' $P1781 = "120_1304277392.509" 
    capture_lex $P1781
    $P1781($P1779)
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
  for_undef_715:
.annotate 'line', 826
    .return ($P1776)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1780"  :anon :subid("120_1304277392.509") :outer("119_1304277392.509")
    .param pmc param_1782
.annotate 'line', 828
    .lex "$_", param_1782
.annotate 'line', 829
    find_lex $P1785, "$_"
    unless_null $P1785, vivify_716
    new $P1785, "Undef"
  vivify_716:
    $P1786 = $P1785."key"()
    find_lex $P1787, "%mapping"
    unless_null $P1787, vivify_717
    $P1787 = root_new ['parrot';'Hash']
  vivify_717:
    set $P1788, $P1787[$P1786]
    unless_null $P1788, vivify_718
    new $P1788, "Undef"
  vivify_718:
    unless $P1788, unless_1784
    set $P1783, $P1788
    goto unless_1784_end
  unless_1784:
.annotate 'line', 830
    find_lex $P1789, "$_"
    unless_null $P1789, vivify_719
    new $P1789, "Undef"
  vivify_719:
    $P1790 = $P1789."value"()
    find_lex $P1791, "$_"
    unless_null $P1791, vivify_720
    new $P1791, "Undef"
  vivify_720:
    $P1792 = $P1791."key"()
    find_lex $P1793, "%mapping"
    unless_null $P1793, vivify_721
    $P1793 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1793
  vivify_721:
    set $P1793[$P1792], $P1790
.annotate 'line', 829
    set $P1783, $P1790
  unless_1784_end:
.annotate 'line', 828
    .return ($P1783)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("121_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1807
    .param pmc param_1808
    .param pmc param_1809 :optional :named("local")
    .param int has_param_1809 :opt_flag
.annotate 'line', 843
    .lex "self", param_1807
    .lex "$obj", param_1808
    if has_param_1809, optparam_725
    new $P1810, "Undef"
    set param_1809, $P1810
  optparam_725:
    .lex "$local", param_1809
.annotate 'line', 844
    find_lex $P1813, "$local"
    unless_null $P1813, vivify_726
    new $P1813, "Undef"
  vivify_726:
    if $P1813, if_1812
    find_lex $P1817, "self"
    find_lex $P1818, "$?CLASS"
    getattribute $P1819, $P1817, $P1818, "@!mro"
    unless_null $P1819, vivify_727
    $P1819 = root_new ['parrot';'ResizablePMCArray']
  vivify_727:
    set $P1811, $P1819
    goto if_1812_end
  if_1812:
    find_lex $P1814, "self"
    find_lex $P1815, "$?CLASS"
    getattribute $P1816, $P1814, $P1815, "@!parents"
    unless_null $P1816, vivify_728
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_728:
    set $P1811, $P1816
  if_1812_end:
.annotate 'line', 843
    .return ($P1811)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("122_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1821
    .param pmc param_1822
    .param pmc param_1823 :named("local")
.annotate 'line', 847
    .lex "self", param_1821
    .lex "$obj", param_1822
    .lex "$local", param_1823
    find_lex $P1824, "self"
    find_lex $P1825, "$?CLASS"
    getattribute $P1826, $P1824, $P1825, "@!roles"
    unless_null $P1826, vivify_729
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
    .return ($P1826)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("123_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1828
    .param pmc param_1829
    .param pmc param_1830 :named("local")
.annotate 'line', 851
    .const 'Sub' $P1840 = "124_1304277392.509" 
    capture_lex $P1840
    .lex "self", param_1828
    .lex "$obj", param_1829
    .lex "$local", param_1830
.annotate 'line', 852
    $P1831 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1831
.annotate 'line', 851
    find_lex $P1832, "@meths"
    unless_null $P1832, vivify_730
    $P1832 = root_new ['parrot';'ResizablePMCArray']
  vivify_730:
.annotate 'line', 853
    find_lex $P1834, "self"
    find_lex $P1835, "$?CLASS"
    getattribute $P1836, $P1834, $P1835, "%!methods"
    unless_null $P1836, vivify_731
    $P1836 = root_new ['parrot';'Hash']
  vivify_731:
    defined $I1837, $P1836
    unless $I1837, for_undef_732
    iter $P1833, $P1836
    new $P1847, 'ExceptionHandler'
    set_label $P1847, loop1846_handler
    $P1847."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1847
  loop1846_test:
    unless $P1833, loop1846_done
    shift $P1838, $P1833
  loop1846_redo:
    .const 'Sub' $P1840 = "124_1304277392.509" 
    capture_lex $P1840
    $P1840($P1838)
  loop1846_next:
    goto loop1846_test
  loop1846_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1848, exception, 'type'
    eq $P1848, .CONTROL_LOOP_NEXT, loop1846_next
    eq $P1848, .CONTROL_LOOP_REDO, loop1846_redo
  loop1846_done:
    pop_eh 
  for_undef_732:
    find_lex $P1849, "@meths"
    unless_null $P1849, vivify_735
    $P1849 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
.annotate 'line', 851
    .return ($P1849)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1839"  :anon :subid("124_1304277392.509") :outer("123_1304277392.509")
    .param pmc param_1841
.annotate 'line', 853
    .lex "$_", param_1841
.annotate 'line', 854
    find_lex $P1842, "@meths"
    unless_null $P1842, vivify_733
    $P1842 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    find_lex $P1843, "$_"
    unless_null $P1843, vivify_734
    new $P1843, "Undef"
  vivify_734:
    $P1844 = $P1843."value"()
    $P1845 = $P1842."push"($P1844)
.annotate 'line', 853
    .return ($P1845)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("125_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1851
    .param pmc param_1852
.annotate 'line', 859
    .lex "self", param_1851
    .lex "$obj", param_1852
    find_lex $P1853, "self"
    find_lex $P1854, "$?CLASS"
    getattribute $P1855, $P1853, $P1854, "%!methods"
    unless_null $P1855, vivify_736
    $P1855 = root_new ['parrot';'Hash']
  vivify_736:
    .return ($P1855)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("126_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1857
    .param pmc param_1858
.annotate 'line', 863
    .lex "self", param_1857
    .lex "$obj", param_1858
    find_lex $P1859, "self"
    find_lex $P1860, "$?CLASS"
    getattribute $P1861, $P1859, $P1860, "$!name"
    unless_null $P1861, vivify_737
    new $P1861, "Undef"
  vivify_737:
    .return ($P1861)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("127_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1863
    .param pmc param_1864
    .param pmc param_1865 :named("local")
.annotate 'line', 867
    .const 'Sub' $P1875 = "128_1304277392.509" 
    capture_lex $P1875
    .lex "self", param_1863
    .lex "$obj", param_1864
    .lex "$local", param_1865
.annotate 'line', 868
    $P1866 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1866
.annotate 'line', 867
    find_lex $P1867, "@attrs"
    unless_null $P1867, vivify_738
    $P1867 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
.annotate 'line', 869
    find_lex $P1869, "self"
    find_lex $P1870, "$?CLASS"
    getattribute $P1871, $P1869, $P1870, "%!attributes"
    unless_null $P1871, vivify_739
    $P1871 = root_new ['parrot';'Hash']
  vivify_739:
    defined $I1872, $P1871
    unless $I1872, for_undef_740
    iter $P1868, $P1871
    new $P1882, 'ExceptionHandler'
    set_label $P1882, loop1881_handler
    $P1882."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1882
  loop1881_test:
    unless $P1868, loop1881_done
    shift $P1873, $P1868
  loop1881_redo:
    .const 'Sub' $P1875 = "128_1304277392.509" 
    capture_lex $P1875
    $P1875($P1873)
  loop1881_next:
    goto loop1881_test
  loop1881_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1883, exception, 'type'
    eq $P1883, .CONTROL_LOOP_NEXT, loop1881_next
    eq $P1883, .CONTROL_LOOP_REDO, loop1881_redo
  loop1881_done:
    pop_eh 
  for_undef_740:
    find_lex $P1884, "@attrs"
    unless_null $P1884, vivify_743
    $P1884 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
.annotate 'line', 867
    .return ($P1884)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1874"  :anon :subid("128_1304277392.509") :outer("127_1304277392.509")
    .param pmc param_1876
.annotate 'line', 869
    .lex "$_", param_1876
.annotate 'line', 870
    find_lex $P1877, "@attrs"
    unless_null $P1877, vivify_741
    $P1877 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1878, "$_"
    unless_null $P1878, vivify_742
    new $P1878, "Undef"
  vivify_742:
    $P1879 = $P1878."value"()
    $P1880 = $P1877."push"($P1879)
.annotate 'line', 869
    .return ($P1880)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("129_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1886
    .param pmc param_1887
    .param pmc param_1888 :named("local")
.annotate 'line', 875
    .lex "self", param_1886
    .lex "$obj", param_1887
    .lex "$local", param_1888
    find_lex $P1889, "self"
    find_lex $P1890, "$?CLASS"
    getattribute $P1891, $P1889, $P1890, "%!parrot_vtable_mapping"
    unless_null $P1891, vivify_744
    $P1891 = root_new ['parrot';'Hash']
  vivify_744:
    .return ($P1891)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("130_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1895
    .param pmc param_1896
    .param pmc param_1897
.annotate 'line', 883
    new $P1894, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1894, control_1893
    push_eh $P1894
    .lex "self", param_1895
    .lex "$obj", param_1896
    .lex "$check", param_1897
.annotate 'line', 884
    new $P1898, "Undef"
    .lex "$check-class", $P1898
.annotate 'line', 885
    new $P1899, "Undef"
    .lex "$i", $P1899
.annotate 'line', 884
    find_lex $P1900, "$check"
    unless_null $P1900, vivify_745
    new $P1900, "Undef"
  vivify_745:
    get_what $P1901, $P1900
    store_lex "$check-class", $P1901
.annotate 'line', 885
    find_lex $P1902, "self"
    find_lex $P1903, "$?CLASS"
    getattribute $P1904, $P1902, $P1903, "@!mro"
    unless_null $P1904, vivify_746
    $P1904 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    set $N1905, $P1904
    new $P1906, 'Float'
    set $P1906, $N1905
    store_lex "$i", $P1906
.annotate 'line', 886
    new $P1924, 'ExceptionHandler'
    set_label $P1924, loop1923_handler
    $P1924."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1924
  loop1923_test:
    find_lex $P1907, "$i"
    unless_null $P1907, vivify_747
    new $P1907, "Undef"
  vivify_747:
    set $N1908, $P1907
    isgt $I1909, $N1908, 0.0
    unless $I1909, loop1923_done
  loop1923_redo:
.annotate 'line', 887
    find_lex $P1910, "$i"
    unless_null $P1910, vivify_748
    new $P1910, "Undef"
  vivify_748:
    sub $P1911, $P1910, 1
    store_lex "$i", $P1911
.annotate 'line', 888
    find_lex $P1913, "$i"
    unless_null $P1913, vivify_749
    new $P1913, "Undef"
  vivify_749:
    set $I1914, $P1913
    find_lex $P1915, "self"
    find_lex $P1916, "$?CLASS"
    getattribute $P1917, $P1915, $P1916, "@!mro"
    unless_null $P1917, vivify_750
    $P1917 = root_new ['parrot';'ResizablePMCArray']
  vivify_750:
    set $P1918, $P1917[$I1914]
    unless_null $P1918, vivify_751
    new $P1918, "Undef"
  vivify_751:
    find_lex $P1919, "$check-class"
    unless_null $P1919, vivify_752
    new $P1919, "Undef"
  vivify_752:
    issame $I1920, $P1918, $P1919
    unless $I1920, if_1912_end
.annotate 'line', 889
    new $P1921, "Exception"
    set $P1921['type'], .CONTROL_RETURN
    new $P1922, "Integer"
    assign $P1922, 1
    setattribute $P1921, 'payload', $P1922
    throw $P1921
  if_1912_end:
  loop1923_next:
.annotate 'line', 886
    goto loop1923_test
  loop1923_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1925, exception, 'type'
    eq $P1925, .CONTROL_LOOP_NEXT, loop1923_next
    eq $P1925, .CONTROL_LOOP_REDO, loop1923_redo
  loop1923_done:
    pop_eh 
.annotate 'line', 892
    new $P1926, "Exception"
    set $P1926['type'], .CONTROL_RETURN
    new $P1927, "Integer"
    assign $P1927, 0
    setattribute $P1926, 'payload', $P1927
    throw $P1926
.annotate 'line', 883
    .return ()
  control_1893:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1928, exception, "payload"
    .return ($P1928)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("131_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1932
    .param pmc param_1933
    .param pmc param_1934
.annotate 'line', 895
    new $P1931, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1931, control_1930
    push_eh $P1931
    .lex "self", param_1932
    .lex "$obj", param_1933
    .lex "$check", param_1934
.annotate 'line', 896
    new $P1935, "Undef"
    .lex "$i", $P1935
    find_lex $P1936, "self"
    find_lex $P1937, "$?CLASS"
    getattribute $P1938, $P1936, $P1937, "@!done"
    unless_null $P1938, vivify_753
    $P1938 = root_new ['parrot';'ResizablePMCArray']
  vivify_753:
    set $N1939, $P1938
    new $P1940, 'Float'
    set $P1940, $N1939
    store_lex "$i", $P1940
.annotate 'line', 897
    new $P1958, 'ExceptionHandler'
    set_label $P1958, loop1957_handler
    $P1958."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1958
  loop1957_test:
    find_lex $P1941, "$i"
    unless_null $P1941, vivify_754
    new $P1941, "Undef"
  vivify_754:
    set $N1942, $P1941
    isgt $I1943, $N1942, 0.0
    unless $I1943, loop1957_done
  loop1957_redo:
.annotate 'line', 898
    find_lex $P1944, "$i"
    unless_null $P1944, vivify_755
    new $P1944, "Undef"
  vivify_755:
    sub $P1945, $P1944, 1
    store_lex "$i", $P1945
.annotate 'line', 899
    find_lex $P1947, "$i"
    unless_null $P1947, vivify_756
    new $P1947, "Undef"
  vivify_756:
    set $I1948, $P1947
    find_lex $P1949, "self"
    find_lex $P1950, "$?CLASS"
    getattribute $P1951, $P1949, $P1950, "@!done"
    unless_null $P1951, vivify_757
    $P1951 = root_new ['parrot';'ResizablePMCArray']
  vivify_757:
    set $P1952, $P1951[$I1948]
    unless_null $P1952, vivify_758
    new $P1952, "Undef"
  vivify_758:
    find_lex $P1953, "$check"
    unless_null $P1953, vivify_759
    new $P1953, "Undef"
  vivify_759:
    issame $I1954, $P1952, $P1953
    unless $I1954, if_1946_end
.annotate 'line', 900
    new $P1955, "Exception"
    set $P1955['type'], .CONTROL_RETURN
    new $P1956, "Integer"
    assign $P1956, 1
    setattribute $P1955, 'payload', $P1956
    throw $P1955
  if_1946_end:
  loop1957_next:
.annotate 'line', 897
    goto loop1957_test
  loop1957_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1959, exception, 'type'
    eq $P1959, .CONTROL_LOOP_NEXT, loop1957_next
    eq $P1959, .CONTROL_LOOP_REDO, loop1957_redo
  loop1957_done:
    pop_eh 
.annotate 'line', 903
    new $P1960, "Exception"
    set $P1960['type'], .CONTROL_RETURN
    new $P1961, "Integer"
    assign $P1961, 0
    setattribute $P1960, 'payload', $P1961
    throw $P1960
.annotate 'line', 895
    .return ()
  control_1930:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1962, exception, "payload"
    .return ($P1962)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("132_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_1966
    .param pmc param_1967
    .param pmc param_1968
.annotate 'line', 906
    .const 'Sub' $P1976 = "133_1304277392.509" 
    capture_lex $P1976
    new $P1965, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1965, control_1964
    push_eh $P1965
    .lex "self", param_1966
    .lex "$obj", param_1967
    .lex "$name", param_1968
.annotate 'line', 907
    find_lex $P1970, "self"
    find_lex $P1971, "$?CLASS"
    getattribute $P1972, $P1970, $P1971, "@!mro"
    unless_null $P1972, vivify_760
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_760:
    defined $I1973, $P1972
    unless $I1973, for_undef_761
    iter $P1969, $P1972
    new $P1994, 'ExceptionHandler'
    set_label $P1994, loop1993_handler
    $P1994."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1994
  loop1993_test:
    unless $P1969, loop1993_done
    shift $P1974, $P1969
  loop1993_redo:
    .const 'Sub' $P1976 = "133_1304277392.509" 
    capture_lex $P1976
    $P1976($P1974)
  loop1993_next:
    goto loop1993_test
  loop1993_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1995, exception, 'type'
    eq $P1995, .CONTROL_LOOP_NEXT, loop1993_next
    eq $P1995, .CONTROL_LOOP_REDO, loop1993_redo
  loop1993_done:
    pop_eh 
  for_undef_761:
.annotate 'line', 914
    new $P1996, "Exception"
    set $P1996['type'], .CONTROL_RETURN
    new $P1997, "Integer"
    assign $P1997, 0
    setattribute $P1996, 'payload', $P1997
    throw $P1996
.annotate 'line', 906
    .return ()
  control_1964:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1998, exception, "payload"
    .return ($P1998)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1975"  :anon :subid("133_1304277392.509") :outer("132_1304277392.509")
    .param pmc param_1979
.annotate 'line', 908
    $P1977 = root_new ['parrot';'Hash']
    .lex "%meths", $P1977
.annotate 'line', 909
    new $P1978, "Undef"
    .lex "$can", $P1978
    .lex "$_", param_1979
.annotate 'line', 908
    find_lex $P1980, "$_"
    unless_null $P1980, vivify_762
    new $P1980, "Undef"
  vivify_762:
    get_how $P1981, $P1980
    find_lex $P1982, "$obj"
    unless_null $P1982, vivify_763
    new $P1982, "Undef"
  vivify_763:
    $P1983 = $P1981."method_table"($P1982)
    store_lex "%meths", $P1983
.annotate 'line', 909
    find_lex $P1984, "$name"
    unless_null $P1984, vivify_764
    new $P1984, "Undef"
  vivify_764:
    find_lex $P1985, "%meths"
    unless_null $P1985, vivify_765
    $P1985 = root_new ['parrot';'Hash']
  vivify_765:
    set $P1986, $P1985[$P1984]
    unless_null $P1986, vivify_766
    new $P1986, "Undef"
  vivify_766:
    store_lex "$can", $P1986
.annotate 'line', 910
    find_lex $P1989, "$can"
    unless_null $P1989, vivify_767
    new $P1989, "Undef"
  vivify_767:
    defined $I1990, $P1989
    if $I1990, if_1988
    new $P1987, 'Integer'
    set $P1987, $I1990
    goto if_1988_end
  if_1988:
.annotate 'line', 911
    new $P1991, "Exception"
    set $P1991['type'], .CONTROL_RETURN
    find_lex $P1992, "$can"
    unless_null $P1992, vivify_768
    new $P1992, "Undef"
  vivify_768:
    setattribute $P1991, 'payload', $P1992
    throw $P1991
  if_1988_end:
.annotate 'line', 907
    .return ($P1987)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("134_1304277392.509") :outer("80_1304277392.509")
    .param pmc param_2002
    .param pmc param_2003
    .param pmc param_2004
.annotate 'line', 920
    .const 'Sub' $P2012 = "135_1304277392.509" 
    capture_lex $P2012
    new $P2001, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2001, control_2000
    push_eh $P2001
    .lex "self", param_2002
    .lex "$obj", param_2003
    .lex "$name", param_2004
.annotate 'line', 921
    find_lex $P2006, "self"
    find_lex $P2007, "$?CLASS"
    getattribute $P2008, $P2006, $P2007, "@!mro"
    unless_null $P2008, vivify_769
    $P2008 = root_new ['parrot';'ResizablePMCArray']
  vivify_769:
    defined $I2009, $P2008
    unless $I2009, for_undef_770
    iter $P2005, $P2008
    new $P2030, 'ExceptionHandler'
    set_label $P2030, loop2029_handler
    $P2030."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2030
  loop2029_test:
    unless $P2005, loop2029_done
    shift $P2010, $P2005
  loop2029_redo:
    .const 'Sub' $P2012 = "135_1304277392.509" 
    capture_lex $P2012
    $P2012($P2010)
  loop2029_next:
    goto loop2029_test
  loop2029_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2031, exception, 'type'
    eq $P2031, .CONTROL_LOOP_NEXT, loop2029_next
    eq $P2031, .CONTROL_LOOP_REDO, loop2029_redo
  loop2029_done:
    pop_eh 
  for_undef_770:
.annotate 'line', 928
    null $P2032
.annotate 'line', 920
    .return ($P2032)
  control_2000:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2033, exception, "payload"
    .return ($P2033)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block2011"  :anon :subid("135_1304277392.509") :outer("134_1304277392.509")
    .param pmc param_2015
.annotate 'line', 922
    $P2013 = root_new ['parrot';'Hash']
    .lex "%meths", $P2013
.annotate 'line', 923
    new $P2014, "Undef"
    .lex "$found", $P2014
    .lex "$_", param_2015
.annotate 'line', 922
    find_lex $P2016, "$_"
    unless_null $P2016, vivify_771
    new $P2016, "Undef"
  vivify_771:
    get_how $P2017, $P2016
    find_lex $P2018, "$obj"
    unless_null $P2018, vivify_772
    new $P2018, "Undef"
  vivify_772:
    $P2019 = $P2017."method_table"($P2018)
    store_lex "%meths", $P2019
.annotate 'line', 923
    find_lex $P2020, "$name"
    unless_null $P2020, vivify_773
    new $P2020, "Undef"
  vivify_773:
    find_lex $P2021, "%meths"
    unless_null $P2021, vivify_774
    $P2021 = root_new ['parrot';'Hash']
  vivify_774:
    set $P2022, $P2021[$P2020]
    unless_null $P2022, vivify_775
    new $P2022, "Undef"
  vivify_775:
    store_lex "$found", $P2022
.annotate 'line', 924
    find_lex $P2025, "$found"
    unless_null $P2025, vivify_776
    new $P2025, "Undef"
  vivify_776:
    defined $I2026, $P2025
    if $I2026, if_2024
    new $P2023, 'Integer'
    set $P2023, $I2026
    goto if_2024_end
  if_2024:
.annotate 'line', 925
    new $P2027, "Exception"
    set $P2027['type'], .CONTROL_RETURN
    find_lex $P2028, "$found"
    unless_null $P2028, vivify_777
    new $P2028, "Undef"
  vivify_777:
    setattribute $P2027, 'payload', $P2028
    throw $P2027
  if_2024_end:
.annotate 'line', 921
    .return ($P2023)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2040"  :subid("137_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 933
    .const 'Sub' $P2103 = "146_1304277392.509" 
    capture_lex $P2103
    .const 'Sub' $P2095 = "145_1304277392.509" 
    capture_lex $P2095
    .const 'Sub' $P2089 = "144_1304277392.509" 
    capture_lex $P2089
    .const 'Sub' $P2085 = "143_1304277392.509" 
    capture_lex $P2085
    .const 'Sub' $P2080 = "142_1304277392.509" 
    capture_lex $P2080
    .const 'Sub' $P2075 = "141_1304277392.509" 
    capture_lex $P2075
    .const 'Sub' $P2061 = "140_1304277392.509" 
    capture_lex $P2061
    .const 'Sub' $P2054 = "139_1304277392.509" 
    capture_lex $P2054
    .const 'Sub' $P2044 = "138_1304277392.509" 
    capture_lex $P2044
    .lex "$?PACKAGE", $P2042
    .lex "$?CLASS", $P2043
.annotate 'line', 973
    .const 'Sub' $P2095 = "145_1304277392.509" 
    newclosure $P2101, $P2095
.annotate 'line', 933
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "" :load :init :subid("post778") :outer("137_1304277392.509")
.annotate 'line', 933
    .const 'Sub' $P2041 = "137_1304277392.509" 
    .local pmc block
    set block, $P2041
    .const 'Sub' $P2103 = "146_1304277392.509" 
    capture_lex $P2103
    $P2103()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2102"  :anon :subid("146_1304277392.509") :outer("137_1304277392.509")
.annotate 'line', 933
    nqp_get_sc_object $P2104, "1304277388.915", 68
    .local pmc type_obj
    set type_obj, $P2104
    get_how $P2105, type_obj
    $P2106 = $P2105."compose"(type_obj)
    .return ($P2106)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("138_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2045
    .param pmc param_2046 :optional :named("name")
    .param int has_param_2046 :opt_flag
.annotate 'line', 937
    .lex "self", param_2045
    if has_param_2046, optparam_779
    new $P2047, "Undef"
    set param_2046, $P2047
  optparam_779:
    .lex "$name", param_2046
.annotate 'line', 938
    new $P2048, "Undef"
    .lex "$obj", $P2048
    find_lex $P2049, "self"
    repr_instance_of $P2050, $P2049
    store_lex "$obj", $P2050
.annotate 'line', 939
    find_lex $P2051, "$obj"
    unless_null $P2051, vivify_780
    new $P2051, "Undef"
  vivify_780:
    find_lex $P2052, "$name"
    unless_null $P2052, vivify_781
    new $P2052, "Undef"
  vivify_781:
    $P2051."BUILD"($P2052 :named("name"))
    find_lex $P2053, "$obj"
    unless_null $P2053, vivify_782
    new $P2053, "Undef"
  vivify_782:
.annotate 'line', 937
    .return ($P2053)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("139_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2055
    .param pmc param_2056 :optional :named("name")
    .param int has_param_2056 :opt_flag
.annotate 'line', 943
    .lex "self", param_2055
    if has_param_2056, optparam_783
    new $P2057, "Undef"
    set param_2056, $P2057
  optparam_783:
    .lex "$name", param_2056
.annotate 'line', 944
    find_lex $P2058, "$name"
    unless_null $P2058, vivify_784
    new $P2058, "Undef"
  vivify_784:
    find_lex $P2059, "self"
    find_lex $P2060, "$?CLASS"
    setattribute $P2059, $P2060, "$!name", $P2058
.annotate 'line', 943
    .return ($P2058)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("140_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2062
    .param pmc param_2065 :named("repr")
    .param pmc param_2063 :optional :named("name")
    .param int has_param_2063 :opt_flag
.annotate 'line', 950
    .lex "self", param_2062
    if has_param_2063, optparam_785
    new $P2064, "String"
    assign $P2064, "<anon>"
    set param_2063, $P2064
  optparam_785:
    .lex "$name", param_2063
    .lex "$repr", param_2065
.annotate 'line', 951
    new $P2066, "Undef"
    .lex "$metaclass", $P2066
    find_lex $P2067, "self"
    find_lex $P2068, "$name"
    unless_null $P2068, vivify_786
    new $P2068, "Undef"
  vivify_786:
    $P2069 = $P2067."new"($P2068 :named("name"))
    store_lex "$metaclass", $P2069
.annotate 'line', 953
    find_lex $P2070, "$metaclass"
    unless_null $P2070, vivify_787
    new $P2070, "Undef"
  vivify_787:
    find_lex $P2071, "$repr"
    unless_null $P2071, vivify_788
    new $P2071, "Undef"
  vivify_788:
    set $S2072, $P2071
    repr_type_object_for $P2073, $P2070, $S2072
    $P2074 = root_new ['parrot';'Hash']
    set_who $P2073, $P2074
.annotate 'line', 950
    .return ($P2073)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("141_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2076
    .param pmc param_2077
    .param pmc param_2078
    .param pmc param_2079
.annotate 'line', 957
    .lex "self", param_2076
    .lex "$obj", param_2077
    .lex "$name", param_2078
    .lex "$code_obj", param_2079
.annotate 'line', 958
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 957
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("142_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2081
    .param pmc param_2082
    .param pmc param_2083
    .param pmc param_2084
.annotate 'line', 961
    .lex "self", param_2081
    .lex "$obj", param_2082
    .lex "$name", param_2083
    .lex "$code_obj", param_2084
.annotate 'line', 962
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 961
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("143_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2086
    .param pmc param_2087
    .param pmc param_2088
.annotate 'line', 965
    .lex "self", param_2086
    .lex "$obj", param_2087
    .lex "$meta_attr", param_2088
.annotate 'line', 966
    die "Native types may not have attributes"
.annotate 'line', 965
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("144_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2090
    .param pmc param_2091
.annotate 'line', 969
    .lex "self", param_2090
    .lex "$obj", param_2091
.annotate 'line', 970
    new $P2092, "Integer"
    assign $P2092, 1
    find_lex $P2093, "self"
    find_lex $P2094, "$?CLASS"
    setattribute $P2093, $P2094, "$!composed", $P2092
.annotate 'line', 969
    .return ($P2092)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("145_1304277392.509") :outer("137_1304277392.509")
    .param pmc param_2096
    .param pmc param_2097
.annotate 'line', 973
    .lex "self", param_2096
    .lex "$obj", param_2097
    find_lex $P2098, "self"
    find_lex $P2099, "$?CLASS"
    getattribute $P2100, $P2098, $P2099, "$!name"
    unless_null $P2100, vivify_789
    new $P2100, "Undef"
  vivify_789:
    .return ($P2100)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2107"  :subid("147_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 979
    .const 'Sub' $P2292 = "161_1304277392.509" 
    capture_lex $P2292
    .const 'Sub' $P2282 = "160_1304277392.509" 
    capture_lex $P2282
    .const 'Sub' $P2201 = "155_1304277392.509" 
    capture_lex $P2201
    .const 'Sub' $P2192 = "154_1304277392.509" 
    capture_lex $P2192
    .const 'Sub' $P2183 = "153_1304277392.509" 
    capture_lex $P2183
    .const 'Sub' $P2178 = "152_1304277392.509" 
    capture_lex $P2178
    .const 'Sub' $P2161 = "151_1304277392.509" 
    capture_lex $P2161
    .const 'Sub' $P2146 = "150_1304277392.509" 
    capture_lex $P2146
    .const 'Sub' $P2109 = "148_1304277392.509" 
    capture_lex $P2109
.annotate 'line', 1039
    .const 'Sub' $P2109 = "148_1304277392.509" 
    newclosure $P2143, $P2109
    .lex "has_method", $P2143
.annotate 'line', 979
    .lex "$?PACKAGE", $P2144
    .lex "$?CLASS", $P2145
.annotate 'line', 1035
    find_lex $P2290, "has_method"
.annotate 'line', 979
    .return ($P2290)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "" :load :init :subid("post790") :outer("147_1304277392.509")
.annotate 'line', 979
    .const 'Sub' $P2108 = "147_1304277392.509" 
    .local pmc block
    set block, $P2108
    .const 'Sub' $P2292 = "161_1304277392.509" 
    capture_lex $P2292
    $P2292()
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2291"  :anon :subid("161_1304277392.509") :outer("147_1304277392.509")
.annotate 'line', 979
    nqp_get_sc_object $P2293, "1304277388.915", 77
    .local pmc type_obj
    set type_obj, $P2293
    get_how $P2294, type_obj
    $P2295 = $P2294."compose"(type_obj)
    .return ($P2295)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("148_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2112
    .param pmc param_2113
    .param pmc param_2114
.annotate 'line', 1039
    .const 'Sub' $P2126 = "149_1304277392.509" 
    capture_lex $P2126
    new $P2111, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2111, control_2110
    push_eh $P2111
    .lex "$target", param_2112
    .lex "$name", param_2113
    .lex "$local", param_2114
.annotate 'line', 1040
    $P2115 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2115
    find_lex $P2116, "$target"
    unless_null $P2116, vivify_791
    new $P2116, "Undef"
  vivify_791:
    get_how $P2117, $P2116
    find_lex $P2118, "$target"
    unless_null $P2118, vivify_792
    new $P2118, "Undef"
  vivify_792:
    find_lex $P2119, "$local"
    unless_null $P2119, vivify_793
    new $P2119, "Undef"
  vivify_793:
    $P2120 = $P2117."methods"($P2118, $P2119 :named("local"))
    store_lex "@methods", $P2120
.annotate 'line', 1041
    find_lex $P2122, "@methods"
    unless_null $P2122, vivify_794
    $P2122 = root_new ['parrot';'ResizablePMCArray']
  vivify_794:
    defined $I2123, $P2122
    unless $I2123, for_undef_795
    iter $P2121, $P2122
    new $P2138, 'ExceptionHandler'
    set_label $P2138, loop2137_handler
    $P2138."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2138
  loop2137_test:
    unless $P2121, loop2137_done
    shift $P2124, $P2121
  loop2137_redo:
    .const 'Sub' $P2126 = "149_1304277392.509" 
    capture_lex $P2126
    $P2126($P2124)
  loop2137_next:
    goto loop2137_test
  loop2137_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2139, exception, 'type'
    eq $P2139, .CONTROL_LOOP_NEXT, loop2137_next
    eq $P2139, .CONTROL_LOOP_REDO, loop2137_redo
  loop2137_done:
    pop_eh 
  for_undef_795:
.annotate 'line', 1044
    new $P2140, "Exception"
    set $P2140['type'], .CONTROL_RETURN
    new $P2141, "Integer"
    assign $P2141, 0
    setattribute $P2140, 'payload', $P2141
    throw $P2140
.annotate 'line', 1039
    .return ()
  control_2110:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2142, exception, "payload"
    .return ($P2142)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2125"  :anon :subid("149_1304277392.509") :outer("148_1304277392.509")
    .param pmc param_2127
.annotate 'line', 1041
    .lex "$_", param_2127
.annotate 'line', 1042
    find_lex $P2130, "$_"
    unless_null $P2130, vivify_796
    new $P2130, "Undef"
  vivify_796:
    set $S2131, $P2130
    find_lex $P2132, "$name"
    unless_null $P2132, vivify_797
    new $P2132, "Undef"
  vivify_797:
    set $S2133, $P2132
    iseq $I2134, $S2131, $S2133
    if $I2134, if_2129
    new $P2128, 'Integer'
    set $P2128, $I2134
    goto if_2129_end
  if_2129:
    new $P2135, "Exception"
    set $P2135['type'], .CONTROL_RETURN
    new $P2136, "Integer"
    assign $P2136, 1
    setattribute $P2135, 'payload', $P2136
    throw $P2135
  if_2129_end:
.annotate 'line', 1041
    .return ($P2128)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("150_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2147
    .param pmc param_2148 :named("name")
    .param pmc param_2149 :optional :named("type")
    .param int has_param_2149 :opt_flag
    .param pmc param_2151 :optional :named("box_target")
    .param int has_param_2151 :opt_flag
.annotate 'line', 984
    .lex "self", param_2147
    .lex "$name", param_2148
    if has_param_2149, optparam_798
    new $P2150, "Undef"
    set param_2149, $P2150
  optparam_798:
    .lex "$type", param_2149
    if has_param_2151, optparam_799
    new $P2152, "Undef"
    set param_2151, $P2152
  optparam_799:
    .lex "$box_target", param_2151
.annotate 'line', 985
    new $P2153, "Undef"
    .lex "$attr", $P2153
    find_lex $P2154, "self"
    repr_instance_of $P2155, $P2154
    store_lex "$attr", $P2155
.annotate 'line', 986
    find_lex $P2156, "$attr"
    unless_null $P2156, vivify_800
    new $P2156, "Undef"
  vivify_800:
    find_lex $P2157, "$name"
    unless_null $P2157, vivify_801
    new $P2157, "Undef"
  vivify_801:
    find_lex $P2158, "$type"
    unless_null $P2158, vivify_802
    new $P2158, "Undef"
  vivify_802:
    find_lex $P2159, "$box_target"
    unless_null $P2159, vivify_803
    new $P2159, "Undef"
  vivify_803:
    $P2156."BUILD"($P2157 :named("name"), $P2158 :named("type"), $P2159 :named("box_target"))
    find_lex $P2160, "$attr"
    unless_null $P2160, vivify_804
    new $P2160, "Undef"
  vivify_804:
.annotate 'line', 984
    .return ($P2160)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("151_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2162
    .param pmc param_2163 :optional :named("name")
    .param int has_param_2163 :opt_flag
    .param pmc param_2165 :optional :named("type")
    .param int has_param_2165 :opt_flag
    .param pmc param_2167 :optional :named("box_target")
    .param int has_param_2167 :opt_flag
.annotate 'line', 990
    .lex "self", param_2162
    if has_param_2163, optparam_805
    new $P2164, "Undef"
    set param_2163, $P2164
  optparam_805:
    .lex "$name", param_2163
    if has_param_2165, optparam_806
    new $P2166, "Undef"
    set param_2165, $P2166
  optparam_806:
    .lex "$type", param_2165
    if has_param_2167, optparam_807
    new $P2168, "Undef"
    set param_2167, $P2168
  optparam_807:
    .lex "$box_target", param_2167
.annotate 'line', 991
    find_lex $P2169, "$name"
    unless_null $P2169, vivify_808
    new $P2169, "Undef"
  vivify_808:
    find_lex $P2170, "self"
    find_lex $P2171, "$?CLASS"
    setattribute $P2170, $P2171, "$!name", $P2169
.annotate 'line', 992
    find_lex $P2172, "$type"
    unless_null $P2172, vivify_809
    new $P2172, "Undef"
  vivify_809:
    find_lex $P2173, "self"
    find_lex $P2174, "$?CLASS"
    setattribute $P2173, $P2174, "$!type", $P2172
.annotate 'line', 993
    find_lex $P2175, "$box_target"
    unless_null $P2175, vivify_810
    new $P2175, "Undef"
  vivify_810:
    find_lex $P2176, "self"
    find_lex $P2177, "$?CLASS"
    setattribute $P2176, $P2177, "$!box_target", $P2175
.annotate 'line', 990
    .return ($P2175)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("152_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2179
.annotate 'line', 996
    .lex "self", param_2179
    find_lex $P2180, "self"
    find_lex $P2181, "$?CLASS"
    getattribute $P2182, $P2180, $P2181, "$!name"
    unless_null $P2182, vivify_811
    new $P2182, "Undef"
  vivify_811:
    .return ($P2182)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("153_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2184
.annotate 'line', 1000
    .lex "self", param_2184
.annotate 'line', 1001
    find_lex $P2186, "self"
    find_lex $P2187, "$?CLASS"
    getattribute $P2188, $P2186, $P2187, "$!type"
    unless_null $P2188, vivify_812
    new $P2188, "Undef"
  vivify_812:
    set $P2185, $P2188
    defined $I2190, $P2185
    if $I2190, default_2189
    null $P2191
    set $P2185, $P2191
  default_2189:
.annotate 'line', 1000
    .return ($P2185)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("154_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2193
.annotate 'line', 1004
    .lex "self", param_2193
.annotate 'line', 1005
    find_lex $P2196, "self"
    find_lex $P2197, "$?CLASS"
    getattribute $P2198, $P2196, $P2197, "$!box_target"
    unless_null $P2198, vivify_813
    new $P2198, "Undef"
  vivify_813:
    if $P2198, if_2195
    new $P2200, "Integer"
    assign $P2200, 0
    set $P2194, $P2200
    goto if_2195_end
  if_2195:
    new $P2199, "Integer"
    assign $P2199, 1
    set $P2194, $P2199
  if_2195_end:
.annotate 'line', 1004
    .return ($P2194)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("155_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2202
    .param pmc param_2203
.annotate 'line', 1008
    .const 'Sub' $P2255 = "158_1304277392.509" 
    capture_lex $P2255
    .const 'Sub' $P2215 = "156_1304277392.509" 
    capture_lex $P2215
    .lex "self", param_2202
    .lex "$obj", param_2203
.annotate 'line', 1009
    new $P2204, "Undef"
    .lex "$long_name", $P2204
    find_lex $P2205, "self"
    find_lex $P2206, "$?CLASS"
    getattribute $P2207, $P2205, $P2206, "$!name"
    unless_null $P2207, vivify_814
    new $P2207, "Undef"
  vivify_814:
    set $S2208, $P2207
    new $P2209, 'String'
    set $P2209, $S2208
    store_lex "$long_name", $P2209
.annotate 'line', 1010
    find_lex $P2212, "self"
    $P2213 = $P2212."has_mutator"()
    if $P2213, if_2211
.annotate 'line', 1022
    .const 'Sub' $P2255 = "158_1304277392.509" 
    capture_lex $P2255
    $P2281 = $P2255()
    set $P2210, $P2281
.annotate 'line', 1010
    goto if_2211_end
  if_2211:
    .const 'Sub' $P2215 = "156_1304277392.509" 
    capture_lex $P2215
    $P2253 = $P2215()
    set $P2210, $P2253
  if_2211_end:
.annotate 'line', 1008
    .return ($P2210)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2254"  :anon :subid("158_1304277392.509") :outer("155_1304277392.509")
.annotate 'line', 1022
    .const 'Sub' $P2271 = "159_1304277392.509" 
    capture_lex $P2271
.annotate 'line', 1023
    new $P2256, "Undef"
    .lex "$method", $P2256
    find_lex $P2257, "$long_name"
    unless_null $P2257, vivify_815
    new $P2257, "Undef"
  vivify_815:
    set $S2258, $P2257
    substr $S2259, $S2258, 2
    new $P2260, 'String'
    set $P2260, $S2259
    store_lex "$method", $P2260
.annotate 'line', 1024
    find_lex $P2263, "$obj"
    unless_null $P2263, vivify_816
    new $P2263, "Undef"
  vivify_816:
    find_lex $P2264, "$method"
    unless_null $P2264, vivify_817
    new $P2264, "Undef"
  vivify_817:
    $P2265 = "has_method"($P2263, $P2264, 0)
    unless $P2265, unless_2262
    set $P2261, $P2265
    goto unless_2262_end
  unless_2262:
.annotate 'line', 1025
    find_lex $P2266, "$obj"
    unless_null $P2266, vivify_818
    new $P2266, "Undef"
  vivify_818:
    get_how $P2267, $P2266
    find_lex $P2268, "$obj"
    unless_null $P2268, vivify_819
    new $P2268, "Undef"
  vivify_819:
    find_lex $P2269, "$method"
    unless_null $P2269, vivify_820
    new $P2269, "Undef"
  vivify_820:
.annotate 'line', 1026
    .const 'Sub' $P2271 = "159_1304277392.509" 
    newclosure $P2279, $P2271
    $P2280 = $P2267."add_method"($P2268, $P2269, $P2279)
.annotate 'line', 1024
    set $P2261, $P2280
  unless_2262_end:
.annotate 'line', 1022
    .return ($P2261)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2270"  :anon :subid("159_1304277392.509") :outer("158_1304277392.509")
    .param pmc param_2272
.annotate 'line', 1026
    .lex "self", param_2272
.annotate 'line', 1027
    find_lex $P2273, "self"
    find_lex $P2274, "$obj"
    unless_null $P2274, vivify_821
    new $P2274, "Undef"
  vivify_821:
    get_what $P2275, $P2274
    find_lex $P2276, "$long_name"
    unless_null $P2276, vivify_822
    new $P2276, "Undef"
  vivify_822:
    set $S2277, $P2276
    getattribute $P2278, $P2273, $P2275, $S2277
.annotate 'line', 1026
    .return ($P2278)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2214"  :anon :subid("156_1304277392.509") :outer("155_1304277392.509")
.annotate 'line', 1010
    .const 'Sub' $P2232 = "157_1304277392.509" 
    capture_lex $P2232
.annotate 'line', 1011
    new $P2216, "Undef"
    .lex "$method", $P2216
    find_lex $P2217, "$long_name"
    unless_null $P2217, vivify_823
    new $P2217, "Undef"
  vivify_823:
    set $S2218, $P2217
    substr $S2219, $S2218, 1
    new $P2220, 'String'
    set $P2220, $S2219
    store_lex "$method", $P2220
.annotate 'line', 1012
    find_lex $P2223, "$obj"
    unless_null $P2223, vivify_824
    new $P2223, "Undef"
  vivify_824:
    find_lex $P2224, "$method"
    unless_null $P2224, vivify_825
    new $P2224, "Undef"
  vivify_825:
    $P2225 = "has_method"($P2223, $P2224, 0)
    unless $P2225, unless_2222
    set $P2221, $P2225
    goto unless_2222_end
  unless_2222:
.annotate 'line', 1013
    find_lex $P2226, "$obj"
    unless_null $P2226, vivify_826
    new $P2226, "Undef"
  vivify_826:
    get_how $P2227, $P2226
    find_lex $P2228, "$obj"
    unless_null $P2228, vivify_827
    new $P2228, "Undef"
  vivify_827:
    get_what $P2229, $P2228
    find_lex $P2230, "$method"
    unless_null $P2230, vivify_828
    new $P2230, "Undef"
  vivify_828:
    .const 'Sub' $P2232 = "157_1304277392.509" 
    newclosure $P2251, $P2232
    $P2252 = $P2227."add_method"($P2229, $P2230, $P2251)
.annotate 'line', 1012
    set $P2221, $P2252
  unless_2222_end:
.annotate 'line', 1010
    .return ($P2221)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2231"  :anon :subid("157_1304277392.509") :outer("156_1304277392.509")
    .param pmc param_2233
    .param pmc param_2234 :optional
    .param int has_param_2234 :opt_flag
.annotate 'line', 1013
    .lex "self", param_2233
    if has_param_2234, optparam_829
    new $P2235, "Undef"
    set param_2234, $P2235
  optparam_829:
    .lex "$value", param_2234
.annotate 'line', 1015
    find_lex $P2237, "$value"
    unless_null $P2237, vivify_830
    new $P2237, "Undef"
  vivify_830:
    defined $I2238, $P2237
    unless $I2238, if_2236_end
.annotate 'line', 1014
    find_lex $P2239, "self"
    find_lex $P2240, "$obj"
    unless_null $P2240, vivify_831
    new $P2240, "Undef"
  vivify_831:
    get_what $P2241, $P2240
    find_lex $P2242, "$long_name"
    unless_null $P2242, vivify_832
    new $P2242, "Undef"
  vivify_832:
    set $S2243, $P2242
    find_lex $P2244, "$value"
    unless_null $P2244, vivify_833
    new $P2244, "Undef"
  vivify_833:
    setattribute $P2239, $P2241, $S2243, $P2244
  if_2236_end:
.annotate 'line', 1017
    find_lex $P2245, "self"
    find_lex $P2246, "$obj"
    unless_null $P2246, vivify_834
    new $P2246, "Undef"
  vivify_834:
    get_what $P2247, $P2246
    find_lex $P2248, "$long_name"
    unless_null $P2248, vivify_835
    new $P2248, "Undef"
  vivify_835:
    set $S2249, $P2248
    getattribute $P2250, $P2245, $P2247, $S2249
.annotate 'line', 1013
    .return ($P2250)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("160_1304277392.509") :outer("147_1304277392.509")
    .param pmc param_2283
.annotate 'line', 1035
    .lex "self", param_2283
.annotate 'line', 1036
    find_lex $P2284, "self"
    find_lex $P2285, "$?CLASS"
    getattribute $P2286, $P2284, $P2285, "$!name"
    unless_null $P2286, vivify_836
    new $P2286, "Undef"
  vivify_836:
    set $S2287, $P2286
    substr $S2288, $S2287, 1, 1
    isne $I2289, $S2288, "!"
.annotate 'line', 1035
    .return ($I2289)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2296"  :subid("162_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 1050
    .const 'Sub' $P2360 = "171_1304277392.509" 
    capture_lex $P2360
    .const 'Sub' $P2352 = "170_1304277392.509" 
    capture_lex $P2352
    .const 'Sub' $P2346 = "169_1304277392.509" 
    capture_lex $P2346
    .const 'Sub' $P2342 = "168_1304277392.509" 
    capture_lex $P2342
    .const 'Sub' $P2337 = "167_1304277392.509" 
    capture_lex $P2337
    .const 'Sub' $P2332 = "166_1304277392.509" 
    capture_lex $P2332
    .const 'Sub' $P2317 = "165_1304277392.509" 
    capture_lex $P2317
    .const 'Sub' $P2310 = "164_1304277392.509" 
    capture_lex $P2310
    .const 'Sub' $P2300 = "163_1304277392.509" 
    capture_lex $P2300
    .lex "$?PACKAGE", $P2298
    .lex "$?CLASS", $P2299
.annotate 'line', 1091
    .const 'Sub' $P2352 = "170_1304277392.509" 
    newclosure $P2358, $P2352
.annotate 'line', 1050
    .return ($P2358)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "" :load :init :subid("post837") :outer("162_1304277392.509")
.annotate 'line', 1050
    .const 'Sub' $P2297 = "162_1304277392.509" 
    .local pmc block
    set block, $P2297
    .const 'Sub' $P2360 = "171_1304277392.509" 
    capture_lex $P2360
    $P2360()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2359"  :anon :subid("171_1304277392.509") :outer("162_1304277392.509")
.annotate 'line', 1050
    nqp_get_sc_object $P2361, "1304277388.915", 85
    .local pmc type_obj
    set type_obj, $P2361
    get_how $P2362, type_obj
    $P2363 = $P2362."compose"(type_obj)
    .return ($P2363)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("163_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2301
    .param pmc param_2302 :optional :named("name")
    .param int has_param_2302 :opt_flag
.annotate 'line', 1054
    .lex "self", param_2301
    if has_param_2302, optparam_838
    new $P2303, "Undef"
    set param_2302, $P2303
  optparam_838:
    .lex "$name", param_2302
.annotate 'line', 1055
    new $P2304, "Undef"
    .lex "$obj", $P2304
    find_lex $P2305, "self"
    repr_instance_of $P2306, $P2305
    store_lex "$obj", $P2306
.annotate 'line', 1056
    find_lex $P2307, "$obj"
    unless_null $P2307, vivify_839
    new $P2307, "Undef"
  vivify_839:
    find_lex $P2308, "$name"
    unless_null $P2308, vivify_840
    new $P2308, "Undef"
  vivify_840:
    $P2307."BUILD"($P2308 :named("name"))
    find_lex $P2309, "$obj"
    unless_null $P2309, vivify_841
    new $P2309, "Undef"
  vivify_841:
.annotate 'line', 1054
    .return ($P2309)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("164_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2311
    .param pmc param_2312 :optional :named("name")
    .param int has_param_2312 :opt_flag
.annotate 'line', 1060
    .lex "self", param_2311
    if has_param_2312, optparam_842
    new $P2313, "Undef"
    set param_2312, $P2313
  optparam_842:
    .lex "$name", param_2312
.annotate 'line', 1061
    find_lex $P2314, "$name"
    unless_null $P2314, vivify_843
    new $P2314, "Undef"
  vivify_843:
    find_lex $P2315, "self"
    find_lex $P2316, "$?CLASS"
    setattribute $P2315, $P2316, "$!name", $P2314
.annotate 'line', 1060
    .return ($P2314)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("165_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2318
    .param pmc param_2319 :optional :named("name")
    .param int has_param_2319 :opt_flag
    .param pmc param_2321 :optional :named("repr")
    .param int has_param_2321 :opt_flag
.annotate 'line', 1066
    .lex "self", param_2318
    if has_param_2319, optparam_844
    new $P2320, "String"
    assign $P2320, "<anon>"
    set param_2319, $P2320
  optparam_844:
    .lex "$name", param_2319
    if has_param_2321, optparam_845
    new $P2322, "String"
    assign $P2322, "P6opaque"
    set param_2321, $P2322
  optparam_845:
    .lex "$repr", param_2321
.annotate 'line', 1067
    new $P2323, "Undef"
    .lex "$metaclass", $P2323
    find_lex $P2324, "self"
    find_lex $P2325, "$name"
    unless_null $P2325, vivify_846
    new $P2325, "Undef"
  vivify_846:
    $P2326 = $P2324."new"($P2325 :named("name"))
    store_lex "$metaclass", $P2326
.annotate 'line', 1069
    find_lex $P2327, "$metaclass"
    unless_null $P2327, vivify_847
    new $P2327, "Undef"
  vivify_847:
    find_lex $P2328, "$repr"
    unless_null $P2328, vivify_848
    new $P2328, "Undef"
  vivify_848:
    set $S2329, $P2328
    repr_type_object_for $P2330, $P2327, $S2329
    $P2331 = root_new ['parrot';'Hash']
    set_who $P2330, $P2331
.annotate 'line', 1066
    .return ($P2330)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("166_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2333
    .param pmc param_2334
    .param pmc param_2335
    .param pmc param_2336
.annotate 'line', 1073
    .lex "self", param_2333
    .lex "$obj", param_2334
    .lex "$name", param_2335
    .lex "$code_obj", param_2336
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("167_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2338
    .param pmc param_2339
    .param pmc param_2340
    .param pmc param_2341
.annotate 'line', 1079
    .lex "self", param_2338
    .lex "$obj", param_2339
    .lex "$name", param_2340
    .lex "$code_obj", param_2341
.annotate 'line', 1080
    die "Modules may not have methods"
.annotate 'line', 1079
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("168_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2343
    .param pmc param_2344
    .param pmc param_2345
.annotate 'line', 1083
    .lex "self", param_2343
    .lex "$obj", param_2344
    .lex "$meta_attr", param_2345
.annotate 'line', 1084
    die "Modules may not have attributes"
.annotate 'line', 1083
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("169_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2347
    .param pmc param_2348
.annotate 'line', 1087
    .lex "self", param_2347
    .lex "$obj", param_2348
.annotate 'line', 1088
    new $P2349, "Integer"
    assign $P2349, 1
    find_lex $P2350, "self"
    find_lex $P2351, "$?CLASS"
    setattribute $P2350, $P2351, "$!composed", $P2349
.annotate 'line', 1087
    .return ($P2349)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("170_1304277392.509") :outer("162_1304277392.509")
    .param pmc param_2353
    .param pmc param_2354
.annotate 'line', 1091
    .lex "self", param_2353
    .lex "$obj", param_2354
    find_lex $P2355, "self"
    find_lex $P2356, "$?CLASS"
    getattribute $P2357, $P2355, $P2356, "$!name"
    unless_null $P2357, vivify_849
    new $P2357, "Undef"
  vivify_849:
    .return ($P2357)
.end


.HLL "nqp"

.namespace []
.sub "_block2364"  :anon :subid("172_1304277392.509") :outer("10_1304277392.509")
.annotate 'line', 1099
    .const 'Sub' $P2393 = "173_1304277392.509" 
    capture_lex $P2393
    .lex "$?PACKAGE", $P2366
    .lex "$?CLASS", $P2367
.annotate 'line', 1100
    find_lex $P2368, "NQPModuleHOW"
    find_lex $P2369, "$?PACKAGE"
    unless_null $P2369, vivify_851
    new $P2369, "Undef"
    store_lex "$?PACKAGE", $P2369
  vivify_851:
    get_who $P2370, $P2369
    set $P2370["module"], $P2368
.annotate 'line', 1101
    find_lex $P2371, "NQPClassHOW"
    find_lex $P2372, "$?PACKAGE"
    unless_null $P2372, vivify_852
    new $P2372, "Undef"
    store_lex "$?PACKAGE", $P2372
  vivify_852:
    get_who $P2373, $P2372
    set $P2373["class"], $P2371
.annotate 'line', 1102
    find_lex $P2374, "NQPAttribute"
    find_lex $P2375, "$?PACKAGE"
    unless_null $P2375, vivify_853
    new $P2375, "Undef"
    store_lex "$?PACKAGE", $P2375
  vivify_853:
    get_who $P2376, $P2375
    set $P2376["class-attr"], $P2374
.annotate 'line', 1103
    find_lex $P2377, "NQPClassHOW"
    find_lex $P2378, "$?PACKAGE"
    unless_null $P2378, vivify_854
    new $P2378, "Undef"
    store_lex "$?PACKAGE", $P2378
  vivify_854:
    get_who $P2379, $P2378
    set $P2379["grammar"], $P2377
.annotate 'line', 1104
    find_lex $P2380, "NQPAttribute"
    find_lex $P2381, "$?PACKAGE"
    unless_null $P2381, vivify_855
    new $P2381, "Undef"
    store_lex "$?PACKAGE", $P2381
  vivify_855:
    get_who $P2382, $P2381
    set $P2382["grammar-attr"], $P2380
.annotate 'line', 1105
    find_lex $P2383, "NQPParametricRoleHOW"
    find_lex $P2384, "$?PACKAGE"
    unless_null $P2384, vivify_856
    new $P2384, "Undef"
    store_lex "$?PACKAGE", $P2384
  vivify_856:
    get_who $P2385, $P2384
    set $P2385["role"], $P2383
.annotate 'line', 1106
    find_lex $P2386, "NQPAttribute"
    find_lex $P2387, "$?PACKAGE"
    unless_null $P2387, vivify_857
    new $P2387, "Undef"
    store_lex "$?PACKAGE", $P2387
  vivify_857:
    get_who $P2388, $P2387
    set $P2388["role-attr"], $P2386
.annotate 'line', 1107
    find_lex $P2389, "NQPNativeHOW"
    find_lex $P2390, "$?PACKAGE"
    unless_null $P2390, vivify_858
    new $P2390, "Undef"
    store_lex "$?PACKAGE", $P2390
  vivify_858:
    get_who $P2391, $P2390
    set $P2391["native"], $P2389
.annotate 'line', 1099
    .return ($P2389)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post850") :outer("172_1304277392.509")
.annotate 'line', 1099
    .const 'Sub' $P2365 = "172_1304277392.509" 
    .local pmc block
    set block, $P2365
    .const 'Sub' $P2393 = "173_1304277392.509" 
    capture_lex $P2393
    $P2393()
.end


.HLL "nqp"

.namespace []
.sub "_block2392"  :anon :subid("173_1304277392.509") :outer("172_1304277392.509")
.annotate 'line', 1099
    nqp_get_sc_object $P2394, "1304277388.915", 94
    .local pmc type_obj
    set type_obj, $P2394
    get_how $P2395, type_obj
    $P2396 = $P2395."compose"(type_obj)
    .return ($P2396)
.end


.HLL "nqp"

.namespace []
.sub "_block2398" :load :anon :subid("174_1304277392.509")
.annotate 'line', 1
    .const 'Sub' $P2400 = "10_1304277392.509" 
    $P2401 = $P2400()
    .return ($P2401)
.end

