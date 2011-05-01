
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304284948.29")
.annotate 'line', 0
    .const 'Sub' $P2325 = "164_1304284948.29" 
    capture_lex $P2325
    .const 'Sub' $P2262 = "155_1304284948.29" 
    capture_lex $P2262
    .const 'Sub' $P2078 = "141_1304284948.29" 
    capture_lex $P2078
    .const 'Sub' $P2016 = "132_1304284948.29" 
    capture_lex $P2016
    .const 'Sub' $P1023 = "76_1304284948.29" 
    capture_lex $P1023
    .const 'Sub' $P721 = "52_1304284948.29" 
    capture_lex $P721
    .const 'Sub' $P508 = "42_1304284948.29" 
    capture_lex $P508
    .const 'Sub' $P248 = "21_1304284948.29" 
    capture_lex $P248
    .const 'Sub' $P25 = "11_1304284948.29" 
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
    .const 'Sub' $P25 = "11_1304284948.29" 
    capture_lex $P25
    $P25()
.annotate 'line', 99
    .const 'Sub' $P248 = "21_1304284948.29" 
    capture_lex $P248
    $P248()
.annotate 'line', 244
    .const 'Sub' $P508 = "42_1304284948.29" 
    capture_lex $P508
    $P508()
.annotate 'line', 320
    .const 'Sub' $P721 = "52_1304284948.29" 
    capture_lex $P721
    $P721()
.annotate 'line', 495
    .const 'Sub' $P1023 = "76_1304284948.29" 
    capture_lex $P1023
    $P1023()
.annotate 'line', 933
    .const 'Sub' $P2016 = "132_1304284948.29" 
    capture_lex $P2016
    $P2016()
.annotate 'line', 979
    .const 'Sub' $P2078 = "141_1304284948.29" 
    capture_lex $P2078
    $P2078()
.annotate 'line', 1050
    .const 'Sub' $P2262 = "155_1304284948.29" 
    capture_lex $P2262
    $P2262()
.annotate 'line', 1099
    .const 'Sub' $P2325 = "164_1304284948.29" 
    capture_lex $P2325
    $P2352 = $P2325()
.annotate 'line', 1
    .return ($P2352)
    .const 'Sub' $P2354 = "165_1304284948.29" 
    .return ($P2354)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post166") :outer("10_1304284948.29")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304284948.29" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2358, "1304284944.723"
    isnull $I2359, $P2358
    if $I2359, if_2357
    .const 'Sub' $P3100 = "10_1304284948.29" 
    $P3101 = $P3100."get_lexinfo"()
    nqp_get_sc_object $P3102, "1304284944.723", 0
    $P3101."set_static_lexpad_value"("GLOBALish", $P3102)
    .const 'Sub' $P3103 = "10_1304284948.29" 
    $P3104 = $P3103."get_lexinfo"()
    $P3104."finish_static_lexpad"()
    .const 'Sub' $P3105 = "10_1304284948.29" 
    $P3106 = $P3105."get_lexinfo"()
    nqp_get_sc_object $P3107, "1304284944.723", 0
    $P3106."set_static_lexpad_value"("$?PACKAGE", $P3107)
    .const 'Sub' $P3108 = "10_1304284948.29" 
    $P3109 = $P3108."get_lexinfo"()
    $P3109."finish_static_lexpad"()
    .const 'Sub' $P3110 = "10_1304284948.29" 
    $P3111 = $P3110."get_lexinfo"()
    nqp_get_sc_object $P3112, "1304284944.723", 1
    $P3111."set_static_lexpad_value"("RoleToRoleApplier", $P3112)
    .const 'Sub' $P3113 = "10_1304284948.29" 
    $P3114 = $P3113."get_lexinfo"()
    $P3114."finish_static_lexpad"()
    nqp_get_sc_object $P3115, "1304284944.723", 2
    .const 'Sub' $P3116 = "12_1304284948.29" 
    copy $P3115, $P3116
    .const 'Sub' $P3117 = "11_1304284948.29" 
    $P3118 = $P3117."get_lexinfo"()
    nqp_get_sc_object $P3119, "1304284944.723", 1
    $P3118."set_static_lexpad_value"("$?PACKAGE", $P3119)
    .const 'Sub' $P3120 = "11_1304284948.29" 
    $P3121 = $P3120."get_lexinfo"()
    $P3121."finish_static_lexpad"()
    .const 'Sub' $P3122 = "11_1304284948.29" 
    $P3123 = $P3122."get_lexinfo"()
    nqp_get_sc_object $P3124, "1304284944.723", 1
    $P3123."set_static_lexpad_value"("$?CLASS", $P3124)
    .const 'Sub' $P3125 = "11_1304284948.29" 
    $P3126 = $P3125."get_lexinfo"()
    $P3126."finish_static_lexpad"()
    .const 'Sub' $P3127 = "10_1304284948.29" 
    $P3128 = $P3127."get_lexinfo"()
    nqp_get_sc_object $P3129, "1304284944.723", 3
    $P3128."set_static_lexpad_value"("NQPConcreteRoleHOW", $P3129)
    .const 'Sub' $P3130 = "10_1304284948.29" 
    $P3131 = $P3130."get_lexinfo"()
    $P3131."finish_static_lexpad"()
    nqp_get_sc_object $P3132, "1304284944.723", 4
    .const 'Sub' $P3133 = "22_1304284948.29" 
    copy $P3132, $P3133
    nqp_get_sc_object $P3134, "1304284944.723", 5
    .const 'Sub' $P3135 = "23_1304284948.29" 
    copy $P3134, $P3135
    nqp_get_sc_object $P3136, "1304284944.723", 6
    .const 'Sub' $P3137 = "24_1304284948.29" 
    copy $P3136, $P3137
    nqp_get_sc_object $P3138, "1304284944.723", 7
    .const 'Sub' $P3139 = "25_1304284948.29" 
    copy $P3138, $P3139
    nqp_get_sc_object $P3140, "1304284944.723", 8
    .const 'Sub' $P3141 = "26_1304284948.29" 
    copy $P3140, $P3141
    nqp_get_sc_object $P3142, "1304284944.723", 9
    .const 'Sub' $P3143 = "27_1304284948.29" 
    copy $P3142, $P3143
    nqp_get_sc_object $P3144, "1304284944.723", 10
    .const 'Sub' $P3145 = "28_1304284948.29" 
    copy $P3144, $P3145
    nqp_get_sc_object $P3146, "1304284944.723", 11
    .const 'Sub' $P3147 = "29_1304284948.29" 
    copy $P3146, $P3147
    nqp_get_sc_object $P3148, "1304284944.723", 12
    .const 'Sub' $P3149 = "30_1304284948.29" 
    copy $P3148, $P3149
    nqp_get_sc_object $P3150, "1304284944.723", 13
    .const 'Sub' $P3151 = "31_1304284948.29" 
    copy $P3150, $P3151
    nqp_get_sc_object $P3152, "1304284944.723", 14
    .const 'Sub' $P3153 = "33_1304284948.29" 
    copy $P3152, $P3153
    nqp_get_sc_object $P3154, "1304284944.723", 15
    .const 'Sub' $P3155 = "35_1304284948.29" 
    copy $P3154, $P3155
    nqp_get_sc_object $P3156, "1304284944.723", 16
    .const 'Sub' $P3157 = "36_1304284948.29" 
    copy $P3156, $P3157
    nqp_get_sc_object $P3158, "1304284944.723", 17
    .const 'Sub' $P3159 = "37_1304284948.29" 
    copy $P3158, $P3159
    nqp_get_sc_object $P3160, "1304284944.723", 18
    .const 'Sub' $P3161 = "38_1304284948.29" 
    copy $P3160, $P3161
    nqp_get_sc_object $P3162, "1304284944.723", 19
    .const 'Sub' $P3163 = "40_1304284948.29" 
    copy $P3162, $P3163
    nqp_get_sc_object $P3164, "1304284944.723", 20
    .const 'Sub' $P3165 = "41_1304284948.29" 
    copy $P3164, $P3165
    .const 'Sub' $P3166 = "21_1304284948.29" 
    $P3167 = $P3166."get_lexinfo"()
    nqp_get_sc_object $P3168, "1304284944.723", 3
    $P3167."set_static_lexpad_value"("$?PACKAGE", $P3168)
    .const 'Sub' $P3169 = "21_1304284948.29" 
    $P3170 = $P3169."get_lexinfo"()
    $P3170."finish_static_lexpad"()
    .const 'Sub' $P3171 = "21_1304284948.29" 
    $P3172 = $P3171."get_lexinfo"()
    nqp_get_sc_object $P3173, "1304284944.723", 3
    $P3172."set_static_lexpad_value"("$?CLASS", $P3173)
    .const 'Sub' $P3174 = "21_1304284948.29" 
    $P3175 = $P3174."get_lexinfo"()
    $P3175."finish_static_lexpad"()
    .const 'Sub' $P3176 = "10_1304284948.29" 
    $P3177 = $P3176."get_lexinfo"()
    nqp_get_sc_object $P3178, "1304284944.723", 21
    $P3177."set_static_lexpad_value"("RoleToClassApplier", $P3178)
    .const 'Sub' $P3179 = "10_1304284948.29" 
    $P3180 = $P3179."get_lexinfo"()
    $P3180."finish_static_lexpad"()
    nqp_get_sc_object $P3181, "1304284944.723", 22
    .const 'Sub' $P3182 = "47_1304284948.29" 
    copy $P3181, $P3182
    .const 'Sub' $P3183 = "42_1304284948.29" 
    $P3184 = $P3183."get_lexinfo"()
    nqp_get_sc_object $P3185, "1304284944.723", 21
    $P3184."set_static_lexpad_value"("$?PACKAGE", $P3185)
    .const 'Sub' $P3186 = "42_1304284948.29" 
    $P3187 = $P3186."get_lexinfo"()
    $P3187."finish_static_lexpad"()
    .const 'Sub' $P3188 = "42_1304284948.29" 
    $P3189 = $P3188."get_lexinfo"()
    nqp_get_sc_object $P3190, "1304284944.723", 21
    $P3189."set_static_lexpad_value"("$?CLASS", $P3190)
    .const 'Sub' $P3191 = "42_1304284948.29" 
    $P3192 = $P3191."get_lexinfo"()
    $P3192."finish_static_lexpad"()
    .const 'Sub' $P3193 = "10_1304284948.29" 
    $P3194 = $P3193."get_lexinfo"()
    nqp_get_sc_object $P3195, "1304284944.723", 23
    $P3194."set_static_lexpad_value"("NQPParametricRoleHOW", $P3195)
    .const 'Sub' $P3196 = "10_1304284948.29" 
    $P3197 = $P3196."get_lexinfo"()
    $P3197."finish_static_lexpad"()
    nqp_get_sc_object $P3198, "1304284944.723", 24
    .const 'Sub' $P3199 = "53_1304284948.29" 
    copy $P3198, $P3199
    nqp_get_sc_object $P3200, "1304284944.723", 25
    .const 'Sub' $P3201 = "54_1304284948.29" 
    copy $P3200, $P3201
    nqp_get_sc_object $P3202, "1304284944.723", 26
    .const 'Sub' $P3203 = "55_1304284948.29" 
    copy $P3202, $P3203
    nqp_get_sc_object $P3204, "1304284944.723", 27
    .const 'Sub' $P3205 = "56_1304284948.29" 
    copy $P3204, $P3205
    nqp_get_sc_object $P3206, "1304284944.723", 28
    .const 'Sub' $P3207 = "57_1304284948.29" 
    copy $P3206, $P3207
    nqp_get_sc_object $P3208, "1304284944.723", 29
    .const 'Sub' $P3209 = "58_1304284948.29" 
    copy $P3208, $P3209
    nqp_get_sc_object $P3210, "1304284944.723", 30
    .const 'Sub' $P3211 = "59_1304284948.29" 
    copy $P3210, $P3211
    nqp_get_sc_object $P3212, "1304284944.723", 31
    .const 'Sub' $P3213 = "60_1304284948.29" 
    copy $P3212, $P3213
    nqp_get_sc_object $P3214, "1304284944.723", 32
    .const 'Sub' $P3215 = "61_1304284948.29" 
    copy $P3214, $P3215
    nqp_get_sc_object $P3216, "1304284944.723", 33
    .const 'Sub' $P3217 = "62_1304284948.29" 
    copy $P3216, $P3217
    nqp_get_sc_object $P3218, "1304284944.723", 34
    .const 'Sub' $P3219 = "63_1304284948.29" 
    copy $P3218, $P3219
    nqp_get_sc_object $P3220, "1304284944.723", 35
    .const 'Sub' $P3221 = "64_1304284948.29" 
    copy $P3220, $P3221
    nqp_get_sc_object $P3222, "1304284944.723", 36
    .const 'Sub' $P3223 = "69_1304284948.29" 
    copy $P3222, $P3223
    nqp_get_sc_object $P3224, "1304284944.723", 37
    .const 'Sub' $P3225 = "71_1304284948.29" 
    copy $P3224, $P3225
    nqp_get_sc_object $P3226, "1304284944.723", 38
    .const 'Sub' $P3227 = "72_1304284948.29" 
    copy $P3226, $P3227
    nqp_get_sc_object $P3228, "1304284944.723", 39
    .const 'Sub' $P3229 = "73_1304284948.29" 
    copy $P3228, $P3229
    nqp_get_sc_object $P3230, "1304284944.723", 40
    .const 'Sub' $P3231 = "75_1304284948.29" 
    copy $P3230, $P3231
    .const 'Sub' $P3232 = "52_1304284948.29" 
    $P3233 = $P3232."get_lexinfo"()
    nqp_get_sc_object $P3234, "1304284944.723", 23
    $P3233."set_static_lexpad_value"("$?PACKAGE", $P3234)
    .const 'Sub' $P3235 = "52_1304284948.29" 
    $P3236 = $P3235."get_lexinfo"()
    $P3236."finish_static_lexpad"()
    .const 'Sub' $P3237 = "52_1304284948.29" 
    $P3238 = $P3237."get_lexinfo"()
    nqp_get_sc_object $P3239, "1304284944.723", 23
    $P3238."set_static_lexpad_value"("$?CLASS", $P3239)
    .const 'Sub' $P3240 = "52_1304284948.29" 
    $P3241 = $P3240."get_lexinfo"()
    $P3241."finish_static_lexpad"()
    .const 'Sub' $P3242 = "10_1304284948.29" 
    $P3243 = $P3242."get_lexinfo"()
    nqp_get_sc_object $P3244, "1304284944.723", 41
    $P3243."set_static_lexpad_value"("NQPClassHOW", $P3244)
    .const 'Sub' $P3245 = "10_1304284948.29" 
    $P3246 = $P3245."get_lexinfo"()
    $P3246."finish_static_lexpad"()
    nqp_get_sc_object $P3247, "1304284944.723", 42
    .const 'Sub' $P3248 = "87_1304284948.29" 
    copy $P3247, $P3248
    nqp_get_sc_object $P3249, "1304284944.723", 43
    .const 'Sub' $P3250 = "88_1304284948.29" 
    copy $P3249, $P3250
    nqp_get_sc_object $P3251, "1304284944.723", 44
    .const 'Sub' $P3252 = "89_1304284948.29" 
    copy $P3251, $P3252
    nqp_get_sc_object $P3253, "1304284944.723", 45
    .const 'Sub' $P3254 = "90_1304284948.29" 
    copy $P3253, $P3254
    nqp_get_sc_object $P3255, "1304284944.723", 46
    .const 'Sub' $P3256 = "91_1304284948.29" 
    copy $P3255, $P3256
    nqp_get_sc_object $P3257, "1304284944.723", 47
    .const 'Sub' $P3258 = "92_1304284948.29" 
    copy $P3257, $P3258
    nqp_get_sc_object $P3259, "1304284944.723", 48
    .const 'Sub' $P3260 = "93_1304284948.29" 
    copy $P3259, $P3260
    nqp_get_sc_object $P3261, "1304284944.723", 49
    .const 'Sub' $P3262 = "95_1304284948.29" 
    copy $P3261, $P3262
    nqp_get_sc_object $P3263, "1304284944.723", 50
    .const 'Sub' $P3264 = "96_1304284948.29" 
    copy $P3263, $P3264
    nqp_get_sc_object $P3265, "1304284944.723", 51
    .const 'Sub' $P3266 = "98_1304284948.29" 
    copy $P3265, $P3266
    nqp_get_sc_object $P3267, "1304284944.723", 52
    .const 'Sub' $P3268 = "99_1304284948.29" 
    copy $P3267, $P3268
    nqp_get_sc_object $P3269, "1304284944.723", 53
    .const 'Sub' $P3270 = "103_1304284948.29" 
    copy $P3269, $P3270
    nqp_get_sc_object $P3271, "1304284944.723", 54
    .const 'Sub' $P3272 = "108_1304284948.29" 
    copy $P3271, $P3272
    nqp_get_sc_object $P3273, "1304284944.723", 55
    .const 'Sub' $P3274 = "111_1304284948.29" 
    copy $P3273, $P3274
    nqp_get_sc_object $P3275, "1304284944.723", 56
    .const 'Sub' $P3276 = "114_1304284948.29" 
    copy $P3275, $P3276
    nqp_get_sc_object $P3277, "1304284944.723", 57
    .const 'Sub' $P3278 = "117_1304284948.29" 
    copy $P3277, $P3278
    nqp_get_sc_object $P3279, "1304284944.723", 58
    .const 'Sub' $P3280 = "118_1304284948.29" 
    copy $P3279, $P3280
    nqp_get_sc_object $P3281, "1304284944.723", 59
    .const 'Sub' $P3282 = "119_1304284948.29" 
    copy $P3281, $P3282
    nqp_get_sc_object $P3283, "1304284944.723", 60
    .const 'Sub' $P3284 = "121_1304284948.29" 
    copy $P3283, $P3284
    nqp_get_sc_object $P3285, "1304284944.723", 61
    .const 'Sub' $P3286 = "122_1304284948.29" 
    copy $P3285, $P3286
    nqp_get_sc_object $P3287, "1304284944.723", 62
    .const 'Sub' $P3288 = "123_1304284948.29" 
    copy $P3287, $P3288
    nqp_get_sc_object $P3289, "1304284944.723", 63
    .const 'Sub' $P3290 = "125_1304284948.29" 
    copy $P3289, $P3290
    nqp_get_sc_object $P3291, "1304284944.723", 64
    .const 'Sub' $P3292 = "126_1304284948.29" 
    copy $P3291, $P3292
    nqp_get_sc_object $P3293, "1304284944.723", 65
    .const 'Sub' $P3294 = "127_1304284948.29" 
    copy $P3293, $P3294
    nqp_get_sc_object $P3295, "1304284944.723", 66
    .const 'Sub' $P3296 = "128_1304284948.29" 
    copy $P3295, $P3296
    nqp_get_sc_object $P3297, "1304284944.723", 67
    .const 'Sub' $P3298 = "130_1304284948.29" 
    copy $P3297, $P3298
    .const 'Sub' $P3299 = "76_1304284948.29" 
    $P3300 = $P3299."get_lexinfo"()
    nqp_get_sc_object $P3301, "1304284944.723", 41
    $P3300."set_static_lexpad_value"("$?PACKAGE", $P3301)
    .const 'Sub' $P3302 = "76_1304284948.29" 
    $P3303 = $P3302."get_lexinfo"()
    $P3303."finish_static_lexpad"()
    .const 'Sub' $P3304 = "76_1304284948.29" 
    $P3305 = $P3304."get_lexinfo"()
    nqp_get_sc_object $P3306, "1304284944.723", 41
    $P3305."set_static_lexpad_value"("$?CLASS", $P3306)
    .const 'Sub' $P3307 = "76_1304284948.29" 
    $P3308 = $P3307."get_lexinfo"()
    $P3308."finish_static_lexpad"()
    .const 'Sub' $P3309 = "10_1304284948.29" 
    $P3310 = $P3309."get_lexinfo"()
    nqp_get_sc_object $P3311, "1304284944.723", 68
    $P3310."set_static_lexpad_value"("NQPNativeHOW", $P3311)
    .const 'Sub' $P3312 = "10_1304284948.29" 
    $P3313 = $P3312."get_lexinfo"()
    $P3313."finish_static_lexpad"()
    nqp_get_sc_object $P3314, "1304284944.723", 69
    .const 'Sub' $P3315 = "133_1304284948.29" 
    copy $P3314, $P3315
    nqp_get_sc_object $P3316, "1304284944.723", 70
    .const 'Sub' $P3317 = "134_1304284948.29" 
    copy $P3316, $P3317
    nqp_get_sc_object $P3318, "1304284944.723", 71
    .const 'Sub' $P3319 = "135_1304284948.29" 
    copy $P3318, $P3319
    nqp_get_sc_object $P3320, "1304284944.723", 72
    .const 'Sub' $P3321 = "136_1304284948.29" 
    copy $P3320, $P3321
    nqp_get_sc_object $P3322, "1304284944.723", 73
    .const 'Sub' $P3323 = "137_1304284948.29" 
    copy $P3322, $P3323
    nqp_get_sc_object $P3324, "1304284944.723", 74
    .const 'Sub' $P3325 = "138_1304284948.29" 
    copy $P3324, $P3325
    nqp_get_sc_object $P3326, "1304284944.723", 75
    .const 'Sub' $P3327 = "139_1304284948.29" 
    copy $P3326, $P3327
    nqp_get_sc_object $P3328, "1304284944.723", 76
    .const 'Sub' $P3329 = "140_1304284948.29" 
    copy $P3328, $P3329
    .const 'Sub' $P3330 = "132_1304284948.29" 
    $P3331 = $P3330."get_lexinfo"()
    nqp_get_sc_object $P3332, "1304284944.723", 68
    $P3331."set_static_lexpad_value"("$?PACKAGE", $P3332)
    .const 'Sub' $P3333 = "132_1304284948.29" 
    $P3334 = $P3333."get_lexinfo"()
    $P3334."finish_static_lexpad"()
    .const 'Sub' $P3335 = "132_1304284948.29" 
    $P3336 = $P3335."get_lexinfo"()
    nqp_get_sc_object $P3337, "1304284944.723", 68
    $P3336."set_static_lexpad_value"("$?CLASS", $P3337)
    .const 'Sub' $P3338 = "132_1304284948.29" 
    $P3339 = $P3338."get_lexinfo"()
    $P3339."finish_static_lexpad"()
    .const 'Sub' $P3340 = "10_1304284948.29" 
    $P3341 = $P3340."get_lexinfo"()
    nqp_get_sc_object $P3342, "1304284944.723", 77
    $P3341."set_static_lexpad_value"("NQPAttribute", $P3342)
    .const 'Sub' $P3343 = "10_1304284948.29" 
    $P3344 = $P3343."get_lexinfo"()
    $P3344."finish_static_lexpad"()
    nqp_get_sc_object $P3345, "1304284944.723", 78
    .const 'Sub' $P3346 = "144_1304284948.29" 
    copy $P3345, $P3346
    nqp_get_sc_object $P3347, "1304284944.723", 79
    .const 'Sub' $P3348 = "145_1304284948.29" 
    copy $P3347, $P3348
    nqp_get_sc_object $P3349, "1304284944.723", 80
    .const 'Sub' $P3350 = "146_1304284948.29" 
    copy $P3349, $P3350
    nqp_get_sc_object $P3351, "1304284944.723", 81
    .const 'Sub' $P3352 = "147_1304284948.29" 
    copy $P3351, $P3352
    nqp_get_sc_object $P3353, "1304284944.723", 82
    .const 'Sub' $P3354 = "148_1304284948.29" 
    copy $P3353, $P3354
    nqp_get_sc_object $P3355, "1304284944.723", 83
    .const 'Sub' $P3356 = "149_1304284948.29" 
    copy $P3355, $P3356
    nqp_get_sc_object $P3357, "1304284944.723", 84
    .const 'Sub' $P3358 = "154_1304284948.29" 
    copy $P3357, $P3358
    .const 'Sub' $P3359 = "141_1304284948.29" 
    $P3360 = $P3359."get_lexinfo"()
    nqp_get_sc_object $P3361, "1304284944.723", 77
    $P3360."set_static_lexpad_value"("$?PACKAGE", $P3361)
    .const 'Sub' $P3362 = "141_1304284948.29" 
    $P3363 = $P3362."get_lexinfo"()
    $P3363."finish_static_lexpad"()
    .const 'Sub' $P3364 = "141_1304284948.29" 
    $P3365 = $P3364."get_lexinfo"()
    nqp_get_sc_object $P3366, "1304284944.723", 77
    $P3365."set_static_lexpad_value"("$?CLASS", $P3366)
    .const 'Sub' $P3367 = "141_1304284948.29" 
    $P3368 = $P3367."get_lexinfo"()
    $P3368."finish_static_lexpad"()
    .const 'Sub' $P3369 = "10_1304284948.29" 
    $P3370 = $P3369."get_lexinfo"()
    nqp_get_sc_object $P3371, "1304284944.723", 85
    $P3370."set_static_lexpad_value"("NQPModuleHOW", $P3371)
    .const 'Sub' $P3372 = "10_1304284948.29" 
    $P3373 = $P3372."get_lexinfo"()
    $P3373."finish_static_lexpad"()
    nqp_get_sc_object $P3374, "1304284944.723", 86
    .const 'Sub' $P3375 = "156_1304284948.29" 
    copy $P3374, $P3375
    nqp_get_sc_object $P3376, "1304284944.723", 87
    .const 'Sub' $P3377 = "157_1304284948.29" 
    copy $P3376, $P3377
    nqp_get_sc_object $P3378, "1304284944.723", 88
    .const 'Sub' $P3379 = "158_1304284948.29" 
    copy $P3378, $P3379
    nqp_get_sc_object $P3380, "1304284944.723", 89
    .const 'Sub' $P3381 = "159_1304284948.29" 
    copy $P3380, $P3381
    nqp_get_sc_object $P3382, "1304284944.723", 90
    .const 'Sub' $P3383 = "160_1304284948.29" 
    copy $P3382, $P3383
    nqp_get_sc_object $P3384, "1304284944.723", 91
    .const 'Sub' $P3385 = "161_1304284948.29" 
    copy $P3384, $P3385
    nqp_get_sc_object $P3386, "1304284944.723", 92
    .const 'Sub' $P3387 = "162_1304284948.29" 
    copy $P3386, $P3387
    nqp_get_sc_object $P3388, "1304284944.723", 93
    .const 'Sub' $P3389 = "163_1304284948.29" 
    copy $P3388, $P3389
    .const 'Sub' $P3390 = "155_1304284948.29" 
    $P3391 = $P3390."get_lexinfo"()
    nqp_get_sc_object $P3392, "1304284944.723", 85
    $P3391."set_static_lexpad_value"("$?PACKAGE", $P3392)
    .const 'Sub' $P3393 = "155_1304284948.29" 
    $P3394 = $P3393."get_lexinfo"()
    $P3394."finish_static_lexpad"()
    .const 'Sub' $P3395 = "155_1304284948.29" 
    $P3396 = $P3395."get_lexinfo"()
    nqp_get_sc_object $P3397, "1304284944.723", 85
    $P3396."set_static_lexpad_value"("$?CLASS", $P3397)
    .const 'Sub' $P3398 = "155_1304284948.29" 
    $P3399 = $P3398."get_lexinfo"()
    $P3399."finish_static_lexpad"()
    .const 'Sub' $P3400 = "10_1304284948.29" 
    $P3401 = $P3400."get_lexinfo"()
    nqp_get_sc_object $P3402, "1304284944.723", 94
    $P3401."set_static_lexpad_value"("EXPORTHOW", $P3402)
    .const 'Sub' $P3403 = "10_1304284948.29" 
    $P3404 = $P3403."get_lexinfo"()
    $P3404."finish_static_lexpad"()
    .const 'Sub' $P3405 = "164_1304284948.29" 
    $P3406 = $P3405."get_lexinfo"()
    nqp_get_sc_object $P3407, "1304284944.723", 94
    $P3406."set_static_lexpad_value"("$?PACKAGE", $P3407)
    .const 'Sub' $P3408 = "164_1304284948.29" 
    $P3409 = $P3408."get_lexinfo"()
    $P3409."finish_static_lexpad"()
    .const 'Sub' $P3410 = "164_1304284948.29" 
    $P3411 = $P3410."get_lexinfo"()
    nqp_get_sc_object $P3412, "1304284944.723", 94
    $P3411."set_static_lexpad_value"("$?CLASS", $P3412)
    .const 'Sub' $P3413 = "164_1304284948.29" 
    $P3414 = $P3413."get_lexinfo"()
    $P3414."finish_static_lexpad"()
    goto if_2357_end
  if_2357:
    nqp_dynop_setup 
    getinterp $P2360
    get_class $P2361, "LexPad"
    get_class $P2362, "NQPLexPad"
    $P2360."hll_map"($P2361, $P2362)
    nqp_create_sc $P2363, "1304284944.723"
    .local pmc cur_sc
    set cur_sc, $P2363
    nqp_get_sc_object $P2364, "__6MODEL_CORE__", 0
    $P2365 = $P2364."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2365, cur_sc
    nqp_set_sc_object "1304284944.723", 0, $P2365
    .const 'Sub' $P2366 = "10_1304284948.29" 
    $P2367 = $P2366."get_lexinfo"()
    nqp_get_sc_object $P2368, "1304284944.723", 0
    $P2367."set_static_lexpad_value"("GLOBALish", $P2368)
    .const 'Sub' $P2369 = "10_1304284948.29" 
    $P2370 = $P2369."get_lexinfo"()
    $P2370."finish_static_lexpad"()
    .const 'Sub' $P2371 = "10_1304284948.29" 
    $P2372 = $P2371."get_lexinfo"()
    nqp_get_sc_object $P2373, "1304284944.723", 0
    $P2372."set_static_lexpad_value"("$?PACKAGE", $P2373)
    .const 'Sub' $P2374 = "10_1304284948.29" 
    $P2375 = $P2374."get_lexinfo"()
    $P2375."finish_static_lexpad"()
    nqp_get_sc_object $P2376, "__6MODEL_CORE__", 0
    $P2377 = $P2376."new_type"("RoleToRoleApplier" :named("name"))
    nqp_set_sc_for_object $P2377, cur_sc
    nqp_set_sc_object "1304284944.723", 1, $P2377
    nqp_get_sc_object $P2378, "1304284944.723", 1
    nqp_get_sc_object $P2379, "1304284944.723", 0
    get_who $P2380, $P2379
    set $P2380["RoleToRoleApplier"], $P2378
    .const 'Sub' $P2381 = "10_1304284948.29" 
    $P2382 = $P2381."get_lexinfo"()
    nqp_get_sc_object $P2383, "1304284944.723", 1
    $P2382."set_static_lexpad_value"("RoleToRoleApplier", $P2383)
    .const 'Sub' $P2384 = "10_1304284948.29" 
    $P2385 = $P2384."get_lexinfo"()
    $P2385."finish_static_lexpad"()
    nqp_get_sc_object $P2386, "1304284944.723", 1
    get_how $P2387, $P2386
    nqp_get_sc_object $P2388, "1304284944.723", 1
    .const 'Sub' $P2389 = "12_1304284948.29" 
    $P2387."add_method"($P2388, "apply", $P2389)
    .const 'Sub' $P2390 = "11_1304284948.29" 
    $P2391 = $P2390."get_lexinfo"()
    nqp_get_sc_object $P2392, "1304284944.723", 1
    $P2391."set_static_lexpad_value"("$?PACKAGE", $P2392)
    .const 'Sub' $P2393 = "11_1304284948.29" 
    $P2394 = $P2393."get_lexinfo"()
    $P2394."finish_static_lexpad"()
    .const 'Sub' $P2395 = "11_1304284948.29" 
    $P2396 = $P2395."get_lexinfo"()
    nqp_get_sc_object $P2397, "1304284944.723", 1
    $P2396."set_static_lexpad_value"("$?CLASS", $P2397)
    .const 'Sub' $P2398 = "11_1304284948.29" 
    $P2399 = $P2398."get_lexinfo"()
    $P2399."finish_static_lexpad"()
    nqp_get_sc_object $P2400, "1304284944.723", 1
    get_how $P2401, $P2400
    nqp_get_sc_object $P2402, "1304284944.723", 1
    $P2401."compose"($P2402)
    nqp_get_sc_object $P2403, "__6MODEL_CORE__", 0
    $P2404 = $P2403."new_type"("NQPConcreteRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2404, cur_sc
    nqp_set_sc_object "1304284944.723", 3, $P2404
    nqp_get_sc_object $P2405, "1304284944.723", 3
    nqp_get_sc_object $P2406, "1304284944.723", 0
    get_who $P2407, $P2406
    set $P2407["NQPConcreteRoleHOW"], $P2405
    .const 'Sub' $P2408 = "10_1304284948.29" 
    $P2409 = $P2408."get_lexinfo"()
    nqp_get_sc_object $P2410, "1304284944.723", 3
    $P2409."set_static_lexpad_value"("NQPConcreteRoleHOW", $P2410)
    .const 'Sub' $P2411 = "10_1304284948.29" 
    $P2412 = $P2411."get_lexinfo"()
    $P2412."finish_static_lexpad"()
    nqp_get_sc_object $P2413, "1304284944.723", 3
    get_how $P2414, $P2413
    nqp_get_sc_object $P2415, "1304284944.723", 3
    nqp_get_sc_object $P2416, "__6MODEL_CORE__", 2
    $P2417 = $P2416."new"("$!name" :named("name"))
    $P2414."add_attribute"($P2415, $P2417)
    nqp_get_sc_object $P2418, "1304284944.723", 3
    get_how $P2419, $P2418
    nqp_get_sc_object $P2420, "1304284944.723", 3
    nqp_get_sc_object $P2421, "__6MODEL_CORE__", 2
    $P2422 = $P2421."new"("$!instance_of" :named("name"))
    $P2419."add_attribute"($P2420, $P2422)
    nqp_get_sc_object $P2423, "1304284944.723", 3
    get_how $P2424, $P2423
    nqp_get_sc_object $P2425, "1304284944.723", 3
    nqp_get_sc_object $P2426, "__6MODEL_CORE__", 2
    $P2427 = $P2426."new"("%!attributes" :named("name"))
    $P2424."add_attribute"($P2425, $P2427)
    nqp_get_sc_object $P2428, "1304284944.723", 3
    get_how $P2429, $P2428
    nqp_get_sc_object $P2430, "1304284944.723", 3
    nqp_get_sc_object $P2431, "__6MODEL_CORE__", 2
    $P2432 = $P2431."new"("%!methods" :named("name"))
    $P2429."add_attribute"($P2430, $P2432)
    nqp_get_sc_object $P2433, "1304284944.723", 3
    get_how $P2434, $P2433
    nqp_get_sc_object $P2435, "1304284944.723", 3
    nqp_get_sc_object $P2436, "__6MODEL_CORE__", 2
    $P2437 = $P2436."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2434."add_attribute"($P2435, $P2437)
    nqp_get_sc_object $P2438, "1304284944.723", 3
    get_how $P2439, $P2438
    nqp_get_sc_object $P2440, "1304284944.723", 3
    nqp_get_sc_object $P2441, "__6MODEL_CORE__", 2
    $P2442 = $P2441."new"("@!collisions" :named("name"))
    $P2439."add_attribute"($P2440, $P2442)
    nqp_get_sc_object $P2443, "1304284944.723", 3
    get_how $P2444, $P2443
    nqp_get_sc_object $P2445, "1304284944.723", 3
    nqp_get_sc_object $P2446, "__6MODEL_CORE__", 2
    $P2447 = $P2446."new"("@!roles" :named("name"))
    $P2444."add_attribute"($P2445, $P2447)
    nqp_get_sc_object $P2448, "1304284944.723", 3
    get_how $P2449, $P2448
    nqp_get_sc_object $P2450, "1304284944.723", 3
    nqp_get_sc_object $P2451, "__6MODEL_CORE__", 2
    $P2452 = $P2451."new"("@!done" :named("name"))
    $P2449."add_attribute"($P2450, $P2452)
    nqp_get_sc_object $P2453, "1304284944.723", 3
    get_how $P2454, $P2453
    nqp_get_sc_object $P2455, "1304284944.723", 3
    nqp_get_sc_object $P2456, "__6MODEL_CORE__", 2
    $P2457 = $P2456."new"("$!composed" :named("name"))
    $P2454."add_attribute"($P2455, $P2457)
    nqp_get_sc_object $P2458, "1304284944.723", 3
    get_how $P2459, $P2458
    nqp_get_sc_object $P2460, "1304284944.723", 3
    .const 'Sub' $P2461 = "22_1304284948.29" 
    $P2459."add_method"($P2460, "new", $P2461)
    nqp_get_sc_object $P2462, "1304284944.723", 3
    get_how $P2463, $P2462
    nqp_get_sc_object $P2464, "1304284944.723", 3
    .const 'Sub' $P2465 = "23_1304284948.29" 
    $P2463."add_method"($P2464, "BUILD", $P2465)
    nqp_get_sc_object $P2466, "1304284944.723", 3
    get_how $P2467, $P2466
    nqp_get_sc_object $P2468, "1304284944.723", 3
    .const 'Sub' $P2469 = "24_1304284948.29" 
    $P2467."add_method"($P2468, "new_type", $P2469)
    nqp_get_sc_object $P2470, "1304284944.723", 3
    get_how $P2471, $P2470
    nqp_get_sc_object $P2472, "1304284944.723", 3
    .const 'Sub' $P2473 = "25_1304284948.29" 
    $P2471."add_method"($P2472, "add_method", $P2473)
    nqp_get_sc_object $P2474, "1304284944.723", 3
    get_how $P2475, $P2474
    nqp_get_sc_object $P2476, "1304284944.723", 3
    .const 'Sub' $P2477 = "26_1304284948.29" 
    $P2475."add_method"($P2476, "add_multi_method", $P2477)
    nqp_get_sc_object $P2478, "1304284944.723", 3
    get_how $P2479, $P2478
    nqp_get_sc_object $P2480, "1304284944.723", 3
    .const 'Sub' $P2481 = "27_1304284948.29" 
    $P2479."add_method"($P2480, "add_attribute", $P2481)
    nqp_get_sc_object $P2482, "1304284944.723", 3
    get_how $P2483, $P2482
    nqp_get_sc_object $P2484, "1304284944.723", 3
    .const 'Sub' $P2485 = "28_1304284948.29" 
    $P2483."add_method"($P2484, "add_parent", $P2485)
    nqp_get_sc_object $P2486, "1304284944.723", 3
    get_how $P2487, $P2486
    nqp_get_sc_object $P2488, "1304284944.723", 3
    .const 'Sub' $P2489 = "29_1304284948.29" 
    $P2487."add_method"($P2488, "add_role", $P2489)
    nqp_get_sc_object $P2490, "1304284944.723", 3
    get_how $P2491, $P2490
    nqp_get_sc_object $P2492, "1304284944.723", 3
    .const 'Sub' $P2493 = "30_1304284948.29" 
    $P2491."add_method"($P2492, "add_collision", $P2493)
    nqp_get_sc_object $P2494, "1304284944.723", 3
    get_how $P2495, $P2494
    nqp_get_sc_object $P2496, "1304284944.723", 3
    .const 'Sub' $P2497 = "31_1304284948.29" 
    $P2495."add_method"($P2496, "compose", $P2497)
    nqp_get_sc_object $P2498, "1304284944.723", 3
    get_how $P2499, $P2498
    nqp_get_sc_object $P2500, "1304284944.723", 3
    .const 'Sub' $P2501 = "33_1304284948.29" 
    $P2499."add_method"($P2500, "methods", $P2501)
    nqp_get_sc_object $P2502, "1304284944.723", 3
    get_how $P2503, $P2502
    nqp_get_sc_object $P2504, "1304284944.723", 3
    .const 'Sub' $P2505 = "35_1304284948.29" 
    $P2503."add_method"($P2504, "method_table", $P2505)
    nqp_get_sc_object $P2506, "1304284944.723", 3
    get_how $P2507, $P2506
    nqp_get_sc_object $P2508, "1304284944.723", 3
    .const 'Sub' $P2509 = "36_1304284948.29" 
    $P2507."add_method"($P2508, "collisions", $P2509)
    nqp_get_sc_object $P2510, "1304284944.723", 3
    get_how $P2511, $P2510
    nqp_get_sc_object $P2512, "1304284944.723", 3
    .const 'Sub' $P2513 = "37_1304284948.29" 
    $P2511."add_method"($P2512, "name", $P2513)
    nqp_get_sc_object $P2514, "1304284944.723", 3
    get_how $P2515, $P2514
    nqp_get_sc_object $P2516, "1304284944.723", 3
    .const 'Sub' $P2517 = "38_1304284948.29" 
    $P2515."add_method"($P2516, "attributes", $P2517)
    nqp_get_sc_object $P2518, "1304284944.723", 3
    get_how $P2519, $P2518
    nqp_get_sc_object $P2520, "1304284944.723", 3
    .const 'Sub' $P2521 = "40_1304284948.29" 
    $P2519."add_method"($P2520, "roles", $P2521)
    nqp_get_sc_object $P2522, "1304284944.723", 3
    get_how $P2523, $P2522
    nqp_get_sc_object $P2524, "1304284944.723", 3
    .const 'Sub' $P2525 = "41_1304284948.29" 
    $P2523."add_method"($P2524, "instance_of", $P2525)
    .const 'Sub' $P2526 = "21_1304284948.29" 
    $P2527 = $P2526."get_lexinfo"()
    nqp_get_sc_object $P2528, "1304284944.723", 3
    $P2527."set_static_lexpad_value"("$?PACKAGE", $P2528)
    .const 'Sub' $P2529 = "21_1304284948.29" 
    $P2530 = $P2529."get_lexinfo"()
    $P2530."finish_static_lexpad"()
    .const 'Sub' $P2531 = "21_1304284948.29" 
    $P2532 = $P2531."get_lexinfo"()
    nqp_get_sc_object $P2533, "1304284944.723", 3
    $P2532."set_static_lexpad_value"("$?CLASS", $P2533)
    .const 'Sub' $P2534 = "21_1304284948.29" 
    $P2535 = $P2534."get_lexinfo"()
    $P2535."finish_static_lexpad"()
    nqp_get_sc_object $P2536, "1304284944.723", 3
    get_how $P2537, $P2536
    nqp_get_sc_object $P2538, "1304284944.723", 3
    $P2537."compose"($P2538)
    nqp_get_sc_object $P2539, "__6MODEL_CORE__", 0
    $P2540 = $P2539."new_type"("RoleToClassApplier" :named("name"))
    nqp_set_sc_for_object $P2540, cur_sc
    nqp_set_sc_object "1304284944.723", 21, $P2540
    nqp_get_sc_object $P2541, "1304284944.723", 21
    nqp_get_sc_object $P2542, "1304284944.723", 0
    get_who $P2543, $P2542
    set $P2543["RoleToClassApplier"], $P2541
    .const 'Sub' $P2544 = "10_1304284948.29" 
    $P2545 = $P2544."get_lexinfo"()
    nqp_get_sc_object $P2546, "1304284944.723", 21
    $P2545."set_static_lexpad_value"("RoleToClassApplier", $P2546)
    .const 'Sub' $P2547 = "10_1304284948.29" 
    $P2548 = $P2547."get_lexinfo"()
    $P2548."finish_static_lexpad"()
    nqp_get_sc_object $P2549, "1304284944.723", 21
    get_how $P2550, $P2549
    nqp_get_sc_object $P2551, "1304284944.723", 21
    .const 'Sub' $P2552 = "47_1304284948.29" 
    $P2550."add_method"($P2551, "apply", $P2552)
    .const 'Sub' $P2553 = "42_1304284948.29" 
    $P2554 = $P2553."get_lexinfo"()
    nqp_get_sc_object $P2555, "1304284944.723", 21
    $P2554."set_static_lexpad_value"("$?PACKAGE", $P2555)
    .const 'Sub' $P2556 = "42_1304284948.29" 
    $P2557 = $P2556."get_lexinfo"()
    $P2557."finish_static_lexpad"()
    .const 'Sub' $P2558 = "42_1304284948.29" 
    $P2559 = $P2558."get_lexinfo"()
    nqp_get_sc_object $P2560, "1304284944.723", 21
    $P2559."set_static_lexpad_value"("$?CLASS", $P2560)
    .const 'Sub' $P2561 = "42_1304284948.29" 
    $P2562 = $P2561."get_lexinfo"()
    $P2562."finish_static_lexpad"()
    nqp_get_sc_object $P2563, "1304284944.723", 21
    get_how $P2564, $P2563
    nqp_get_sc_object $P2565, "1304284944.723", 21
    $P2564."compose"($P2565)
    nqp_get_sc_object $P2566, "__6MODEL_CORE__", 0
    $P2567 = $P2566."new_type"("NQPParametricRoleHOW" :named("name"))
    nqp_set_sc_for_object $P2567, cur_sc
    nqp_set_sc_object "1304284944.723", 23, $P2567
    nqp_get_sc_object $P2568, "1304284944.723", 23
    nqp_get_sc_object $P2569, "1304284944.723", 0
    get_who $P2570, $P2569
    set $P2570["NQPParametricRoleHOW"], $P2568
    .const 'Sub' $P2571 = "10_1304284948.29" 
    $P2572 = $P2571."get_lexinfo"()
    nqp_get_sc_object $P2573, "1304284944.723", 23
    $P2572."set_static_lexpad_value"("NQPParametricRoleHOW", $P2573)
    .const 'Sub' $P2574 = "10_1304284948.29" 
    $P2575 = $P2574."get_lexinfo"()
    $P2575."finish_static_lexpad"()
    nqp_get_sc_object $P2576, "1304284944.723", 23
    get_how $P2577, $P2576
    nqp_get_sc_object $P2578, "1304284944.723", 23
    nqp_get_sc_object $P2579, "__6MODEL_CORE__", 2
    $P2580 = $P2579."new"("$!name" :named("name"))
    $P2577."add_attribute"($P2578, $P2580)
    nqp_get_sc_object $P2581, "1304284944.723", 23
    get_how $P2582, $P2581
    nqp_get_sc_object $P2583, "1304284944.723", 23
    nqp_get_sc_object $P2584, "__6MODEL_CORE__", 2
    $P2585 = $P2584."new"("%!attributes" :named("name"))
    $P2582."add_attribute"($P2583, $P2585)
    nqp_get_sc_object $P2586, "1304284944.723", 23
    get_how $P2587, $P2586
    nqp_get_sc_object $P2588, "1304284944.723", 23
    nqp_get_sc_object $P2589, "__6MODEL_CORE__", 2
    $P2590 = $P2589."new"("%!methods" :named("name"))
    $P2587."add_attribute"($P2588, $P2590)
    nqp_get_sc_object $P2591, "1304284944.723", 23
    get_how $P2592, $P2591
    nqp_get_sc_object $P2593, "1304284944.723", 23
    nqp_get_sc_object $P2594, "__6MODEL_CORE__", 2
    $P2595 = $P2594."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2592."add_attribute"($P2593, $P2595)
    nqp_get_sc_object $P2596, "1304284944.723", 23
    get_how $P2597, $P2596
    nqp_get_sc_object $P2598, "1304284944.723", 23
    nqp_get_sc_object $P2599, "__6MODEL_CORE__", 2
    $P2600 = $P2599."new"("@!roles" :named("name"))
    $P2597."add_attribute"($P2598, $P2600)
    nqp_get_sc_object $P2601, "1304284944.723", 23
    get_how $P2602, $P2601
    nqp_get_sc_object $P2603, "1304284944.723", 23
    nqp_get_sc_object $P2604, "__6MODEL_CORE__", 2
    $P2605 = $P2604."new"("$!composed" :named("name"))
    $P2602."add_attribute"($P2603, $P2605)
    nqp_get_sc_object $P2606, "1304284944.723", 23
    get_how $P2607, $P2606
    nqp_get_sc_object $P2608, "1304284944.723", 23
    nqp_get_sc_object $P2609, "__6MODEL_CORE__", 2
    $P2610 = $P2609."new"("$!body_block" :named("name"))
    $P2607."add_attribute"($P2608, $P2610)
    nqp_get_sc_object $P2611, "1304284944.723", 23
    get_how $P2612, $P2611
    nqp_get_sc_object $P2613, "1304284944.723", 23
    .const 'Sub' $P2614 = "53_1304284948.29" 
    $P2612."add_method"($P2613, "new", $P2614)
    nqp_get_sc_object $P2615, "1304284944.723", 23
    get_how $P2616, $P2615
    nqp_get_sc_object $P2617, "1304284944.723", 23
    .const 'Sub' $P2618 = "54_1304284948.29" 
    $P2616."add_method"($P2617, "BUILD", $P2618)
    nqp_get_sc_object $P2619, "1304284944.723", 23
    get_how $P2620, $P2619
    nqp_get_sc_object $P2621, "1304284944.723", 23
    .const 'Sub' $P2622 = "55_1304284948.29" 
    $P2620."add_method"($P2621, "new_type", $P2622)
    nqp_get_sc_object $P2623, "1304284944.723", 23
    get_how $P2624, $P2623
    nqp_get_sc_object $P2625, "1304284944.723", 23
    .const 'Sub' $P2626 = "56_1304284948.29" 
    $P2624."add_method"($P2625, "set_body_block", $P2626)
    nqp_get_sc_object $P2627, "1304284944.723", 23
    get_how $P2628, $P2627
    nqp_get_sc_object $P2629, "1304284944.723", 23
    .const 'Sub' $P2630 = "57_1304284948.29" 
    $P2628."add_method"($P2629, "add_method", $P2630)
    nqp_get_sc_object $P2631, "1304284944.723", 23
    get_how $P2632, $P2631
    nqp_get_sc_object $P2633, "1304284944.723", 23
    .const 'Sub' $P2634 = "58_1304284948.29" 
    $P2632."add_method"($P2633, "add_multi_method", $P2634)
    nqp_get_sc_object $P2635, "1304284944.723", 23
    get_how $P2636, $P2635
    nqp_get_sc_object $P2637, "1304284944.723", 23
    .const 'Sub' $P2638 = "59_1304284948.29" 
    $P2636."add_method"($P2637, "add_attribute", $P2638)
    nqp_get_sc_object $P2639, "1304284944.723", 23
    get_how $P2640, $P2639
    nqp_get_sc_object $P2641, "1304284944.723", 23
    .const 'Sub' $P2642 = "60_1304284948.29" 
    $P2640."add_method"($P2641, "add_parent", $P2642)
    nqp_get_sc_object $P2643, "1304284944.723", 23
    get_how $P2644, $P2643
    nqp_get_sc_object $P2645, "1304284944.723", 23
    .const 'Sub' $P2646 = "61_1304284948.29" 
    $P2644."add_method"($P2645, "add_role", $P2646)
    nqp_get_sc_object $P2647, "1304284944.723", 23
    get_how $P2648, $P2647
    nqp_get_sc_object $P2649, "1304284944.723", 23
    .const 'Sub' $P2650 = "62_1304284948.29" 
    $P2648."add_method"($P2649, "compose", $P2650)
    nqp_get_sc_object $P2651, "1304284944.723", 23
    get_how $P2652, $P2651
    nqp_get_sc_object $P2653, "1304284944.723", 23
    .const 'Sub' $P2654 = "63_1304284948.29" 
    $P2652."add_method"($P2653, "parametric", $P2654)
    nqp_get_sc_object $P2655, "1304284944.723", 23
    get_how $P2656, $P2655
    nqp_get_sc_object $P2657, "1304284944.723", 23
    .const 'Sub' $P2658 = "64_1304284948.29" 
    $P2656."add_method"($P2657, "instantiate", $P2658)
    nqp_get_sc_object $P2659, "1304284944.723", 23
    get_how $P2660, $P2659
    nqp_get_sc_object $P2661, "1304284944.723", 23
    .const 'Sub' $P2662 = "69_1304284948.29" 
    $P2660."add_method"($P2661, "methods", $P2662)
    nqp_get_sc_object $P2663, "1304284944.723", 23
    get_how $P2664, $P2663
    nqp_get_sc_object $P2665, "1304284944.723", 23
    .const 'Sub' $P2666 = "71_1304284948.29" 
    $P2664."add_method"($P2665, "method_table", $P2666)
    nqp_get_sc_object $P2667, "1304284944.723", 23
    get_how $P2668, $P2667
    nqp_get_sc_object $P2669, "1304284944.723", 23
    .const 'Sub' $P2670 = "72_1304284948.29" 
    $P2668."add_method"($P2669, "name", $P2670)
    nqp_get_sc_object $P2671, "1304284944.723", 23
    get_how $P2672, $P2671
    nqp_get_sc_object $P2673, "1304284944.723", 23
    .const 'Sub' $P2674 = "73_1304284948.29" 
    $P2672."add_method"($P2673, "attributes", $P2674)
    nqp_get_sc_object $P2675, "1304284944.723", 23
    get_how $P2676, $P2675
    nqp_get_sc_object $P2677, "1304284944.723", 23
    .const 'Sub' $P2678 = "75_1304284948.29" 
    $P2676."add_method"($P2677, "roles", $P2678)
    .const 'Sub' $P2679 = "52_1304284948.29" 
    $P2680 = $P2679."get_lexinfo"()
    nqp_get_sc_object $P2681, "1304284944.723", 23
    $P2680."set_static_lexpad_value"("$?PACKAGE", $P2681)
    .const 'Sub' $P2682 = "52_1304284948.29" 
    $P2683 = $P2682."get_lexinfo"()
    $P2683."finish_static_lexpad"()
    .const 'Sub' $P2684 = "52_1304284948.29" 
    $P2685 = $P2684."get_lexinfo"()
    nqp_get_sc_object $P2686, "1304284944.723", 23
    $P2685."set_static_lexpad_value"("$?CLASS", $P2686)
    .const 'Sub' $P2687 = "52_1304284948.29" 
    $P2688 = $P2687."get_lexinfo"()
    $P2688."finish_static_lexpad"()
    nqp_get_sc_object $P2689, "1304284944.723", 23
    get_how $P2690, $P2689
    nqp_get_sc_object $P2691, "1304284944.723", 23
    $P2690."compose"($P2691)
    nqp_get_sc_object $P2692, "__6MODEL_CORE__", 0
    $P2693 = $P2692."new_type"("NQPClassHOW" :named("name"))
    nqp_set_sc_for_object $P2693, cur_sc
    nqp_set_sc_object "1304284944.723", 41, $P2693
    nqp_get_sc_object $P2694, "1304284944.723", 41
    nqp_get_sc_object $P2695, "1304284944.723", 0
    get_who $P2696, $P2695
    set $P2696["NQPClassHOW"], $P2694
    .const 'Sub' $P2697 = "10_1304284948.29" 
    $P2698 = $P2697."get_lexinfo"()
    nqp_get_sc_object $P2699, "1304284944.723", 41
    $P2698."set_static_lexpad_value"("NQPClassHOW", $P2699)
    .const 'Sub' $P2700 = "10_1304284948.29" 
    $P2701 = $P2700."get_lexinfo"()
    $P2701."finish_static_lexpad"()
    nqp_get_sc_object $P2702, "1304284944.723", 41
    get_how $P2703, $P2702
    nqp_get_sc_object $P2704, "1304284944.723", 41
    nqp_get_sc_object $P2705, "__6MODEL_CORE__", 2
    $P2706 = $P2705."new"("$!name" :named("name"))
    $P2703."add_attribute"($P2704, $P2706)
    nqp_get_sc_object $P2707, "1304284944.723", 41
    get_how $P2708, $P2707
    nqp_get_sc_object $P2709, "1304284944.723", 41
    nqp_get_sc_object $P2710, "__6MODEL_CORE__", 2
    $P2711 = $P2710."new"("%!attributes" :named("name"))
    $P2708."add_attribute"($P2709, $P2711)
    nqp_get_sc_object $P2712, "1304284944.723", 41
    get_how $P2713, $P2712
    nqp_get_sc_object $P2714, "1304284944.723", 41
    nqp_get_sc_object $P2715, "__6MODEL_CORE__", 2
    $P2716 = $P2715."new"("%!methods" :named("name"))
    $P2713."add_attribute"($P2714, $P2716)
    nqp_get_sc_object $P2717, "1304284944.723", 41
    get_how $P2718, $P2717
    nqp_get_sc_object $P2719, "1304284944.723", 41
    nqp_get_sc_object $P2720, "__6MODEL_CORE__", 2
    $P2721 = $P2720."new"("@!multi_methods_to_incorporate" :named("name"))
    $P2718."add_attribute"($P2719, $P2721)
    nqp_get_sc_object $P2722, "1304284944.723", 41
    get_how $P2723, $P2722
    nqp_get_sc_object $P2724, "1304284944.723", 41
    nqp_get_sc_object $P2725, "__6MODEL_CORE__", 2
    $P2726 = $P2725."new"("@!parents" :named("name"))
    $P2723."add_attribute"($P2724, $P2726)
    nqp_get_sc_object $P2727, "1304284944.723", 41
    get_how $P2728, $P2727
    nqp_get_sc_object $P2729, "1304284944.723", 41
    nqp_get_sc_object $P2730, "__6MODEL_CORE__", 2
    $P2731 = $P2730."new"("@!roles" :named("name"))
    $P2728."add_attribute"($P2729, $P2731)
    nqp_get_sc_object $P2732, "1304284944.723", 41
    get_how $P2733, $P2732
    nqp_get_sc_object $P2734, "1304284944.723", 41
    nqp_get_sc_object $P2735, "__6MODEL_CORE__", 2
    $P2736 = $P2735."new"("$!default_parent" :named("name"))
    $P2733."add_attribute"($P2734, $P2736)
    nqp_get_sc_object $P2737, "1304284944.723", 41
    get_how $P2738, $P2737
    nqp_get_sc_object $P2739, "1304284944.723", 41
    nqp_get_sc_object $P2740, "__6MODEL_CORE__", 2
    $P2741 = $P2740."new"("@!vtable" :named("name"))
    $P2738."add_attribute"($P2739, $P2741)
    nqp_get_sc_object $P2742, "1304284944.723", 41
    get_how $P2743, $P2742
    nqp_get_sc_object $P2744, "1304284944.723", 41
    nqp_get_sc_object $P2745, "__6MODEL_CORE__", 2
    $P2746 = $P2745."new"("%!method-vtable-slots" :named("name"))
    $P2743."add_attribute"($P2744, $P2746)
    nqp_get_sc_object $P2747, "1304284944.723", 41
    get_how $P2748, $P2747
    nqp_get_sc_object $P2749, "1304284944.723", 41
    nqp_get_sc_object $P2750, "__6MODEL_CORE__", 2
    $P2751 = $P2750."new"("$!composed" :named("name"))
    $P2748."add_attribute"($P2749, $P2751)
    nqp_get_sc_object $P2752, "1304284944.723", 41
    get_how $P2753, $P2752
    nqp_get_sc_object $P2754, "1304284944.723", 41
    nqp_get_sc_object $P2755, "__6MODEL_CORE__", 2
    $P2756 = $P2755."new"("@!mro" :named("name"))
    $P2753."add_attribute"($P2754, $P2756)
    nqp_get_sc_object $P2757, "1304284944.723", 41
    get_how $P2758, $P2757
    nqp_get_sc_object $P2759, "1304284944.723", 41
    nqp_get_sc_object $P2760, "__6MODEL_CORE__", 2
    $P2761 = $P2760."new"("@!done" :named("name"))
    $P2758."add_attribute"($P2759, $P2761)
    nqp_get_sc_object $P2762, "1304284944.723", 41
    get_how $P2763, $P2762
    nqp_get_sc_object $P2764, "1304284944.723", 41
    nqp_get_sc_object $P2765, "__6MODEL_CORE__", 2
    $P2766 = $P2765."new"("%!parrot_vtable_mapping" :named("name"))
    $P2763."add_attribute"($P2764, $P2766)
    nqp_get_sc_object $P2767, "1304284944.723", 41
    get_how $P2768, $P2767
    nqp_get_sc_object $P2769, "1304284944.723", 41
    .const 'Sub' $P2770 = "87_1304284948.29" 
    $P2768."add_method"($P2769, "new", $P2770)
    nqp_get_sc_object $P2771, "1304284944.723", 41
    get_how $P2772, $P2771
    nqp_get_sc_object $P2773, "1304284944.723", 41
    .const 'Sub' $P2774 = "88_1304284948.29" 
    $P2772."add_method"($P2773, "BUILD", $P2774)
    nqp_get_sc_object $P2775, "1304284944.723", 41
    get_how $P2776, $P2775
    nqp_get_sc_object $P2777, "1304284944.723", 41
    .const 'Sub' $P2778 = "89_1304284948.29" 
    $P2776."add_method"($P2777, "new_type", $P2778)
    nqp_get_sc_object $P2779, "1304284944.723", 41
    get_how $P2780, $P2779
    nqp_get_sc_object $P2781, "1304284944.723", 41
    .const 'Sub' $P2782 = "90_1304284948.29" 
    $P2780."add_method"($P2781, "add_method", $P2782)
    nqp_get_sc_object $P2783, "1304284944.723", 41
    get_how $P2784, $P2783
    nqp_get_sc_object $P2785, "1304284944.723", 41
    .const 'Sub' $P2786 = "91_1304284948.29" 
    $P2784."add_method"($P2785, "add_multi_method", $P2786)
    nqp_get_sc_object $P2787, "1304284944.723", 41
    get_how $P2788, $P2787
    nqp_get_sc_object $P2789, "1304284944.723", 41
    .const 'Sub' $P2790 = "92_1304284948.29" 
    $P2788."add_method"($P2789, "add_attribute", $P2790)
    nqp_get_sc_object $P2791, "1304284944.723", 41
    get_how $P2792, $P2791
    nqp_get_sc_object $P2793, "1304284944.723", 41
    .const 'Sub' $P2794 = "93_1304284948.29" 
    $P2792."add_method"($P2793, "add_parent", $P2794)
    nqp_get_sc_object $P2795, "1304284944.723", 41
    get_how $P2796, $P2795
    nqp_get_sc_object $P2797, "1304284944.723", 41
    .const 'Sub' $P2798 = "95_1304284948.29" 
    $P2796."add_method"($P2797, "set_default_parent", $P2798)
    nqp_get_sc_object $P2799, "1304284944.723", 41
    get_how $P2800, $P2799
    nqp_get_sc_object $P2801, "1304284944.723", 41
    .const 'Sub' $P2802 = "96_1304284948.29" 
    $P2800."add_method"($P2801, "add_role", $P2802)
    nqp_get_sc_object $P2803, "1304284944.723", 41
    get_how $P2804, $P2803
    nqp_get_sc_object $P2805, "1304284944.723", 41
    .const 'Sub' $P2806 = "98_1304284948.29" 
    $P2804."add_method"($P2805, "add_parrot_vtable_mapping", $P2806)
    nqp_get_sc_object $P2807, "1304284944.723", 41
    get_how $P2808, $P2807
    nqp_get_sc_object $P2809, "1304284944.723", 41
    .const 'Sub' $P2810 = "99_1304284948.29" 
    $P2808."add_method"($P2809, "compose", $P2810)
    nqp_get_sc_object $P2811, "1304284944.723", 41
    get_how $P2812, $P2811
    nqp_get_sc_object $P2813, "1304284944.723", 41
    .const 'Sub' $P2814 = "103_1304284948.29" 
    $P2812."add_method"($P2813, "incorporate_multi_candidates", $P2814)
    nqp_get_sc_object $P2815, "1304284944.723", 41
    get_how $P2816, $P2815
    nqp_get_sc_object $P2817, "1304284944.723", 41
    .const 'Sub' $P2818 = "108_1304284948.29" 
    $P2816."add_method"($P2817, "publish_type_cache", $P2818)
    nqp_get_sc_object $P2819, "1304284944.723", 41
    get_how $P2820, $P2819
    nqp_get_sc_object $P2821, "1304284944.723", 41
    .const 'Sub' $P2822 = "111_1304284948.29" 
    $P2820."add_method"($P2821, "publish_method_cache", $P2822)
    nqp_get_sc_object $P2823, "1304284944.723", 41
    get_how $P2824, $P2823
    nqp_get_sc_object $P2825, "1304284944.723", 41
    .const 'Sub' $P2826 = "114_1304284948.29" 
    $P2824."add_method"($P2825, "publish_parrot_vtable_mapping", $P2826)
    nqp_get_sc_object $P2827, "1304284944.723", 41
    get_how $P2828, $P2827
    nqp_get_sc_object $P2829, "1304284944.723", 41
    .const 'Sub' $P2830 = "117_1304284948.29" 
    $P2828."add_method"($P2829, "parents", $P2830)
    nqp_get_sc_object $P2831, "1304284944.723", 41
    get_how $P2832, $P2831
    nqp_get_sc_object $P2833, "1304284944.723", 41
    .const 'Sub' $P2834 = "118_1304284948.29" 
    $P2832."add_method"($P2833, "roles", $P2834)
    nqp_get_sc_object $P2835, "1304284944.723", 41
    get_how $P2836, $P2835
    nqp_get_sc_object $P2837, "1304284944.723", 41
    .const 'Sub' $P2838 = "119_1304284948.29" 
    $P2836."add_method"($P2837, "methods", $P2838)
    nqp_get_sc_object $P2839, "1304284944.723", 41
    get_how $P2840, $P2839
    nqp_get_sc_object $P2841, "1304284944.723", 41
    .const 'Sub' $P2842 = "121_1304284948.29" 
    $P2840."add_method"($P2841, "method_table", $P2842)
    nqp_get_sc_object $P2843, "1304284944.723", 41
    get_how $P2844, $P2843
    nqp_get_sc_object $P2845, "1304284944.723", 41
    .const 'Sub' $P2846 = "122_1304284948.29" 
    $P2844."add_method"($P2845, "name", $P2846)
    nqp_get_sc_object $P2847, "1304284944.723", 41
    get_how $P2848, $P2847
    nqp_get_sc_object $P2849, "1304284944.723", 41
    .const 'Sub' $P2850 = "123_1304284948.29" 
    $P2848."add_method"($P2849, "attributes", $P2850)
    nqp_get_sc_object $P2851, "1304284944.723", 41
    get_how $P2852, $P2851
    nqp_get_sc_object $P2853, "1304284944.723", 41
    .const 'Sub' $P2854 = "125_1304284948.29" 
    $P2852."add_method"($P2853, "parrot_vtable_mappings", $P2854)
    nqp_get_sc_object $P2855, "1304284944.723", 41
    get_how $P2856, $P2855
    nqp_get_sc_object $P2857, "1304284944.723", 41
    .const 'Sub' $P2858 = "126_1304284948.29" 
    $P2856."add_method"($P2857, "isa", $P2858)
    nqp_get_sc_object $P2859, "1304284944.723", 41
    get_how $P2860, $P2859
    nqp_get_sc_object $P2861, "1304284944.723", 41
    .const 'Sub' $P2862 = "127_1304284948.29" 
    $P2860."add_method"($P2861, "does", $P2862)
    nqp_get_sc_object $P2863, "1304284944.723", 41
    get_how $P2864, $P2863
    nqp_get_sc_object $P2865, "1304284944.723", 41
    .const 'Sub' $P2866 = "128_1304284948.29" 
    $P2864."add_method"($P2865, "can", $P2866)
    nqp_get_sc_object $P2867, "1304284944.723", 41
    get_how $P2868, $P2867
    nqp_get_sc_object $P2869, "1304284944.723", 41
    .const 'Sub' $P2870 = "130_1304284948.29" 
    $P2868."add_method"($P2869, "find_method", $P2870)
    .const 'Sub' $P2871 = "76_1304284948.29" 
    $P2872 = $P2871."get_lexinfo"()
    nqp_get_sc_object $P2873, "1304284944.723", 41
    $P2872."set_static_lexpad_value"("$?PACKAGE", $P2873)
    .const 'Sub' $P2874 = "76_1304284948.29" 
    $P2875 = $P2874."get_lexinfo"()
    $P2875."finish_static_lexpad"()
    .const 'Sub' $P2876 = "76_1304284948.29" 
    $P2877 = $P2876."get_lexinfo"()
    nqp_get_sc_object $P2878, "1304284944.723", 41
    $P2877."set_static_lexpad_value"("$?CLASS", $P2878)
    .const 'Sub' $P2879 = "76_1304284948.29" 
    $P2880 = $P2879."get_lexinfo"()
    $P2880."finish_static_lexpad"()
    nqp_get_sc_object $P2881, "1304284944.723", 41
    get_how $P2882, $P2881
    nqp_get_sc_object $P2883, "1304284944.723", 41
    $P2882."compose"($P2883)
    nqp_get_sc_object $P2884, "__6MODEL_CORE__", 0
    $P2885 = $P2884."new_type"("NQPNativeHOW" :named("name"))
    nqp_set_sc_for_object $P2885, cur_sc
    nqp_set_sc_object "1304284944.723", 68, $P2885
    nqp_get_sc_object $P2886, "1304284944.723", 68
    nqp_get_sc_object $P2887, "1304284944.723", 0
    get_who $P2888, $P2887
    set $P2888["NQPNativeHOW"], $P2886
    .const 'Sub' $P2889 = "10_1304284948.29" 
    $P2890 = $P2889."get_lexinfo"()
    nqp_get_sc_object $P2891, "1304284944.723", 68
    $P2890."set_static_lexpad_value"("NQPNativeHOW", $P2891)
    .const 'Sub' $P2892 = "10_1304284948.29" 
    $P2893 = $P2892."get_lexinfo"()
    $P2893."finish_static_lexpad"()
    nqp_get_sc_object $P2894, "1304284944.723", 68
    get_how $P2895, $P2894
    nqp_get_sc_object $P2896, "1304284944.723", 68
    nqp_get_sc_object $P2897, "__6MODEL_CORE__", 2
    $P2898 = $P2897."new"("$!name" :named("name"))
    $P2895."add_attribute"($P2896, $P2898)
    nqp_get_sc_object $P2899, "1304284944.723", 68
    get_how $P2900, $P2899
    nqp_get_sc_object $P2901, "1304284944.723", 68
    nqp_get_sc_object $P2902, "__6MODEL_CORE__", 2
    $P2903 = $P2902."new"("$!composed" :named("name"))
    $P2900."add_attribute"($P2901, $P2903)
    nqp_get_sc_object $P2904, "1304284944.723", 68
    get_how $P2905, $P2904
    nqp_get_sc_object $P2906, "1304284944.723", 68
    .const 'Sub' $P2907 = "133_1304284948.29" 
    $P2905."add_method"($P2906, "new", $P2907)
    nqp_get_sc_object $P2908, "1304284944.723", 68
    get_how $P2909, $P2908
    nqp_get_sc_object $P2910, "1304284944.723", 68
    .const 'Sub' $P2911 = "134_1304284948.29" 
    $P2909."add_method"($P2910, "BUILD", $P2911)
    nqp_get_sc_object $P2912, "1304284944.723", 68
    get_how $P2913, $P2912
    nqp_get_sc_object $P2914, "1304284944.723", 68
    .const 'Sub' $P2915 = "135_1304284948.29" 
    $P2913."add_method"($P2914, "new_type", $P2915)
    nqp_get_sc_object $P2916, "1304284944.723", 68
    get_how $P2917, $P2916
    nqp_get_sc_object $P2918, "1304284944.723", 68
    .const 'Sub' $P2919 = "136_1304284948.29" 
    $P2917."add_method"($P2918, "add_method", $P2919)
    nqp_get_sc_object $P2920, "1304284944.723", 68
    get_how $P2921, $P2920
    nqp_get_sc_object $P2922, "1304284944.723", 68
    .const 'Sub' $P2923 = "137_1304284948.29" 
    $P2921."add_method"($P2922, "add_multi_method", $P2923)
    nqp_get_sc_object $P2924, "1304284944.723", 68
    get_how $P2925, $P2924
    nqp_get_sc_object $P2926, "1304284944.723", 68
    .const 'Sub' $P2927 = "138_1304284948.29" 
    $P2925."add_method"($P2926, "add_attribute", $P2927)
    nqp_get_sc_object $P2928, "1304284944.723", 68
    get_how $P2929, $P2928
    nqp_get_sc_object $P2930, "1304284944.723", 68
    .const 'Sub' $P2931 = "139_1304284948.29" 
    $P2929."add_method"($P2930, "compose", $P2931)
    nqp_get_sc_object $P2932, "1304284944.723", 68
    get_how $P2933, $P2932
    nqp_get_sc_object $P2934, "1304284944.723", 68
    .const 'Sub' $P2935 = "140_1304284948.29" 
    $P2933."add_method"($P2934, "name", $P2935)
    .const 'Sub' $P2936 = "132_1304284948.29" 
    $P2937 = $P2936."get_lexinfo"()
    nqp_get_sc_object $P2938, "1304284944.723", 68
    $P2937."set_static_lexpad_value"("$?PACKAGE", $P2938)
    .const 'Sub' $P2939 = "132_1304284948.29" 
    $P2940 = $P2939."get_lexinfo"()
    $P2940."finish_static_lexpad"()
    .const 'Sub' $P2941 = "132_1304284948.29" 
    $P2942 = $P2941."get_lexinfo"()
    nqp_get_sc_object $P2943, "1304284944.723", 68
    $P2942."set_static_lexpad_value"("$?CLASS", $P2943)
    .const 'Sub' $P2944 = "132_1304284948.29" 
    $P2945 = $P2944."get_lexinfo"()
    $P2945."finish_static_lexpad"()
    nqp_get_sc_object $P2946, "1304284944.723", 68
    get_how $P2947, $P2946
    nqp_get_sc_object $P2948, "1304284944.723", 68
    $P2947."compose"($P2948)
    nqp_get_sc_object $P2949, "__6MODEL_CORE__", 0
    $P2950 = $P2949."new_type"("NQPAttribute" :named("name"))
    nqp_set_sc_for_object $P2950, cur_sc
    nqp_set_sc_object "1304284944.723", 77, $P2950
    nqp_get_sc_object $P2951, "1304284944.723", 77
    nqp_get_sc_object $P2952, "1304284944.723", 0
    get_who $P2953, $P2952
    set $P2953["NQPAttribute"], $P2951
    .const 'Sub' $P2954 = "10_1304284948.29" 
    $P2955 = $P2954."get_lexinfo"()
    nqp_get_sc_object $P2956, "1304284944.723", 77
    $P2955."set_static_lexpad_value"("NQPAttribute", $P2956)
    .const 'Sub' $P2957 = "10_1304284948.29" 
    $P2958 = $P2957."get_lexinfo"()
    $P2958."finish_static_lexpad"()
    nqp_get_sc_object $P2959, "1304284944.723", 77
    get_how $P2960, $P2959
    nqp_get_sc_object $P2961, "1304284944.723", 77
    nqp_get_sc_object $P2962, "__6MODEL_CORE__", 2
    $P2963 = $P2962."new"("$!name" :named("name"))
    $P2960."add_attribute"($P2961, $P2963)
    nqp_get_sc_object $P2964, "1304284944.723", 77
    get_how $P2965, $P2964
    nqp_get_sc_object $P2966, "1304284944.723", 77
    nqp_get_sc_object $P2967, "__6MODEL_CORE__", 2
    $P2968 = $P2967."new"("$!type" :named("name"))
    $P2965."add_attribute"($P2966, $P2968)
    nqp_get_sc_object $P2969, "1304284944.723", 77
    get_how $P2970, $P2969
    nqp_get_sc_object $P2971, "1304284944.723", 77
    nqp_get_sc_object $P2972, "__6MODEL_CORE__", 2
    $P2973 = $P2972."new"("$!box_target" :named("name"))
    $P2970."add_attribute"($P2971, $P2973)
    nqp_get_sc_object $P2974, "1304284944.723", 77
    get_how $P2975, $P2974
    nqp_get_sc_object $P2976, "1304284944.723", 77
    .const 'Sub' $P2977 = "144_1304284948.29" 
    $P2975."add_method"($P2976, "new", $P2977)
    nqp_get_sc_object $P2978, "1304284944.723", 77
    get_how $P2979, $P2978
    nqp_get_sc_object $P2980, "1304284944.723", 77
    .const 'Sub' $P2981 = "145_1304284948.29" 
    $P2979."add_method"($P2980, "BUILD", $P2981)
    nqp_get_sc_object $P2982, "1304284944.723", 77
    get_how $P2983, $P2982
    nqp_get_sc_object $P2984, "1304284944.723", 77
    .const 'Sub' $P2985 = "146_1304284948.29" 
    $P2983."add_method"($P2984, "name", $P2985)
    nqp_get_sc_object $P2986, "1304284944.723", 77
    get_how $P2987, $P2986
    nqp_get_sc_object $P2988, "1304284944.723", 77
    .const 'Sub' $P2989 = "147_1304284948.29" 
    $P2987."add_method"($P2988, "type", $P2989)
    nqp_get_sc_object $P2990, "1304284944.723", 77
    get_how $P2991, $P2990
    nqp_get_sc_object $P2992, "1304284944.723", 77
    .const 'Sub' $P2993 = "148_1304284948.29" 
    $P2991."add_method"($P2992, "box_target", $P2993)
    nqp_get_sc_object $P2994, "1304284944.723", 77
    get_how $P2995, $P2994
    nqp_get_sc_object $P2996, "1304284944.723", 77
    .const 'Sub' $P2997 = "149_1304284948.29" 
    $P2995."add_method"($P2996, "compose", $P2997)
    nqp_get_sc_object $P2998, "1304284944.723", 77
    get_how $P2999, $P2998
    nqp_get_sc_object $P3000, "1304284944.723", 77
    .const 'Sub' $P3001 = "154_1304284948.29" 
    $P2999."add_method"($P3000, "has_mutator", $P3001)
    .const 'Sub' $P3002 = "141_1304284948.29" 
    $P3003 = $P3002."get_lexinfo"()
    nqp_get_sc_object $P3004, "1304284944.723", 77
    $P3003."set_static_lexpad_value"("$?PACKAGE", $P3004)
    .const 'Sub' $P3005 = "141_1304284948.29" 
    $P3006 = $P3005."get_lexinfo"()
    $P3006."finish_static_lexpad"()
    .const 'Sub' $P3007 = "141_1304284948.29" 
    $P3008 = $P3007."get_lexinfo"()
    nqp_get_sc_object $P3009, "1304284944.723", 77
    $P3008."set_static_lexpad_value"("$?CLASS", $P3009)
    .const 'Sub' $P3010 = "141_1304284948.29" 
    $P3011 = $P3010."get_lexinfo"()
    $P3011."finish_static_lexpad"()
    nqp_get_sc_object $P3012, "1304284944.723", 77
    get_how $P3013, $P3012
    nqp_get_sc_object $P3014, "1304284944.723", 77
    $P3013."compose"($P3014)
    nqp_get_sc_object $P3015, "__6MODEL_CORE__", 0
    $P3016 = $P3015."new_type"("NQPModuleHOW" :named("name"))
    nqp_set_sc_for_object $P3016, cur_sc
    nqp_set_sc_object "1304284944.723", 85, $P3016
    nqp_get_sc_object $P3017, "1304284944.723", 85
    nqp_get_sc_object $P3018, "1304284944.723", 0
    get_who $P3019, $P3018
    set $P3019["NQPModuleHOW"], $P3017
    .const 'Sub' $P3020 = "10_1304284948.29" 
    $P3021 = $P3020."get_lexinfo"()
    nqp_get_sc_object $P3022, "1304284944.723", 85
    $P3021."set_static_lexpad_value"("NQPModuleHOW", $P3022)
    .const 'Sub' $P3023 = "10_1304284948.29" 
    $P3024 = $P3023."get_lexinfo"()
    $P3024."finish_static_lexpad"()
    nqp_get_sc_object $P3025, "1304284944.723", 85
    get_how $P3026, $P3025
    nqp_get_sc_object $P3027, "1304284944.723", 85
    nqp_get_sc_object $P3028, "__6MODEL_CORE__", 2
    $P3029 = $P3028."new"("$!name" :named("name"))
    $P3026."add_attribute"($P3027, $P3029)
    nqp_get_sc_object $P3030, "1304284944.723", 85
    get_how $P3031, $P3030
    nqp_get_sc_object $P3032, "1304284944.723", 85
    nqp_get_sc_object $P3033, "__6MODEL_CORE__", 2
    $P3034 = $P3033."new"("$!composed" :named("name"))
    $P3031."add_attribute"($P3032, $P3034)
    nqp_get_sc_object $P3035, "1304284944.723", 85
    get_how $P3036, $P3035
    nqp_get_sc_object $P3037, "1304284944.723", 85
    .const 'Sub' $P3038 = "156_1304284948.29" 
    $P3036."add_method"($P3037, "new", $P3038)
    nqp_get_sc_object $P3039, "1304284944.723", 85
    get_how $P3040, $P3039
    nqp_get_sc_object $P3041, "1304284944.723", 85
    .const 'Sub' $P3042 = "157_1304284948.29" 
    $P3040."add_method"($P3041, "BUILD", $P3042)
    nqp_get_sc_object $P3043, "1304284944.723", 85
    get_how $P3044, $P3043
    nqp_get_sc_object $P3045, "1304284944.723", 85
    .const 'Sub' $P3046 = "158_1304284948.29" 
    $P3044."add_method"($P3045, "new_type", $P3046)
    nqp_get_sc_object $P3047, "1304284944.723", 85
    get_how $P3048, $P3047
    nqp_get_sc_object $P3049, "1304284944.723", 85
    .const 'Sub' $P3050 = "159_1304284948.29" 
    $P3048."add_method"($P3049, "add_method", $P3050)
    nqp_get_sc_object $P3051, "1304284944.723", 85
    get_how $P3052, $P3051
    nqp_get_sc_object $P3053, "1304284944.723", 85
    .const 'Sub' $P3054 = "160_1304284948.29" 
    $P3052."add_method"($P3053, "add_multi_method", $P3054)
    nqp_get_sc_object $P3055, "1304284944.723", 85
    get_how $P3056, $P3055
    nqp_get_sc_object $P3057, "1304284944.723", 85
    .const 'Sub' $P3058 = "161_1304284948.29" 
    $P3056."add_method"($P3057, "add_attribute", $P3058)
    nqp_get_sc_object $P3059, "1304284944.723", 85
    get_how $P3060, $P3059
    nqp_get_sc_object $P3061, "1304284944.723", 85
    .const 'Sub' $P3062 = "162_1304284948.29" 
    $P3060."add_method"($P3061, "compose", $P3062)
    nqp_get_sc_object $P3063, "1304284944.723", 85
    get_how $P3064, $P3063
    nqp_get_sc_object $P3065, "1304284944.723", 85
    .const 'Sub' $P3066 = "163_1304284948.29" 
    $P3064."add_method"($P3065, "name", $P3066)
    .const 'Sub' $P3067 = "155_1304284948.29" 
    $P3068 = $P3067."get_lexinfo"()
    nqp_get_sc_object $P3069, "1304284944.723", 85
    $P3068."set_static_lexpad_value"("$?PACKAGE", $P3069)
    .const 'Sub' $P3070 = "155_1304284948.29" 
    $P3071 = $P3070."get_lexinfo"()
    $P3071."finish_static_lexpad"()
    .const 'Sub' $P3072 = "155_1304284948.29" 
    $P3073 = $P3072."get_lexinfo"()
    nqp_get_sc_object $P3074, "1304284944.723", 85
    $P3073."set_static_lexpad_value"("$?CLASS", $P3074)
    .const 'Sub' $P3075 = "155_1304284948.29" 
    $P3076 = $P3075."get_lexinfo"()
    $P3076."finish_static_lexpad"()
    nqp_get_sc_object $P3077, "1304284944.723", 85
    get_how $P3078, $P3077
    nqp_get_sc_object $P3079, "1304284944.723", 85
    $P3078."compose"($P3079)
    nqp_get_sc_object $P3080, "__6MODEL_CORE__", 0
    $P3081 = $P3080."new_type"("EXPORTHOW" :named("name"))
    nqp_set_sc_for_object $P3081, cur_sc
    nqp_set_sc_object "1304284944.723", 94, $P3081
    .const 'Sub' $P3082 = "10_1304284948.29" 
    $P3083 = $P3082."get_lexinfo"()
    nqp_get_sc_object $P3084, "1304284944.723", 94
    $P3083."set_static_lexpad_value"("EXPORTHOW", $P3084)
    .const 'Sub' $P3085 = "10_1304284948.29" 
    $P3086 = $P3085."get_lexinfo"()
    $P3086."finish_static_lexpad"()
    .const 'Sub' $P3087 = "164_1304284948.29" 
    $P3088 = $P3087."get_lexinfo"()
    nqp_get_sc_object $P3089, "1304284944.723", 94
    $P3088."set_static_lexpad_value"("$?PACKAGE", $P3089)
    .const 'Sub' $P3090 = "164_1304284948.29" 
    $P3091 = $P3090."get_lexinfo"()
    $P3091."finish_static_lexpad"()
    .const 'Sub' $P3092 = "164_1304284948.29" 
    $P3093 = $P3092."get_lexinfo"()
    nqp_get_sc_object $P3094, "1304284944.723", 94
    $P3093."set_static_lexpad_value"("$?CLASS", $P3094)
    .const 'Sub' $P3095 = "164_1304284948.29" 
    $P3096 = $P3095."get_lexinfo"()
    $P3096."finish_static_lexpad"()
    nqp_get_sc_object $P3097, "1304284944.723", 94
    get_how $P3098, $P3097
    nqp_get_sc_object $P3099, "1304284944.723", 94
    $P3098."compose"($P3099)
  if_2357_end:
    nqp_get_sc_object $P3415, "1304284944.723", 0
    set_hll_global "GLOBAL", $P3415
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block24"  :subid("11_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 7
    .const 'Sub' $P28 = "12_1304284948.29" 
    capture_lex $P28
    .lex "$?PACKAGE", $P26
    .lex "$?CLASS", $P27
.annotate 'line', 8
    .const 'Sub' $P28 = "12_1304284948.29" 
    newclosure $P246, $P28
.annotate 'line', 7
    .return ($P246)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("12_1304284948.29") :outer("11_1304284948.29")
    .param pmc param_31
    .param pmc param_32
    .param pmc param_33
.annotate 'line', 8
    .const 'Sub' $P173 = "18_1304284948.29" 
    capture_lex $P173
    .const 'Sub' $P131 = "17_1304284948.29" 
    capture_lex $P131
    .const 'Sub' $P117 = "16_1304284948.29" 
    capture_lex $P117
    .const 'Sub' $P44 = "13_1304284948.29" 
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
    unless_null $P38, vivify_167
    $P38 = root_new ['parrot';'Hash']
  vivify_167:
.annotate 'line', 11
    find_lex $P40, "@roles"
    unless_null $P40, vivify_168
    $P40 = root_new ['parrot';'ResizablePMCArray']
  vivify_168:
    defined $I41, $P40
    unless $I41, for_undef_169
    iter $P39, $P40
    new $P105, 'ExceptionHandler'
    set_label $P105, loop104_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop104_test:
    unless $P39, loop104_done
    shift $P42, $P39
  loop104_redo:
    .const 'Sub' $P44 = "13_1304284948.29" 
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
  for_undef_169:
    find_lex $P107, "%target_meth_info"
    unless_null $P107, vivify_193
    $P107 = root_new ['parrot';'Hash']
  vivify_193:
.annotate 'line', 37
    find_lex $P108, "$target"
    unless_null $P108, vivify_194
    new $P108, "Undef"
  vivify_194:
    get_how $P109, $P108
    find_lex $P110, "$target"
    unless_null $P110, vivify_195
    new $P110, "Undef"
  vivify_195:
    $P111 = $P109."methods"($P110)
    store_lex "@target_meths", $P111
.annotate 'line', 38
    find_lex $P113, "@target_meths"
    unless_null $P113, vivify_196
    $P113 = root_new ['parrot';'ResizablePMCArray']
  vivify_196:
    defined $I114, $P113
    unless $I114, for_undef_197
    iter $P112, $P113
    new $P124, 'ExceptionHandler'
    set_label $P124, loop123_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop123_test:
    unless $P112, loop123_done
    shift $P115, $P112
  loop123_redo:
    .const 'Sub' $P117 = "16_1304284948.29" 
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
  for_undef_197:
.annotate 'line', 43
    find_lex $P127, "%meth_info"
    unless_null $P127, vivify_201
    $P127 = root_new ['parrot';'Hash']
  vivify_201:
    defined $I128, $P127
    unless $I128, for_undef_202
    iter $P126, $P127
    new $P165, 'ExceptionHandler'
    set_label $P165, loop164_handler
    $P165."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P165
  loop164_test:
    unless $P126, loop164_done
    shift $P129, $P126
  loop164_redo:
    .const 'Sub' $P131 = "17_1304284948.29" 
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
  for_undef_202:
    find_lex $P167, "@all_roles"
    unless_null $P167, vivify_219
    $P167 = root_new ['parrot';'ResizablePMCArray']
  vivify_219:
.annotate 'line', 63
    find_lex $P169, "@roles"
    unless_null $P169, vivify_220
    $P169 = root_new ['parrot';'ResizablePMCArray']
  vivify_220:
    defined $I170, $P169
    unless $I170, for_undef_221
    iter $P168, $P169
    new $P241, 'ExceptionHandler'
    set_label $P241, loop240_handler
    $P241."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P241
  loop240_test:
    unless $P168, loop240_done
    shift $P171, $P168
  loop240_redo:
    .const 'Sub' $P173 = "18_1304284948.29" 
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
  for_undef_221:
.annotate 'line', 92
    new $P243, "Exception"
    set $P243['type'], .CONTROL_RETURN
    find_lex $P244, "@all_roles"
    unless_null $P244, vivify_243
    $P244 = root_new ['parrot';'ResizablePMCArray']
  vivify_243:
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
.sub "_block43"  :anon :subid("13_1304284948.29") :outer("12_1304284948.29")
    .param pmc param_46
.annotate 'line', 11
    .const 'Sub' $P56 = "14_1304284948.29" 
    capture_lex $P56
.annotate 'line', 12
    $P45 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P45
    .lex "$_", param_46
    find_lex $P47, "$_"
    unless_null $P47, vivify_170
    new $P47, "Undef"
  vivify_170:
    get_how $P48, $P47
    find_lex $P49, "$_"
    unless_null $P49, vivify_171
    new $P49, "Undef"
  vivify_171:
    $P50 = $P48."methods"($P49)
    store_lex "@methods", $P50
.annotate 'line', 13
    find_lex $P52, "@methods"
    unless_null $P52, vivify_172
    $P52 = root_new ['parrot';'ResizablePMCArray']
  vivify_172:
    defined $I53, $P52
    unless $I53, for_undef_173
    iter $P51, $P52
    new $P102, 'ExceptionHandler'
    set_label $P102, loop101_handler
    $P102."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P102
  loop101_test:
    unless $P51, loop101_done
    shift $P54, $P51
  loop101_redo:
    .const 'Sub' $P56 = "14_1304284948.29" 
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
  for_undef_173:
.annotate 'line', 11
    .return ($P51)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block55"  :anon :subid("14_1304284948.29") :outer("13_1304284948.29")
    .param pmc param_61
.annotate 'line', 13
    .const 'Sub' $P84 = "15_1304284948.29" 
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
    unless_null $P62, vivify_174
    new $P62, "Undef"
  vivify_174:
    set $S63, $P62
    new $P64, 'String'
    set $P64, $S63
    store_lex "$name", $P64
.annotate 'line', 15
    find_lex $P65, "$_"
    unless_null $P65, vivify_175
    new $P65, "Undef"
  vivify_175:
    store_lex "$meth", $P65
    find_lex $P66, "@meth_list"
    unless_null $P66, vivify_176
    $P66 = root_new ['parrot';'ResizablePMCArray']
  vivify_176:
.annotate 'line', 17
    find_lex $P68, "$name"
    unless_null $P68, vivify_177
    new $P68, "Undef"
  vivify_177:
    find_lex $P69, "%meth_info"
    unless_null $P69, vivify_178
    $P69 = root_new ['parrot';'Hash']
  vivify_178:
    set $P70, $P69[$P68]
    unless_null $P70, vivify_179
    new $P70, "Undef"
  vivify_179:
    defined $I71, $P70
    if $I71, if_67
.annotate 'line', 21
    find_lex $P75, "@meth_list"
    unless_null $P75, vivify_180
    $P75 = root_new ['parrot';'ResizablePMCArray']
  vivify_180:
    find_lex $P76, "$name"
    unless_null $P76, vivify_181
    new $P76, "Undef"
  vivify_181:
    find_lex $P77, "%meth_info"
    unless_null $P77, vivify_182
    $P77 = root_new ['parrot';'Hash']
    store_lex "%meth_info", $P77
  vivify_182:
    set $P77[$P76], $P75
.annotate 'line', 20
    goto if_67_end
  if_67:
.annotate 'line', 18
    find_lex $P72, "$name"
    unless_null $P72, vivify_183
    new $P72, "Undef"
  vivify_183:
    find_lex $P73, "%meth_info"
    unless_null $P73, vivify_184
    $P73 = root_new ['parrot';'Hash']
  vivify_184:
    set $P74, $P73[$P72]
    unless_null $P74, vivify_185
    new $P74, "Undef"
  vivify_185:
    store_lex "@meth_list", $P74
  if_67_end:
.annotate 'line', 23
    new $P78, "Integer"
    assign $P78, 0
    store_lex "$found", $P78
.annotate 'line', 24
    find_lex $P80, "@meth_list"
    unless_null $P80, vivify_186
    $P80 = root_new ['parrot';'ResizablePMCArray']
  vivify_186:
    defined $I81, $P80
    unless $I81, for_undef_187
    iter $P79, $P80
    new $P93, 'ExceptionHandler'
    set_label $P93, loop92_handler
    $P93."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P93
  loop92_test:
    unless $P79, loop92_done
    shift $P82, $P79
  loop92_redo:
    .const 'Sub' $P84 = "15_1304284948.29" 
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
  for_undef_187:
.annotate 'line', 29
    find_lex $P97, "$found"
    unless_null $P97, vivify_190
    new $P97, "Undef"
  vivify_190:
    unless $P97, unless_96
    set $P95, $P97
    goto unless_96_end
  unless_96:
.annotate 'line', 30
    find_lex $P98, "@meth_list"
    unless_null $P98, vivify_191
    $P98 = root_new ['parrot';'ResizablePMCArray']
  vivify_191:
    find_lex $P99, "$meth"
    unless_null $P99, vivify_192
    new $P99, "Undef"
  vivify_192:
    $P100 = $P98."push"($P99)
.annotate 'line', 29
    set $P95, $P100
  unless_96_end:
.annotate 'line', 13
    .return ($P95)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block83"  :anon :subid("15_1304284948.29") :outer("14_1304284948.29")
    .param pmc param_85
.annotate 'line', 24
    .lex "$_", param_85
.annotate 'line', 25
    find_lex $P88, "$meth"
    unless_null $P88, vivify_188
    new $P88, "Undef"
  vivify_188:
    find_lex $P89, "$_"
    unless_null $P89, vivify_189
    new $P89, "Undef"
  vivify_189:
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
.sub "_block116"  :anon :subid("16_1304284948.29") :outer("12_1304284948.29")
    .param pmc param_118
.annotate 'line', 38
    .lex "$_", param_118
.annotate 'line', 39
    find_lex $P119, "$_"
    unless_null $P119, vivify_198
    new $P119, "Undef"
  vivify_198:
    find_lex $P120, "$_"
    unless_null $P120, vivify_199
    new $P120, "Undef"
  vivify_199:
    set $S121, $P120
    find_lex $P122, "%target_meth_info"
    unless_null $P122, vivify_200
    $P122 = root_new ['parrot';'Hash']
    store_lex "%target_meth_info", $P122
  vivify_200:
    set $P122[$S121], $P119
.annotate 'line', 38
    .return ($P119)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block130"  :anon :subid("17_1304284948.29") :outer("12_1304284948.29")
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
    unless_null $P135, vivify_203
    new $P135, "Undef"
  vivify_203:
    set $S136, $P135
    new $P137, 'String'
    set $P137, $S136
    store_lex "$name", $P137
.annotate 'line', 45
    find_lex $P138, "$name"
    unless_null $P138, vivify_204
    new $P138, "Undef"
  vivify_204:
    find_lex $P139, "%meth_info"
    unless_null $P139, vivify_205
    $P139 = root_new ['parrot';'Hash']
  vivify_205:
    set $P140, $P139[$P138]
    unless_null $P140, vivify_206
    new $P140, "Undef"
  vivify_206:
    store_lex "@add_meths", $P140
.annotate 'line', 49
    find_lex $P143, "$name"
    unless_null $P143, vivify_207
    new $P143, "Undef"
  vivify_207:
    find_lex $P144, "%target_meth_info"
    unless_null $P144, vivify_208
    $P144 = root_new ['parrot';'Hash']
  vivify_208:
    set $P145, $P144[$P143]
    unless_null $P145, vivify_209
    new $P145, "Undef"
  vivify_209:
    defined $I146, $P145
    unless $I146, unless_142
    new $P141, 'Integer'
    set $P141, $I146
    goto unless_142_end
  unless_142:
.annotate 'line', 51
    find_lex $P149, "@add_meths"
    unless_null $P149, vivify_210
    $P149 = root_new ['parrot';'ResizablePMCArray']
  vivify_210:
    set $N150, $P149
    iseq $I151, $N150, 1.0
    if $I151, if_148
.annotate 'line', 56
    find_lex $P159, "$target"
    unless_null $P159, vivify_211
    new $P159, "Undef"
  vivify_211:
    get_how $P160, $P159
    find_lex $P161, "$target"
    unless_null $P161, vivify_212
    new $P161, "Undef"
  vivify_212:
    find_lex $P162, "$name"
    unless_null $P162, vivify_213
    new $P162, "Undef"
  vivify_213:
    $P163 = $P160."add_collision"($P161, $P162)
.annotate 'line', 54
    set $P147, $P163
.annotate 'line', 51
    goto if_148_end
  if_148:
.annotate 'line', 52
    find_lex $P152, "$target"
    unless_null $P152, vivify_214
    new $P152, "Undef"
  vivify_214:
    get_how $P153, $P152
    find_lex $P154, "$target"
    unless_null $P154, vivify_215
    new $P154, "Undef"
  vivify_215:
    find_lex $P155, "$name"
    unless_null $P155, vivify_216
    new $P155, "Undef"
  vivify_216:
    find_lex $P156, "@add_meths"
    unless_null $P156, vivify_217
    $P156 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    set $P157, $P156[0]
    unless_null $P157, vivify_218
    new $P157, "Undef"
  vivify_218:
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
.sub "_block172"  :anon :subid("18_1304284948.29") :outer("12_1304284948.29")
    .param pmc param_176
.annotate 'line', 63
    .const 'Sub' $P187 = "19_1304284948.29" 
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
    unless_null $P177, vivify_222
    new $P177, "Undef"
  vivify_222:
    get_how $P178, $P177
    store_lex "$how", $P178
.annotate 'line', 67
    find_lex $P179, "$how"
    unless_null $P179, vivify_223
    new $P179, "Undef"
  vivify_223:
    find_lex $P180, "$_"
    unless_null $P180, vivify_224
    new $P180, "Undef"
  vivify_224:
    $P181 = $P179."attributes"($P180)
    store_lex "@attributes", $P181
.annotate 'line', 68
    find_lex $P183, "@attributes"
    unless_null $P183, vivify_225
    $P183 = root_new ['parrot';'ResizablePMCArray']
  vivify_225:
    defined $I184, $P183
    unless $I184, for_undef_226
    iter $P182, $P183
    new $P235, 'ExceptionHandler'
    set_label $P235, loop234_handler
    $P235."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P235
  loop234_test:
    unless $P182, loop234_done
    shift $P185, $P182
  loop234_redo:
    .const 'Sub' $P187 = "19_1304284948.29" 
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
  for_undef_226:
.annotate 'line', 89
    find_lex $P237, "@all_roles"
    unless_null $P237, vivify_241
    $P237 = root_new ['parrot';'ResizablePMCArray']
  vivify_241:
    find_lex $P238, "$_"
    unless_null $P238, vivify_242
    new $P238, "Undef"
  vivify_242:
    $P239 = $P237."push"($P238)
.annotate 'line', 63
    .return ($P239)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.include "except_types.pasm"
.sub "_block186"  :anon :subid("19_1304284948.29") :outer("18_1304284948.29")
    .param pmc param_191
.annotate 'line', 68
    .const 'Sub' $P203 = "20_1304284948.29" 
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
    unless_null $P192, vivify_227
    new $P192, "Undef"
  vivify_227:
    store_lex "$add_attr", $P192
.annotate 'line', 70
    new $P193, "Integer"
    assign $P193, 0
    store_lex "$skip", $P193
.annotate 'line', 71
    find_lex $P194, "$target"
    unless_null $P194, vivify_228
    new $P194, "Undef"
  vivify_228:
    get_how $P195, $P194
    find_lex $P196, "$target"
    unless_null $P196, vivify_229
    new $P196, "Undef"
  vivify_229:
    $P197 = $P195."attributes"($P196)
    store_lex "@cur_attrs", $P197
.annotate 'line', 72
    find_lex $P199, "@cur_attrs"
    unless_null $P199, vivify_230
    $P199 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    defined $I200, $P199
    unless $I200, for_undef_231
    iter $P198, $P199
    new $P224, 'ExceptionHandler'
    set_label $P224, loop223_handler
    $P224."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P224
  loop223_test:
    unless $P198, loop223_done
    shift $P201, $P198
  loop223_redo:
    .const 'Sub' $P203 = "20_1304284948.29" 
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
  for_undef_231:
.annotate 'line', 82
    find_lex $P228, "$skip"
    unless_null $P228, vivify_237
    new $P228, "Undef"
  vivify_237:
    unless $P228, unless_227
    set $P226, $P228
    goto unless_227_end
  unless_227:
.annotate 'line', 83
    find_lex $P229, "$target"
    unless_null $P229, vivify_238
    new $P229, "Undef"
  vivify_238:
    get_how $P230, $P229
    find_lex $P231, "$target"
    unless_null $P231, vivify_239
    new $P231, "Undef"
  vivify_239:
    find_lex $P232, "$add_attr"
    unless_null $P232, vivify_240
    new $P232, "Undef"
  vivify_240:
    $P233 = $P230."add_attribute"($P231, $P232)
.annotate 'line', 82
    set $P226, $P233
  unless_227_end:
.annotate 'line', 68
    .return ($P226)
.end


.HLL "nqp"

.namespace ["RoleToRoleApplier"]
.sub "_block202"  :anon :subid("20_1304284948.29") :outer("19_1304284948.29")
    .param pmc param_204
.annotate 'line', 72
    .lex "$_", param_204
.annotate 'line', 73
    find_lex $P207, "$_"
    unless_null $P207, vivify_232
    new $P207, "Undef"
  vivify_232:
    find_lex $P208, "$add_attr"
    unless_null $P208, vivify_233
    new $P208, "Undef"
  vivify_233:
    issame $I209, $P207, $P208
    if $I209, if_206
.annotate 'line', 77
    find_lex $P213, "$_"
    unless_null $P213, vivify_234
    new $P213, "Undef"
  vivify_234:
    $S214 = $P213."name"()
    find_lex $P215, "$add_attr"
    unless_null $P215, vivify_235
    new $P215, "Undef"
  vivify_235:
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
    unless_null $P219, vivify_236
    new $P219, "Undef"
  vivify_236:
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
.sub "_block247"  :subid("21_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 99
    .const 'Sub' $P500 = "41_1304284948.29" 
    capture_lex $P500
    .const 'Sub' $P494 = "40_1304284948.29" 
    capture_lex $P494
    .const 'Sub' $P470 = "38_1304284948.29" 
    capture_lex $P470
    .const 'Sub' $P464 = "37_1304284948.29" 
    capture_lex $P464
    .const 'Sub' $P458 = "36_1304284948.29" 
    capture_lex $P458
    .const 'Sub' $P452 = "35_1304284948.29" 
    capture_lex $P452
    .const 'Sub' $P428 = "33_1304284948.29" 
    capture_lex $P428
    .const 'Sub' $P379 = "31_1304284948.29" 
    capture_lex $P379
    .const 'Sub' $P366 = "30_1304284948.29" 
    capture_lex $P366
    .const 'Sub' $P353 = "29_1304284948.29" 
    capture_lex $P353
    .const 'Sub' $P349 = "28_1304284948.29" 
    capture_lex $P349
    .const 'Sub' $P328 = "27_1304284948.29" 
    capture_lex $P328
    .const 'Sub' $P307 = "26_1304284948.29" 
    capture_lex $P307
    .const 'Sub' $P288 = "25_1304284948.29" 
    capture_lex $P288
    .const 'Sub' $P272 = "24_1304284948.29" 
    capture_lex $P272
    .const 'Sub' $P262 = "23_1304284948.29" 
    capture_lex $P262
    .const 'Sub' $P251 = "22_1304284948.29" 
    capture_lex $P251
    .lex "$?PACKAGE", $P249
    .lex "$?CLASS", $P250
.annotate 'line', 238
    .const 'Sub' $P500 = "41_1304284948.29" 
    newclosure $P506, $P500
.annotate 'line', 99
    .return ($P506)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new"  :subid("22_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_252
    .param pmc param_253 :named("name")
    .param pmc param_254 :named("instance_of")
.annotate 'line', 131
    .lex "self", param_252
    .lex "$name", param_253
    .lex "$instance_of", param_254
.annotate 'line', 132
    new $P255, "Undef"
    .lex "$obj", $P255
    find_lex $P256, "self"
    repr_instance_of $P257, $P256
    store_lex "$obj", $P257
.annotate 'line', 133
    find_lex $P258, "$obj"
    unless_null $P258, vivify_244
    new $P258, "Undef"
  vivify_244:
    find_lex $P259, "$name"
    unless_null $P259, vivify_245
    new $P259, "Undef"
  vivify_245:
    find_lex $P260, "$instance_of"
    unless_null $P260, vivify_246
    new $P260, "Undef"
  vivify_246:
    $P258."BUILD"($P259 :named("name"), $P260 :named("instance_of"))
    find_lex $P261, "$obj"
    unless_null $P261, vivify_247
    new $P261, "Undef"
  vivify_247:
.annotate 'line', 131
    .return ($P261)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "BUILD"  :subid("23_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_263
    .param pmc param_264 :named("name")
    .param pmc param_265 :named("instance_of")
.annotate 'line', 137
    .lex "self", param_263
    .lex "$name", param_264
    .lex "$instance_of", param_265
.annotate 'line', 138
    find_lex $P266, "$name"
    unless_null $P266, vivify_248
    new $P266, "Undef"
  vivify_248:
    find_lex $P267, "self"
    find_lex $P268, "$?CLASS"
    setattribute $P267, $P268, "$!name", $P266
.annotate 'line', 139
    find_lex $P269, "$instance_of"
    unless_null $P269, vivify_249
    new $P269, "Undef"
  vivify_249:
    find_lex $P270, "self"
    find_lex $P271, "$?CLASS"
    setattribute $P270, $P271, "$!instance_of", $P269
.annotate 'line', 137
    .return ($P269)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "new_type"  :subid("24_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_273
    .param pmc param_278 :named("instance_of")
    .param pmc param_274 :optional :named("name")
    .param int has_param_274 :opt_flag
    .param pmc param_276 :optional :named("repr")
    .param int has_param_276 :opt_flag
.annotate 'line', 144
    .lex "self", param_273
    if has_param_274, optparam_250
    new $P275, "String"
    assign $P275, "<anon>"
    set param_274, $P275
  optparam_250:
    .lex "$name", param_274
    if has_param_276, optparam_251
    new $P277, "String"
    assign $P277, "P6opaque"
    set param_276, $P277
  optparam_251:
    .lex "$repr", param_276
    .lex "$instance_of", param_278
.annotate 'line', 145
    new $P279, "Undef"
    .lex "$metarole", $P279
    find_lex $P280, "self"
    find_lex $P281, "$name"
    unless_null $P281, vivify_252
    new $P281, "Undef"
  vivify_252:
    find_lex $P282, "$instance_of"
    unless_null $P282, vivify_253
    new $P282, "Undef"
  vivify_253:
    $P283 = $P280."new"($P281 :named("name"), $P282 :named("instance_of"))
    store_lex "$metarole", $P283
.annotate 'line', 146
    find_lex $P284, "$metarole"
    unless_null $P284, vivify_254
    new $P284, "Undef"
  vivify_254:
    find_lex $P285, "$repr"
    unless_null $P285, vivify_255
    new $P285, "Undef"
  vivify_255:
    set $S286, $P285
    repr_type_object_for $P287, $P284, $S286
.annotate 'line', 144
    .return ($P287)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_method"  :subid("25_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_289
    .param pmc param_290
    .param pmc param_291
    .param pmc param_292
.annotate 'line', 149
    .lex "self", param_289
    .lex "$obj", param_290
    .lex "$name", param_291
    .lex "$code_obj", param_292
.annotate 'line', 150
    find_lex $P294, "$name"
    unless_null $P294, vivify_256
    new $P294, "Undef"
  vivify_256:
    find_lex $P295, "self"
    find_lex $P296, "$?CLASS"
    getattribute $P297, $P295, $P296, "%!methods"
    unless_null $P297, vivify_257
    $P297 = root_new ['parrot';'Hash']
  vivify_257:
    set $P298, $P297[$P294]
    unless_null $P298, vivify_258
    new $P298, "Undef"
  vivify_258:
    unless $P298, if_293_end
.annotate 'line', 151
    new $P299, "String"
    assign $P299, "This role already has a method named "
    find_lex $P300, "$name"
    unless_null $P300, vivify_259
    new $P300, "Undef"
  vivify_259:
    concat $P301, $P299, $P300
    die $P301
  if_293_end:
.annotate 'line', 153
    find_lex $P302, "$code_obj"
    unless_null $P302, vivify_260
    new $P302, "Undef"
  vivify_260:
    find_lex $P303, "$name"
    unless_null $P303, vivify_261
    new $P303, "Undef"
  vivify_261:
    find_lex $P304, "self"
    find_lex $P305, "$?CLASS"
    getattribute $P306, $P304, $P305, "%!methods"
    unless_null $P306, vivify_262
    $P306 = root_new ['parrot';'Hash']
    setattribute $P304, $P305, "%!methods", $P306
  vivify_262:
    set $P306[$P303], $P302
.annotate 'line', 149
    .return ($P302)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_multi_method"  :subid("26_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_308
    .param pmc param_309
    .param pmc param_310
    .param pmc param_311
.annotate 'line', 156
    .lex "self", param_308
    .lex "$obj", param_309
    .lex "$name", param_310
    .lex "$code_obj", param_311
.annotate 'line', 157
    $P312 = root_new ['parrot';'Hash']
    .lex "%todo", $P312
.annotate 'line', 156
    find_lex $P313, "%todo"
    unless_null $P313, vivify_263
    $P313 = root_new ['parrot';'Hash']
  vivify_263:
.annotate 'line', 158
    find_lex $P314, "$name"
    unless_null $P314, vivify_264
    new $P314, "Undef"
  vivify_264:
    find_lex $P315, "%todo"
    unless_null $P315, vivify_265
    $P315 = root_new ['parrot';'Hash']
    store_lex "%todo", $P315
  vivify_265:
    set $P315["name"], $P314
.annotate 'line', 159
    find_lex $P316, "$code_obj"
    unless_null $P316, vivify_266
    new $P316, "Undef"
  vivify_266:
    find_lex $P317, "%todo"
    unless_null $P317, vivify_267
    $P317 = root_new ['parrot';'Hash']
    store_lex "%todo", $P317
  vivify_267:
    set $P317["code"], $P316
.annotate 'line', 160
    find_lex $P318, "%todo"
    unless_null $P318, vivify_268
    $P318 = root_new ['parrot';'Hash']
  vivify_268:
    find_lex $P319, "self"
    find_lex $P320, "$?CLASS"
    getattribute $P321, $P319, $P320, "@!multi_methods_to_incorporate"
    unless_null $P321, vivify_269
    $P321 = root_new ['parrot';'ResizablePMCArray']
  vivify_269:
    set $N322, $P321
    set $I323, $N322
    find_lex $P324, "self"
    find_lex $P325, "$?CLASS"
    getattribute $P326, $P324, $P325, "@!multi_methods_to_incorporate"
    unless_null $P326, vivify_270
    $P326 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P324, $P325, "@!multi_methods_to_incorporate", $P326
  vivify_270:
    set $P326[$I323], $P318
    find_lex $P327, "$code_obj"
    unless_null $P327, vivify_271
    new $P327, "Undef"
  vivify_271:
.annotate 'line', 156
    .return ($P327)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_attribute"  :subid("27_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_329
    .param pmc param_330
    .param pmc param_331
.annotate 'line', 164
    .lex "self", param_329
    .lex "$obj", param_330
    .lex "$meta_attr", param_331
.annotate 'line', 165
    new $P332, "Undef"
    .lex "$name", $P332
    find_lex $P333, "$meta_attr"
    unless_null $P333, vivify_272
    new $P333, "Undef"
  vivify_272:
    $P334 = $P333."name"()
    store_lex "$name", $P334
.annotate 'line', 166
    find_lex $P336, "$name"
    unless_null $P336, vivify_273
    new $P336, "Undef"
  vivify_273:
    find_lex $P337, "self"
    find_lex $P338, "$?CLASS"
    getattribute $P339, $P337, $P338, "%!attributes"
    unless_null $P339, vivify_274
    $P339 = root_new ['parrot';'Hash']
  vivify_274:
    set $P340, $P339[$P336]
    unless_null $P340, vivify_275
    new $P340, "Undef"
  vivify_275:
    unless $P340, if_335_end
.annotate 'line', 167
    new $P341, "String"
    assign $P341, "This role already has an attribute named "
    find_lex $P342, "$name"
    unless_null $P342, vivify_276
    new $P342, "Undef"
  vivify_276:
    concat $P343, $P341, $P342
    die $P343
  if_335_end:
.annotate 'line', 169
    find_lex $P344, "$meta_attr"
    unless_null $P344, vivify_277
    new $P344, "Undef"
  vivify_277:
    find_lex $P345, "$name"
    unless_null $P345, vivify_278
    new $P345, "Undef"
  vivify_278:
    find_lex $P346, "self"
    find_lex $P347, "$?CLASS"
    getattribute $P348, $P346, $P347, "%!attributes"
    unless_null $P348, vivify_279
    $P348 = root_new ['parrot';'Hash']
    setattribute $P346, $P347, "%!attributes", $P348
  vivify_279:
    set $P348[$P345], $P344
.annotate 'line', 164
    .return ($P344)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_parent"  :subid("28_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_350
    .param pmc param_351
    .param pmc param_352
.annotate 'line', 172
    .lex "self", param_350
    .lex "$obj", param_351
    .lex "$parent", param_352
.annotate 'line', 173
    die "A role cannot inherit from a class in NQP"
.annotate 'line', 172
    .return ()
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_role"  :subid("29_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356
.annotate 'line', 176
    .lex "self", param_354
    .lex "$obj", param_355
    .lex "$role", param_356
.annotate 'line', 177
    find_lex $P357, "$role"
    unless_null $P357, vivify_280
    new $P357, "Undef"
  vivify_280:
    find_lex $P358, "self"
    find_lex $P359, "$?CLASS"
    getattribute $P360, $P358, $P359, "@!roles"
    unless_null $P360, vivify_281
    $P360 = root_new ['parrot';'ResizablePMCArray']
  vivify_281:
    set $N361, $P360
    set $I362, $N361
    find_lex $P363, "self"
    find_lex $P364, "$?CLASS"
    getattribute $P365, $P363, $P364, "@!roles"
    unless_null $P365, vivify_282
    $P365 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P363, $P364, "@!roles", $P365
  vivify_282:
    set $P365[$I362], $P357
.annotate 'line', 176
    .return ($P357)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "add_collision"  :subid("30_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_367
    .param pmc param_368
    .param pmc param_369
.annotate 'line', 180
    .lex "self", param_367
    .lex "$obj", param_368
    .lex "$colliding_name", param_369
.annotate 'line', 181
    find_lex $P370, "$colliding_name"
    unless_null $P370, vivify_283
    new $P370, "Undef"
  vivify_283:
    find_lex $P371, "self"
    find_lex $P372, "$?CLASS"
    getattribute $P373, $P371, $P372, "@!collisions"
    unless_null $P373, vivify_284
    $P373 = root_new ['parrot';'ResizablePMCArray']
  vivify_284:
    set $N374, $P373
    set $I375, $N374
    find_lex $P376, "self"
    find_lex $P377, "$?CLASS"
    getattribute $P378, $P376, $P377, "@!collisions"
    unless_null $P378, vivify_285
    $P378 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P376, $P377, "@!collisions", $P378
  vivify_285:
    set $P378[$I375], $P370
.annotate 'line', 180
    .return ($P370)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("31_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_380
    .param pmc param_381
.annotate 'line', 185
    .const 'Sub' $P393 = "32_1304284948.29" 
    capture_lex $P393
    .lex "self", param_380
    .lex "$obj", param_381
.annotate 'line', 188
    find_lex $P383, "self"
    find_lex $P384, "$?CLASS"
    getattribute $P385, $P383, $P384, "@!roles"
    unless_null $P385, vivify_286
    $P385 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    unless $P385, if_382_end
.annotate 'line', 189
    find_lex $P387, "self"
    find_lex $P388, "$?CLASS"
    getattribute $P389, $P387, $P388, "@!roles"
    unless_null $P389, vivify_287
    $P389 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    defined $I390, $P389
    unless $I390, for_undef_288
    iter $P386, $P389
    new $P417, 'ExceptionHandler'
    set_label $P417, loop416_handler
    $P417."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P417
  loop416_test:
    unless $P386, loop416_done
    shift $P391, $P386
  loop416_redo:
    .const 'Sub' $P393 = "32_1304284948.29" 
    capture_lex $P393
    $P393($P391)
  loop416_next:
    goto loop416_test
  loop416_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P418, exception, 'type'
    eq $P418, .CONTROL_LOOP_NEXT, loop416_next
    eq $P418, .CONTROL_LOOP_REDO, loop416_redo
  loop416_done:
    pop_eh 
  for_undef_288:
.annotate 'line', 193
    find_lex $P419, "RoleToRoleApplier"
    find_lex $P420, "$obj"
    unless_null $P420, vivify_296
    new $P420, "Undef"
  vivify_296:
    find_lex $P421, "self"
    find_lex $P422, "$?CLASS"
    getattribute $P423, $P421, $P422, "@!roles"
    unless_null $P423, vivify_297
    $P423 = root_new ['parrot';'ResizablePMCArray']
  vivify_297:
    $P419."apply"($P420, $P423)
  if_382_end:
.annotate 'line', 197
    new $P424, "Integer"
    assign $P424, 1
    find_lex $P425, "self"
    find_lex $P426, "$?CLASS"
    setattribute $P425, $P426, "$!composed", $P424
    find_lex $P427, "$obj"
    unless_null $P427, vivify_298
    new $P427, "Undef"
  vivify_298:
.annotate 'line', 185
    .return ($P427)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block392"  :anon :subid("32_1304284948.29") :outer("31_1304284948.29")
    .param pmc param_394
.annotate 'line', 189
    .lex "$_", param_394
.annotate 'line', 190
    find_lex $P395, "$_"
    unless_null $P395, vivify_289
    new $P395, "Undef"
  vivify_289:
    find_lex $P396, "self"
    find_lex $P397, "$?CLASS"
    getattribute $P398, $P396, $P397, "@!done"
    unless_null $P398, vivify_290
    $P398 = root_new ['parrot';'ResizablePMCArray']
  vivify_290:
    set $N399, $P398
    set $I400, $N399
    find_lex $P401, "self"
    find_lex $P402, "$?CLASS"
    getattribute $P403, $P401, $P402, "@!done"
    unless_null $P403, vivify_291
    $P403 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P401, $P402, "@!done", $P403
  vivify_291:
    set $P403[$I400], $P395
.annotate 'line', 191
    find_lex $P404, "$_"
    unless_null $P404, vivify_292
    new $P404, "Undef"
  vivify_292:
    get_how $P405, $P404
    find_lex $P406, "$_"
    unless_null $P406, vivify_293
    new $P406, "Undef"
  vivify_293:
    $P407 = $P405."instance_of"($P406)
    find_lex $P408, "self"
    find_lex $P409, "$?CLASS"
    getattribute $P410, $P408, $P409, "@!done"
    unless_null $P410, vivify_294
    $P410 = root_new ['parrot';'ResizablePMCArray']
  vivify_294:
    set $N411, $P410
    set $I412, $N411
    find_lex $P413, "self"
    find_lex $P414, "$?CLASS"
    getattribute $P415, $P413, $P414, "@!done"
    unless_null $P415, vivify_295
    $P415 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P413, $P414, "@!done", $P415
  vivify_295:
    set $P415[$I412], $P407
.annotate 'line', 189
    .return ($P407)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("33_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_429
    .param pmc param_430
    .param pmc param_431 :optional :named("local")
    .param int has_param_431 :opt_flag
.annotate 'line', 206
    .const 'Sub' $P442 = "34_1304284948.29" 
    capture_lex $P442
    .lex "self", param_429
    .lex "$obj", param_430
    if has_param_431, optparam_299
    new $P432, "Undef"
    set param_431, $P432
  optparam_299:
    .lex "$local", param_431
.annotate 'line', 207
    $P433 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P433
.annotate 'line', 206
    find_lex $P434, "@meths"
    unless_null $P434, vivify_300
    $P434 = root_new ['parrot';'ResizablePMCArray']
  vivify_300:
.annotate 'line', 208
    find_lex $P436, "self"
    find_lex $P437, "$?CLASS"
    getattribute $P438, $P436, $P437, "%!methods"
    unless_null $P438, vivify_301
    $P438 = root_new ['parrot';'Hash']
  vivify_301:
    defined $I439, $P438
    unless $I439, for_undef_302
    iter $P435, $P438
    new $P449, 'ExceptionHandler'
    set_label $P449, loop448_handler
    $P449."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P449
  loop448_test:
    unless $P435, loop448_done
    shift $P440, $P435
  loop448_redo:
    .const 'Sub' $P442 = "34_1304284948.29" 
    capture_lex $P442
    $P442($P440)
  loop448_next:
    goto loop448_test
  loop448_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P450, exception, 'type'
    eq $P450, .CONTROL_LOOP_NEXT, loop448_next
    eq $P450, .CONTROL_LOOP_REDO, loop448_redo
  loop448_done:
    pop_eh 
  for_undef_302:
    find_lex $P451, "@meths"
    unless_null $P451, vivify_305
    $P451 = root_new ['parrot';'ResizablePMCArray']
  vivify_305:
.annotate 'line', 206
    .return ($P451)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block441"  :anon :subid("34_1304284948.29") :outer("33_1304284948.29")
    .param pmc param_443
.annotate 'line', 208
    .lex "$_", param_443
.annotate 'line', 209
    find_lex $P444, "@meths"
    unless_null $P444, vivify_303
    $P444 = root_new ['parrot';'ResizablePMCArray']
  vivify_303:
    find_lex $P445, "$_"
    unless_null $P445, vivify_304
    new $P445, "Undef"
  vivify_304:
    $P446 = $P445."value"()
    $P447 = $P444."push"($P446)
.annotate 'line', 208
    .return ($P447)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "method_table"  :subid("35_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_453
    .param pmc param_454
.annotate 'line', 214
    .lex "self", param_453
    .lex "$obj", param_454
    find_lex $P455, "self"
    find_lex $P456, "$?CLASS"
    getattribute $P457, $P455, $P456, "%!methods"
    unless_null $P457, vivify_306
    $P457 = root_new ['parrot';'Hash']
  vivify_306:
    .return ($P457)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "collisions"  :subid("36_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_459
    .param pmc param_460
.annotate 'line', 218
    .lex "self", param_459
    .lex "$obj", param_460
    find_lex $P461, "self"
    find_lex $P462, "$?CLASS"
    getattribute $P463, $P461, $P462, "@!collisions"
    unless_null $P463, vivify_307
    $P463 = root_new ['parrot';'ResizablePMCArray']
  vivify_307:
    .return ($P463)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "name"  :subid("37_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_465
    .param pmc param_466
.annotate 'line', 222
    .lex "self", param_465
    .lex "$obj", param_466
    find_lex $P467, "self"
    find_lex $P468, "$?CLASS"
    getattribute $P469, $P467, $P468, "$!name"
    unless_null $P469, vivify_308
    new $P469, "Undef"
  vivify_308:
    .return ($P469)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("38_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_471
    .param pmc param_472
    .param pmc param_473 :optional :named("local")
    .param int has_param_473 :opt_flag
.annotate 'line', 226
    .const 'Sub' $P484 = "39_1304284948.29" 
    capture_lex $P484
    .lex "self", param_471
    .lex "$obj", param_472
    if has_param_473, optparam_309
    new $P474, "Undef"
    set param_473, $P474
  optparam_309:
    .lex "$local", param_473
.annotate 'line', 227
    $P475 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P475
.annotate 'line', 226
    find_lex $P476, "@attrs"
    unless_null $P476, vivify_310
    $P476 = root_new ['parrot';'ResizablePMCArray']
  vivify_310:
.annotate 'line', 228
    find_lex $P478, "self"
    find_lex $P479, "$?CLASS"
    getattribute $P480, $P478, $P479, "%!attributes"
    unless_null $P480, vivify_311
    $P480 = root_new ['parrot';'Hash']
  vivify_311:
    defined $I481, $P480
    unless $I481, for_undef_312
    iter $P477, $P480
    new $P491, 'ExceptionHandler'
    set_label $P491, loop490_handler
    $P491."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P491
  loop490_test:
    unless $P477, loop490_done
    shift $P482, $P477
  loop490_redo:
    .const 'Sub' $P484 = "39_1304284948.29" 
    capture_lex $P484
    $P484($P482)
  loop490_next:
    goto loop490_test
  loop490_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P492, exception, 'type'
    eq $P492, .CONTROL_LOOP_NEXT, loop490_next
    eq $P492, .CONTROL_LOOP_REDO, loop490_redo
  loop490_done:
    pop_eh 
  for_undef_312:
    find_lex $P493, "@attrs"
    unless_null $P493, vivify_315
    $P493 = root_new ['parrot';'ResizablePMCArray']
  vivify_315:
.annotate 'line', 226
    .return ($P493)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "_block483"  :anon :subid("39_1304284948.29") :outer("38_1304284948.29")
    .param pmc param_485
.annotate 'line', 228
    .lex "$_", param_485
.annotate 'line', 229
    find_lex $P486, "@attrs"
    unless_null $P486, vivify_313
    $P486 = root_new ['parrot';'ResizablePMCArray']
  vivify_313:
    find_lex $P487, "$_"
    unless_null $P487, vivify_314
    new $P487, "Undef"
  vivify_314:
    $P488 = $P487."value"()
    $P489 = $P486."push"($P488)
.annotate 'line', 228
    .return ($P489)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "roles"  :subid("40_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_495
    .param pmc param_496
.annotate 'line', 234
    .lex "self", param_495
    .lex "$obj", param_496
    find_lex $P497, "self"
    find_lex $P498, "$?CLASS"
    getattribute $P499, $P497, $P498, "@!roles"
    unless_null $P499, vivify_316
    $P499 = root_new ['parrot';'ResizablePMCArray']
  vivify_316:
    .return ($P499)
.end


.HLL "nqp"

.namespace ["NQPConcreteRoleHOW"]
.sub "instance_of"  :subid("41_1304284948.29") :outer("21_1304284948.29")
    .param pmc param_501
    .param pmc param_502
.annotate 'line', 238
    .lex "self", param_501
    .lex "$obj", param_502
    find_lex $P503, "self"
    find_lex $P504, "$?CLASS"
    getattribute $P505, $P503, $P504, "$!instance_of"
    unless_null $P505, vivify_317
    new $P505, "Undef"
  vivify_317:
    .return ($P505)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block507"  :subid("42_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 244
    .const 'Sub' $P581 = "47_1304284948.29" 
    capture_lex $P581
    .const 'Sub' $P544 = "45_1304284948.29" 
    capture_lex $P544
    .const 'Sub' $P509 = "43_1304284948.29" 
    capture_lex $P509
.annotate 'line', 246
    .const 'Sub' $P509 = "43_1304284948.29" 
    newclosure $P543, $P509
    .lex "has_method", $P543
.annotate 'line', 254
    .const 'Sub' $P544 = "45_1304284948.29" 
    newclosure $P576, $P544
    .lex "has_attribute", $P576
.annotate 'line', 244
    .lex "$?PACKAGE", $P577
    .lex "$?CLASS", $P578
    find_lex $P579, "has_method"
    find_lex $P580, "has_attribute"
.annotate 'line', 262
    .const 'Sub' $P581 = "47_1304284948.29" 
    newclosure $P719, $P581
.annotate 'line', 244
    .return ($P719)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_method"  :subid("43_1304284948.29") :outer("42_1304284948.29")
    .param pmc param_512
    .param pmc param_513
    .param pmc param_514
.annotate 'line', 246
    .const 'Sub' $P526 = "44_1304284948.29" 
    capture_lex $P526
    new $P511, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P511, control_510
    push_eh $P511
    .lex "$target", param_512
    .lex "$name", param_513
    .lex "$local", param_514
.annotate 'line', 247
    $P515 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P515
    find_lex $P516, "$target"
    unless_null $P516, vivify_318
    new $P516, "Undef"
  vivify_318:
    get_how $P517, $P516
    find_lex $P518, "$target"
    unless_null $P518, vivify_319
    new $P518, "Undef"
  vivify_319:
    find_lex $P519, "$local"
    unless_null $P519, vivify_320
    new $P519, "Undef"
  vivify_320:
    $P520 = $P517."methods"($P518, $P519 :named("local"))
    store_lex "@methods", $P520
.annotate 'line', 248
    find_lex $P522, "@methods"
    unless_null $P522, vivify_321
    $P522 = root_new ['parrot';'ResizablePMCArray']
  vivify_321:
    defined $I523, $P522
    unless $I523, for_undef_322
    iter $P521, $P522
    new $P538, 'ExceptionHandler'
    set_label $P538, loop537_handler
    $P538."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P538
  loop537_test:
    unless $P521, loop537_done
    shift $P524, $P521
  loop537_redo:
    .const 'Sub' $P526 = "44_1304284948.29" 
    capture_lex $P526
    $P526($P524)
  loop537_next:
    goto loop537_test
  loop537_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P539, exception, 'type'
    eq $P539, .CONTROL_LOOP_NEXT, loop537_next
    eq $P539, .CONTROL_LOOP_REDO, loop537_redo
  loop537_done:
    pop_eh 
  for_undef_322:
.annotate 'line', 251
    new $P540, "Exception"
    set $P540['type'], .CONTROL_RETURN
    new $P541, "Integer"
    assign $P541, 0
    setattribute $P540, 'payload', $P541
    throw $P540
.annotate 'line', 246
    .return ()
  control_510:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P542, exception, "payload"
    .return ($P542)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block525"  :anon :subid("44_1304284948.29") :outer("43_1304284948.29")
    .param pmc param_527
.annotate 'line', 248
    .lex "$_", param_527
.annotate 'line', 249
    find_lex $P530, "$_"
    unless_null $P530, vivify_323
    new $P530, "Undef"
  vivify_323:
    set $S531, $P530
    find_lex $P532, "$name"
    unless_null $P532, vivify_324
    new $P532, "Undef"
  vivify_324:
    set $S533, $P532
    iseq $I534, $S531, $S533
    if $I534, if_529
    new $P528, 'Integer'
    set $P528, $I534
    goto if_529_end
  if_529:
    new $P535, "Exception"
    set $P535['type'], .CONTROL_RETURN
    new $P536, "Integer"
    assign $P536, 1
    setattribute $P535, 'payload', $P536
    throw $P535
  if_529_end:
.annotate 'line', 248
    .return ($P528)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "has_attribute"  :subid("45_1304284948.29") :outer("42_1304284948.29")
    .param pmc param_547
    .param pmc param_548
.annotate 'line', 254
    .const 'Sub' $P559 = "46_1304284948.29" 
    capture_lex $P559
    new $P546, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P546, control_545
    push_eh $P546
    .lex "$target", param_547
    .lex "$name", param_548
.annotate 'line', 255
    $P549 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P549
    find_lex $P550, "$target"
    unless_null $P550, vivify_325
    new $P550, "Undef"
  vivify_325:
    get_how $P551, $P550
    find_lex $P552, "$target"
    unless_null $P552, vivify_326
    new $P552, "Undef"
  vivify_326:
    $P553 = $P551."attributes"($P552, 1 :named("local"))
    store_lex "@attributes", $P553
.annotate 'line', 256
    find_lex $P555, "@attributes"
    unless_null $P555, vivify_327
    $P555 = root_new ['parrot';'ResizablePMCArray']
  vivify_327:
    defined $I556, $P555
    unless $I556, for_undef_328
    iter $P554, $P555
    new $P571, 'ExceptionHandler'
    set_label $P571, loop570_handler
    $P571."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P571
  loop570_test:
    unless $P554, loop570_done
    shift $P557, $P554
  loop570_redo:
    .const 'Sub' $P559 = "46_1304284948.29" 
    capture_lex $P559
    $P559($P557)
  loop570_next:
    goto loop570_test
  loop570_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P572, exception, 'type'
    eq $P572, .CONTROL_LOOP_NEXT, loop570_next
    eq $P572, .CONTROL_LOOP_REDO, loop570_redo
  loop570_done:
    pop_eh 
  for_undef_328:
.annotate 'line', 259
    new $P573, "Exception"
    set $P573['type'], .CONTROL_RETURN
    new $P574, "Integer"
    assign $P574, 0
    setattribute $P573, 'payload', $P574
    throw $P573
.annotate 'line', 254
    .return ()
  control_545:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P575, exception, "payload"
    .return ($P575)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "_block558"  :anon :subid("46_1304284948.29") :outer("45_1304284948.29")
    .param pmc param_560
.annotate 'line', 256
    .lex "$_", param_560
.annotate 'line', 257
    find_lex $P563, "$_"
    unless_null $P563, vivify_329
    new $P563, "Undef"
  vivify_329:
    $S564 = $P563."name"()
    find_lex $P565, "$name"
    unless_null $P565, vivify_330
    new $P565, "Undef"
  vivify_330:
    set $S566, $P565
    iseq $I567, $S564, $S566
    if $I567, if_562
    new $P561, 'Integer'
    set $P561, $I567
    goto if_562_end
  if_562:
    new $P568, "Exception"
    set $P568['type'], .CONTROL_RETURN
    new $P569, "Integer"
    assign $P569, 1
    setattribute $P568, 'payload', $P569
    throw $P568
  if_562_end:
.annotate 'line', 256
    .return ($P561)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.include "except_types.pasm"
.sub "apply"  :subid("47_1304284948.29") :outer("42_1304284948.29")
    .param pmc param_582
    .param pmc param_583
    .param pmc param_584
.annotate 'line', 262
    .const 'Sub' $P690 = "51_1304284948.29" 
    capture_lex $P690
    .const 'Sub' $P664 = "50_1304284948.29" 
    capture_lex $P664
    .const 'Sub' $P635 = "49_1304284948.29" 
    capture_lex $P635
    .const 'Sub' $P615 = "48_1304284948.29" 
    capture_lex $P615
    .lex "self", param_582
    .lex "$target", param_583
    .lex "@roles", param_584
.annotate 'line', 265
    new $P585, "Undef"
    .lex "$to_compose", $P585
.annotate 'line', 266
    new $P586, "Undef"
    .lex "$to_compose_meta", $P586
.annotate 'line', 281
    $P587 = root_new ['parrot';'ResizablePMCArray']
    .lex "@collisions", $P587
.annotate 'line', 290
    $P588 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P588
.annotate 'line', 298
    $P589 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attributes", $P589
.annotate 'line', 310
    $P590 = root_new ['parrot';'ResizablePMCArray']
    .lex "@done", $P590
.annotate 'line', 262
    find_lex $P591, "$to_compose"
    unless_null $P591, vivify_331
    new $P591, "Undef"
  vivify_331:
    find_lex $P592, "$to_compose_meta"
    unless_null $P592, vivify_332
    new $P592, "Undef"
  vivify_332:
.annotate 'line', 267
    find_lex $P594, "@roles"
    unless_null $P594, vivify_333
    $P594 = root_new ['parrot';'ResizablePMCArray']
  vivify_333:
    set $N595, $P594
    iseq $I596, $N595, 1.0
    if $I596, if_593
.annotate 'line', 272
    find_lex $P601, "NQPConcreteRoleHOW"
    find_lex $P602, "$?PACKAGE"
    get_who $P603, $P602
    set $P606, $P603["NQPMu"]
    unless_null $P606, vivify_334
    get_hll_global $P604, "GLOBAL"
    get_who $P605, $P604
    set $P606, $P605["NQPMu"]
  vivify_334:
    $P607 = $P601."new_type"($P606 :named("instance_of"))
    store_lex "$to_compose", $P607
.annotate 'line', 273
    find_lex $P608, "$to_compose"
    unless_null $P608, vivify_335
    new $P608, "Undef"
  vivify_335:
    get_how $P609, $P608
    store_lex "$to_compose_meta", $P609
.annotate 'line', 274
    find_lex $P611, "@roles"
    unless_null $P611, vivify_336
    $P611 = root_new ['parrot';'ResizablePMCArray']
  vivify_336:
    defined $I612, $P611
    unless $I612, for_undef_337
    iter $P610, $P611
    new $P622, 'ExceptionHandler'
    set_label $P622, loop621_handler
    $P622."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P622
  loop621_test:
    unless $P610, loop621_done
    shift $P613, $P610
  loop621_redo:
    .const 'Sub' $P615 = "48_1304284948.29" 
    capture_lex $P615
    $P615($P613)
  loop621_next:
    goto loop621_test
  loop621_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P623, exception, 'type'
    eq $P623, .CONTROL_LOOP_NEXT, loop621_next
    eq $P623, .CONTROL_LOOP_REDO, loop621_redo
  loop621_done:
    pop_eh 
  for_undef_337:
.annotate 'line', 277
    find_lex $P624, "$to_compose_meta"
    unless_null $P624, vivify_341
    new $P624, "Undef"
  vivify_341:
    find_lex $P625, "$to_compose"
    unless_null $P625, vivify_342
    new $P625, "Undef"
  vivify_342:
    $P626 = $P624."compose"($P625)
    store_lex "$to_compose", $P626
.annotate 'line', 271
    goto if_593_end
  if_593:
.annotate 'line', 268
    find_lex $P597, "@roles"
    unless_null $P597, vivify_343
    $P597 = root_new ['parrot';'ResizablePMCArray']
  vivify_343:
    set $P598, $P597[0]
    unless_null $P598, vivify_344
    new $P598, "Undef"
  vivify_344:
    store_lex "$to_compose", $P598
.annotate 'line', 269
    find_lex $P599, "$to_compose"
    unless_null $P599, vivify_345
    new $P599, "Undef"
  vivify_345:
    get_how $P600, $P599
    store_lex "$to_compose_meta", $P600
  if_593_end:
.annotate 'line', 281
    find_lex $P627, "$to_compose_meta"
    unless_null $P627, vivify_346
    new $P627, "Undef"
  vivify_346:
    find_lex $P628, "$to_compose"
    unless_null $P628, vivify_347
    new $P628, "Undef"
  vivify_347:
    $P629 = $P627."collisions"($P628)
    store_lex "@collisions", $P629
.annotate 'line', 282
    find_lex $P631, "@collisions"
    unless_null $P631, vivify_348
    $P631 = root_new ['parrot';'ResizablePMCArray']
  vivify_348:
    defined $I632, $P631
    unless $I632, for_undef_349
    iter $P630, $P631
    new $P654, 'ExceptionHandler'
    set_label $P654, loop653_handler
    $P654."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P654
  loop653_test:
    unless $P630, loop653_done
    shift $P633, $P630
  loop653_redo:
    .const 'Sub' $P635 = "49_1304284948.29" 
    capture_lex $P635
    $P635($P633)
  loop653_next:
    goto loop653_test
  loop653_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P655, exception, 'type'
    eq $P655, .CONTROL_LOOP_NEXT, loop653_next
    eq $P655, .CONTROL_LOOP_REDO, loop653_redo
  loop653_done:
    pop_eh 
  for_undef_349:
.annotate 'line', 290
    find_lex $P656, "$to_compose_meta"
    unless_null $P656, vivify_355
    new $P656, "Undef"
  vivify_355:
    find_lex $P657, "$to_compose"
    unless_null $P657, vivify_356
    new $P657, "Undef"
  vivify_356:
    $P658 = $P656."methods"($P657)
    store_lex "@methods", $P658
.annotate 'line', 291
    find_lex $P660, "@methods"
    unless_null $P660, vivify_357
    $P660 = root_new ['parrot';'ResizablePMCArray']
  vivify_357:
    defined $I661, $P660
    unless $I661, for_undef_358
    iter $P659, $P660
    new $P680, 'ExceptionHandler'
    set_label $P680, loop679_handler
    $P680."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P680
  loop679_test:
    unless $P659, loop679_done
    shift $P662, $P659
  loop679_redo:
    .const 'Sub' $P664 = "50_1304284948.29" 
    capture_lex $P664
    $P664($P662)
  loop679_next:
    goto loop679_test
  loop679_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P681, exception, 'type'
    eq $P681, .CONTROL_LOOP_NEXT, loop679_next
    eq $P681, .CONTROL_LOOP_REDO, loop679_redo
  loop679_done:
    pop_eh 
  for_undef_358:
.annotate 'line', 298
    find_lex $P682, "$to_compose_meta"
    unless_null $P682, vivify_365
    new $P682, "Undef"
  vivify_365:
    find_lex $P683, "$to_compose"
    unless_null $P683, vivify_366
    new $P683, "Undef"
  vivify_366:
    $P684 = $P682."attributes"($P683)
    store_lex "@attributes", $P684
.annotate 'line', 299
    find_lex $P686, "@attributes"
    unless_null $P686, vivify_367
    $P686 = root_new ['parrot';'ResizablePMCArray']
  vivify_367:
    defined $I687, $P686
    unless $I687, for_undef_368
    iter $P685, $P686
    new $P714, 'ExceptionHandler'
    set_label $P714, loop713_handler
    $P714."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P714
  loop713_test:
    unless $P685, loop713_done
    shift $P688, $P685
  loop713_redo:
    .const 'Sub' $P690 = "51_1304284948.29" 
    capture_lex $P690
    $P690($P688)
  loop713_next:
    goto loop713_test
  loop713_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P715, exception, 'type'
    eq $P715, .CONTROL_LOOP_NEXT, loop713_next
    eq $P715, .CONTROL_LOOP_REDO, loop713_redo
  loop713_done:
    pop_eh 
  for_undef_368:
    find_lex $P716, "@done"
    unless_null $P716, vivify_377
    $P716 = root_new ['parrot';'ResizablePMCArray']
  vivify_377:
.annotate 'line', 311
    find_lex $P717, "$to_compose"
    unless_null $P717, vivify_378
    new $P717, "Undef"
  vivify_378:
    find_lex $P718, "@done"
    unless_null $P718, vivify_379
    $P718 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@done", $P718
  vivify_379:
    set $P718[0], $P717
.annotate 'line', 262
    .return ($P717)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block614"  :anon :subid("48_1304284948.29") :outer("47_1304284948.29")
    .param pmc param_616
.annotate 'line', 274
    .lex "$_", param_616
.annotate 'line', 275
    find_lex $P617, "$to_compose_meta"
    unless_null $P617, vivify_338
    new $P617, "Undef"
  vivify_338:
    find_lex $P618, "$to_compose"
    unless_null $P618, vivify_339
    new $P618, "Undef"
  vivify_339:
    find_lex $P619, "$_"
    unless_null $P619, vivify_340
    new $P619, "Undef"
  vivify_340:
    $P620 = $P617."add_role"($P618, $P619)
.annotate 'line', 274
    .return ($P620)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block634"  :anon :subid("49_1304284948.29") :outer("47_1304284948.29")
    .param pmc param_636
.annotate 'line', 282
    .lex "$_", param_636
.annotate 'line', 283
    find_lex $P639, "$target"
    unless_null $P639, vivify_350
    new $P639, "Undef"
  vivify_350:
    find_lex $P640, "$_"
    unless_null $P640, vivify_351
    new $P640, "Undef"
  vivify_351:
    set $S641, $P640
    $P642 = "has_method"($P639, $S641, 1)
    unless $P642, unless_638
    set $P637, $P642
    goto unless_638_end
  unless_638:
.annotate 'line', 284
    new $P643, 'String'
    set $P643, "Method '"
    find_lex $P644, "$_"
    unless_null $P644, vivify_352
    new $P644, "Undef"
  vivify_352:
    concat $P645, $P643, $P644
    concat $P646, $P645, "' collides and a resolution must be provided by the class '"
.annotate 'line', 285
    find_lex $P647, "$target"
    unless_null $P647, vivify_353
    new $P647, "Undef"
  vivify_353:
    get_how $P648, $P647
    find_lex $P649, "$target"
    unless_null $P649, vivify_354
    new $P649, "Undef"
  vivify_354:
    $S650 = $P648."name"($P649)
    concat $P651, $P646, $S650
.annotate 'line', 284
    concat $P652, $P651, "'"
.annotate 'line', 285
    die $P652
  unless_638_end:
.annotate 'line', 282
    .return ($P637)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block663"  :anon :subid("50_1304284948.29") :outer("47_1304284948.29")
    .param pmc param_665
.annotate 'line', 291
    .lex "$_", param_665
.annotate 'line', 292
    find_lex $P668, "$target"
    unless_null $P668, vivify_359
    new $P668, "Undef"
  vivify_359:
    find_lex $P669, "$_"
    unless_null $P669, vivify_360
    new $P669, "Undef"
  vivify_360:
    set $S670, $P669
    $P671 = "has_method"($P668, $S670, 0)
    unless $P671, unless_667
    set $P666, $P671
    goto unless_667_end
  unless_667:
.annotate 'line', 293
    find_lex $P672, "$target"
    unless_null $P672, vivify_361
    new $P672, "Undef"
  vivify_361:
    get_how $P673, $P672
    find_lex $P674, "$target"
    unless_null $P674, vivify_362
    new $P674, "Undef"
  vivify_362:
    find_lex $P675, "$_"
    unless_null $P675, vivify_363
    new $P675, "Undef"
  vivify_363:
    set $S676, $P675
    find_lex $P677, "$_"
    unless_null $P677, vivify_364
    new $P677, "Undef"
  vivify_364:
    $P678 = $P673."add_method"($P674, $S676, $P677)
.annotate 'line', 292
    set $P666, $P678
  unless_667_end:
.annotate 'line', 291
    .return ($P666)
.end


.HLL "nqp"

.namespace ["RoleToClassApplier"]
.sub "_block689"  :anon :subid("51_1304284948.29") :outer("47_1304284948.29")
    .param pmc param_691
.annotate 'line', 299
    .lex "$_", param_691
.annotate 'line', 300
    find_lex $P693, "$target"
    unless_null $P693, vivify_369
    new $P693, "Undef"
  vivify_369:
    find_lex $P694, "$_"
    unless_null $P694, vivify_370
    new $P694, "Undef"
  vivify_370:
    $P695 = $P694."name"()
    $P696 = "has_attribute"($P693, $P695)
    unless $P696, if_692_end
.annotate 'line', 301
    new $P697, "String"
    assign $P697, "Attribute '"
    find_lex $P698, "$_"
    unless_null $P698, vivify_371
    new $P698, "Undef"
  vivify_371:
    $S699 = $P698."name"()
    concat $P700, $P697, $S699
    concat $P701, $P700, "' already exists in the class '"
.annotate 'line', 302
    find_lex $P702, "$target"
    unless_null $P702, vivify_372
    new $P702, "Undef"
  vivify_372:
    get_how $P703, $P702
    find_lex $P704, "$target"
    unless_null $P704, vivify_373
    new $P704, "Undef"
  vivify_373:
    $S705 = $P703."name"($P704)
    concat $P706, $P701, $S705
.annotate 'line', 301
    concat $P707, $P706, "', but a role also wishes to compose it"
.annotate 'line', 302
    die $P707
  if_692_end:
.annotate 'line', 304
    find_lex $P708, "$target"
    unless_null $P708, vivify_374
    new $P708, "Undef"
  vivify_374:
    get_how $P709, $P708
    find_lex $P710, "$target"
    unless_null $P710, vivify_375
    new $P710, "Undef"
  vivify_375:
    find_lex $P711, "$_"
    unless_null $P711, vivify_376
    new $P711, "Undef"
  vivify_376:
    $P712 = $P709."add_attribute"($P710, $P711)
.annotate 'line', 299
    .return ($P712)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block720"  :subid("52_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 320
    .const 'Sub' $P1015 = "75_1304284948.29" 
    capture_lex $P1015
    .const 'Sub' $P991 = "73_1304284948.29" 
    capture_lex $P991
    .const 'Sub' $P985 = "72_1304284948.29" 
    capture_lex $P985
    .const 'Sub' $P979 = "71_1304284948.29" 
    capture_lex $P979
    .const 'Sub' $P955 = "69_1304284948.29" 
    capture_lex $P955
    .const 'Sub' $P849 = "64_1304284948.29" 
    capture_lex $P849
    .const 'Sub' $P846 = "63_1304284948.29" 
    capture_lex $P846
    .const 'Sub' $P839 = "62_1304284948.29" 
    capture_lex $P839
    .const 'Sub' $P826 = "61_1304284948.29" 
    capture_lex $P826
    .const 'Sub' $P822 = "60_1304284948.29" 
    capture_lex $P822
    .const 'Sub' $P801 = "59_1304284948.29" 
    capture_lex $P801
    .const 'Sub' $P780 = "58_1304284948.29" 
    capture_lex $P780
    .const 'Sub' $P761 = "57_1304284948.29" 
    capture_lex $P761
    .const 'Sub' $P754 = "56_1304284948.29" 
    capture_lex $P754
    .const 'Sub' $P739 = "55_1304284948.29" 
    capture_lex $P739
    .const 'Sub' $P733 = "54_1304284948.29" 
    capture_lex $P733
    .const 'Sub' $P724 = "53_1304284948.29" 
    capture_lex $P724
    .lex "$?PACKAGE", $P722
    .lex "$?CLASS", $P723
.annotate 'line', 485
    .const 'Sub' $P1015 = "75_1304284948.29" 
    newclosure $P1021, $P1015
.annotate 'line', 320
    .return ($P1021)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new"  :subid("53_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_725
    .param pmc param_726 :named("name")
.annotate 'line', 350
    .lex "self", param_725
    .lex "$name", param_726
.annotate 'line', 351
    new $P727, "Undef"
    .lex "$obj", $P727
    find_lex $P728, "self"
    repr_instance_of $P729, $P728
    store_lex "$obj", $P729
.annotate 'line', 352
    find_lex $P730, "$obj"
    unless_null $P730, vivify_380
    new $P730, "Undef"
  vivify_380:
    find_lex $P731, "$name"
    unless_null $P731, vivify_381
    new $P731, "Undef"
  vivify_381:
    $P730."BUILD"($P731 :named("name"))
    find_lex $P732, "$obj"
    unless_null $P732, vivify_382
    new $P732, "Undef"
  vivify_382:
.annotate 'line', 350
    .return ($P732)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "BUILD"  :subid("54_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_734
    .param pmc param_735 :named("name")
.annotate 'line', 356
    .lex "self", param_734
    .lex "$name", param_735
.annotate 'line', 357
    find_lex $P736, "$name"
    unless_null $P736, vivify_383
    new $P736, "Undef"
  vivify_383:
    find_lex $P737, "self"
    find_lex $P738, "$?CLASS"
    setattribute $P737, $P738, "$!name", $P736
.annotate 'line', 356
    .return ($P736)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "new_type"  :subid("55_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_740
    .param pmc param_741 :optional :named("name")
    .param int has_param_741 :opt_flag
    .param pmc param_743 :optional :named("repr")
    .param int has_param_743 :opt_flag
.annotate 'line', 362
    .lex "self", param_740
    if has_param_741, optparam_384
    new $P742, "String"
    assign $P742, "<anon>"
    set param_741, $P742
  optparam_384:
    .lex "$name", param_741
    if has_param_743, optparam_385
    new $P744, "String"
    assign $P744, "P6opaque"
    set param_743, $P744
  optparam_385:
    .lex "$repr", param_743
.annotate 'line', 363
    new $P745, "Undef"
    .lex "$metarole", $P745
    find_lex $P746, "self"
    find_lex $P747, "$name"
    unless_null $P747, vivify_386
    new $P747, "Undef"
  vivify_386:
    $P748 = $P746."new"($P747 :named("name"))
    store_lex "$metarole", $P748
.annotate 'line', 365
    find_lex $P749, "$metarole"
    unless_null $P749, vivify_387
    new $P749, "Undef"
  vivify_387:
    find_lex $P750, "$repr"
    unless_null $P750, vivify_388
    new $P750, "Undef"
  vivify_388:
    set $S751, $P750
    repr_type_object_for $P752, $P749, $S751
    $P753 = root_new ['parrot';'Hash']
    set_who $P752, $P753
.annotate 'line', 362
    .return ($P752)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "set_body_block"  :subid("56_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_755
    .param pmc param_756
    .param pmc param_757
.annotate 'line', 369
    .lex "self", param_755
    .lex "$obj", param_756
    .lex "$body_block", param_757
.annotate 'line', 370
    find_lex $P758, "$body_block"
    unless_null $P758, vivify_389
    new $P758, "Undef"
  vivify_389:
    find_lex $P759, "self"
    find_lex $P760, "$?CLASS"
    setattribute $P759, $P760, "$!body_block", $P758
.annotate 'line', 369
    .return ($P758)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_method"  :subid("57_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_762
    .param pmc param_763
    .param pmc param_764
    .param pmc param_765
.annotate 'line', 373
    .lex "self", param_762
    .lex "$obj", param_763
    .lex "$name", param_764
    .lex "$code_obj", param_765
.annotate 'line', 374
    find_lex $P767, "$name"
    unless_null $P767, vivify_390
    new $P767, "Undef"
  vivify_390:
    find_lex $P768, "self"
    find_lex $P769, "$?CLASS"
    getattribute $P770, $P768, $P769, "%!methods"
    unless_null $P770, vivify_391
    $P770 = root_new ['parrot';'Hash']
  vivify_391:
    set $P771, $P770[$P767]
    unless_null $P771, vivify_392
    new $P771, "Undef"
  vivify_392:
    unless $P771, if_766_end
.annotate 'line', 375
    new $P772, "String"
    assign $P772, "This role already has a method named "
    find_lex $P773, "$name"
    unless_null $P773, vivify_393
    new $P773, "Undef"
  vivify_393:
    concat $P774, $P772, $P773
    die $P774
  if_766_end:
.annotate 'line', 377
    find_lex $P775, "$code_obj"
    unless_null $P775, vivify_394
    new $P775, "Undef"
  vivify_394:
    find_lex $P776, "$name"
    unless_null $P776, vivify_395
    new $P776, "Undef"
  vivify_395:
    find_lex $P777, "self"
    find_lex $P778, "$?CLASS"
    getattribute $P779, $P777, $P778, "%!methods"
    unless_null $P779, vivify_396
    $P779 = root_new ['parrot';'Hash']
    setattribute $P777, $P778, "%!methods", $P779
  vivify_396:
    set $P779[$P776], $P775
.annotate 'line', 373
    .return ($P775)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_multi_method"  :subid("58_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_781
    .param pmc param_782
    .param pmc param_783
    .param pmc param_784
.annotate 'line', 380
    .lex "self", param_781
    .lex "$obj", param_782
    .lex "$name", param_783
    .lex "$code_obj", param_784
.annotate 'line', 381
    $P785 = root_new ['parrot';'Hash']
    .lex "%todo", $P785
.annotate 'line', 380
    find_lex $P786, "%todo"
    unless_null $P786, vivify_397
    $P786 = root_new ['parrot';'Hash']
  vivify_397:
.annotate 'line', 382
    find_lex $P787, "$name"
    unless_null $P787, vivify_398
    new $P787, "Undef"
  vivify_398:
    find_lex $P788, "%todo"
    unless_null $P788, vivify_399
    $P788 = root_new ['parrot';'Hash']
    store_lex "%todo", $P788
  vivify_399:
    set $P788["name"], $P787
.annotate 'line', 383
    find_lex $P789, "$code_obj"
    unless_null $P789, vivify_400
    new $P789, "Undef"
  vivify_400:
    find_lex $P790, "%todo"
    unless_null $P790, vivify_401
    $P790 = root_new ['parrot';'Hash']
    store_lex "%todo", $P790
  vivify_401:
    set $P790["code"], $P789
.annotate 'line', 384
    find_lex $P791, "%todo"
    unless_null $P791, vivify_402
    $P791 = root_new ['parrot';'Hash']
  vivify_402:
    find_lex $P792, "self"
    find_lex $P793, "$?CLASS"
    getattribute $P794, $P792, $P793, "@!multi_methods_to_incorporate"
    unless_null $P794, vivify_403
    $P794 = root_new ['parrot';'ResizablePMCArray']
  vivify_403:
    set $N795, $P794
    set $I796, $N795
    find_lex $P797, "self"
    find_lex $P798, "$?CLASS"
    getattribute $P799, $P797, $P798, "@!multi_methods_to_incorporate"
    unless_null $P799, vivify_404
    $P799 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P797, $P798, "@!multi_methods_to_incorporate", $P799
  vivify_404:
    set $P799[$I796], $P791
    find_lex $P800, "$code_obj"
    unless_null $P800, vivify_405
    new $P800, "Undef"
  vivify_405:
.annotate 'line', 380
    .return ($P800)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_attribute"  :subid("59_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_802
    .param pmc param_803
    .param pmc param_804
.annotate 'line', 388
    .lex "self", param_802
    .lex "$obj", param_803
    .lex "$meta_attr", param_804
.annotate 'line', 389
    new $P805, "Undef"
    .lex "$name", $P805
    find_lex $P806, "$meta_attr"
    unless_null $P806, vivify_406
    new $P806, "Undef"
  vivify_406:
    $P807 = $P806."name"()
    store_lex "$name", $P807
.annotate 'line', 390
    find_lex $P809, "$name"
    unless_null $P809, vivify_407
    new $P809, "Undef"
  vivify_407:
    find_lex $P810, "self"
    find_lex $P811, "$?CLASS"
    getattribute $P812, $P810, $P811, "%!attributes"
    unless_null $P812, vivify_408
    $P812 = root_new ['parrot';'Hash']
  vivify_408:
    set $P813, $P812[$P809]
    unless_null $P813, vivify_409
    new $P813, "Undef"
  vivify_409:
    unless $P813, if_808_end
.annotate 'line', 391
    new $P814, "String"
    assign $P814, "This role already has an attribute named "
    find_lex $P815, "$name"
    unless_null $P815, vivify_410
    new $P815, "Undef"
  vivify_410:
    concat $P816, $P814, $P815
    die $P816
  if_808_end:
.annotate 'line', 393
    find_lex $P817, "$meta_attr"
    unless_null $P817, vivify_411
    new $P817, "Undef"
  vivify_411:
    find_lex $P818, "$name"
    unless_null $P818, vivify_412
    new $P818, "Undef"
  vivify_412:
    find_lex $P819, "self"
    find_lex $P820, "$?CLASS"
    getattribute $P821, $P819, $P820, "%!attributes"
    unless_null $P821, vivify_413
    $P821 = root_new ['parrot';'Hash']
    setattribute $P819, $P820, "%!attributes", $P821
  vivify_413:
    set $P821[$P818], $P817
.annotate 'line', 388
    .return ($P817)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_parent"  :subid("60_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_823
    .param pmc param_824
    .param pmc param_825
.annotate 'line', 396
    .lex "self", param_823
    .lex "$obj", param_824
    .lex "$parent", param_825
.annotate 'line', 397
    die "A role cannot inherit from a class"
.annotate 'line', 396
    .return ()
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "add_role"  :subid("61_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_827
    .param pmc param_828
    .param pmc param_829
.annotate 'line', 400
    .lex "self", param_827
    .lex "$obj", param_828
    .lex "$role", param_829
.annotate 'line', 401
    find_lex $P830, "$role"
    unless_null $P830, vivify_414
    new $P830, "Undef"
  vivify_414:
    find_lex $P831, "self"
    find_lex $P832, "$?CLASS"
    getattribute $P833, $P831, $P832, "@!roles"
    unless_null $P833, vivify_415
    $P833 = root_new ['parrot';'ResizablePMCArray']
  vivify_415:
    set $N834, $P833
    set $I835, $N834
    find_lex $P836, "self"
    find_lex $P837, "$?CLASS"
    getattribute $P838, $P836, $P837, "@!roles"
    unless_null $P838, vivify_416
    $P838 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P836, $P837, "@!roles", $P838
  vivify_416:
    set $P838[$I835], $P830
.annotate 'line', 400
    .return ($P830)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "compose"  :subid("62_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_840
    .param pmc param_841
.annotate 'line', 405
    .lex "self", param_840
    .lex "$obj", param_841
.annotate 'line', 406
    new $P842, "Integer"
    assign $P842, 1
    find_lex $P843, "self"
    find_lex $P844, "$?CLASS"
    setattribute $P843, $P844, "$!composed", $P842
    find_lex $P845, "$obj"
    unless_null $P845, vivify_417
    new $P845, "Undef"
  vivify_417:
.annotate 'line', 405
    .return ($P845)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "parametric"  :subid("63_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_847
    .param pmc param_848
.annotate 'line', 416
    .lex "self", param_847
    .lex "$obj", param_848
    .return (1)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "instantiate"  :subid("64_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_852
    .param pmc param_853
    .param pmc param_854
.annotate 'line', 422
    .const 'Sub' $P933 = "68_1304284948.29" 
    capture_lex $P933
    .const 'Sub' $P912 = "67_1304284948.29" 
    capture_lex $P912
    .const 'Sub' $P891 = "66_1304284948.29" 
    capture_lex $P891
    .const 'Sub' $P873 = "65_1304284948.29" 
    capture_lex $P873
    new $P851, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P851, control_850
    push_eh $P851
    .lex "self", param_852
    .lex "$obj", param_853
    .lex "$class_arg", param_854
.annotate 'line', 428
    new $P855, "Undef"
    .lex "$irole", $P855
.annotate 'line', 425
    find_lex $P856, "self"
    find_lex $P857, "$?CLASS"
    getattribute $P858, $P856, $P857, "$!body_block"
    unless_null $P858, vivify_418
    new $P858, "Undef"
  vivify_418:
    find_lex $P859, "$class_arg"
    unless_null $P859, vivify_419
    new $P859, "Undef"
  vivify_419:
    $P858($P859)
.annotate 'line', 428
    find_lex $P860, "NQPConcreteRoleHOW"
    find_lex $P861, "self"
    find_lex $P862, "$?CLASS"
    getattribute $P863, $P861, $P862, "$!name"
    unless_null $P863, vivify_420
    new $P863, "Undef"
  vivify_420:
    find_lex $P864, "$obj"
    unless_null $P864, vivify_421
    new $P864, "Undef"
  vivify_421:
    $P865 = $P860."new_type"($P863 :named("name"), $P864 :named("instance_of"))
    store_lex "$irole", $P865
.annotate 'line', 432
    find_lex $P867, "self"
    find_lex $P868, "$?CLASS"
    getattribute $P869, $P867, $P868, "%!attributes"
    unless_null $P869, vivify_422
    $P869 = root_new ['parrot';'Hash']
  vivify_422:
    defined $I870, $P869
    unless $I870, for_undef_423
    iter $P866, $P869
    new $P882, 'ExceptionHandler'
    set_label $P882, loop881_handler
    $P882."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P882
  loop881_test:
    unless $P866, loop881_done
    shift $P871, $P866
  loop881_redo:
    .const 'Sub' $P873 = "65_1304284948.29" 
    capture_lex $P873
    $P873($P871)
  loop881_next:
    goto loop881_test
  loop881_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P883, exception, 'type'
    eq $P883, .CONTROL_LOOP_NEXT, loop881_next
    eq $P883, .CONTROL_LOOP_REDO, loop881_redo
  loop881_done:
    pop_eh 
  for_undef_423:
.annotate 'line', 438
    find_lex $P885, "self"
    find_lex $P886, "$?CLASS"
    getattribute $P887, $P885, $P886, "%!methods"
    unless_null $P887, vivify_427
    $P887 = root_new ['parrot';'Hash']
  vivify_427:
    defined $I888, $P887
    unless $I888, for_undef_428
    iter $P884, $P887
    new $P903, 'ExceptionHandler'
    set_label $P903, loop902_handler
    $P903."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P903
  loop902_test:
    unless $P884, loop902_done
    shift $P889, $P884
  loop902_redo:
    .const 'Sub' $P891 = "66_1304284948.29" 
    capture_lex $P891
    $P891($P889)
  loop902_next:
    goto loop902_test
  loop902_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P904, exception, 'type'
    eq $P904, .CONTROL_LOOP_NEXT, loop902_next
    eq $P904, .CONTROL_LOOP_REDO, loop902_redo
  loop902_done:
    pop_eh 
  for_undef_428:
.annotate 'line', 441
    find_lex $P906, "self"
    find_lex $P907, "$?CLASS"
    getattribute $P908, $P906, $P907, "@!multi_methods_to_incorporate"
    unless_null $P908, vivify_433
    $P908 = root_new ['parrot';'ResizablePMCArray']
  vivify_433:
    defined $I909, $P908
    unless $I909, for_undef_434
    iter $P905, $P908
    new $P924, 'ExceptionHandler'
    set_label $P924, loop923_handler
    $P924."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P924
  loop923_test:
    unless $P905, loop923_done
    shift $P910, $P905
  loop923_redo:
    .const 'Sub' $P912 = "67_1304284948.29" 
    capture_lex $P912
    $P912($P910)
  loop923_next:
    goto loop923_test
  loop923_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P925, exception, 'type'
    eq $P925, .CONTROL_LOOP_NEXT, loop923_next
    eq $P925, .CONTROL_LOOP_REDO, loop923_redo
  loop923_done:
    pop_eh 
  for_undef_434:
.annotate 'line', 446
    find_lex $P927, "self"
    find_lex $P928, "$?CLASS"
    getattribute $P929, $P927, $P928, "@!roles"
    unless_null $P929, vivify_441
    $P929 = root_new ['parrot';'ResizablePMCArray']
  vivify_441:
    defined $I930, $P929
    unless $I930, for_undef_442
    iter $P926, $P929
    new $P947, 'ExceptionHandler'
    set_label $P947, loop946_handler
    $P947."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P947
  loop946_test:
    unless $P926, loop946_done
    shift $P931, $P926
  loop946_redo:
    .const 'Sub' $P933 = "68_1304284948.29" 
    capture_lex $P933
    $P933($P931)
  loop946_next:
    goto loop946_test
  loop946_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P948, exception, 'type'
    eq $P948, .CONTROL_LOOP_NEXT, loop946_next
    eq $P948, .CONTROL_LOOP_REDO, loop946_redo
  loop946_done:
    pop_eh 
  for_undef_442:
.annotate 'line', 452
    find_lex $P949, "$irole"
    unless_null $P949, vivify_449
    new $P949, "Undef"
  vivify_449:
    get_how $P950, $P949
    find_lex $P951, "$irole"
    unless_null $P951, vivify_450
    new $P951, "Undef"
  vivify_450:
    $P950."compose"($P951)
.annotate 'line', 453
    new $P952, "Exception"
    set $P952['type'], .CONTROL_RETURN
    find_lex $P953, "$irole"
    unless_null $P953, vivify_451
    new $P953, "Undef"
  vivify_451:
    setattribute $P952, 'payload', $P953
    throw $P952
.annotate 'line', 422
    .return ()
  control_850:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P954, exception, "payload"
    .return ($P954)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block872"  :anon :subid("65_1304284948.29") :outer("64_1304284948.29")
    .param pmc param_874
.annotate 'line', 432
    .lex "$_", param_874
.annotate 'line', 433
    find_lex $P875, "$irole"
    unless_null $P875, vivify_424
    new $P875, "Undef"
  vivify_424:
    get_how $P876, $P875
    find_lex $P877, "$irole"
    unless_null $P877, vivify_425
    new $P877, "Undef"
  vivify_425:
    find_lex $P878, "$_"
    unless_null $P878, vivify_426
    new $P878, "Undef"
  vivify_426:
    $P879 = $P878."value"()
    $P880 = $P876."add_attribute"($P877, $P879)
.annotate 'line', 432
    .return ($P880)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block890"  :anon :subid("66_1304284948.29") :outer("64_1304284948.29")
    .param pmc param_892
.annotate 'line', 438
    .lex "$_", param_892
.annotate 'line', 439
    find_lex $P893, "$irole"
    unless_null $P893, vivify_429
    new $P893, "Undef"
  vivify_429:
    get_how $P894, $P893
    find_lex $P895, "$irole"
    unless_null $P895, vivify_430
    new $P895, "Undef"
  vivify_430:
    find_lex $P896, "$_"
    unless_null $P896, vivify_431
    new $P896, "Undef"
  vivify_431:
    $P897 = $P896."key"()
    find_lex $P898, "$_"
    unless_null $P898, vivify_432
    new $P898, "Undef"
  vivify_432:
    $P899 = $P898."value"()
    clone $P900, $P899
    $P901 = $P894."add_method"($P895, $P897, $P900)
.annotate 'line', 438
    .return ($P901)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block911"  :anon :subid("67_1304284948.29") :outer("64_1304284948.29")
    .param pmc param_913
.annotate 'line', 441
    .lex "$_", param_913
.annotate 'line', 442
    find_lex $P914, "$irole"
    unless_null $P914, vivify_435
    new $P914, "Undef"
  vivify_435:
    get_how $P915, $P914
    find_lex $P916, "$irole"
    unless_null $P916, vivify_436
    new $P916, "Undef"
  vivify_436:
    find_lex $P917, "$_"
    unless_null $P917, vivify_437
    $P917 = root_new ['parrot';'Hash']
  vivify_437:
    set $P918, $P917["name"]
    unless_null $P918, vivify_438
    new $P918, "Undef"
  vivify_438:
    find_lex $P919, "$_"
    unless_null $P919, vivify_439
    $P919 = root_new ['parrot';'Hash']
  vivify_439:
    set $P920, $P919["code"]
    unless_null $P920, vivify_440
    new $P920, "Undef"
  vivify_440:
    clone $P921, $P920
    $P922 = $P915."add_multi_method"($P916, $P918, $P921)
.annotate 'line', 441
    .return ($P922)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block932"  :anon :subid("68_1304284948.29") :outer("64_1304284948.29")
    .param pmc param_935
.annotate 'line', 447
    new $P934, "Undef"
    .lex "$instantiated", $P934
    .lex "$_", param_935
    find_lex $P936, "$irole"
    unless_null $P936, vivify_443
    new $P936, "Undef"
  vivify_443:
    get_how $P937, $P936
    find_lex $P938, "$irole"
    unless_null $P938, vivify_444
    new $P938, "Undef"
  vivify_444:
    find_lex $P939, "$class_arg"
    unless_null $P939, vivify_445
    new $P939, "Undef"
  vivify_445:
    $P940 = $P937."instantiate"($P938, $P939)
    store_lex "$instantiated", $P940
.annotate 'line', 448
    find_lex $P941, "$irole"
    unless_null $P941, vivify_446
    new $P941, "Undef"
  vivify_446:
    get_how $P942, $P941
    find_lex $P943, "$irole"
    unless_null $P943, vivify_447
    new $P943, "Undef"
  vivify_447:
    find_lex $P944, "$instantiated"
    unless_null $P944, vivify_448
    new $P944, "Undef"
  vivify_448:
    $P945 = $P942."add_role"($P943, $P944)
.annotate 'line', 446
    .return ($P945)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("69_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_956
    .param pmc param_957
    .param pmc param_958 :optional :named("local")
    .param int has_param_958 :opt_flag
.annotate 'line', 461
    .const 'Sub' $P969 = "70_1304284948.29" 
    capture_lex $P969
    .lex "self", param_956
    .lex "$obj", param_957
    if has_param_958, optparam_452
    new $P959, "Undef"
    set param_958, $P959
  optparam_452:
    .lex "$local", param_958
.annotate 'line', 462
    $P960 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P960
.annotate 'line', 461
    find_lex $P961, "@meths"
    unless_null $P961, vivify_453
    $P961 = root_new ['parrot';'ResizablePMCArray']
  vivify_453:
.annotate 'line', 463
    find_lex $P963, "self"
    find_lex $P964, "$?CLASS"
    getattribute $P965, $P963, $P964, "%!methods"
    unless_null $P965, vivify_454
    $P965 = root_new ['parrot';'Hash']
  vivify_454:
    defined $I966, $P965
    unless $I966, for_undef_455
    iter $P962, $P965
    new $P976, 'ExceptionHandler'
    set_label $P976, loop975_handler
    $P976."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P976
  loop975_test:
    unless $P962, loop975_done
    shift $P967, $P962
  loop975_redo:
    .const 'Sub' $P969 = "70_1304284948.29" 
    capture_lex $P969
    $P969($P967)
  loop975_next:
    goto loop975_test
  loop975_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P977, exception, 'type'
    eq $P977, .CONTROL_LOOP_NEXT, loop975_next
    eq $P977, .CONTROL_LOOP_REDO, loop975_redo
  loop975_done:
    pop_eh 
  for_undef_455:
    find_lex $P978, "@meths"
    unless_null $P978, vivify_458
    $P978 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
.annotate 'line', 461
    .return ($P978)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block968"  :anon :subid("70_1304284948.29") :outer("69_1304284948.29")
    .param pmc param_970
.annotate 'line', 463
    .lex "$_", param_970
.annotate 'line', 464
    find_lex $P971, "@meths"
    unless_null $P971, vivify_456
    $P971 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    find_lex $P972, "$_"
    unless_null $P972, vivify_457
    new $P972, "Undef"
  vivify_457:
    $P973 = $P972."value"()
    $P974 = $P971."push"($P973)
.annotate 'line', 463
    .return ($P974)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "method_table"  :subid("71_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_980
    .param pmc param_981
.annotate 'line', 469
    .lex "self", param_980
    .lex "$obj", param_981
    find_lex $P982, "self"
    find_lex $P983, "$?CLASS"
    getattribute $P984, $P982, $P983, "%!methods"
    unless_null $P984, vivify_459
    $P984 = root_new ['parrot';'Hash']
  vivify_459:
    .return ($P984)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "name"  :subid("72_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_986
    .param pmc param_987
.annotate 'line', 473
    .lex "self", param_986
    .lex "$obj", param_987
    find_lex $P988, "self"
    find_lex $P989, "$?CLASS"
    getattribute $P990, $P988, $P989, "$!name"
    unless_null $P990, vivify_460
    new $P990, "Undef"
  vivify_460:
    .return ($P990)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("73_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_992
    .param pmc param_993
    .param pmc param_994 :optional :named("local")
    .param int has_param_994 :opt_flag
.annotate 'line', 477
    .const 'Sub' $P1005 = "74_1304284948.29" 
    capture_lex $P1005
    .lex "self", param_992
    .lex "$obj", param_993
    if has_param_994, optparam_461
    new $P995, "Undef"
    set param_994, $P995
  optparam_461:
    .lex "$local", param_994
.annotate 'line', 478
    $P996 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P996
.annotate 'line', 477
    find_lex $P997, "@attrs"
    unless_null $P997, vivify_462
    $P997 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
.annotate 'line', 479
    find_lex $P999, "self"
    find_lex $P1000, "$?CLASS"
    getattribute $P1001, $P999, $P1000, "%!attributes"
    unless_null $P1001, vivify_463
    $P1001 = root_new ['parrot';'Hash']
  vivify_463:
    defined $I1002, $P1001
    unless $I1002, for_undef_464
    iter $P998, $P1001
    new $P1012, 'ExceptionHandler'
    set_label $P1012, loop1011_handler
    $P1012."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1012
  loop1011_test:
    unless $P998, loop1011_done
    shift $P1003, $P998
  loop1011_redo:
    .const 'Sub' $P1005 = "74_1304284948.29" 
    capture_lex $P1005
    $P1005($P1003)
  loop1011_next:
    goto loop1011_test
  loop1011_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1013, exception, 'type'
    eq $P1013, .CONTROL_LOOP_NEXT, loop1011_next
    eq $P1013, .CONTROL_LOOP_REDO, loop1011_redo
  loop1011_done:
    pop_eh 
  for_undef_464:
    find_lex $P1014, "@attrs"
    unless_null $P1014, vivify_467
    $P1014 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
.annotate 'line', 477
    .return ($P1014)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "_block1004"  :anon :subid("74_1304284948.29") :outer("73_1304284948.29")
    .param pmc param_1006
.annotate 'line', 479
    .lex "$_", param_1006
.annotate 'line', 480
    find_lex $P1007, "@attrs"
    unless_null $P1007, vivify_465
    $P1007 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    find_lex $P1008, "$_"
    unless_null $P1008, vivify_466
    new $P1008, "Undef"
  vivify_466:
    $P1009 = $P1008."value"()
    $P1010 = $P1007."push"($P1009)
.annotate 'line', 479
    .return ($P1010)
.end


.HLL "nqp"

.namespace ["NQPParametricRoleHOW"]
.sub "roles"  :subid("75_1304284948.29") :outer("52_1304284948.29")
    .param pmc param_1016
    .param pmc param_1017
.annotate 'line', 485
    .lex "self", param_1016
    .lex "$obj", param_1017
    find_lex $P1018, "self"
    find_lex $P1019, "$?CLASS"
    getattribute $P1020, $P1018, $P1019, "@!roles"
    unless_null $P1020, vivify_468
    $P1020 = root_new ['parrot';'ResizablePMCArray']
  vivify_468:
    .return ($P1020)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1022"  :subid("76_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 495
    .const 'Sub' $P1979 = "130_1304284948.29" 
    capture_lex $P1979
    .const 'Sub' $P1943 = "128_1304284948.29" 
    capture_lex $P1943
    .const 'Sub' $P1909 = "127_1304284948.29" 
    capture_lex $P1909
    .const 'Sub' $P1872 = "126_1304284948.29" 
    capture_lex $P1872
    .const 'Sub' $P1865 = "125_1304284948.29" 
    capture_lex $P1865
    .const 'Sub' $P1842 = "123_1304284948.29" 
    capture_lex $P1842
    .const 'Sub' $P1836 = "122_1304284948.29" 
    capture_lex $P1836
    .const 'Sub' $P1830 = "121_1304284948.29" 
    capture_lex $P1830
    .const 'Sub' $P1807 = "119_1304284948.29" 
    capture_lex $P1807
    .const 'Sub' $P1800 = "118_1304284948.29" 
    capture_lex $P1800
    .const 'Sub' $P1786 = "117_1304284948.29" 
    capture_lex $P1786
    .const 'Sub' $P1737 = "114_1304284948.29" 
    capture_lex $P1737
    .const 'Sub' $P1692 = "111_1304284948.29" 
    capture_lex $P1692
    .const 'Sub' $P1655 = "108_1304284948.29" 
    capture_lex $P1655
    .const 'Sub' $P1525 = "103_1304284948.29" 
    capture_lex $P1525
    .const 'Sub' $P1419 = "99_1304284948.29" 
    capture_lex $P1419
    .const 'Sub' $P1393 = "98_1304284948.29" 
    capture_lex $P1393
    .const 'Sub' $P1359 = "96_1304284948.29" 
    capture_lex $P1359
    .const 'Sub' $P1352 = "95_1304284948.29" 
    capture_lex $P1352
    .const 'Sub' $P1314 = "93_1304284948.29" 
    capture_lex $P1314
    .const 'Sub' $P1293 = "92_1304284948.29" 
    capture_lex $P1293
    .const 'Sub' $P1272 = "91_1304284948.29" 
    capture_lex $P1272
    .const 'Sub' $P1237 = "90_1304284948.29" 
    capture_lex $P1237
    .const 'Sub' $P1222 = "89_1304284948.29" 
    capture_lex $P1222
    .const 'Sub' $P1215 = "88_1304284948.29" 
    capture_lex $P1215
    .const 'Sub' $P1205 = "87_1304284948.29" 
    capture_lex $P1205
    .const 'Sub' $P1066 = "80_1304284948.29" 
    capture_lex $P1066
    .const 'Sub' $P1024 = "77_1304284948.29" 
    capture_lex $P1024
.annotate 'line', 714
    .const 'Sub' $P1024 = "77_1304284948.29" 
    newclosure $P1065, $P1024
    .lex "compute_c3_mro", $P1065
.annotate 'line', 736
    .const 'Sub' $P1066 = "80_1304284948.29" 
    newclosure $P1202, $P1066
    .lex "c3_merge", $P1202
.annotate 'line', 495
    .lex "$?PACKAGE", $P1203
    .lex "$?CLASS", $P1204
.annotate 'line', 660
    find_lex $P1653, "compute_c3_mro"
    find_lex $P1654, "c3_merge"
.annotate 'line', 920
    .const 'Sub' $P1979 = "130_1304284948.29" 
    newclosure $P2014, $P1979
.annotate 'line', 495
    .return ($P2014)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compute_c3_mro"  :subid("77_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1027
.annotate 'line', 714
    .const 'Sub' $P1039 = "78_1304284948.29" 
    capture_lex $P1039
    new $P1026, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1026, control_1025
    push_eh $P1026
    .lex "$class", param_1027
.annotate 'line', 715
    $P1028 = root_new ['parrot';'ResizablePMCArray']
    .lex "@immediate_parents", $P1028
.annotate 'line', 718
    $P1029 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1029
.annotate 'line', 715
    find_lex $P1030, "$class"
    unless_null $P1030, vivify_469
    new $P1030, "Undef"
  vivify_469:
    get_how $P1031, $P1030
    find_lex $P1032, "$class"
    unless_null $P1032, vivify_470
    new $P1032, "Undef"
  vivify_470:
    $P1033 = $P1031."parents"($P1032, 1 :named("local"))
    store_lex "@immediate_parents", $P1033
    find_lex $P1034, "@result"
    unless_null $P1034, vivify_471
    $P1034 = root_new ['parrot';'ResizablePMCArray']
  vivify_471:
.annotate 'line', 719
    find_lex $P1036, "@immediate_parents"
    unless_null $P1036, vivify_472
    $P1036 = root_new ['parrot';'ResizablePMCArray']
  vivify_472:
    set $N1037, $P1036
    unless $N1037, if_1035_end
    .const 'Sub' $P1039 = "78_1304284948.29" 
    capture_lex $P1039
    $P1039()
  if_1035_end:
.annotate 'line', 731
    find_lex $P1060, "@result"
    unless_null $P1060, vivify_481
    $P1060 = root_new ['parrot';'ResizablePMCArray']
  vivify_481:
    find_lex $P1061, "$class"
    unless_null $P1061, vivify_482
    new $P1061, "Undef"
  vivify_482:
    $P1060."unshift"($P1061)
.annotate 'line', 732
    new $P1062, "Exception"
    set $P1062['type'], .CONTROL_RETURN
    find_lex $P1063, "@result"
    unless_null $P1063, vivify_483
    $P1063 = root_new ['parrot';'ResizablePMCArray']
  vivify_483:
    setattribute $P1062, 'payload', $P1063
    throw $P1062
.annotate 'line', 714
    .return ()
  control_1025:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1064, exception, "payload"
    .return ($P1064)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1038"  :anon :subid("78_1304284948.29") :outer("77_1304284948.29")
.annotate 'line', 719
    .const 'Sub' $P1047 = "79_1304284948.29" 
    capture_lex $P1047
.annotate 'line', 722
    $P1040 = root_new ['parrot';'ResizablePMCArray']
    .lex "@merge_list", $P1040
.annotate 'line', 719
    find_lex $P1041, "@merge_list"
    unless_null $P1041, vivify_473
    $P1041 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
.annotate 'line', 723
    find_lex $P1043, "@immediate_parents"
    unless_null $P1043, vivify_474
    $P1043 = root_new ['parrot';'ResizablePMCArray']
  vivify_474:
    defined $I1044, $P1043
    unless $I1044, for_undef_475
    iter $P1042, $P1043
    new $P1054, 'ExceptionHandler'
    set_label $P1054, loop1053_handler
    $P1054."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1054
  loop1053_test:
    unless $P1042, loop1053_done
    shift $P1045, $P1042
  loop1053_redo:
    .const 'Sub' $P1047 = "79_1304284948.29" 
    capture_lex $P1047
    $P1047($P1045)
  loop1053_next:
    goto loop1053_test
  loop1053_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1055, exception, 'type'
    eq $P1055, .CONTROL_LOOP_NEXT, loop1053_next
    eq $P1055, .CONTROL_LOOP_REDO, loop1053_redo
  loop1053_done:
    pop_eh 
  for_undef_475:
.annotate 'line', 726
    find_lex $P1056, "@merge_list"
    unless_null $P1056, vivify_478
    $P1056 = root_new ['parrot';'ResizablePMCArray']
  vivify_478:
    find_lex $P1057, "@immediate_parents"
    unless_null $P1057, vivify_479
    $P1057 = root_new ['parrot';'ResizablePMCArray']
  vivify_479:
    $P1056."push"($P1057)
.annotate 'line', 727
    find_lex $P1058, "@merge_list"
    unless_null $P1058, vivify_480
    $P1058 = root_new ['parrot';'ResizablePMCArray']
  vivify_480:
    $P1059 = "c3_merge"($P1058)
    store_lex "@result", $P1059
.annotate 'line', 719
    .return ($P1059)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1046"  :anon :subid("79_1304284948.29") :outer("78_1304284948.29")
    .param pmc param_1048
.annotate 'line', 723
    .lex "$_", param_1048
.annotate 'line', 724
    find_lex $P1049, "@merge_list"
    unless_null $P1049, vivify_476
    $P1049 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    find_lex $P1050, "$_"
    unless_null $P1050, vivify_477
    new $P1050, "Undef"
  vivify_477:
    $P1051 = "compute_c3_mro"($P1050)
    $P1052 = $P1049."push"($P1051)
.annotate 'line', 723
    .return ($P1052)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "c3_merge"  :subid("80_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1069
.annotate 'line', 736
    .const 'Sub' $P1162 = "85_1304284948.29" 
    capture_lex $P1162
    .const 'Sub' $P1084 = "81_1304284948.29" 
    capture_lex $P1084
    new $P1068, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1068, control_1067
    push_eh $P1068
    .lex "@merge_list", param_1069
.annotate 'line', 737
    $P1070 = root_new ['parrot';'ResizablePMCArray']
    .lex "@result", $P1070
.annotate 'line', 738
    new $P1071, "Undef"
    .lex "$accepted", $P1071
.annotate 'line', 739
    new $P1072, "Undef"
    .lex "$something_accepted", $P1072
.annotate 'line', 740
    new $P1073, "Undef"
    .lex "$cand_count", $P1073
.annotate 'line', 783
    new $P1074, "Undef"
    .lex "$i", $P1074
.annotate 'line', 736
    find_lex $P1075, "@result"
    unless_null $P1075, vivify_484
    $P1075 = root_new ['parrot';'ResizablePMCArray']
  vivify_484:
    find_lex $P1076, "$accepted"
    unless_null $P1076, vivify_485
    new $P1076, "Undef"
  vivify_485:
.annotate 'line', 739
    new $P1077, "Integer"
    assign $P1077, 0
    store_lex "$something_accepted", $P1077
.annotate 'line', 740
    new $P1078, "Integer"
    assign $P1078, 0
    store_lex "$cand_count", $P1078
.annotate 'line', 743
    find_lex $P1080, "@merge_list"
    unless_null $P1080, vivify_486
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_486:
    defined $I1081, $P1080
    unless $I1081, for_undef_487
    iter $P1079, $P1080
    new $P1145, 'ExceptionHandler'
    set_label $P1145, loop1144_handler
    $P1145."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1145
  loop1144_test:
    unless $P1079, loop1144_done
    shift $P1082, $P1079
  loop1144_redo:
    .const 'Sub' $P1084 = "81_1304284948.29" 
    capture_lex $P1084
    $P1084($P1082)
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
  for_undef_487:
.annotate 'line', 773
    find_lex $P1148, "$cand_count"
    unless_null $P1148, vivify_506
    new $P1148, "Undef"
  vivify_506:
    set $N1149, $P1148
    iseq $I1150, $N1149, 0.0
    unless $I1150, if_1147_end
.annotate 'line', 774
    new $P1151, "Exception"
    set $P1151['type'], .CONTROL_RETURN
    find_lex $P1152, "@result"
    unless_null $P1152, vivify_507
    $P1152 = root_new ['parrot';'ResizablePMCArray']
  vivify_507:
    setattribute $P1151, 'payload', $P1152
    throw $P1151
  if_1147_end:
.annotate 'line', 778
    find_lex $P1154, "$something_accepted"
    unless_null $P1154, vivify_508
    new $P1154, "Undef"
  vivify_508:
    if $P1154, unless_1153_end
.annotate 'line', 779
    die "Could not build C3 linearization: ambiguous hierarchy"
  unless_1153_end:
.annotate 'line', 783
    new $P1155, "Integer"
    assign $P1155, 0
    store_lex "$i", $P1155
.annotate 'line', 784
    new $P1193, 'ExceptionHandler'
    set_label $P1193, loop1192_handler
    $P1193."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1193
  loop1192_test:
    find_lex $P1156, "$i"
    unless_null $P1156, vivify_509
    new $P1156, "Undef"
  vivify_509:
    set $N1157, $P1156
    find_lex $P1158, "@merge_list"
    unless_null $P1158, vivify_510
    $P1158 = root_new ['parrot';'ResizablePMCArray']
  vivify_510:
    set $N1159, $P1158
    islt $I1160, $N1157, $N1159
    unless $I1160, loop1192_done
  loop1192_redo:
    .const 'Sub' $P1162 = "85_1304284948.29" 
    capture_lex $P1162
    $P1162()
  loop1192_next:
    goto loop1192_test
  loop1192_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1194, exception, 'type'
    eq $P1194, .CONTROL_LOOP_NEXT, loop1192_next
    eq $P1194, .CONTROL_LOOP_REDO, loop1192_redo
  loop1192_done:
    pop_eh 
.annotate 'line', 797
    find_lex $P1195, "@merge_list"
    unless_null $P1195, vivify_524
    $P1195 = root_new ['parrot';'ResizablePMCArray']
  vivify_524:
    $P1196 = "c3_merge"($P1195)
    store_lex "@result", $P1196
.annotate 'line', 798
    find_lex $P1197, "@result"
    unless_null $P1197, vivify_525
    $P1197 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    find_lex $P1198, "$accepted"
    unless_null $P1198, vivify_526
    new $P1198, "Undef"
  vivify_526:
    $P1197."unshift"($P1198)
.annotate 'line', 799
    new $P1199, "Exception"
    set $P1199['type'], .CONTROL_RETURN
    find_lex $P1200, "@result"
    unless_null $P1200, vivify_527
    $P1200 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    setattribute $P1199, 'payload', $P1200
    throw $P1199
.annotate 'line', 736
    .return ()
  control_1067:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1201, exception, "payload"
    .return ($P1201)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1083"  :anon :subid("81_1304284948.29") :outer("80_1304284948.29")
    .param pmc param_1086
.annotate 'line', 743
    .const 'Sub' $P1093 = "82_1304284948.29" 
    capture_lex $P1093
.annotate 'line', 744
    $P1085 = root_new ['parrot';'ResizablePMCArray']
    .lex "@cand_list", $P1085
    .lex "$_", param_1086
    find_lex $P1087, "$_"
    unless_null $P1087, vivify_488
    new $P1087, "Undef"
  vivify_488:
    store_lex "@cand_list", $P1087
.annotate 'line', 745
    find_lex $P1090, "@cand_list"
    unless_null $P1090, vivify_489
    $P1090 = root_new ['parrot';'ResizablePMCArray']
  vivify_489:
    set $N1091, $P1090
    if $N1091, if_1089
    new $P1088, 'Float'
    set $P1088, $N1091
    goto if_1089_end
  if_1089:
    .const 'Sub' $P1093 = "82_1304284948.29" 
    capture_lex $P1093
    $P1143 = $P1093()
    set $P1088, $P1143
  if_1089_end:
.annotate 'line', 743
    .return ($P1088)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1092"  :anon :subid("82_1304284948.29") :outer("81_1304284948.29")
.annotate 'line', 745
    .const 'Sub' $P1106 = "83_1304284948.29" 
    capture_lex $P1106
.annotate 'line', 746
    new $P1094, "Undef"
    .lex "$rejected", $P1094
.annotate 'line', 747
    new $P1095, "Undef"
    .lex "$cand_class", $P1095
.annotate 'line', 746
    new $P1096, "Integer"
    assign $P1096, 0
    store_lex "$rejected", $P1096
.annotate 'line', 747
    find_lex $P1097, "@cand_list"
    unless_null $P1097, vivify_490
    $P1097 = root_new ['parrot';'ResizablePMCArray']
  vivify_490:
    set $P1098, $P1097[0]
    unless_null $P1098, vivify_491
    new $P1098, "Undef"
  vivify_491:
    store_lex "$cand_class", $P1098
.annotate 'line', 748
    find_lex $P1099, "$cand_count"
    unless_null $P1099, vivify_492
    new $P1099, "Undef"
  vivify_492:
    add $P1100, $P1099, 1
    store_lex "$cand_count", $P1100
.annotate 'line', 749
    find_lex $P1102, "@merge_list"
    unless_null $P1102, vivify_493
    $P1102 = root_new ['parrot';'ResizablePMCArray']
  vivify_493:
    defined $I1103, $P1102
    unless $I1103, for_undef_494
    iter $P1101, $P1102
    new $P1141, 'ExceptionHandler'
    set_label $P1141, loop1140_handler
    $P1141."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1141
  loop1140_test:
    unless $P1101, loop1140_done
    shift $P1104, $P1101
  loop1140_redo:
    .const 'Sub' $P1106 = "83_1304284948.29" 
    capture_lex $P1106
    $P1106($P1104)
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
  for_undef_494:
.annotate 'line', 745
    .return ($P1101)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1105"  :anon :subid("83_1304284948.29") :outer("82_1304284948.29")
    .param pmc param_1107
.annotate 'line', 749
    .const 'Sub' $P1113 = "84_1304284948.29" 
    capture_lex $P1113
    .lex "$_", param_1107
.annotate 'line', 751
    find_lex $P1109, "$_"
    unless_null $P1109, vivify_495
    new $P1109, "Undef"
  vivify_495:
    find_lex $P1110, "@cand_list"
    unless_null $P1110, vivify_496
    $P1110 = root_new ['parrot';'ResizablePMCArray']
  vivify_496:
    issame $I1111, $P1109, $P1110
    if $I1111, unless_1108_end
    .const 'Sub' $P1113 = "84_1304284948.29" 
    capture_lex $P1113
    $P1113()
  unless_1108_end:
.annotate 'line', 763
    find_lex $P1136, "$rejected"
    unless_null $P1136, vivify_504
    new $P1136, "Undef"
  vivify_504:
    unless $P1136, unless_1135
    set $P1134, $P1136
    goto unless_1135_end
  unless_1135:
.annotate 'line', 764
    find_lex $P1137, "$cand_class"
    unless_null $P1137, vivify_505
    new $P1137, "Undef"
  vivify_505:
    store_lex "$accepted", $P1137
.annotate 'line', 765
    new $P1138, "Integer"
    assign $P1138, 1
    store_lex "$something_accepted", $P1138
.annotate 'line', 766
    set $I1139, .CONTROL_LOOP_LAST
    die 0, $I1139
  unless_1135_end:
.annotate 'line', 749
    .return ($P1134)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1112"  :anon :subid("84_1304284948.29") :outer("83_1304284948.29")
.annotate 'line', 753
    new $P1114, "Undef"
    .lex "$cur_pos", $P1114
    new $P1115, "Integer"
    assign $P1115, 1
    store_lex "$cur_pos", $P1115
.annotate 'line', 754
    new $P1132, 'ExceptionHandler'
    set_label $P1132, loop1131_handler
    $P1132."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1132
  loop1131_test:
    find_lex $P1116, "$cur_pos"
    unless_null $P1116, vivify_497
    new $P1116, "Undef"
  vivify_497:
    set $N1117, $P1116
    find_lex $P1118, "$_"
    unless_null $P1118, vivify_498
    new $P1118, "Undef"
  vivify_498:
    set $N1119, $P1118
    isle $I1120, $N1117, $N1119
    unless $I1120, loop1131_done
  loop1131_redo:
.annotate 'line', 755
    find_lex $P1122, "$cur_pos"
    unless_null $P1122, vivify_499
    new $P1122, "Undef"
  vivify_499:
    set $I1123, $P1122
    find_lex $P1124, "$_"
    unless_null $P1124, vivify_500
    $P1124 = root_new ['parrot';'ResizablePMCArray']
  vivify_500:
    set $P1125, $P1124[$I1123]
    unless_null $P1125, vivify_501
    new $P1125, "Undef"
  vivify_501:
    find_lex $P1126, "$cand_class"
    unless_null $P1126, vivify_502
    new $P1126, "Undef"
  vivify_502:
    issame $I1127, $P1125, $P1126
    unless $I1127, if_1121_end
.annotate 'line', 756
    new $P1128, "Integer"
    assign $P1128, 1
    store_lex "$rejected", $P1128
  if_1121_end:
.annotate 'line', 758
    find_lex $P1129, "$cur_pos"
    unless_null $P1129, vivify_503
    new $P1129, "Undef"
  vivify_503:
    add $P1130, $P1129, 1
    store_lex "$cur_pos", $P1130
  loop1131_next:
.annotate 'line', 754
    goto loop1131_test
  loop1131_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1133, exception, 'type'
    eq $P1133, .CONTROL_LOOP_NEXT, loop1131_next
    eq $P1133, .CONTROL_LOOP_REDO, loop1131_redo
  loop1131_done:
    pop_eh 
.annotate 'line', 751
    .return ($I1120)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1161"  :anon :subid("85_1304284948.29") :outer("80_1304284948.29")
.annotate 'line', 784
    .const 'Sub' $P1173 = "86_1304284948.29" 
    capture_lex $P1173
.annotate 'line', 785
    $P1163 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_list", $P1163
.annotate 'line', 784
    find_lex $P1164, "@new_list"
    unless_null $P1164, vivify_511
    $P1164 = root_new ['parrot';'ResizablePMCArray']
  vivify_511:
.annotate 'line', 786
    find_lex $P1166, "$i"
    unless_null $P1166, vivify_512
    new $P1166, "Undef"
  vivify_512:
    set $I1167, $P1166
    find_lex $P1168, "@merge_list"
    unless_null $P1168, vivify_513
    $P1168 = root_new ['parrot';'ResizablePMCArray']
  vivify_513:
    set $P1169, $P1168[$I1167]
    unless_null $P1169, vivify_514
    new $P1169, "Undef"
  vivify_514:
    defined $I1170, $P1169
    unless $I1170, for_undef_515
    iter $P1165, $P1169
    new $P1184, 'ExceptionHandler'
    set_label $P1184, loop1183_handler
    $P1184."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1184
  loop1183_test:
    unless $P1165, loop1183_done
    shift $P1171, $P1165
  loop1183_redo:
    .const 'Sub' $P1173 = "86_1304284948.29" 
    capture_lex $P1173
    $P1173($P1171)
  loop1183_next:
    goto loop1183_test
  loop1183_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1185, exception, 'type'
    eq $P1185, .CONTROL_LOOP_NEXT, loop1183_next
    eq $P1185, .CONTROL_LOOP_REDO, loop1183_redo
  loop1183_done:
    pop_eh 
  for_undef_515:
.annotate 'line', 791
    find_lex $P1186, "@new_list"
    unless_null $P1186, vivify_520
    $P1186 = root_new ['parrot';'ResizablePMCArray']
  vivify_520:
    find_lex $P1187, "$i"
    unless_null $P1187, vivify_521
    new $P1187, "Undef"
  vivify_521:
    set $I1188, $P1187
    find_lex $P1189, "@merge_list"
    unless_null $P1189, vivify_522
    $P1189 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@merge_list", $P1189
  vivify_522:
    set $P1189[$I1188], $P1186
.annotate 'line', 792
    find_lex $P1190, "$i"
    unless_null $P1190, vivify_523
    new $P1190, "Undef"
  vivify_523:
    add $P1191, $P1190, 1
    store_lex "$i", $P1191
.annotate 'line', 784
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1172"  :anon :subid("86_1304284948.29") :outer("85_1304284948.29")
    .param pmc param_1174
.annotate 'line', 786
    .lex "$_", param_1174
.annotate 'line', 787
    find_lex $P1177, "$_"
    unless_null $P1177, vivify_516
    new $P1177, "Undef"
  vivify_516:
    find_lex $P1178, "$accepted"
    unless_null $P1178, vivify_517
    new $P1178, "Undef"
  vivify_517:
    issame $I1179, $P1177, $P1178
    unless $I1179, unless_1176
    new $P1175, 'Integer'
    set $P1175, $I1179
    goto unless_1176_end
  unless_1176:
.annotate 'line', 788
    find_lex $P1180, "@new_list"
    unless_null $P1180, vivify_518
    $P1180 = root_new ['parrot';'ResizablePMCArray']
  vivify_518:
    find_lex $P1181, "$_"
    unless_null $P1181, vivify_519
    new $P1181, "Undef"
  vivify_519:
    $P1182 = $P1180."push"($P1181)
.annotate 'line', 787
    set $P1175, $P1182
  unless_1176_end:
.annotate 'line', 786
    .return ($P1175)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new"  :subid("87_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1206
    .param pmc param_1207 :optional :named("name")
    .param int has_param_1207 :opt_flag
.annotate 'line', 532
    .lex "self", param_1206
    if has_param_1207, optparam_528
    new $P1208, "Undef"
    set param_1207, $P1208
  optparam_528:
    .lex "$name", param_1207
.annotate 'line', 533
    new $P1209, "Undef"
    .lex "$obj", $P1209
    find_lex $P1210, "self"
    repr_instance_of $P1211, $P1210
    store_lex "$obj", $P1211
.annotate 'line', 534
    find_lex $P1212, "$obj"
    unless_null $P1212, vivify_529
    new $P1212, "Undef"
  vivify_529:
    find_lex $P1213, "$name"
    unless_null $P1213, vivify_530
    new $P1213, "Undef"
  vivify_530:
    $P1212."BUILD"($P1213 :named("name"))
    find_lex $P1214, "$obj"
    unless_null $P1214, vivify_531
    new $P1214, "Undef"
  vivify_531:
.annotate 'line', 532
    .return ($P1214)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "BUILD"  :subid("88_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1216
    .param pmc param_1217 :optional :named("name")
    .param int has_param_1217 :opt_flag
.annotate 'line', 538
    .lex "self", param_1216
    if has_param_1217, optparam_532
    new $P1218, "Undef"
    set param_1217, $P1218
  optparam_532:
    .lex "$name", param_1217
.annotate 'line', 539
    find_lex $P1219, "$name"
    unless_null $P1219, vivify_533
    new $P1219, "Undef"
  vivify_533:
    find_lex $P1220, "self"
    find_lex $P1221, "$?CLASS"
    setattribute $P1220, $P1221, "$!name", $P1219
.annotate 'line', 538
    .return ($P1219)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "new_type"  :subid("89_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1223
    .param pmc param_1224 :optional :named("name")
    .param int has_param_1224 :opt_flag
    .param pmc param_1226 :optional :named("repr")
    .param int has_param_1226 :opt_flag
.annotate 'line', 544
    .lex "self", param_1223
    if has_param_1224, optparam_534
    new $P1225, "String"
    assign $P1225, "<anon>"
    set param_1224, $P1225
  optparam_534:
    .lex "$name", param_1224
    if has_param_1226, optparam_535
    new $P1227, "String"
    assign $P1227, "P6opaque"
    set param_1226, $P1227
  optparam_535:
    .lex "$repr", param_1226
.annotate 'line', 545
    new $P1228, "Undef"
    .lex "$metaclass", $P1228
    find_lex $P1229, "self"
    find_lex $P1230, "$name"
    unless_null $P1230, vivify_536
    new $P1230, "Undef"
  vivify_536:
    $P1231 = $P1229."new"($P1230 :named("name"))
    store_lex "$metaclass", $P1231
.annotate 'line', 547
    find_lex $P1232, "$metaclass"
    unless_null $P1232, vivify_537
    new $P1232, "Undef"
  vivify_537:
    find_lex $P1233, "$repr"
    unless_null $P1233, vivify_538
    new $P1233, "Undef"
  vivify_538:
    set $S1234, $P1233
    repr_type_object_for $P1235, $P1232, $S1234
    $P1236 = root_new ['parrot';'Hash']
    set_who $P1235, $P1236
.annotate 'line', 544
    .return ($P1235)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_method"  :subid("90_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1238
    .param pmc param_1239
    .param pmc param_1240
    .param pmc param_1241
.annotate 'line', 551
    .lex "self", param_1238
    .lex "$obj", param_1239
    .lex "$name", param_1240
    .lex "$code_obj", param_1241
.annotate 'line', 552
    find_lex $P1243, "$name"
    unless_null $P1243, vivify_539
    new $P1243, "Undef"
  vivify_539:
    find_lex $P1244, "self"
    find_lex $P1245, "$?CLASS"
    getattribute $P1246, $P1244, $P1245, "%!methods"
    unless_null $P1246, vivify_540
    $P1246 = root_new ['parrot';'Hash']
  vivify_540:
    set $P1247, $P1246[$P1243]
    unless_null $P1247, vivify_541
    new $P1247, "Undef"
  vivify_541:
    unless $P1247, if_1242_end
.annotate 'line', 553
    new $P1248, "String"
    assign $P1248, "This class already has a method named "
    find_lex $P1249, "$name"
    unless_null $P1249, vivify_542
    new $P1249, "Undef"
  vivify_542:
    concat $P1250, $P1248, $P1249
    die $P1250
  if_1242_end:
.annotate 'line', 555
    find_lex $P1254, "$code_obj"
    unless_null $P1254, vivify_543
    new $P1254, "Undef"
  vivify_543:
    isnull $I1255, $P1254
    unless $I1255, unless_1253
    new $P1252, 'Integer'
    set $P1252, $I1255
    goto unless_1253_end
  unless_1253:
    find_lex $P1256, "$code_obj"
    unless_null $P1256, vivify_544
    new $P1256, "Undef"
  vivify_544:
    isa $I1257, $P1256, "Undef"
    new $P1252, 'Integer'
    set $P1252, $I1257
  unless_1253_end:
    unless $P1252, if_1251_end
.annotate 'line', 556
    new $P1258, 'String'
    set $P1258, "Cannot add a null method '"
    find_lex $P1259, "$name"
    unless_null $P1259, vivify_545
    new $P1259, "Undef"
  vivify_545:
    concat $P1260, $P1258, $P1259
    concat $P1261, $P1260, "' to class '"
    find_lex $P1262, "self"
    find_lex $P1263, "$?CLASS"
    getattribute $P1264, $P1262, $P1263, "$!name"
    unless_null $P1264, vivify_546
    new $P1264, "Undef"
  vivify_546:
    concat $P1265, $P1261, $P1264
    concat $P1266, $P1265, "'"
    die $P1266
  if_1251_end:
.annotate 'line', 558
    find_lex $P1267, "$code_obj"
    unless_null $P1267, vivify_547
    new $P1267, "Undef"
  vivify_547:
    find_lex $P1268, "$name"
    unless_null $P1268, vivify_548
    new $P1268, "Undef"
  vivify_548:
    find_lex $P1269, "self"
    find_lex $P1270, "$?CLASS"
    getattribute $P1271, $P1269, $P1270, "%!methods"
    unless_null $P1271, vivify_549
    $P1271 = root_new ['parrot';'Hash']
    setattribute $P1269, $P1270, "%!methods", $P1271
  vivify_549:
    set $P1271[$P1268], $P1267
.annotate 'line', 551
    .return ($P1267)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_multi_method"  :subid("91_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1273
    .param pmc param_1274
    .param pmc param_1275
    .param pmc param_1276
.annotate 'line', 561
    .lex "self", param_1273
    .lex "$obj", param_1274
    .lex "$name", param_1275
    .lex "$code_obj", param_1276
.annotate 'line', 567
    $P1277 = root_new ['parrot';'Hash']
    .lex "%todo", $P1277
.annotate 'line', 561
    find_lex $P1278, "%todo"
    unless_null $P1278, vivify_550
    $P1278 = root_new ['parrot';'Hash']
  vivify_550:
.annotate 'line', 568
    find_lex $P1279, "$name"
    unless_null $P1279, vivify_551
    new $P1279, "Undef"
  vivify_551:
    find_lex $P1280, "%todo"
    unless_null $P1280, vivify_552
    $P1280 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1280
  vivify_552:
    set $P1280["name"], $P1279
.annotate 'line', 569
    find_lex $P1281, "$code_obj"
    unless_null $P1281, vivify_553
    new $P1281, "Undef"
  vivify_553:
    find_lex $P1282, "%todo"
    unless_null $P1282, vivify_554
    $P1282 = root_new ['parrot';'Hash']
    store_lex "%todo", $P1282
  vivify_554:
    set $P1282["code"], $P1281
.annotate 'line', 570
    find_lex $P1283, "%todo"
    unless_null $P1283, vivify_555
    $P1283 = root_new ['parrot';'Hash']
  vivify_555:
    find_lex $P1284, "self"
    find_lex $P1285, "$?CLASS"
    getattribute $P1286, $P1284, $P1285, "@!multi_methods_to_incorporate"
    unless_null $P1286, vivify_556
    $P1286 = root_new ['parrot';'ResizablePMCArray']
  vivify_556:
    set $N1287, $P1286
    set $I1288, $N1287
    find_lex $P1289, "self"
    find_lex $P1290, "$?CLASS"
    getattribute $P1291, $P1289, $P1290, "@!multi_methods_to_incorporate"
    unless_null $P1291, vivify_557
    $P1291 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1289, $P1290, "@!multi_methods_to_incorporate", $P1291
  vivify_557:
    set $P1291[$I1288], $P1283
    find_lex $P1292, "$code_obj"
    unless_null $P1292, vivify_558
    new $P1292, "Undef"
  vivify_558:
.annotate 'line', 561
    .return ($P1292)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_attribute"  :subid("92_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1294
    .param pmc param_1295
    .param pmc param_1296
.annotate 'line', 574
    .lex "self", param_1294
    .lex "$obj", param_1295
    .lex "$meta_attr", param_1296
.annotate 'line', 575
    new $P1297, "Undef"
    .lex "$name", $P1297
    find_lex $P1298, "$meta_attr"
    unless_null $P1298, vivify_559
    new $P1298, "Undef"
  vivify_559:
    $P1299 = $P1298."name"()
    store_lex "$name", $P1299
.annotate 'line', 576
    find_lex $P1301, "$name"
    unless_null $P1301, vivify_560
    new $P1301, "Undef"
  vivify_560:
    find_lex $P1302, "self"
    find_lex $P1303, "$?CLASS"
    getattribute $P1304, $P1302, $P1303, "%!attributes"
    unless_null $P1304, vivify_561
    $P1304 = root_new ['parrot';'Hash']
  vivify_561:
    set $P1305, $P1304[$P1301]
    unless_null $P1305, vivify_562
    new $P1305, "Undef"
  vivify_562:
    unless $P1305, if_1300_end
.annotate 'line', 577
    new $P1306, "String"
    assign $P1306, "This class already has an attribute named "
    find_lex $P1307, "$name"
    unless_null $P1307, vivify_563
    new $P1307, "Undef"
  vivify_563:
    concat $P1308, $P1306, $P1307
    die $P1308
  if_1300_end:
.annotate 'line', 579
    find_lex $P1309, "$meta_attr"
    unless_null $P1309, vivify_564
    new $P1309, "Undef"
  vivify_564:
    find_lex $P1310, "$name"
    unless_null $P1310, vivify_565
    new $P1310, "Undef"
  vivify_565:
    find_lex $P1311, "self"
    find_lex $P1312, "$?CLASS"
    getattribute $P1313, $P1311, $P1312, "%!attributes"
    unless_null $P1313, vivify_566
    $P1313 = root_new ['parrot';'Hash']
    setattribute $P1311, $P1312, "%!attributes", $P1313
  vivify_566:
    set $P1313[$P1310], $P1309
.annotate 'line', 574
    .return ($P1309)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_parent"  :subid("93_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1315
    .param pmc param_1316
    .param pmc param_1317
.annotate 'line', 582
    .const 'Sub' $P1329 = "94_1304284948.29" 
    capture_lex $P1329
    .lex "self", param_1315
    .lex "$obj", param_1316
    .lex "$parent", param_1317
.annotate 'line', 583
    find_lex $P1319, "self"
    find_lex $P1320, "$?CLASS"
    getattribute $P1321, $P1319, $P1320, "$!composed"
    unless_null $P1321, vivify_567
    new $P1321, "Undef"
  vivify_567:
    unless $P1321, if_1318_end
.annotate 'line', 584
    die "NQPClassHOW does not support adding parents after being composed."
  if_1318_end:
.annotate 'line', 586
    find_lex $P1323, "self"
    find_lex $P1324, "$?CLASS"
    getattribute $P1325, $P1323, $P1324, "@!parents"
    unless_null $P1325, vivify_568
    $P1325 = root_new ['parrot';'ResizablePMCArray']
  vivify_568:
    defined $I1326, $P1325
    unless $I1326, for_undef_569
    iter $P1322, $P1325
    new $P1341, 'ExceptionHandler'
    set_label $P1341, loop1340_handler
    $P1341."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1341
  loop1340_test:
    unless $P1322, loop1340_done
    shift $P1327, $P1322
  loop1340_redo:
    .const 'Sub' $P1329 = "94_1304284948.29" 
    capture_lex $P1329
    $P1329($P1327)
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
  for_undef_569:
.annotate 'line', 591
    find_lex $P1343, "$parent"
    unless_null $P1343, vivify_573
    new $P1343, "Undef"
  vivify_573:
    find_lex $P1344, "self"
    find_lex $P1345, "$?CLASS"
    getattribute $P1346, $P1344, $P1345, "@!parents"
    unless_null $P1346, vivify_574
    $P1346 = root_new ['parrot';'ResizablePMCArray']
  vivify_574:
    set $N1347, $P1346
    set $I1348, $N1347
    find_lex $P1349, "self"
    find_lex $P1350, "$?CLASS"
    getattribute $P1351, $P1349, $P1350, "@!parents"
    unless_null $P1351, vivify_575
    $P1351 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1349, $P1350, "@!parents", $P1351
  vivify_575:
    set $P1351[$I1348], $P1343
.annotate 'line', 582
    .return ($P1343)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1328"  :anon :subid("94_1304284948.29") :outer("93_1304284948.29")
    .param pmc param_1330
.annotate 'line', 586
    .lex "$_", param_1330
.annotate 'line', 587
    find_lex $P1333, "$_"
    unless_null $P1333, vivify_570
    new $P1333, "Undef"
  vivify_570:
    find_lex $P1334, "$parent"
    unless_null $P1334, vivify_571
    new $P1334, "Undef"
  vivify_571:
    issame $I1335, $P1333, $P1334
    if $I1335, if_1332
    new $P1331, 'Integer'
    set $P1331, $I1335
    goto if_1332_end
  if_1332:
.annotate 'line', 588
    new $P1336, "String"
    assign $P1336, "Already have "
    find_lex $P1337, "$parent"
    unless_null $P1337, vivify_572
    new $P1337, "Undef"
  vivify_572:
    concat $P1338, $P1336, $P1337
    concat $P1339, $P1338, " as a parent class."
    die $P1339
  if_1332_end:
.annotate 'line', 586
    .return ($P1331)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "set_default_parent"  :subid("95_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1353
    .param pmc param_1354
    .param pmc param_1355
.annotate 'line', 594
    .lex "self", param_1353
    .lex "$obj", param_1354
    .lex "$parent", param_1355
.annotate 'line', 595
    find_lex $P1356, "$parent"
    unless_null $P1356, vivify_576
    new $P1356, "Undef"
  vivify_576:
    find_lex $P1357, "self"
    find_lex $P1358, "$?CLASS"
    setattribute $P1357, $P1358, "$!default_parent", $P1356
.annotate 'line', 594
    .return ($P1356)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "add_role"  :subid("96_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1360
    .param pmc param_1361
    .param pmc param_1362
.annotate 'line', 598
    .const 'Sub' $P1370 = "97_1304284948.29" 
    capture_lex $P1370
    .lex "self", param_1360
    .lex "$obj", param_1361
    .lex "$role", param_1362
.annotate 'line', 599
    find_lex $P1364, "self"
    find_lex $P1365, "$?CLASS"
    getattribute $P1366, $P1364, $P1365, "@!roles"
    unless_null $P1366, vivify_577
    $P1366 = root_new ['parrot';'ResizablePMCArray']
  vivify_577:
    defined $I1367, $P1366
    unless $I1367, for_undef_578
    iter $P1363, $P1366
    new $P1382, 'ExceptionHandler'
    set_label $P1382, loop1381_handler
    $P1382."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1382
  loop1381_test:
    unless $P1363, loop1381_done
    shift $P1368, $P1363
  loop1381_redo:
    .const 'Sub' $P1370 = "97_1304284948.29" 
    capture_lex $P1370
    $P1370($P1368)
  loop1381_next:
    goto loop1381_test
  loop1381_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1383, exception, 'type'
    eq $P1383, .CONTROL_LOOP_NEXT, loop1381_next
    eq $P1383, .CONTROL_LOOP_REDO, loop1381_redo
  loop1381_done:
    pop_eh 
  for_undef_578:
.annotate 'line', 604
    find_lex $P1384, "$role"
    unless_null $P1384, vivify_582
    new $P1384, "Undef"
  vivify_582:
    find_lex $P1385, "self"
    find_lex $P1386, "$?CLASS"
    getattribute $P1387, $P1385, $P1386, "@!roles"
    unless_null $P1387, vivify_583
    $P1387 = root_new ['parrot';'ResizablePMCArray']
  vivify_583:
    set $N1388, $P1387
    set $I1389, $N1388
    find_lex $P1390, "self"
    find_lex $P1391, "$?CLASS"
    getattribute $P1392, $P1390, $P1391, "@!roles"
    unless_null $P1392, vivify_584
    $P1392 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1390, $P1391, "@!roles", $P1392
  vivify_584:
    set $P1392[$I1389], $P1384
.annotate 'line', 598
    .return ($P1384)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1369"  :anon :subid("97_1304284948.29") :outer("96_1304284948.29")
    .param pmc param_1371
.annotate 'line', 599
    .lex "$_", param_1371
.annotate 'line', 600
    find_lex $P1374, "$_"
    unless_null $P1374, vivify_579
    new $P1374, "Undef"
  vivify_579:
    find_lex $P1375, "$role"
    unless_null $P1375, vivify_580
    new $P1375, "Undef"
  vivify_580:
    issame $I1376, $P1374, $P1375
    if $I1376, if_1373
    new $P1372, 'Integer'
    set $P1372, $I1376
    goto if_1373_end
  if_1373:
.annotate 'line', 601
    new $P1377, "String"
    assign $P1377, "The role "
    find_lex $P1378, "$role"
    unless_null $P1378, vivify_581
    new $P1378, "Undef"
  vivify_581:
    concat $P1379, $P1377, $P1378
    concat $P1380, $P1379, " has already been added."
    die $P1380
  if_1373_end:
.annotate 'line', 599
    .return ($P1372)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "add_parrot_vtable_mapping"  :subid("98_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1394
    .param pmc param_1395
    .param pmc param_1396
    .param pmc param_1397
.annotate 'line', 607
    .lex "self", param_1394
    .lex "$obj", param_1395
    .lex "$name", param_1396
    .lex "$meth", param_1397
.annotate 'line', 608
    find_lex $P1399, "$name"
    unless_null $P1399, vivify_585
    new $P1399, "Undef"
  vivify_585:
    find_lex $P1400, "self"
    find_lex $P1401, "$?CLASS"
    getattribute $P1402, $P1400, $P1401, "%!parrot_vtable_mapping"
    unless_null $P1402, vivify_586
    $P1402 = root_new ['parrot';'Hash']
  vivify_586:
    set $P1403, $P1402[$P1399]
    unless_null $P1403, vivify_587
    new $P1403, "Undef"
  vivify_587:
    defined $I1404, $P1403
    unless $I1404, if_1398_end
.annotate 'line', 609
    new $P1405, "String"
    assign $P1405, "Class '"
    find_lex $P1406, "self"
    find_lex $P1407, "$?CLASS"
    getattribute $P1408, $P1406, $P1407, "$!name"
    unless_null $P1408, vivify_588
    new $P1408, "Undef"
  vivify_588:
    concat $P1409, $P1405, $P1408
    concat $P1410, $P1409, "' already has a Parrot v-table override for '"
    find_lex $P1411, "$name"
    unless_null $P1411, vivify_589
    new $P1411, "Undef"
  vivify_589:
    concat $P1412, $P1410, $P1411
.annotate 'line', 610
    concat $P1413, $P1412, "'"
.annotate 'line', 611
    die $P1413
  if_1398_end:
.annotate 'line', 613
    find_lex $P1414, "$meth"
    unless_null $P1414, vivify_590
    new $P1414, "Undef"
  vivify_590:
    find_lex $P1415, "$name"
    unless_null $P1415, vivify_591
    new $P1415, "Undef"
  vivify_591:
    find_lex $P1416, "self"
    find_lex $P1417, "$?CLASS"
    getattribute $P1418, $P1416, $P1417, "%!parrot_vtable_mapping"
    unless_null $P1418, vivify_592
    $P1418 = root_new ['parrot';'Hash']
    setattribute $P1416, $P1417, "%!parrot_vtable_mapping", $P1418
  vivify_592:
    set $P1418[$P1415], $P1414
.annotate 'line', 607
    .return ($P1414)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "compose"  :subid("99_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1420
    .param pmc param_1421
.annotate 'line', 616
    .const 'Sub' $P1510 = "102_1304284948.29" 
    capture_lex $P1510
    .const 'Sub' $P1427 = "100_1304284948.29" 
    capture_lex $P1427
    .lex "self", param_1420
    .lex "$obj", param_1421
.annotate 'line', 620
    find_lex $P1423, "self"
    find_lex $P1424, "$?CLASS"
    getattribute $P1425, $P1423, $P1424, "@!roles"
    unless_null $P1425, vivify_593
    $P1425 = root_new ['parrot';'ResizablePMCArray']
  vivify_593:
    unless $P1425, if_1422_end
    .const 'Sub' $P1427 = "100_1304284948.29" 
    capture_lex $P1427
    $P1427()
  if_1422_end:
.annotate 'line', 633
    find_lex $P1475, "self"
    find_lex $P1476, "$?CLASS"
    getattribute $P1477, $P1475, $P1476, "@!parents"
    unless_null $P1477, vivify_610
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_610:
    set $N1478, $P1477
    iseq $I1479, $N1478, 0.0
    if $I1479, if_1474
    new $P1473, 'Integer'
    set $P1473, $I1479
    goto if_1474_end
  if_1474:
    find_lex $P1480, "self"
    find_lex $P1481, "$?CLASS"
    getattribute $P1482, $P1480, $P1481, "$!name"
    unless_null $P1482, vivify_611
    new $P1482, "Undef"
  vivify_611:
    set $S1483, $P1482
    isne $I1484, $S1483, "NQPMu"
    new $P1473, 'Integer'
    set $P1473, $I1484
  if_1474_end:
    unless $P1473, if_1472_end
.annotate 'line', 634
    find_lex $P1485, "self"
    find_lex $P1486, "$obj"
    unless_null $P1486, vivify_612
    new $P1486, "Undef"
  vivify_612:
    find_lex $P1487, "self"
    find_lex $P1488, "$?CLASS"
    getattribute $P1489, $P1487, $P1488, "$!default_parent"
    unless_null $P1489, vivify_613
    new $P1489, "Undef"
  vivify_613:
    $P1485."add_parent"($P1486, $P1489)
  if_1472_end:
.annotate 'line', 639
    find_lex $P1491, "self"
    find_lex $P1492, "$?CLASS"
    getattribute $P1493, $P1491, $P1492, "$!composed"
    unless_null $P1493, vivify_614
    new $P1493, "Undef"
  vivify_614:
    if $P1493, unless_1490_end
.annotate 'line', 640
    find_lex $P1494, "$obj"
    unless_null $P1494, vivify_615
    new $P1494, "Undef"
  vivify_615:
    $P1495 = "compute_c3_mro"($P1494)
    find_lex $P1496, "self"
    find_lex $P1497, "$?CLASS"
    setattribute $P1496, $P1497, "@!mro", $P1495
.annotate 'line', 641
    new $P1498, "Integer"
    assign $P1498, 1
    find_lex $P1499, "self"
    find_lex $P1500, "$?CLASS"
    setattribute $P1499, $P1500, "$!composed", $P1498
  unless_1490_end:
.annotate 'line', 645
    find_lex $P1501, "self"
    find_lex $P1502, "$obj"
    unless_null $P1502, vivify_616
    new $P1502, "Undef"
  vivify_616:
    $P1501."incorporate_multi_candidates"($P1502)
.annotate 'line', 648
    find_lex $P1504, "self"
    find_lex $P1505, "$obj"
    unless_null $P1505, vivify_617
    new $P1505, "Undef"
  vivify_617:
    $P1506 = $P1504."attributes"($P1505, "0" :named("local"))
    defined $I1507, $P1506
    unless $I1507, for_undef_618
    iter $P1503, $P1506
    new $P1516, 'ExceptionHandler'
    set_label $P1516, loop1515_handler
    $P1516."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1516
  loop1515_test:
    unless $P1503, loop1515_done
    shift $P1508, $P1503
  loop1515_redo:
    .const 'Sub' $P1510 = "102_1304284948.29" 
    capture_lex $P1510
    $P1510($P1508)
  loop1515_next:
    goto loop1515_test
  loop1515_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1517, exception, 'type'
    eq $P1517, .CONTROL_LOOP_NEXT, loop1515_next
    eq $P1517, .CONTROL_LOOP_REDO, loop1515_redo
  loop1515_done:
    pop_eh 
  for_undef_618:
.annotate 'line', 651
    find_lex $P1518, "self"
    find_lex $P1519, "$obj"
    unless_null $P1519, vivify_621
    new $P1519, "Undef"
  vivify_621:
    $P1518."publish_type_cache"($P1519)
.annotate 'line', 652
    find_lex $P1520, "self"
    find_lex $P1521, "$obj"
    unless_null $P1521, vivify_622
    new $P1521, "Undef"
  vivify_622:
    $P1520."publish_method_cache"($P1521)
.annotate 'line', 655
    find_lex $P1522, "self"
    find_lex $P1523, "$obj"
    unless_null $P1523, vivify_623
    new $P1523, "Undef"
  vivify_623:
    $P1522."publish_parrot_vtable_mapping"($P1523)
    find_lex $P1524, "$obj"
    unless_null $P1524, vivify_624
    new $P1524, "Undef"
  vivify_624:
.annotate 'line', 616
    .return ($P1524)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1426"  :anon :subid("100_1304284948.29") :outer("99_1304284948.29")
.annotate 'line', 620
    .const 'Sub' $P1437 = "101_1304284948.29" 
    capture_lex $P1437
.annotate 'line', 621
    $P1428 = root_new ['parrot';'ResizablePMCArray']
    .lex "@instantiated_roles", $P1428
.annotate 'line', 620
    find_lex $P1429, "@instantiated_roles"
    unless_null $P1429, vivify_594
    $P1429 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
.annotate 'line', 622
    find_lex $P1431, "self"
    find_lex $P1432, "$?CLASS"
    getattribute $P1433, $P1431, $P1432, "@!roles"
    unless_null $P1433, vivify_595
    $P1433 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    defined $I1434, $P1433
    unless $I1434, for_undef_596
    iter $P1430, $P1433
    new $P1466, 'ExceptionHandler'
    set_label $P1466, loop1465_handler
    $P1466."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1466
  loop1465_test:
    unless $P1430, loop1465_done
    shift $P1435, $P1430
  loop1465_redo:
    .const 'Sub' $P1437 = "101_1304284948.29" 
    capture_lex $P1437
    $P1437($P1435)
  loop1465_next:
    goto loop1465_test
  loop1465_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1467, exception, 'type'
    eq $P1467, .CONTROL_LOOP_NEXT, loop1465_next
    eq $P1467, .CONTROL_LOOP_REDO, loop1465_redo
  loop1465_done:
    pop_eh 
  for_undef_596:
.annotate 'line', 628
    find_lex $P1468, "RoleToClassApplier"
    find_lex $P1469, "$obj"
    unless_null $P1469, vivify_608
    new $P1469, "Undef"
  vivify_608:
    find_lex $P1470, "@instantiated_roles"
    unless_null $P1470, vivify_609
    $P1470 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    $P1471 = $P1468."apply"($P1469, $P1470)
.annotate 'line', 620
    .return ($P1471)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1436"  :anon :subid("101_1304284948.29") :outer("100_1304284948.29")
    .param pmc param_1439
.annotate 'line', 623
    new $P1438, "Undef"
    .lex "$ins", $P1438
    .lex "$_", param_1439
    find_lex $P1440, "$_"
    unless_null $P1440, vivify_597
    new $P1440, "Undef"
  vivify_597:
    get_how $P1441, $P1440
    find_lex $P1442, "$_"
    unless_null $P1442, vivify_598
    new $P1442, "Undef"
  vivify_598:
    find_lex $P1443, "$obj"
    unless_null $P1443, vivify_599
    new $P1443, "Undef"
  vivify_599:
    $P1444 = $P1441."instantiate"($P1442, $P1443)
    store_lex "$ins", $P1444
.annotate 'line', 624
    find_lex $P1445, "@instantiated_roles"
    unless_null $P1445, vivify_600
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_600:
    find_lex $P1446, "$ins"
    unless_null $P1446, vivify_601
    new $P1446, "Undef"
  vivify_601:
    $P1445."push"($P1446)
.annotate 'line', 625
    find_lex $P1447, "$_"
    unless_null $P1447, vivify_602
    new $P1447, "Undef"
  vivify_602:
    find_lex $P1448, "self"
    find_lex $P1449, "$?CLASS"
    getattribute $P1450, $P1448, $P1449, "@!done"
    unless_null $P1450, vivify_603
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_603:
    set $N1451, $P1450
    set $I1452, $N1451
    find_lex $P1453, "self"
    find_lex $P1454, "$?CLASS"
    getattribute $P1455, $P1453, $P1454, "@!done"
    unless_null $P1455, vivify_604
    $P1455 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1453, $P1454, "@!done", $P1455
  vivify_604:
    set $P1455[$I1452], $P1447
.annotate 'line', 626
    find_lex $P1456, "$ins"
    unless_null $P1456, vivify_605
    new $P1456, "Undef"
  vivify_605:
    find_lex $P1457, "self"
    find_lex $P1458, "$?CLASS"
    getattribute $P1459, $P1457, $P1458, "@!done"
    unless_null $P1459, vivify_606
    $P1459 = root_new ['parrot';'ResizablePMCArray']
  vivify_606:
    set $N1460, $P1459
    set $I1461, $N1460
    find_lex $P1462, "self"
    find_lex $P1463, "$?CLASS"
    getattribute $P1464, $P1462, $P1463, "@!done"
    unless_null $P1464, vivify_607
    $P1464 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P1462, $P1463, "@!done", $P1464
  vivify_607:
    set $P1464[$I1461], $P1456
.annotate 'line', 622
    .return ($P1456)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1509"  :anon :subid("102_1304284948.29") :outer("99_1304284948.29")
    .param pmc param_1511
.annotate 'line', 648
    .lex "$_", param_1511
    find_lex $P1512, "$_"
    unless_null $P1512, vivify_619
    new $P1512, "Undef"
  vivify_619:
    find_lex $P1513, "$obj"
    unless_null $P1513, vivify_620
    new $P1513, "Undef"
  vivify_620:
    $P1514 = $P1512."compose"($P1513)
    .return ($P1514)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "incorporate_multi_candidates"  :subid("103_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1526
    .param pmc param_1527
.annotate 'line', 660
    .const 'Sub' $P1542 = "104_1304284948.29" 
    capture_lex $P1542
    .lex "self", param_1526
    .lex "$obj", param_1527
.annotate 'line', 661
    new $P1528, "Undef"
    .lex "$num_todo", $P1528
.annotate 'line', 662
    new $P1529, "Undef"
    .lex "$i", $P1529
.annotate 'line', 661
    find_lex $P1530, "self"
    find_lex $P1531, "$?CLASS"
    getattribute $P1532, $P1530, $P1531, "@!multi_methods_to_incorporate"
    unless_null $P1532, vivify_625
    $P1532 = root_new ['parrot';'ResizablePMCArray']
  vivify_625:
    set $N1533, $P1532
    new $P1534, 'Float'
    set $P1534, $N1533
    store_lex "$num_todo", $P1534
.annotate 'line', 662
    new $P1535, "Integer"
    assign $P1535, 0
    store_lex "$i", $P1535
.annotate 'line', 663
    new $P1651, 'ExceptionHandler'
    set_label $P1651, loop1650_handler
    $P1651."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1651
  loop1650_test:
    find_lex $P1536, "$i"
    unless_null $P1536, vivify_626
    new $P1536, "Undef"
  vivify_626:
    set $N1537, $P1536
    find_lex $P1538, "$num_todo"
    unless_null $P1538, vivify_627
    new $P1538, "Undef"
  vivify_627:
    set $N1539, $P1538
    isne $I1540, $N1537, $N1539
    unless $I1540, loop1650_done
  loop1650_redo:
    .const 'Sub' $P1542 = "104_1304284948.29" 
    capture_lex $P1542
    $P1542()
  loop1650_next:
    goto loop1650_test
  loop1650_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1652, exception, 'type'
    eq $P1652, .CONTROL_LOOP_NEXT, loop1650_next
    eq $P1652, .CONTROL_LOOP_REDO, loop1650_redo
  loop1650_done:
    pop_eh 
.annotate 'line', 660
    .return ($I1540)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1541"  :anon :subid("104_1304284948.29") :outer("103_1304284948.29")
.annotate 'line', 663
    .const 'Sub' $P1578 = "105_1304284948.29" 
    capture_lex $P1578
.annotate 'line', 665
    new $P1543, "Undef"
    .lex "$name", $P1543
.annotate 'line', 666
    new $P1544, "Undef"
    .lex "$code", $P1544
.annotate 'line', 670
    new $P1545, "Undef"
    .lex "$dispatcher", $P1545
.annotate 'line', 665
    find_lex $P1546, "$i"
    unless_null $P1546, vivify_628
    new $P1546, "Undef"
  vivify_628:
    set $I1547, $P1546
    find_lex $P1548, "self"
    find_lex $P1549, "$?CLASS"
    getattribute $P1550, $P1548, $P1549, "@!multi_methods_to_incorporate"
    unless_null $P1550, vivify_629
    $P1550 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    set $P1551, $P1550[$I1547]
    unless_null $P1551, vivify_630
    $P1551 = root_new ['parrot';'Hash']
  vivify_630:
    set $P1552, $P1551["name"]
    unless_null $P1552, vivify_631
    new $P1552, "Undef"
  vivify_631:
    store_lex "$name", $P1552
.annotate 'line', 666
    find_lex $P1553, "$i"
    unless_null $P1553, vivify_632
    new $P1553, "Undef"
  vivify_632:
    set $I1554, $P1553
    find_lex $P1555, "self"
    find_lex $P1556, "$?CLASS"
    getattribute $P1557, $P1555, $P1556, "@!multi_methods_to_incorporate"
    unless_null $P1557, vivify_633
    $P1557 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    set $P1558, $P1557[$I1554]
    unless_null $P1558, vivify_634
    $P1558 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1559, $P1558["code"]
    unless_null $P1559, vivify_635
    new $P1559, "Undef"
  vivify_635:
    store_lex "$code", $P1559
.annotate 'line', 670
    find_lex $P1560, "$name"
    unless_null $P1560, vivify_636
    new $P1560, "Undef"
  vivify_636:
    find_lex $P1561, "self"
    find_lex $P1562, "$?CLASS"
    getattribute $P1563, $P1561, $P1562, "%!methods"
    unless_null $P1563, vivify_637
    $P1563 = root_new ['parrot';'Hash']
  vivify_637:
    set $P1564, $P1563[$P1560]
    unless_null $P1564, vivify_638
    new $P1564, "Undef"
  vivify_638:
    store_lex "$dispatcher", $P1564
.annotate 'line', 671
    find_lex $P1566, "$dispatcher"
    unless_null $P1566, vivify_639
    new $P1566, "Undef"
  vivify_639:
    defined $I1567, $P1566
    if $I1567, if_1565
.annotate 'line', 681
    .const 'Sub' $P1578 = "105_1304284948.29" 
    capture_lex $P1578
    $P1578()
    goto if_1565_end
  if_1565:
.annotate 'line', 674
    find_lex $P1569, "$dispatcher"
    unless_null $P1569, vivify_664
    new $P1569, "Undef"
  vivify_664:
    is_dispatcher $I1570, $P1569
    if $I1570, if_1568
.annotate 'line', 678
    new $P1573, 'String'
    set $P1573, "Cannot have a multi candidate for "
    find_lex $P1574, "$name"
    unless_null $P1574, vivify_665
    new $P1574, "Undef"
  vivify_665:
    concat $P1575, $P1573, $P1574
    concat $P1576, $P1575, " when an only method is also in the class"
    die $P1576
.annotate 'line', 677
    goto if_1568_end
  if_1568:
.annotate 'line', 675
    find_lex $P1571, "$dispatcher"
    unless_null $P1571, vivify_666
    new $P1571, "Undef"
  vivify_666:
    find_lex $P1572, "$code"
    unless_null $P1572, vivify_667
    new $P1572, "Undef"
  vivify_667:
    push_dispatchee $P1571, $P1572
  if_1568_end:
  if_1565_end:
.annotate 'line', 709
    find_lex $P1648, "$i"
    unless_null $P1648, vivify_668
    new $P1648, "Undef"
  vivify_668:
    add $P1649, $P1648, 1
    store_lex "$i", $P1649
.annotate 'line', 663
    .return ($P1649)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1577"  :anon :subid("105_1304284948.29") :outer("104_1304284948.29")
.annotate 'line', 681
    .const 'Sub' $P1595 = "106_1304284948.29" 
    capture_lex $P1595
.annotate 'line', 683
    new $P1579, "Undef"
    .lex "$j", $P1579
.annotate 'line', 684
    new $P1580, "Undef"
    .lex "$found", $P1580
.annotate 'line', 683
    new $P1581, "Integer"
    assign $P1581, 1
    store_lex "$j", $P1581
.annotate 'line', 684
    new $P1582, "Integer"
    assign $P1582, 0
    store_lex "$found", $P1582
.annotate 'line', 685
    new $P1639, 'ExceptionHandler'
    set_label $P1639, loop1638_handler
    $P1639."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1639
  loop1638_test:
    find_lex $P1585, "$j"
    unless_null $P1585, vivify_640
    new $P1585, "Undef"
  vivify_640:
    set $N1586, $P1585
    find_lex $P1587, "self"
    find_lex $P1588, "$?CLASS"
    getattribute $P1589, $P1587, $P1588, "@!mro"
    unless_null $P1589, vivify_641
    $P1589 = root_new ['parrot';'ResizablePMCArray']
  vivify_641:
    set $N1590, $P1589
    isne $I1591, $N1586, $N1590
    if $I1591, if_1584
    new $P1583, 'Integer'
    set $P1583, $I1591
    goto if_1584_end
  if_1584:
    find_lex $P1592, "$found"
    unless_null $P1592, vivify_642
    new $P1592, "Undef"
  vivify_642:
    isfalse $I1593, $P1592
    new $P1583, 'Integer'
    set $P1583, $I1593
  if_1584_end:
    unless $P1583, loop1638_done
  loop1638_redo:
    .const 'Sub' $P1595 = "106_1304284948.29" 
    capture_lex $P1595
    $P1595()
  loop1638_next:
    goto loop1638_test
  loop1638_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1640, exception, 'type'
    eq $P1640, .CONTROL_LOOP_NEXT, loop1638_next
    eq $P1640, .CONTROL_LOOP_REDO, loop1638_redo
  loop1638_done:
    pop_eh 
.annotate 'line', 705
    find_lex $P1643, "$found"
    unless_null $P1643, vivify_662
    new $P1643, "Undef"
  vivify_662:
    unless $P1643, unless_1642
    set $P1641, $P1643
    goto unless_1642_end
  unless_1642:
.annotate 'line', 706
    new $P1644, 'String'
    set $P1644, "Could not find a proto for multi "
    find_lex $P1645, "$name"
    unless_null $P1645, vivify_663
    new $P1645, "Undef"
  vivify_663:
    concat $P1646, $P1644, $P1645
    concat $P1647, $P1646, ", and proto generation is NYI"
    die $P1647
  unless_1642_end:
.annotate 'line', 681
    .return ($P1641)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1594"  :anon :subid("106_1304284948.29") :outer("105_1304284948.29")
.annotate 'line', 685
    .const 'Sub' $P1619 = "107_1304284948.29" 
    capture_lex $P1619
.annotate 'line', 686
    new $P1596, "Undef"
    .lex "$parent", $P1596
.annotate 'line', 687
    $P1597 = root_new ['parrot';'Hash']
    .lex "%meths", $P1597
.annotate 'line', 688
    new $P1598, "Undef"
    .lex "$dispatcher", $P1598
.annotate 'line', 686
    find_lex $P1599, "$j"
    unless_null $P1599, vivify_643
    new $P1599, "Undef"
  vivify_643:
    set $I1600, $P1599
    find_lex $P1601, "self"
    find_lex $P1602, "$?CLASS"
    getattribute $P1603, $P1601, $P1602, "@!mro"
    unless_null $P1603, vivify_644
    $P1603 = root_new ['parrot';'ResizablePMCArray']
  vivify_644:
    set $P1604, $P1603[$I1600]
    unless_null $P1604, vivify_645
    new $P1604, "Undef"
  vivify_645:
    store_lex "$parent", $P1604
.annotate 'line', 687
    find_lex $P1605, "$parent"
    unless_null $P1605, vivify_646
    new $P1605, "Undef"
  vivify_646:
    get_how $P1606, $P1605
    find_lex $P1607, "$parent"
    unless_null $P1607, vivify_647
    new $P1607, "Undef"
  vivify_647:
    $P1608 = $P1606."method_table"($P1607)
    store_lex "%meths", $P1608
.annotate 'line', 688
    find_lex $P1609, "$name"
    unless_null $P1609, vivify_648
    new $P1609, "Undef"
  vivify_648:
    find_lex $P1610, "%meths"
    unless_null $P1610, vivify_649
    $P1610 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1611, $P1610[$P1609]
    unless_null $P1611, vivify_650
    new $P1611, "Undef"
  vivify_650:
    store_lex "$dispatcher", $P1611
.annotate 'line', 689
    find_lex $P1613, "$dispatcher"
    unless_null $P1613, vivify_651
    new $P1613, "Undef"
  vivify_651:
    defined $I1614, $P1613
    unless $I1614, if_1612_end
.annotate 'line', 692
    find_lex $P1616, "$dispatcher"
    unless_null $P1616, vivify_652
    new $P1616, "Undef"
  vivify_652:
    is_dispatcher $I1617, $P1616
    if $I1617, if_1615
.annotate 'line', 700
    new $P1632, 'String'
    set $P1632, "Could not find a proto for multi "
    find_lex $P1633, "$name"
    unless_null $P1633, vivify_653
    new $P1633, "Undef"
  vivify_653:
    concat $P1634, $P1632, $P1633
    concat $P1635, $P1634, " (it may exist, but an only is hiding it if so)"
    die $P1635
.annotate 'line', 699
    goto if_1615_end
  if_1615:
.annotate 'line', 692
    .const 'Sub' $P1619 = "107_1304284948.29" 
    capture_lex $P1619
    $P1619()
  if_1615_end:
  if_1612_end:
.annotate 'line', 703
    find_lex $P1636, "$j"
    unless_null $P1636, vivify_661
    new $P1636, "Undef"
  vivify_661:
    add $P1637, $P1636, 1
    store_lex "$j", $P1637
.annotate 'line', 685
    .return ($P1637)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1618"  :anon :subid("107_1304284948.29") :outer("106_1304284948.29")
.annotate 'line', 694
    $P1620 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_dispatchees", $P1620
.annotate 'line', 692
    find_lex $P1621, "@new_dispatchees"
    unless_null $P1621, vivify_654
    $P1621 = root_new ['parrot';'ResizablePMCArray']
  vivify_654:
.annotate 'line', 695
    find_lex $P1622, "$code"
    unless_null $P1622, vivify_655
    new $P1622, "Undef"
  vivify_655:
    find_lex $P1623, "@new_dispatchees"
    unless_null $P1623, vivify_656
    $P1623 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@new_dispatchees", $P1623
  vivify_656:
    set $P1623[0], $P1622
.annotate 'line', 696
    find_lex $P1624, "$dispatcher"
    unless_null $P1624, vivify_657
    new $P1624, "Undef"
  vivify_657:
    find_lex $P1625, "@new_dispatchees"
    unless_null $P1625, vivify_658
    $P1625 = root_new ['parrot';'ResizablePMCArray']
  vivify_658:
    create_dispatch_and_add_candidates $P1626, $P1624, $P1625
    find_lex $P1627, "$name"
    unless_null $P1627, vivify_659
    new $P1627, "Undef"
  vivify_659:
    find_lex $P1628, "self"
    find_lex $P1629, "$?CLASS"
    getattribute $P1630, $P1628, $P1629, "%!methods"
    unless_null $P1630, vivify_660
    $P1630 = root_new ['parrot';'Hash']
    setattribute $P1628, $P1629, "%!methods", $P1630
  vivify_660:
    set $P1630[$P1627], $P1626
.annotate 'line', 697
    new $P1631, "Integer"
    assign $P1631, 1
    store_lex "$found", $P1631
.annotate 'line', 692
    .return ($P1631)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_type_cache"  :subid("108_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1656
    .param pmc param_1657
.annotate 'line', 802
    .const 'Sub' $P1682 = "110_1304284948.29" 
    capture_lex $P1682
    .const 'Sub' $P1667 = "109_1304284948.29" 
    capture_lex $P1667
    .lex "self", param_1656
    .lex "$obj", param_1657
.annotate 'line', 803
    $P1658 = root_new ['parrot';'ResizablePMCArray']
    .lex "@tc", $P1658
.annotate 'line', 802
    find_lex $P1659, "@tc"
    unless_null $P1659, vivify_669
    $P1659 = root_new ['parrot';'ResizablePMCArray']
  vivify_669:
.annotate 'line', 804
    find_lex $P1661, "self"
    find_lex $P1662, "$?CLASS"
    getattribute $P1663, $P1661, $P1662, "@!mro"
    unless_null $P1663, vivify_670
    $P1663 = root_new ['parrot';'ResizablePMCArray']
  vivify_670:
    defined $I1664, $P1663
    unless $I1664, for_undef_671
    iter $P1660, $P1663
    new $P1673, 'ExceptionHandler'
    set_label $P1673, loop1672_handler
    $P1673."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1673
  loop1672_test:
    unless $P1660, loop1672_done
    shift $P1665, $P1660
  loop1672_redo:
    .const 'Sub' $P1667 = "109_1304284948.29" 
    capture_lex $P1667
    $P1667($P1665)
  loop1672_next:
    goto loop1672_test
  loop1672_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1674, exception, 'type'
    eq $P1674, .CONTROL_LOOP_NEXT, loop1672_next
    eq $P1674, .CONTROL_LOOP_REDO, loop1672_redo
  loop1672_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 805
    find_lex $P1676, "self"
    find_lex $P1677, "$?CLASS"
    getattribute $P1678, $P1676, $P1677, "@!done"
    unless_null $P1678, vivify_674
    $P1678 = root_new ['parrot';'ResizablePMCArray']
  vivify_674:
    defined $I1679, $P1678
    unless $I1679, for_undef_675
    iter $P1675, $P1678
    new $P1688, 'ExceptionHandler'
    set_label $P1688, loop1687_handler
    $P1688."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1688
  loop1687_test:
    unless $P1675, loop1687_done
    shift $P1680, $P1675
  loop1687_redo:
    .const 'Sub' $P1682 = "110_1304284948.29" 
    capture_lex $P1682
    $P1682($P1680)
  loop1687_next:
    goto loop1687_test
  loop1687_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1689, exception, 'type'
    eq $P1689, .CONTROL_LOOP_NEXT, loop1687_next
    eq $P1689, .CONTROL_LOOP_REDO, loop1687_redo
  loop1687_done:
    pop_eh 
  for_undef_675:
.annotate 'line', 806
    find_lex $P1690, "$obj"
    unless_null $P1690, vivify_678
    new $P1690, "Undef"
  vivify_678:
    find_lex $P1691, "@tc"
    unless_null $P1691, vivify_679
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_679:
    publish_type_check_cache $P1690, $P1691
.annotate 'line', 802
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1666"  :anon :subid("109_1304284948.29") :outer("108_1304284948.29")
    .param pmc param_1668
.annotate 'line', 804
    .lex "$_", param_1668
    find_lex $P1669, "@tc"
    unless_null $P1669, vivify_672
    $P1669 = root_new ['parrot';'ResizablePMCArray']
  vivify_672:
    find_lex $P1670, "$_"
    unless_null $P1670, vivify_673
    new $P1670, "Undef"
  vivify_673:
    $P1671 = $P1669."push"($P1670)
    .return ($P1671)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1681"  :anon :subid("110_1304284948.29") :outer("108_1304284948.29")
    .param pmc param_1683
.annotate 'line', 805
    .lex "$_", param_1683
    find_lex $P1684, "@tc"
    unless_null $P1684, vivify_676
    $P1684 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    find_lex $P1685, "$_"
    unless_null $P1685, vivify_677
    new $P1685, "Undef"
  vivify_677:
    $P1686 = $P1684."push"($P1685)
    .return ($P1686)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_method_cache"  :subid("111_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1693
    .param pmc param_1694
.annotate 'line', 809
    .const 'Sub' $P1704 = "112_1304284948.29" 
    capture_lex $P1704
    .lex "self", param_1693
    .lex "$obj", param_1694
.annotate 'line', 812
    $P1695 = root_new ['parrot';'Hash']
    .lex "%cache", $P1695
.annotate 'line', 809
    find_lex $P1696, "%cache"
    unless_null $P1696, vivify_680
    $P1696 = root_new ['parrot';'Hash']
  vivify_680:
.annotate 'line', 813
    find_lex $P1698, "self"
    find_lex $P1699, "$?CLASS"
    getattribute $P1700, $P1698, $P1699, "@!mro"
    unless_null $P1700, vivify_681
    $P1700 = root_new ['parrot';'ResizablePMCArray']
  vivify_681:
    defined $I1701, $P1700
    unless $I1701, for_undef_682
    iter $P1697, $P1700
    new $P1733, 'ExceptionHandler'
    set_label $P1733, loop1732_handler
    $P1733."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1733
  loop1732_test:
    unless $P1697, loop1732_done
    shift $P1702, $P1697
  loop1732_redo:
    .const 'Sub' $P1704 = "112_1304284948.29" 
    capture_lex $P1704
    $P1704($P1702)
  loop1732_next:
    goto loop1732_test
  loop1732_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1734, exception, 'type'
    eq $P1734, .CONTROL_LOOP_NEXT, loop1732_next
    eq $P1734, .CONTROL_LOOP_REDO, loop1732_redo
  loop1732_done:
    pop_eh 
  for_undef_682:
.annotate 'line', 821
    find_lex $P1735, "$obj"
    unless_null $P1735, vivify_693
    new $P1735, "Undef"
  vivify_693:
    find_lex $P1736, "%cache"
    unless_null $P1736, vivify_694
    $P1736 = root_new ['parrot';'Hash']
  vivify_694:
    publish_method_cache $P1735, $P1736
.annotate 'line', 809
    .return ()
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1703"  :anon :subid("112_1304284948.29") :outer("111_1304284948.29")
    .param pmc param_1706
.annotate 'line', 813
    .const 'Sub' $P1716 = "113_1304284948.29" 
    capture_lex $P1716
.annotate 'line', 814
    $P1705 = root_new ['parrot';'Hash']
    .lex "%methods", $P1705
    .lex "$_", param_1706
    find_lex $P1707, "$_"
    unless_null $P1707, vivify_683
    new $P1707, "Undef"
  vivify_683:
    get_how $P1708, $P1707
    find_lex $P1709, "$_"
    unless_null $P1709, vivify_684
    new $P1709, "Undef"
  vivify_684:
    $P1710 = $P1708."method_table"($P1709)
    store_lex "%methods", $P1710
.annotate 'line', 815
    find_lex $P1712, "%methods"
    unless_null $P1712, vivify_685
    $P1712 = root_new ['parrot';'Hash']
  vivify_685:
    defined $I1713, $P1712
    unless $I1713, for_undef_686
    iter $P1711, $P1712
    new $P1730, 'ExceptionHandler'
    set_label $P1730, loop1729_handler
    $P1730."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1730
  loop1729_test:
    unless $P1711, loop1729_done
    shift $P1714, $P1711
  loop1729_redo:
    .const 'Sub' $P1716 = "113_1304284948.29" 
    capture_lex $P1716
    $P1716($P1714)
  loop1729_next:
    goto loop1729_test
  loop1729_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1731, exception, 'type'
    eq $P1731, .CONTROL_LOOP_NEXT, loop1729_next
    eq $P1731, .CONTROL_LOOP_REDO, loop1729_redo
  loop1729_done:
    pop_eh 
  for_undef_686:
.annotate 'line', 813
    .return ($P1711)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1715"  :anon :subid("113_1304284948.29") :outer("112_1304284948.29")
    .param pmc param_1717
.annotate 'line', 815
    .lex "$_", param_1717
.annotate 'line', 816
    find_lex $P1720, "$_"
    unless_null $P1720, vivify_687
    new $P1720, "Undef"
  vivify_687:
    $P1721 = $P1720."key"()
    find_lex $P1722, "%cache"
    unless_null $P1722, vivify_688
    $P1722 = root_new ['parrot';'Hash']
  vivify_688:
    set $P1723, $P1722[$P1721]
    unless_null $P1723, vivify_689
    new $P1723, "Undef"
  vivify_689:
    unless $P1723, unless_1719
    set $P1718, $P1723
    goto unless_1719_end
  unless_1719:
.annotate 'line', 817
    find_lex $P1724, "$_"
    unless_null $P1724, vivify_690
    new $P1724, "Undef"
  vivify_690:
    $P1725 = $P1724."value"()
    find_lex $P1726, "$_"
    unless_null $P1726, vivify_691
    new $P1726, "Undef"
  vivify_691:
    $P1727 = $P1726."key"()
    find_lex $P1728, "%cache"
    unless_null $P1728, vivify_692
    $P1728 = root_new ['parrot';'Hash']
    store_lex "%cache", $P1728
  vivify_692:
    set $P1728[$P1727], $P1725
.annotate 'line', 816
    set $P1718, $P1725
  unless_1719_end:
.annotate 'line', 815
    .return ($P1718)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "publish_parrot_vtable_mapping"  :subid("114_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1738
    .param pmc param_1739
.annotate 'line', 824
    .const 'Sub' $P1749 = "115_1304284948.29" 
    capture_lex $P1749
    .lex "self", param_1738
    .lex "$obj", param_1739
.annotate 'line', 825
    $P1740 = root_new ['parrot';'Hash']
    .lex "%mapping", $P1740
.annotate 'line', 824
    find_lex $P1741, "%mapping"
    unless_null $P1741, vivify_695
    $P1741 = root_new ['parrot';'Hash']
  vivify_695:
.annotate 'line', 826
    find_lex $P1743, "self"
    find_lex $P1744, "$?CLASS"
    getattribute $P1745, $P1743, $P1744, "@!mro"
    unless_null $P1745, vivify_696
    $P1745 = root_new ['parrot';'ResizablePMCArray']
  vivify_696:
    defined $I1746, $P1745
    unless $I1746, for_undef_697
    iter $P1742, $P1745
    new $P1778, 'ExceptionHandler'
    set_label $P1778, loop1777_handler
    $P1778."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1778
  loop1777_test:
    unless $P1742, loop1777_done
    shift $P1747, $P1742
  loop1777_redo:
    .const 'Sub' $P1749 = "115_1304284948.29" 
    capture_lex $P1749
    $P1749($P1747)
  loop1777_next:
    goto loop1777_test
  loop1777_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1779, exception, 'type'
    eq $P1779, .CONTROL_LOOP_NEXT, loop1777_next
    eq $P1779, .CONTROL_LOOP_REDO, loop1777_redo
  loop1777_done:
    pop_eh 
  for_undef_697:
.annotate 'line', 834
    find_lex $P1782, "%mapping"
    unless_null $P1782, vivify_708
    $P1782 = root_new ['parrot';'Hash']
  vivify_708:
    set $N1783, $P1782
    if $N1783, if_1781
    new $P1780, 'Float'
    set $P1780, $N1783
    goto if_1781_end
  if_1781:
.annotate 'line', 835
    find_lex $P1784, "$obj"
    unless_null $P1784, vivify_709
    new $P1784, "Undef"
  vivify_709:
    find_lex $P1785, "%mapping"
    unless_null $P1785, vivify_710
    $P1785 = root_new ['parrot';'Hash']
  vivify_710:
    stable_publish_vtable_mapping $P1784, $P1785
  if_1781_end:
.annotate 'line', 824
    .return ($P1780)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1748"  :anon :subid("115_1304284948.29") :outer("114_1304284948.29")
    .param pmc param_1751
.annotate 'line', 826
    .const 'Sub' $P1761 = "116_1304284948.29" 
    capture_lex $P1761
.annotate 'line', 827
    $P1750 = root_new ['parrot';'Hash']
    .lex "%map", $P1750
    .lex "$_", param_1751
    find_lex $P1752, "$_"
    unless_null $P1752, vivify_698
    new $P1752, "Undef"
  vivify_698:
    get_how $P1753, $P1752
    find_lex $P1754, "$_"
    unless_null $P1754, vivify_699
    new $P1754, "Undef"
  vivify_699:
    $P1755 = $P1753."parrot_vtable_mappings"($P1754, 1 :named("local"))
    store_lex "%map", $P1755
.annotate 'line', 828
    find_lex $P1757, "%map"
    unless_null $P1757, vivify_700
    $P1757 = root_new ['parrot';'Hash']
  vivify_700:
    defined $I1758, $P1757
    unless $I1758, for_undef_701
    iter $P1756, $P1757
    new $P1775, 'ExceptionHandler'
    set_label $P1775, loop1774_handler
    $P1775."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1775
  loop1774_test:
    unless $P1756, loop1774_done
    shift $P1759, $P1756
  loop1774_redo:
    .const 'Sub' $P1761 = "116_1304284948.29" 
    capture_lex $P1761
    $P1761($P1759)
  loop1774_next:
    goto loop1774_test
  loop1774_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1776, exception, 'type'
    eq $P1776, .CONTROL_LOOP_NEXT, loop1774_next
    eq $P1776, .CONTROL_LOOP_REDO, loop1774_redo
  loop1774_done:
    pop_eh 
  for_undef_701:
.annotate 'line', 826
    .return ($P1756)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1760"  :anon :subid("116_1304284948.29") :outer("115_1304284948.29")
    .param pmc param_1762
.annotate 'line', 828
    .lex "$_", param_1762
.annotate 'line', 829
    find_lex $P1765, "$_"
    unless_null $P1765, vivify_702
    new $P1765, "Undef"
  vivify_702:
    $P1766 = $P1765."key"()
    find_lex $P1767, "%mapping"
    unless_null $P1767, vivify_703
    $P1767 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1768, $P1767[$P1766]
    unless_null $P1768, vivify_704
    new $P1768, "Undef"
  vivify_704:
    unless $P1768, unless_1764
    set $P1763, $P1768
    goto unless_1764_end
  unless_1764:
.annotate 'line', 830
    find_lex $P1769, "$_"
    unless_null $P1769, vivify_705
    new $P1769, "Undef"
  vivify_705:
    $P1770 = $P1769."value"()
    find_lex $P1771, "$_"
    unless_null $P1771, vivify_706
    new $P1771, "Undef"
  vivify_706:
    $P1772 = $P1771."key"()
    find_lex $P1773, "%mapping"
    unless_null $P1773, vivify_707
    $P1773 = root_new ['parrot';'Hash']
    store_lex "%mapping", $P1773
  vivify_707:
    set $P1773[$P1772], $P1770
.annotate 'line', 829
    set $P1763, $P1770
  unless_1764_end:
.annotate 'line', 828
    .return ($P1763)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parents"  :subid("117_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1787
    .param pmc param_1788
    .param pmc param_1789 :optional :named("local")
    .param int has_param_1789 :opt_flag
.annotate 'line', 843
    .lex "self", param_1787
    .lex "$obj", param_1788
    if has_param_1789, optparam_711
    new $P1790, "Undef"
    set param_1789, $P1790
  optparam_711:
    .lex "$local", param_1789
.annotate 'line', 844
    find_lex $P1793, "$local"
    unless_null $P1793, vivify_712
    new $P1793, "Undef"
  vivify_712:
    if $P1793, if_1792
    find_lex $P1797, "self"
    find_lex $P1798, "$?CLASS"
    getattribute $P1799, $P1797, $P1798, "@!mro"
    unless_null $P1799, vivify_713
    $P1799 = root_new ['parrot';'ResizablePMCArray']
  vivify_713:
    set $P1791, $P1799
    goto if_1792_end
  if_1792:
    find_lex $P1794, "self"
    find_lex $P1795, "$?CLASS"
    getattribute $P1796, $P1794, $P1795, "@!parents"
    unless_null $P1796, vivify_714
    $P1796 = root_new ['parrot';'ResizablePMCArray']
  vivify_714:
    set $P1791, $P1796
  if_1792_end:
.annotate 'line', 843
    .return ($P1791)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "roles"  :subid("118_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1801
    .param pmc param_1802
    .param pmc param_1803 :named("local")
.annotate 'line', 847
    .lex "self", param_1801
    .lex "$obj", param_1802
    .lex "$local", param_1803
    find_lex $P1804, "self"
    find_lex $P1805, "$?CLASS"
    getattribute $P1806, $P1804, $P1805, "@!roles"
    unless_null $P1806, vivify_715
    $P1806 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    .return ($P1806)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "methods"  :subid("119_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1808
    .param pmc param_1809
    .param pmc param_1810 :named("local")
.annotate 'line', 851
    .const 'Sub' $P1820 = "120_1304284948.29" 
    capture_lex $P1820
    .lex "self", param_1808
    .lex "$obj", param_1809
    .lex "$local", param_1810
.annotate 'line', 852
    $P1811 = root_new ['parrot';'ResizablePMCArray']
    .lex "@meths", $P1811
.annotate 'line', 851
    find_lex $P1812, "@meths"
    unless_null $P1812, vivify_716
    $P1812 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
.annotate 'line', 853
    find_lex $P1814, "self"
    find_lex $P1815, "$?CLASS"
    getattribute $P1816, $P1814, $P1815, "%!methods"
    unless_null $P1816, vivify_717
    $P1816 = root_new ['parrot';'Hash']
  vivify_717:
    defined $I1817, $P1816
    unless $I1817, for_undef_718
    iter $P1813, $P1816
    new $P1827, 'ExceptionHandler'
    set_label $P1827, loop1826_handler
    $P1827."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1827
  loop1826_test:
    unless $P1813, loop1826_done
    shift $P1818, $P1813
  loop1826_redo:
    .const 'Sub' $P1820 = "120_1304284948.29" 
    capture_lex $P1820
    $P1820($P1818)
  loop1826_next:
    goto loop1826_test
  loop1826_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1828, exception, 'type'
    eq $P1828, .CONTROL_LOOP_NEXT, loop1826_next
    eq $P1828, .CONTROL_LOOP_REDO, loop1826_redo
  loop1826_done:
    pop_eh 
  for_undef_718:
    find_lex $P1829, "@meths"
    unless_null $P1829, vivify_721
    $P1829 = root_new ['parrot';'ResizablePMCArray']
  vivify_721:
.annotate 'line', 851
    .return ($P1829)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1819"  :anon :subid("120_1304284948.29") :outer("119_1304284948.29")
    .param pmc param_1821
.annotate 'line', 853
    .lex "$_", param_1821
.annotate 'line', 854
    find_lex $P1822, "@meths"
    unless_null $P1822, vivify_719
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_719:
    find_lex $P1823, "$_"
    unless_null $P1823, vivify_720
    new $P1823, "Undef"
  vivify_720:
    $P1824 = $P1823."value"()
    $P1825 = $P1822."push"($P1824)
.annotate 'line', 853
    .return ($P1825)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "method_table"  :subid("121_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1831
    .param pmc param_1832
.annotate 'line', 859
    .lex "self", param_1831
    .lex "$obj", param_1832
    find_lex $P1833, "self"
    find_lex $P1834, "$?CLASS"
    getattribute $P1835, $P1833, $P1834, "%!methods"
    unless_null $P1835, vivify_722
    $P1835 = root_new ['parrot';'Hash']
  vivify_722:
    .return ($P1835)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "name"  :subid("122_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1837
    .param pmc param_1838
.annotate 'line', 863
    .lex "self", param_1837
    .lex "$obj", param_1838
    find_lex $P1839, "self"
    find_lex $P1840, "$?CLASS"
    getattribute $P1841, $P1839, $P1840, "$!name"
    unless_null $P1841, vivify_723
    new $P1841, "Undef"
  vivify_723:
    .return ($P1841)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "attributes"  :subid("123_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1843
    .param pmc param_1844
    .param pmc param_1845 :named("local")
.annotate 'line', 867
    .const 'Sub' $P1855 = "124_1304284948.29" 
    capture_lex $P1855
    .lex "self", param_1843
    .lex "$obj", param_1844
    .lex "$local", param_1845
.annotate 'line', 868
    $P1846 = root_new ['parrot';'ResizablePMCArray']
    .lex "@attrs", $P1846
.annotate 'line', 867
    find_lex $P1847, "@attrs"
    unless_null $P1847, vivify_724
    $P1847 = root_new ['parrot';'ResizablePMCArray']
  vivify_724:
.annotate 'line', 869
    find_lex $P1849, "self"
    find_lex $P1850, "$?CLASS"
    getattribute $P1851, $P1849, $P1850, "%!attributes"
    unless_null $P1851, vivify_725
    $P1851 = root_new ['parrot';'Hash']
  vivify_725:
    defined $I1852, $P1851
    unless $I1852, for_undef_726
    iter $P1848, $P1851
    new $P1862, 'ExceptionHandler'
    set_label $P1862, loop1861_handler
    $P1862."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1862
  loop1861_test:
    unless $P1848, loop1861_done
    shift $P1853, $P1848
  loop1861_redo:
    .const 'Sub' $P1855 = "124_1304284948.29" 
    capture_lex $P1855
    $P1855($P1853)
  loop1861_next:
    goto loop1861_test
  loop1861_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1863, exception, 'type'
    eq $P1863, .CONTROL_LOOP_NEXT, loop1861_next
    eq $P1863, .CONTROL_LOOP_REDO, loop1861_redo
  loop1861_done:
    pop_eh 
  for_undef_726:
    find_lex $P1864, "@attrs"
    unless_null $P1864, vivify_729
    $P1864 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
.annotate 'line', 867
    .return ($P1864)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "_block1854"  :anon :subid("124_1304284948.29") :outer("123_1304284948.29")
    .param pmc param_1856
.annotate 'line', 869
    .lex "$_", param_1856
.annotate 'line', 870
    find_lex $P1857, "@attrs"
    unless_null $P1857, vivify_727
    $P1857 = root_new ['parrot';'ResizablePMCArray']
  vivify_727:
    find_lex $P1858, "$_"
    unless_null $P1858, vivify_728
    new $P1858, "Undef"
  vivify_728:
    $P1859 = $P1858."value"()
    $P1860 = $P1857."push"($P1859)
.annotate 'line', 869
    .return ($P1860)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.sub "parrot_vtable_mappings"  :subid("125_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1866
    .param pmc param_1867
    .param pmc param_1868 :named("local")
.annotate 'line', 875
    .lex "self", param_1866
    .lex "$obj", param_1867
    .lex "$local", param_1868
    find_lex $P1869, "self"
    find_lex $P1870, "$?CLASS"
    getattribute $P1871, $P1869, $P1870, "%!parrot_vtable_mapping"
    unless_null $P1871, vivify_730
    $P1871 = root_new ['parrot';'Hash']
  vivify_730:
    .return ($P1871)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "isa"  :subid("126_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1875
    .param pmc param_1876
    .param pmc param_1877
.annotate 'line', 883
    new $P1874, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1874, control_1873
    push_eh $P1874
    .lex "self", param_1875
    .lex "$obj", param_1876
    .lex "$check", param_1877
.annotate 'line', 884
    new $P1878, "Undef"
    .lex "$check-class", $P1878
.annotate 'line', 885
    new $P1879, "Undef"
    .lex "$i", $P1879
.annotate 'line', 884
    find_lex $P1880, "$check"
    unless_null $P1880, vivify_731
    new $P1880, "Undef"
  vivify_731:
    get_what $P1881, $P1880
    store_lex "$check-class", $P1881
.annotate 'line', 885
    find_lex $P1882, "self"
    find_lex $P1883, "$?CLASS"
    getattribute $P1884, $P1882, $P1883, "@!mro"
    unless_null $P1884, vivify_732
    $P1884 = root_new ['parrot';'ResizablePMCArray']
  vivify_732:
    set $N1885, $P1884
    new $P1886, 'Float'
    set $P1886, $N1885
    store_lex "$i", $P1886
.annotate 'line', 886
    new $P1904, 'ExceptionHandler'
    set_label $P1904, loop1903_handler
    $P1904."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1904
  loop1903_test:
    find_lex $P1887, "$i"
    unless_null $P1887, vivify_733
    new $P1887, "Undef"
  vivify_733:
    set $N1888, $P1887
    isgt $I1889, $N1888, 0.0
    unless $I1889, loop1903_done
  loop1903_redo:
.annotate 'line', 887
    find_lex $P1890, "$i"
    unless_null $P1890, vivify_734
    new $P1890, "Undef"
  vivify_734:
    sub $P1891, $P1890, 1
    store_lex "$i", $P1891
.annotate 'line', 888
    find_lex $P1893, "$i"
    unless_null $P1893, vivify_735
    new $P1893, "Undef"
  vivify_735:
    set $I1894, $P1893
    find_lex $P1895, "self"
    find_lex $P1896, "$?CLASS"
    getattribute $P1897, $P1895, $P1896, "@!mro"
    unless_null $P1897, vivify_736
    $P1897 = root_new ['parrot';'ResizablePMCArray']
  vivify_736:
    set $P1898, $P1897[$I1894]
    unless_null $P1898, vivify_737
    new $P1898, "Undef"
  vivify_737:
    find_lex $P1899, "$check-class"
    unless_null $P1899, vivify_738
    new $P1899, "Undef"
  vivify_738:
    issame $I1900, $P1898, $P1899
    unless $I1900, if_1892_end
.annotate 'line', 889
    new $P1901, "Exception"
    set $P1901['type'], .CONTROL_RETURN
    new $P1902, "Integer"
    assign $P1902, 1
    setattribute $P1901, 'payload', $P1902
    throw $P1901
  if_1892_end:
  loop1903_next:
.annotate 'line', 886
    goto loop1903_test
  loop1903_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1905, exception, 'type'
    eq $P1905, .CONTROL_LOOP_NEXT, loop1903_next
    eq $P1905, .CONTROL_LOOP_REDO, loop1903_redo
  loop1903_done:
    pop_eh 
.annotate 'line', 892
    new $P1906, "Exception"
    set $P1906['type'], .CONTROL_RETURN
    new $P1907, "Integer"
    assign $P1907, 0
    setattribute $P1906, 'payload', $P1907
    throw $P1906
.annotate 'line', 883
    .return ()
  control_1873:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1908, exception, "payload"
    .return ($P1908)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "does"  :subid("127_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1912
    .param pmc param_1913
    .param pmc param_1914
.annotate 'line', 895
    new $P1911, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1911, control_1910
    push_eh $P1911
    .lex "self", param_1912
    .lex "$obj", param_1913
    .lex "$check", param_1914
.annotate 'line', 896
    new $P1915, "Undef"
    .lex "$i", $P1915
    find_lex $P1916, "self"
    find_lex $P1917, "$?CLASS"
    getattribute $P1918, $P1916, $P1917, "@!done"
    unless_null $P1918, vivify_739
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    set $N1919, $P1918
    new $P1920, 'Float'
    set $P1920, $N1919
    store_lex "$i", $P1920
.annotate 'line', 897
    new $P1938, 'ExceptionHandler'
    set_label $P1938, loop1937_handler
    $P1938."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1938
  loop1937_test:
    find_lex $P1921, "$i"
    unless_null $P1921, vivify_740
    new $P1921, "Undef"
  vivify_740:
    set $N1922, $P1921
    isgt $I1923, $N1922, 0.0
    unless $I1923, loop1937_done
  loop1937_redo:
.annotate 'line', 898
    find_lex $P1924, "$i"
    unless_null $P1924, vivify_741
    new $P1924, "Undef"
  vivify_741:
    sub $P1925, $P1924, 1
    store_lex "$i", $P1925
.annotate 'line', 899
    find_lex $P1927, "$i"
    unless_null $P1927, vivify_742
    new $P1927, "Undef"
  vivify_742:
    set $I1928, $P1927
    find_lex $P1929, "self"
    find_lex $P1930, "$?CLASS"
    getattribute $P1931, $P1929, $P1930, "@!done"
    unless_null $P1931, vivify_743
    $P1931 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    set $P1932, $P1931[$I1928]
    unless_null $P1932, vivify_744
    new $P1932, "Undef"
  vivify_744:
    find_lex $P1933, "$check"
    unless_null $P1933, vivify_745
    new $P1933, "Undef"
  vivify_745:
    issame $I1934, $P1932, $P1933
    unless $I1934, if_1926_end
.annotate 'line', 900
    new $P1935, "Exception"
    set $P1935['type'], .CONTROL_RETURN
    new $P1936, "Integer"
    assign $P1936, 1
    setattribute $P1935, 'payload', $P1936
    throw $P1935
  if_1926_end:
  loop1937_next:
.annotate 'line', 897
    goto loop1937_test
  loop1937_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1939, exception, 'type'
    eq $P1939, .CONTROL_LOOP_NEXT, loop1937_next
    eq $P1939, .CONTROL_LOOP_REDO, loop1937_redo
  loop1937_done:
    pop_eh 
.annotate 'line', 903
    new $P1940, "Exception"
    set $P1940['type'], .CONTROL_RETURN
    new $P1941, "Integer"
    assign $P1941, 0
    setattribute $P1940, 'payload', $P1941
    throw $P1940
.annotate 'line', 895
    .return ()
  control_1910:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1942, exception, "payload"
    .return ($P1942)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "can"  :subid("128_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1946
    .param pmc param_1947
    .param pmc param_1948
.annotate 'line', 906
    .const 'Sub' $P1956 = "129_1304284948.29" 
    capture_lex $P1956
    new $P1945, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1945, control_1944
    push_eh $P1945
    .lex "self", param_1946
    .lex "$obj", param_1947
    .lex "$name", param_1948
.annotate 'line', 907
    find_lex $P1950, "self"
    find_lex $P1951, "$?CLASS"
    getattribute $P1952, $P1950, $P1951, "@!mro"
    unless_null $P1952, vivify_746
    $P1952 = root_new ['parrot';'ResizablePMCArray']
  vivify_746:
    defined $I1953, $P1952
    unless $I1953, for_undef_747
    iter $P1949, $P1952
    new $P1974, 'ExceptionHandler'
    set_label $P1974, loop1973_handler
    $P1974."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1974
  loop1973_test:
    unless $P1949, loop1973_done
    shift $P1954, $P1949
  loop1973_redo:
    .const 'Sub' $P1956 = "129_1304284948.29" 
    capture_lex $P1956
    $P1956($P1954)
  loop1973_next:
    goto loop1973_test
  loop1973_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1975, exception, 'type'
    eq $P1975, .CONTROL_LOOP_NEXT, loop1973_next
    eq $P1975, .CONTROL_LOOP_REDO, loop1973_redo
  loop1973_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 914
    new $P1976, "Exception"
    set $P1976['type'], .CONTROL_RETURN
    new $P1977, "Integer"
    assign $P1977, 0
    setattribute $P1976, 'payload', $P1977
    throw $P1976
.annotate 'line', 906
    .return ()
  control_1944:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1978, exception, "payload"
    .return ($P1978)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1955"  :anon :subid("129_1304284948.29") :outer("128_1304284948.29")
    .param pmc param_1959
.annotate 'line', 908
    $P1957 = root_new ['parrot';'Hash']
    .lex "%meths", $P1957
.annotate 'line', 909
    new $P1958, "Undef"
    .lex "$can", $P1958
    .lex "$_", param_1959
.annotate 'line', 908
    find_lex $P1960, "$_"
    unless_null $P1960, vivify_748
    new $P1960, "Undef"
  vivify_748:
    get_how $P1961, $P1960
    find_lex $P1962, "$obj"
    unless_null $P1962, vivify_749
    new $P1962, "Undef"
  vivify_749:
    $P1963 = $P1961."method_table"($P1962)
    store_lex "%meths", $P1963
.annotate 'line', 909
    find_lex $P1964, "$name"
    unless_null $P1964, vivify_750
    new $P1964, "Undef"
  vivify_750:
    find_lex $P1965, "%meths"
    unless_null $P1965, vivify_751
    $P1965 = root_new ['parrot';'Hash']
  vivify_751:
    set $P1966, $P1965[$P1964]
    unless_null $P1966, vivify_752
    new $P1966, "Undef"
  vivify_752:
    store_lex "$can", $P1966
.annotate 'line', 910
    find_lex $P1969, "$can"
    unless_null $P1969, vivify_753
    new $P1969, "Undef"
  vivify_753:
    defined $I1970, $P1969
    if $I1970, if_1968
    new $P1967, 'Integer'
    set $P1967, $I1970
    goto if_1968_end
  if_1968:
.annotate 'line', 911
    new $P1971, "Exception"
    set $P1971['type'], .CONTROL_RETURN
    find_lex $P1972, "$can"
    unless_null $P1972, vivify_754
    new $P1972, "Undef"
  vivify_754:
    setattribute $P1971, 'payload', $P1972
    throw $P1971
  if_1968_end:
.annotate 'line', 907
    .return ($P1967)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "find_method"  :subid("130_1304284948.29") :outer("76_1304284948.29")
    .param pmc param_1982
    .param pmc param_1983
    .param pmc param_1984
.annotate 'line', 920
    .const 'Sub' $P1992 = "131_1304284948.29" 
    capture_lex $P1992
    new $P1981, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1981, control_1980
    push_eh $P1981
    .lex "self", param_1982
    .lex "$obj", param_1983
    .lex "$name", param_1984
.annotate 'line', 921
    find_lex $P1986, "self"
    find_lex $P1987, "$?CLASS"
    getattribute $P1988, $P1986, $P1987, "@!mro"
    unless_null $P1988, vivify_755
    $P1988 = root_new ['parrot';'ResizablePMCArray']
  vivify_755:
    defined $I1989, $P1988
    unless $I1989, for_undef_756
    iter $P1985, $P1988
    new $P2010, 'ExceptionHandler'
    set_label $P2010, loop2009_handler
    $P2010."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2010
  loop2009_test:
    unless $P1985, loop2009_done
    shift $P1990, $P1985
  loop2009_redo:
    .const 'Sub' $P1992 = "131_1304284948.29" 
    capture_lex $P1992
    $P1992($P1990)
  loop2009_next:
    goto loop2009_test
  loop2009_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2011, exception, 'type'
    eq $P2011, .CONTROL_LOOP_NEXT, loop2009_next
    eq $P2011, .CONTROL_LOOP_REDO, loop2009_redo
  loop2009_done:
    pop_eh 
  for_undef_756:
.annotate 'line', 928
    null $P2012
.annotate 'line', 920
    .return ($P2012)
  control_1980:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2013, exception, "payload"
    .return ($P2013)
.end


.HLL "nqp"

.namespace ["NQPClassHOW"]
.include "except_types.pasm"
.sub "_block1991"  :anon :subid("131_1304284948.29") :outer("130_1304284948.29")
    .param pmc param_1995
.annotate 'line', 922
    $P1993 = root_new ['parrot';'Hash']
    .lex "%meths", $P1993
.annotate 'line', 923
    new $P1994, "Undef"
    .lex "$found", $P1994
    .lex "$_", param_1995
.annotate 'line', 922
    find_lex $P1996, "$_"
    unless_null $P1996, vivify_757
    new $P1996, "Undef"
  vivify_757:
    get_how $P1997, $P1996
    find_lex $P1998, "$obj"
    unless_null $P1998, vivify_758
    new $P1998, "Undef"
  vivify_758:
    $P1999 = $P1997."method_table"($P1998)
    store_lex "%meths", $P1999
.annotate 'line', 923
    find_lex $P2000, "$name"
    unless_null $P2000, vivify_759
    new $P2000, "Undef"
  vivify_759:
    find_lex $P2001, "%meths"
    unless_null $P2001, vivify_760
    $P2001 = root_new ['parrot';'Hash']
  vivify_760:
    set $P2002, $P2001[$P2000]
    unless_null $P2002, vivify_761
    new $P2002, "Undef"
  vivify_761:
    store_lex "$found", $P2002
.annotate 'line', 924
    find_lex $P2005, "$found"
    unless_null $P2005, vivify_762
    new $P2005, "Undef"
  vivify_762:
    defined $I2006, $P2005
    if $I2006, if_2004
    new $P2003, 'Integer'
    set $P2003, $I2006
    goto if_2004_end
  if_2004:
.annotate 'line', 925
    new $P2007, "Exception"
    set $P2007['type'], .CONTROL_RETURN
    find_lex $P2008, "$found"
    unless_null $P2008, vivify_763
    new $P2008, "Undef"
  vivify_763:
    setattribute $P2007, 'payload', $P2008
    throw $P2007
  if_2004_end:
.annotate 'line', 921
    .return ($P2003)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "_block2015"  :subid("132_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 933
    .const 'Sub' $P2070 = "140_1304284948.29" 
    capture_lex $P2070
    .const 'Sub' $P2064 = "139_1304284948.29" 
    capture_lex $P2064
    .const 'Sub' $P2060 = "138_1304284948.29" 
    capture_lex $P2060
    .const 'Sub' $P2055 = "137_1304284948.29" 
    capture_lex $P2055
    .const 'Sub' $P2050 = "136_1304284948.29" 
    capture_lex $P2050
    .const 'Sub' $P2036 = "135_1304284948.29" 
    capture_lex $P2036
    .const 'Sub' $P2029 = "134_1304284948.29" 
    capture_lex $P2029
    .const 'Sub' $P2019 = "133_1304284948.29" 
    capture_lex $P2019
    .lex "$?PACKAGE", $P2017
    .lex "$?CLASS", $P2018
.annotate 'line', 973
    .const 'Sub' $P2070 = "140_1304284948.29" 
    newclosure $P2076, $P2070
.annotate 'line', 933
    .return ($P2076)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new"  :subid("133_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2020
    .param pmc param_2021 :optional :named("name")
    .param int has_param_2021 :opt_flag
.annotate 'line', 937
    .lex "self", param_2020
    if has_param_2021, optparam_764
    new $P2022, "Undef"
    set param_2021, $P2022
  optparam_764:
    .lex "$name", param_2021
.annotate 'line', 938
    new $P2023, "Undef"
    .lex "$obj", $P2023
    find_lex $P2024, "self"
    repr_instance_of $P2025, $P2024
    store_lex "$obj", $P2025
.annotate 'line', 939
    find_lex $P2026, "$obj"
    unless_null $P2026, vivify_765
    new $P2026, "Undef"
  vivify_765:
    find_lex $P2027, "$name"
    unless_null $P2027, vivify_766
    new $P2027, "Undef"
  vivify_766:
    $P2026."BUILD"($P2027 :named("name"))
    find_lex $P2028, "$obj"
    unless_null $P2028, vivify_767
    new $P2028, "Undef"
  vivify_767:
.annotate 'line', 937
    .return ($P2028)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "BUILD"  :subid("134_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2030
    .param pmc param_2031 :optional :named("name")
    .param int has_param_2031 :opt_flag
.annotate 'line', 943
    .lex "self", param_2030
    if has_param_2031, optparam_768
    new $P2032, "Undef"
    set param_2031, $P2032
  optparam_768:
    .lex "$name", param_2031
.annotate 'line', 944
    find_lex $P2033, "$name"
    unless_null $P2033, vivify_769
    new $P2033, "Undef"
  vivify_769:
    find_lex $P2034, "self"
    find_lex $P2035, "$?CLASS"
    setattribute $P2034, $P2035, "$!name", $P2033
.annotate 'line', 943
    .return ($P2033)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "new_type"  :subid("135_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2037
    .param pmc param_2040 :named("repr")
    .param pmc param_2038 :optional :named("name")
    .param int has_param_2038 :opt_flag
.annotate 'line', 950
    .lex "self", param_2037
    if has_param_2038, optparam_770
    new $P2039, "String"
    assign $P2039, "<anon>"
    set param_2038, $P2039
  optparam_770:
    .lex "$name", param_2038
    .lex "$repr", param_2040
.annotate 'line', 951
    new $P2041, "Undef"
    .lex "$metaclass", $P2041
    find_lex $P2042, "self"
    find_lex $P2043, "$name"
    unless_null $P2043, vivify_771
    new $P2043, "Undef"
  vivify_771:
    $P2044 = $P2042."new"($P2043 :named("name"))
    store_lex "$metaclass", $P2044
.annotate 'line', 953
    find_lex $P2045, "$metaclass"
    unless_null $P2045, vivify_772
    new $P2045, "Undef"
  vivify_772:
    find_lex $P2046, "$repr"
    unless_null $P2046, vivify_773
    new $P2046, "Undef"
  vivify_773:
    set $S2047, $P2046
    repr_type_object_for $P2048, $P2045, $S2047
    $P2049 = root_new ['parrot';'Hash']
    set_who $P2048, $P2049
.annotate 'line', 950
    .return ($P2048)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_method"  :subid("136_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2051
    .param pmc param_2052
    .param pmc param_2053
    .param pmc param_2054
.annotate 'line', 957
    .lex "self", param_2051
    .lex "$obj", param_2052
    .lex "$name", param_2053
    .lex "$code_obj", param_2054
.annotate 'line', 958
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 957
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_multi_method"  :subid("137_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2056
    .param pmc param_2057
    .param pmc param_2058
    .param pmc param_2059
.annotate 'line', 961
    .lex "self", param_2056
    .lex "$obj", param_2057
    .lex "$name", param_2058
    .lex "$code_obj", param_2059
.annotate 'line', 962
    die "Native types may not have methods (must be boxed to call method)"
.annotate 'line', 961
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "add_attribute"  :subid("138_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2061
    .param pmc param_2062
    .param pmc param_2063
.annotate 'line', 965
    .lex "self", param_2061
    .lex "$obj", param_2062
    .lex "$meta_attr", param_2063
.annotate 'line', 966
    die "Native types may not have attributes"
.annotate 'line', 965
    .return ()
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "compose"  :subid("139_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2065
    .param pmc param_2066
.annotate 'line', 969
    .lex "self", param_2065
    .lex "$obj", param_2066
.annotate 'line', 970
    new $P2067, "Integer"
    assign $P2067, 1
    find_lex $P2068, "self"
    find_lex $P2069, "$?CLASS"
    setattribute $P2068, $P2069, "$!composed", $P2067
.annotate 'line', 969
    .return ($P2067)
.end


.HLL "nqp"

.namespace ["NQPNativeHOW"]
.sub "name"  :subid("140_1304284948.29") :outer("132_1304284948.29")
    .param pmc param_2071
    .param pmc param_2072
.annotate 'line', 973
    .lex "self", param_2071
    .lex "$obj", param_2072
    find_lex $P2073, "self"
    find_lex $P2074, "$?CLASS"
    getattribute $P2075, $P2073, $P2074, "$!name"
    unless_null $P2075, vivify_774
    new $P2075, "Undef"
  vivify_774:
    .return ($P2075)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2077"  :subid("141_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 979
    .const 'Sub' $P2252 = "154_1304284948.29" 
    capture_lex $P2252
    .const 'Sub' $P2171 = "149_1304284948.29" 
    capture_lex $P2171
    .const 'Sub' $P2162 = "148_1304284948.29" 
    capture_lex $P2162
    .const 'Sub' $P2153 = "147_1304284948.29" 
    capture_lex $P2153
    .const 'Sub' $P2148 = "146_1304284948.29" 
    capture_lex $P2148
    .const 'Sub' $P2131 = "145_1304284948.29" 
    capture_lex $P2131
    .const 'Sub' $P2116 = "144_1304284948.29" 
    capture_lex $P2116
    .const 'Sub' $P2079 = "142_1304284948.29" 
    capture_lex $P2079
.annotate 'line', 1039
    .const 'Sub' $P2079 = "142_1304284948.29" 
    newclosure $P2113, $P2079
    .lex "has_method", $P2113
.annotate 'line', 979
    .lex "$?PACKAGE", $P2114
    .lex "$?CLASS", $P2115
.annotate 'line', 1035
    find_lex $P2260, "has_method"
.annotate 'line', 979
    .return ($P2260)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "has_method"  :subid("142_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2082
    .param pmc param_2083
    .param pmc param_2084
.annotate 'line', 1039
    .const 'Sub' $P2096 = "143_1304284948.29" 
    capture_lex $P2096
    new $P2081, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2081, control_2080
    push_eh $P2081
    .lex "$target", param_2082
    .lex "$name", param_2083
    .lex "$local", param_2084
.annotate 'line', 1040
    $P2085 = root_new ['parrot';'ResizablePMCArray']
    .lex "@methods", $P2085
    find_lex $P2086, "$target"
    unless_null $P2086, vivify_775
    new $P2086, "Undef"
  vivify_775:
    get_how $P2087, $P2086
    find_lex $P2088, "$target"
    unless_null $P2088, vivify_776
    new $P2088, "Undef"
  vivify_776:
    find_lex $P2089, "$local"
    unless_null $P2089, vivify_777
    new $P2089, "Undef"
  vivify_777:
    $P2090 = $P2087."methods"($P2088, $P2089 :named("local"))
    store_lex "@methods", $P2090
.annotate 'line', 1041
    find_lex $P2092, "@methods"
    unless_null $P2092, vivify_778
    $P2092 = root_new ['parrot';'ResizablePMCArray']
  vivify_778:
    defined $I2093, $P2092
    unless $I2093, for_undef_779
    iter $P2091, $P2092
    new $P2108, 'ExceptionHandler'
    set_label $P2108, loop2107_handler
    $P2108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2108
  loop2107_test:
    unless $P2091, loop2107_done
    shift $P2094, $P2091
  loop2107_redo:
    .const 'Sub' $P2096 = "143_1304284948.29" 
    capture_lex $P2096
    $P2096($P2094)
  loop2107_next:
    goto loop2107_test
  loop2107_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2109, exception, 'type'
    eq $P2109, .CONTROL_LOOP_NEXT, loop2107_next
    eq $P2109, .CONTROL_LOOP_REDO, loop2107_redo
  loop2107_done:
    pop_eh 
  for_undef_779:
.annotate 'line', 1044
    new $P2110, "Exception"
    set $P2110['type'], .CONTROL_RETURN
    new $P2111, "Integer"
    assign $P2111, 0
    setattribute $P2110, 'payload', $P2111
    throw $P2110
.annotate 'line', 1039
    .return ()
  control_2080:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2112, exception, "payload"
    .return ($P2112)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.include "except_types.pasm"
.sub "_block2095"  :anon :subid("143_1304284948.29") :outer("142_1304284948.29")
    .param pmc param_2097
.annotate 'line', 1041
    .lex "$_", param_2097
.annotate 'line', 1042
    find_lex $P2100, "$_"
    unless_null $P2100, vivify_780
    new $P2100, "Undef"
  vivify_780:
    set $S2101, $P2100
    find_lex $P2102, "$name"
    unless_null $P2102, vivify_781
    new $P2102, "Undef"
  vivify_781:
    set $S2103, $P2102
    iseq $I2104, $S2101, $S2103
    if $I2104, if_2099
    new $P2098, 'Integer'
    set $P2098, $I2104
    goto if_2099_end
  if_2099:
    new $P2105, "Exception"
    set $P2105['type'], .CONTROL_RETURN
    new $P2106, "Integer"
    assign $P2106, 1
    setattribute $P2105, 'payload', $P2106
    throw $P2105
  if_2099_end:
.annotate 'line', 1041
    .return ($P2098)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "new"  :subid("144_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2117
    .param pmc param_2118 :named("name")
    .param pmc param_2119 :optional :named("type")
    .param int has_param_2119 :opt_flag
    .param pmc param_2121 :optional :named("box_target")
    .param int has_param_2121 :opt_flag
.annotate 'line', 984
    .lex "self", param_2117
    .lex "$name", param_2118
    if has_param_2119, optparam_782
    new $P2120, "Undef"
    set param_2119, $P2120
  optparam_782:
    .lex "$type", param_2119
    if has_param_2121, optparam_783
    new $P2122, "Undef"
    set param_2121, $P2122
  optparam_783:
    .lex "$box_target", param_2121
.annotate 'line', 985
    new $P2123, "Undef"
    .lex "$attr", $P2123
    find_lex $P2124, "self"
    repr_instance_of $P2125, $P2124
    store_lex "$attr", $P2125
.annotate 'line', 986
    find_lex $P2126, "$attr"
    unless_null $P2126, vivify_784
    new $P2126, "Undef"
  vivify_784:
    find_lex $P2127, "$name"
    unless_null $P2127, vivify_785
    new $P2127, "Undef"
  vivify_785:
    find_lex $P2128, "$type"
    unless_null $P2128, vivify_786
    new $P2128, "Undef"
  vivify_786:
    find_lex $P2129, "$box_target"
    unless_null $P2129, vivify_787
    new $P2129, "Undef"
  vivify_787:
    $P2126."BUILD"($P2127 :named("name"), $P2128 :named("type"), $P2129 :named("box_target"))
    find_lex $P2130, "$attr"
    unless_null $P2130, vivify_788
    new $P2130, "Undef"
  vivify_788:
.annotate 'line', 984
    .return ($P2130)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "BUILD"  :subid("145_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2132
    .param pmc param_2133 :optional :named("name")
    .param int has_param_2133 :opt_flag
    .param pmc param_2135 :optional :named("type")
    .param int has_param_2135 :opt_flag
    .param pmc param_2137 :optional :named("box_target")
    .param int has_param_2137 :opt_flag
.annotate 'line', 990
    .lex "self", param_2132
    if has_param_2133, optparam_789
    new $P2134, "Undef"
    set param_2133, $P2134
  optparam_789:
    .lex "$name", param_2133
    if has_param_2135, optparam_790
    new $P2136, "Undef"
    set param_2135, $P2136
  optparam_790:
    .lex "$type", param_2135
    if has_param_2137, optparam_791
    new $P2138, "Undef"
    set param_2137, $P2138
  optparam_791:
    .lex "$box_target", param_2137
.annotate 'line', 991
    find_lex $P2139, "$name"
    unless_null $P2139, vivify_792
    new $P2139, "Undef"
  vivify_792:
    find_lex $P2140, "self"
    find_lex $P2141, "$?CLASS"
    setattribute $P2140, $P2141, "$!name", $P2139
.annotate 'line', 992
    find_lex $P2142, "$type"
    unless_null $P2142, vivify_793
    new $P2142, "Undef"
  vivify_793:
    find_lex $P2143, "self"
    find_lex $P2144, "$?CLASS"
    setattribute $P2143, $P2144, "$!type", $P2142
.annotate 'line', 993
    find_lex $P2145, "$box_target"
    unless_null $P2145, vivify_794
    new $P2145, "Undef"
  vivify_794:
    find_lex $P2146, "self"
    find_lex $P2147, "$?CLASS"
    setattribute $P2146, $P2147, "$!box_target", $P2145
.annotate 'line', 990
    .return ($P2145)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "name"  :subid("146_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2149
.annotate 'line', 996
    .lex "self", param_2149
    find_lex $P2150, "self"
    find_lex $P2151, "$?CLASS"
    getattribute $P2152, $P2150, $P2151, "$!name"
    unless_null $P2152, vivify_795
    new $P2152, "Undef"
  vivify_795:
    .return ($P2152)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "type"  :subid("147_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2154
.annotate 'line', 1000
    .lex "self", param_2154
.annotate 'line', 1001
    find_lex $P2156, "self"
    find_lex $P2157, "$?CLASS"
    getattribute $P2158, $P2156, $P2157, "$!type"
    unless_null $P2158, vivify_796
    new $P2158, "Undef"
  vivify_796:
    set $P2155, $P2158
    defined $I2160, $P2155
    if $I2160, default_2159
    null $P2161
    set $P2155, $P2161
  default_2159:
.annotate 'line', 1000
    .return ($P2155)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "box_target"  :subid("148_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2163
.annotate 'line', 1004
    .lex "self", param_2163
.annotate 'line', 1005
    find_lex $P2166, "self"
    find_lex $P2167, "$?CLASS"
    getattribute $P2168, $P2166, $P2167, "$!box_target"
    unless_null $P2168, vivify_797
    new $P2168, "Undef"
  vivify_797:
    if $P2168, if_2165
    new $P2170, "Integer"
    assign $P2170, 0
    set $P2164, $P2170
    goto if_2165_end
  if_2165:
    new $P2169, "Integer"
    assign $P2169, 1
    set $P2164, $P2169
  if_2165_end:
.annotate 'line', 1004
    .return ($P2164)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "compose"  :subid("149_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2172
    .param pmc param_2173
.annotate 'line', 1008
    .const 'Sub' $P2225 = "152_1304284948.29" 
    capture_lex $P2225
    .const 'Sub' $P2185 = "150_1304284948.29" 
    capture_lex $P2185
    .lex "self", param_2172
    .lex "$obj", param_2173
.annotate 'line', 1009
    new $P2174, "Undef"
    .lex "$long_name", $P2174
    find_lex $P2175, "self"
    find_lex $P2176, "$?CLASS"
    getattribute $P2177, $P2175, $P2176, "$!name"
    unless_null $P2177, vivify_798
    new $P2177, "Undef"
  vivify_798:
    set $S2178, $P2177
    new $P2179, 'String'
    set $P2179, $S2178
    store_lex "$long_name", $P2179
.annotate 'line', 1010
    find_lex $P2182, "self"
    $P2183 = $P2182."has_mutator"()
    if $P2183, if_2181
.annotate 'line', 1022
    .const 'Sub' $P2225 = "152_1304284948.29" 
    capture_lex $P2225
    $P2251 = $P2225()
    set $P2180, $P2251
.annotate 'line', 1010
    goto if_2181_end
  if_2181:
    .const 'Sub' $P2185 = "150_1304284948.29" 
    capture_lex $P2185
    $P2223 = $P2185()
    set $P2180, $P2223
  if_2181_end:
.annotate 'line', 1008
    .return ($P2180)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2224"  :anon :subid("152_1304284948.29") :outer("149_1304284948.29")
.annotate 'line', 1022
    .const 'Sub' $P2241 = "153_1304284948.29" 
    capture_lex $P2241
.annotate 'line', 1023
    new $P2226, "Undef"
    .lex "$method", $P2226
    find_lex $P2227, "$long_name"
    unless_null $P2227, vivify_799
    new $P2227, "Undef"
  vivify_799:
    set $S2228, $P2227
    substr $S2229, $S2228, 2
    new $P2230, 'String'
    set $P2230, $S2229
    store_lex "$method", $P2230
.annotate 'line', 1024
    find_lex $P2233, "$obj"
    unless_null $P2233, vivify_800
    new $P2233, "Undef"
  vivify_800:
    find_lex $P2234, "$method"
    unless_null $P2234, vivify_801
    new $P2234, "Undef"
  vivify_801:
    $P2235 = "has_method"($P2233, $P2234, 0)
    unless $P2235, unless_2232
    set $P2231, $P2235
    goto unless_2232_end
  unless_2232:
.annotate 'line', 1025
    find_lex $P2236, "$obj"
    unless_null $P2236, vivify_802
    new $P2236, "Undef"
  vivify_802:
    get_how $P2237, $P2236
    find_lex $P2238, "$obj"
    unless_null $P2238, vivify_803
    new $P2238, "Undef"
  vivify_803:
    find_lex $P2239, "$method"
    unless_null $P2239, vivify_804
    new $P2239, "Undef"
  vivify_804:
.annotate 'line', 1026
    .const 'Sub' $P2241 = "153_1304284948.29" 
    newclosure $P2249, $P2241
    $P2250 = $P2237."add_method"($P2238, $P2239, $P2249)
.annotate 'line', 1024
    set $P2231, $P2250
  unless_2232_end:
.annotate 'line', 1022
    .return ($P2231)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2240"  :anon :subid("153_1304284948.29") :outer("152_1304284948.29")
    .param pmc param_2242
.annotate 'line', 1026
    .lex "self", param_2242
.annotate 'line', 1027
    find_lex $P2243, "self"
    find_lex $P2244, "$obj"
    unless_null $P2244, vivify_805
    new $P2244, "Undef"
  vivify_805:
    get_what $P2245, $P2244
    find_lex $P2246, "$long_name"
    unless_null $P2246, vivify_806
    new $P2246, "Undef"
  vivify_806:
    set $S2247, $P2246
    getattribute $P2248, $P2243, $P2245, $S2247
.annotate 'line', 1026
    .return ($P2248)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2184"  :anon :subid("150_1304284948.29") :outer("149_1304284948.29")
.annotate 'line', 1010
    .const 'Sub' $P2202 = "151_1304284948.29" 
    capture_lex $P2202
.annotate 'line', 1011
    new $P2186, "Undef"
    .lex "$method", $P2186
    find_lex $P2187, "$long_name"
    unless_null $P2187, vivify_807
    new $P2187, "Undef"
  vivify_807:
    set $S2188, $P2187
    substr $S2189, $S2188, 1
    new $P2190, 'String'
    set $P2190, $S2189
    store_lex "$method", $P2190
.annotate 'line', 1012
    find_lex $P2193, "$obj"
    unless_null $P2193, vivify_808
    new $P2193, "Undef"
  vivify_808:
    find_lex $P2194, "$method"
    unless_null $P2194, vivify_809
    new $P2194, "Undef"
  vivify_809:
    $P2195 = "has_method"($P2193, $P2194, 0)
    unless $P2195, unless_2192
    set $P2191, $P2195
    goto unless_2192_end
  unless_2192:
.annotate 'line', 1013
    find_lex $P2196, "$obj"
    unless_null $P2196, vivify_810
    new $P2196, "Undef"
  vivify_810:
    get_how $P2197, $P2196
    find_lex $P2198, "$obj"
    unless_null $P2198, vivify_811
    new $P2198, "Undef"
  vivify_811:
    get_what $P2199, $P2198
    find_lex $P2200, "$method"
    unless_null $P2200, vivify_812
    new $P2200, "Undef"
  vivify_812:
    .const 'Sub' $P2202 = "151_1304284948.29" 
    newclosure $P2221, $P2202
    $P2222 = $P2197."add_method"($P2199, $P2200, $P2221)
.annotate 'line', 1012
    set $P2191, $P2222
  unless_2192_end:
.annotate 'line', 1010
    .return ($P2191)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "_block2201"  :anon :subid("151_1304284948.29") :outer("150_1304284948.29")
    .param pmc param_2203
    .param pmc param_2204 :optional
    .param int has_param_2204 :opt_flag
.annotate 'line', 1013
    .lex "self", param_2203
    if has_param_2204, optparam_813
    new $P2205, "Undef"
    set param_2204, $P2205
  optparam_813:
    .lex "$value", param_2204
.annotate 'line', 1015
    find_lex $P2207, "$value"
    unless_null $P2207, vivify_814
    new $P2207, "Undef"
  vivify_814:
    defined $I2208, $P2207
    unless $I2208, if_2206_end
.annotate 'line', 1014
    find_lex $P2209, "self"
    find_lex $P2210, "$obj"
    unless_null $P2210, vivify_815
    new $P2210, "Undef"
  vivify_815:
    get_what $P2211, $P2210
    find_lex $P2212, "$long_name"
    unless_null $P2212, vivify_816
    new $P2212, "Undef"
  vivify_816:
    set $S2213, $P2212
    find_lex $P2214, "$value"
    unless_null $P2214, vivify_817
    new $P2214, "Undef"
  vivify_817:
    setattribute $P2209, $P2211, $S2213, $P2214
  if_2206_end:
.annotate 'line', 1017
    find_lex $P2215, "self"
    find_lex $P2216, "$obj"
    unless_null $P2216, vivify_818
    new $P2216, "Undef"
  vivify_818:
    get_what $P2217, $P2216
    find_lex $P2218, "$long_name"
    unless_null $P2218, vivify_819
    new $P2218, "Undef"
  vivify_819:
    set $S2219, $P2218
    getattribute $P2220, $P2215, $P2217, $S2219
.annotate 'line', 1013
    .return ($P2220)
.end


.HLL "nqp"

.namespace ["NQPAttribute"]
.sub "has_mutator"  :subid("154_1304284948.29") :outer("141_1304284948.29")
    .param pmc param_2253
.annotate 'line', 1035
    .lex "self", param_2253
.annotate 'line', 1036
    find_lex $P2254, "self"
    find_lex $P2255, "$?CLASS"
    getattribute $P2256, $P2254, $P2255, "$!name"
    unless_null $P2256, vivify_820
    new $P2256, "Undef"
  vivify_820:
    set $S2257, $P2256
    substr $S2258, $S2257, 1, 1
    isne $I2259, $S2258, "!"
.annotate 'line', 1035
    .return ($I2259)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "_block2261"  :subid("155_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 1050
    .const 'Sub' $P2317 = "163_1304284948.29" 
    capture_lex $P2317
    .const 'Sub' $P2311 = "162_1304284948.29" 
    capture_lex $P2311
    .const 'Sub' $P2307 = "161_1304284948.29" 
    capture_lex $P2307
    .const 'Sub' $P2302 = "160_1304284948.29" 
    capture_lex $P2302
    .const 'Sub' $P2297 = "159_1304284948.29" 
    capture_lex $P2297
    .const 'Sub' $P2282 = "158_1304284948.29" 
    capture_lex $P2282
    .const 'Sub' $P2275 = "157_1304284948.29" 
    capture_lex $P2275
    .const 'Sub' $P2265 = "156_1304284948.29" 
    capture_lex $P2265
    .lex "$?PACKAGE", $P2263
    .lex "$?CLASS", $P2264
.annotate 'line', 1091
    .const 'Sub' $P2317 = "163_1304284948.29" 
    newclosure $P2323, $P2317
.annotate 'line', 1050
    .return ($P2323)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new"  :subid("156_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2266
    .param pmc param_2267 :optional :named("name")
    .param int has_param_2267 :opt_flag
.annotate 'line', 1054
    .lex "self", param_2266
    if has_param_2267, optparam_821
    new $P2268, "Undef"
    set param_2267, $P2268
  optparam_821:
    .lex "$name", param_2267
.annotate 'line', 1055
    new $P2269, "Undef"
    .lex "$obj", $P2269
    find_lex $P2270, "self"
    repr_instance_of $P2271, $P2270
    store_lex "$obj", $P2271
.annotate 'line', 1056
    find_lex $P2272, "$obj"
    unless_null $P2272, vivify_822
    new $P2272, "Undef"
  vivify_822:
    find_lex $P2273, "$name"
    unless_null $P2273, vivify_823
    new $P2273, "Undef"
  vivify_823:
    $P2272."BUILD"($P2273 :named("name"))
    find_lex $P2274, "$obj"
    unless_null $P2274, vivify_824
    new $P2274, "Undef"
  vivify_824:
.annotate 'line', 1054
    .return ($P2274)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "BUILD"  :subid("157_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2276
    .param pmc param_2277 :optional :named("name")
    .param int has_param_2277 :opt_flag
.annotate 'line', 1060
    .lex "self", param_2276
    if has_param_2277, optparam_825
    new $P2278, "Undef"
    set param_2277, $P2278
  optparam_825:
    .lex "$name", param_2277
.annotate 'line', 1061
    find_lex $P2279, "$name"
    unless_null $P2279, vivify_826
    new $P2279, "Undef"
  vivify_826:
    find_lex $P2280, "self"
    find_lex $P2281, "$?CLASS"
    setattribute $P2280, $P2281, "$!name", $P2279
.annotate 'line', 1060
    .return ($P2279)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "new_type"  :subid("158_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2283
    .param pmc param_2284 :optional :named("name")
    .param int has_param_2284 :opt_flag
    .param pmc param_2286 :optional :named("repr")
    .param int has_param_2286 :opt_flag
.annotate 'line', 1066
    .lex "self", param_2283
    if has_param_2284, optparam_827
    new $P2285, "String"
    assign $P2285, "<anon>"
    set param_2284, $P2285
  optparam_827:
    .lex "$name", param_2284
    if has_param_2286, optparam_828
    new $P2287, "String"
    assign $P2287, "P6opaque"
    set param_2286, $P2287
  optparam_828:
    .lex "$repr", param_2286
.annotate 'line', 1067
    new $P2288, "Undef"
    .lex "$metaclass", $P2288
    find_lex $P2289, "self"
    find_lex $P2290, "$name"
    unless_null $P2290, vivify_829
    new $P2290, "Undef"
  vivify_829:
    $P2291 = $P2289."new"($P2290 :named("name"))
    store_lex "$metaclass", $P2291
.annotate 'line', 1069
    find_lex $P2292, "$metaclass"
    unless_null $P2292, vivify_830
    new $P2292, "Undef"
  vivify_830:
    find_lex $P2293, "$repr"
    unless_null $P2293, vivify_831
    new $P2293, "Undef"
  vivify_831:
    set $S2294, $P2293
    repr_type_object_for $P2295, $P2292, $S2294
    $P2296 = root_new ['parrot';'Hash']
    set_who $P2295, $P2296
.annotate 'line', 1066
    .return ($P2295)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_method"  :subid("159_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2298
    .param pmc param_2299
    .param pmc param_2300
    .param pmc param_2301
.annotate 'line', 1073
    .lex "self", param_2298
    .lex "$obj", param_2299
    .lex "$name", param_2300
    .lex "$code_obj", param_2301
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_multi_method"  :subid("160_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2303
    .param pmc param_2304
    .param pmc param_2305
    .param pmc param_2306
.annotate 'line', 1079
    .lex "self", param_2303
    .lex "$obj", param_2304
    .lex "$name", param_2305
    .lex "$code_obj", param_2306
.annotate 'line', 1080
    die "Modules may not have methods"
.annotate 'line', 1079
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "add_attribute"  :subid("161_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2308
    .param pmc param_2309
    .param pmc param_2310
.annotate 'line', 1083
    .lex "self", param_2308
    .lex "$obj", param_2309
    .lex "$meta_attr", param_2310
.annotate 'line', 1084
    die "Modules may not have attributes"
.annotate 'line', 1083
    .return ()
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "compose"  :subid("162_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2312
    .param pmc param_2313
.annotate 'line', 1087
    .lex "self", param_2312
    .lex "$obj", param_2313
.annotate 'line', 1088
    new $P2314, "Integer"
    assign $P2314, 1
    find_lex $P2315, "self"
    find_lex $P2316, "$?CLASS"
    setattribute $P2315, $P2316, "$!composed", $P2314
.annotate 'line', 1087
    .return ($P2314)
.end


.HLL "nqp"

.namespace ["NQPModuleHOW"]
.sub "name"  :subid("163_1304284948.29") :outer("155_1304284948.29")
    .param pmc param_2318
    .param pmc param_2319
.annotate 'line', 1091
    .lex "self", param_2318
    .lex "$obj", param_2319
    find_lex $P2320, "self"
    find_lex $P2321, "$?CLASS"
    getattribute $P2322, $P2320, $P2321, "$!name"
    unless_null $P2322, vivify_832
    new $P2322, "Undef"
  vivify_832:
    .return ($P2322)
.end


.HLL "nqp"

.namespace []
.sub "_block2324"  :anon :subid("164_1304284948.29") :outer("10_1304284948.29")
.annotate 'line', 1099
    .lex "$?PACKAGE", $P2326
    .lex "$?CLASS", $P2327
.annotate 'line', 1100
    find_lex $P2328, "NQPModuleHOW"
    find_lex $P2329, "$?PACKAGE"
    unless_null $P2329, vivify_833
    new $P2329, "Undef"
    store_lex "$?PACKAGE", $P2329
  vivify_833:
    get_who $P2330, $P2329
    set $P2330["module"], $P2328
.annotate 'line', 1101
    find_lex $P2331, "NQPClassHOW"
    find_lex $P2332, "$?PACKAGE"
    unless_null $P2332, vivify_834
    new $P2332, "Undef"
    store_lex "$?PACKAGE", $P2332
  vivify_834:
    get_who $P2333, $P2332
    set $P2333["class"], $P2331
.annotate 'line', 1102
    find_lex $P2334, "NQPAttribute"
    find_lex $P2335, "$?PACKAGE"
    unless_null $P2335, vivify_835
    new $P2335, "Undef"
    store_lex "$?PACKAGE", $P2335
  vivify_835:
    get_who $P2336, $P2335
    set $P2336["class-attr"], $P2334
.annotate 'line', 1103
    find_lex $P2337, "NQPClassHOW"
    find_lex $P2338, "$?PACKAGE"
    unless_null $P2338, vivify_836
    new $P2338, "Undef"
    store_lex "$?PACKAGE", $P2338
  vivify_836:
    get_who $P2339, $P2338
    set $P2339["grammar"], $P2337
.annotate 'line', 1104
    find_lex $P2340, "NQPAttribute"
    find_lex $P2341, "$?PACKAGE"
    unless_null $P2341, vivify_837
    new $P2341, "Undef"
    store_lex "$?PACKAGE", $P2341
  vivify_837:
    get_who $P2342, $P2341
    set $P2342["grammar-attr"], $P2340
.annotate 'line', 1105
    find_lex $P2343, "NQPParametricRoleHOW"
    find_lex $P2344, "$?PACKAGE"
    unless_null $P2344, vivify_838
    new $P2344, "Undef"
    store_lex "$?PACKAGE", $P2344
  vivify_838:
    get_who $P2345, $P2344
    set $P2345["role"], $P2343
.annotate 'line', 1106
    find_lex $P2346, "NQPAttribute"
    find_lex $P2347, "$?PACKAGE"
    unless_null $P2347, vivify_839
    new $P2347, "Undef"
    store_lex "$?PACKAGE", $P2347
  vivify_839:
    get_who $P2348, $P2347
    set $P2348["role-attr"], $P2346
.annotate 'line', 1107
    find_lex $P2349, "NQPNativeHOW"
    find_lex $P2350, "$?PACKAGE"
    unless_null $P2350, vivify_840
    new $P2350, "Undef"
    store_lex "$?PACKAGE", $P2350
  vivify_840:
    get_who $P2351, $P2350
    set $P2351["native"], $P2349
.annotate 'line', 1099
    .return ($P2349)
.end


.HLL "nqp"

.namespace []
.sub "_block2353" :load :anon :subid("165_1304284948.29")
.annotate 'line', 1
    .const 'Sub' $P2355 = "10_1304284948.29" 
    $P2356 = $P2355()
    .return ($P2356)
.end

