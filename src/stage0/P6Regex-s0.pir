
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1304282272.255")
    .param pmc param_13 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2602 = "324_1304282272.255" 
    capture_lex $P2602
    .const 'Sub' $P812 = "241_1304282272.255" 
    capture_lex $P812
    .const 'Sub' $P24 = "12_1304282272.255" 
    capture_lex $P24
    .const 'Sub' $P17 = "11_1304282272.255" 
    capture_lex $P17
.annotate 'line', 1
    .lex "@ARGS", param_13
    .lex "GLOBALish", $P14
    .lex "$?PACKAGE", $P15
.annotate 'line', 828
    new $P16, "Undef"
    .lex "$p6regex", $P16
.annotate 'line', 833
    .const 'Sub' $P17 = "11_1304282272.255" 
    newclosure $P22, $P17
    .lex "MAIN", $P22
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1304282272.255" 
    capture_lex $P24
    $P24()
.annotate 'line', 212
    .const 'Sub' $P812 = "241_1304282272.255" 
    capture_lex $P812
    $P812()
.annotate 'line', 825
    .const 'Sub' $P2602 = "324_1304282272.255" 
    capture_lex $P2602
    $P2602()
.annotate 'line', 828
    get_hll_global $P2610, "GLOBAL"
    nqp_get_package_through_who $P2611, $P2610, "Regex"
    nqp_get_package_through_who $P2612, $P2611, "P6Regex"
    get_who $P2613, $P2612
    set $P2614, $P2613["Compiler"]
    $P2615 = $P2614."new"()
    store_lex "$p6regex", $P2615
.annotate 'line', 829
    find_lex $P2616, "$p6regex"
    unless_null $P2616, vivify_1236
    new $P2616, "Undef"
  vivify_1236:
    $P2616."language"("Regex::P6Regex")
.annotate 'line', 830
    find_lex $P2617, "$p6regex"
    unless_null $P2617, vivify_1237
    new $P2617, "Undef"
  vivify_1237:
    get_hll_global $P2618, "GLOBAL"
    nqp_get_package_through_who $P2619, $P2618, "Regex"
    nqp_get_package_through_who $P2620, $P2619, "P6Regex"
    get_who $P2621, $P2620
    set $P2622, $P2621["Grammar"]
    $P2617."parsegrammar"($P2622)
.annotate 'line', 831
    find_lex $P2623, "$p6regex"
    unless_null $P2623, vivify_1238
    new $P2623, "Undef"
  vivify_1238:
    get_hll_global $P2624, "GLOBAL"
    nqp_get_package_through_who $P2625, $P2624, "Regex"
    nqp_get_package_through_who $P2626, $P2625, "P6Regex"
    get_who $P2627, $P2626
    set $P2628, $P2627["Actions"]
    $P2623."parseactions"($P2628)
    find_lex $P2629, "MAIN"
    find_lex $P2632, "@ARGS"
    if $P2632, if_2631
    set $P2630, $P2632
    goto if_2631_end
  if_2631:
    .const 'Sub' $P2633 = "11_1304282272.255" 
    find_lex $P2634, "@ARGS"
    $P2635 = $P2633($P2634 :flat)
    set $P2630, $P2635
  if_2631_end:
.annotate 'line', 1
    .return ($P2630)
    .const 'Sub' $P2637 = "326_1304282272.255" 
    .return ($P2637)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post327") :outer("10_1304282272.255")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1304282272.255" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P2641, "1304282267.413"
    isnull $I2642, $P2641
    if $I2642, if_2640
    .const 'Sub' $P3515 = "10_1304282272.255" 
    $P3516 = $P3515."get_lexinfo"()
    nqp_get_sc_object $P3517, "1304282267.413", 0
    $P3516."set_static_lexpad_value"("GLOBALish", $P3517)
    .const 'Sub' $P3518 = "10_1304282272.255" 
    $P3519 = $P3518."get_lexinfo"()
    $P3519."finish_static_lexpad"()
    .const 'Sub' $P3520 = "10_1304282272.255" 
    $P3521 = $P3520."get_lexinfo"()
    nqp_get_sc_object $P3522, "1304282267.413", 0
    $P3521."set_static_lexpad_value"("$?PACKAGE", $P3522)
    .const 'Sub' $P3523 = "10_1304282272.255" 
    $P3524 = $P3523."get_lexinfo"()
    $P3524."finish_static_lexpad"()
    nqp_get_sc_object $P3525, "1304282267.413", 2
    .const 'Sub' $P3526 = "13_1304282272.255" 
    copy $P3525, $P3526
    nqp_get_sc_object $P3527, "1304282267.413", 3
    .const 'Sub' $P3528 = "14_1304282272.255" 
    copy $P3527, $P3528
    nqp_get_sc_object $P3529, "1304282267.413", 4
    .const 'Sub' $P3530 = "16_1304282272.255" 
    copy $P3529, $P3530
    nqp_get_sc_object $P3531, "1304282267.413", 5
    .const 'Sub' $P3532 = "17_1304282272.255" 
    copy $P3531, $P3532
    nqp_get_sc_object $P3533, "1304282267.413", 6
    .const 'Sub' $P3534 = "20_1304282272.255" 
    copy $P3533, $P3534
    nqp_get_sc_object $P3535, "1304282267.413", 7
    .const 'Sub' $P3536 = "21_1304282272.255" 
    copy $P3535, $P3536
    nqp_get_sc_object $P3537, "1304282267.413", 8
    .const 'Sub' $P3538 = "23_1304282272.255" 
    copy $P3537, $P3538
    nqp_get_sc_object $P3539, "1304282267.413", 9
    .const 'Sub' $P3540 = "24_1304282272.255" 
    copy $P3539, $P3540
    nqp_get_sc_object $P3541, "1304282267.413", 10
    .const 'Sub' $P3542 = "26_1304282272.255" 
    copy $P3541, $P3542
    nqp_get_sc_object $P3543, "1304282267.413", 11
    .const 'Sub' $P3544 = "27_1304282272.255" 
    copy $P3543, $P3544
    nqp_get_sc_object $P3545, "1304282267.413", 12
    .const 'Sub' $P3546 = "29_1304282272.255" 
    copy $P3545, $P3546
    nqp_get_sc_object $P3547, "1304282267.413", 13
    .const 'Sub' $P3548 = "30_1304282272.255" 
    copy $P3547, $P3548
    nqp_get_sc_object $P3549, "1304282267.413", 14
    .const 'Sub' $P3550 = "32_1304282272.255" 
    copy $P3549, $P3550
    nqp_get_sc_object $P3551, "1304282267.413", 15
    .const 'Sub' $P3552 = "33_1304282272.255" 
    copy $P3551, $P3552
    nqp_get_sc_object $P3553, "1304282267.413", 16
    .const 'Sub' $P3554 = "35_1304282272.255" 
    copy $P3553, $P3554
    nqp_get_sc_object $P3555, "1304282267.413", 17
    .const 'Sub' $P3556 = "36_1304282272.255" 
    copy $P3555, $P3556
    nqp_get_sc_object $P3557, "1304282267.413", 18
    .const 'Sub' $P3558 = "38_1304282272.255" 
    copy $P3557, $P3558
    nqp_get_sc_object $P3559, "1304282267.413", 19
    .const 'Sub' $P3560 = "39_1304282272.255" 
    copy $P3559, $P3560
    nqp_get_sc_object $P3561, "1304282267.413", 20
    .const 'Sub' $P3562 = "41_1304282272.255" 
    copy $P3561, $P3562
    nqp_get_sc_object $P3563, "1304282267.413", 21
    .const 'Sub' $P3564 = "42_1304282272.255" 
    copy $P3563, $P3564
    nqp_get_sc_object $P3565, "1304282267.413", 22
    .const 'Sub' $P3566 = "45_1304282272.255" 
    copy $P3565, $P3566
    nqp_get_sc_object $P3567, "1304282267.413", 23
    .const 'Sub' $P3568 = "46_1304282272.255" 
    copy $P3567, $P3568
    nqp_get_sc_object $P3569, "1304282267.413", 24
    .const 'Sub' $P3570 = "49_1304282272.255" 
    copy $P3569, $P3570
    nqp_get_sc_object $P3571, "1304282267.413", 25
    .const 'Sub' $P3572 = "50_1304282272.255" 
    copy $P3571, $P3572
    nqp_get_sc_object $P3573, "1304282267.413", 26
    .const 'Sub' $P3574 = "51_1304282272.255" 
    copy $P3573, $P3574
    nqp_get_sc_object $P3575, "1304282267.413", 27
    .const 'Sub' $P3576 = "52_1304282272.255" 
    copy $P3575, $P3576
    nqp_get_sc_object $P3577, "1304282267.413", 28
    .const 'Sub' $P3578 = "54_1304282272.255" 
    copy $P3577, $P3578
    nqp_get_sc_object $P3579, "1304282267.413", 29
    .const 'Sub' $P3580 = "55_1304282272.255" 
    copy $P3579, $P3580
    nqp_get_sc_object $P3581, "1304282267.413", 30
    .const 'Sub' $P3582 = "57_1304282272.255" 
    copy $P3581, $P3582
    nqp_get_sc_object $P3583, "1304282267.413", 31
    .const 'Sub' $P3584 = "58_1304282272.255" 
    copy $P3583, $P3584
    nqp_get_sc_object $P3585, "1304282267.413", 32
    .const 'Sub' $P3586 = "60_1304282272.255" 
    copy $P3585, $P3586
    nqp_get_sc_object $P3587, "1304282267.413", 33
    .const 'Sub' $P3588 = "61_1304282272.255" 
    copy $P3587, $P3588
    nqp_get_sc_object $P3589, "1304282267.413", 34
    .const 'Sub' $P3590 = "67_1304282272.255" 
    copy $P3589, $P3590
    nqp_get_sc_object $P3591, "1304282267.413", 35
    .const 'Sub' $P3592 = "68_1304282272.255" 
    copy $P3591, $P3592
    nqp_get_sc_object $P3593, "1304282267.413", 36
    .const 'Sub' $P3594 = "70_1304282272.255" 
    copy $P3593, $P3594
    nqp_get_sc_object $P3595, "1304282267.413", 37
    .const 'Sub' $P3596 = "71_1304282272.255" 
    copy $P3595, $P3596
    nqp_get_sc_object $P3597, "1304282267.413", 38
    .const 'Sub' $P3598 = "74_1304282272.255" 
    copy $P3597, $P3598
    nqp_get_sc_object $P3599, "1304282267.413", 39
    .const 'Sub' $P3600 = "75_1304282272.255" 
    copy $P3599, $P3600
    nqp_get_sc_object $P3601, "1304282267.413", 40
    .const 'Sub' $P3602 = "76_1304282272.255" 
    copy $P3601, $P3602
    nqp_get_sc_object $P3603, "1304282267.413", 41
    .const 'Sub' $P3604 = "77_1304282272.255" 
    copy $P3603, $P3604
    nqp_get_sc_object $P3605, "1304282267.413", 42
    .const 'Sub' $P3606 = "79_1304282272.255" 
    copy $P3605, $P3606
    nqp_get_sc_object $P3607, "1304282267.413", 43
    .const 'Sub' $P3608 = "80_1304282272.255" 
    copy $P3607, $P3608
    nqp_get_sc_object $P3609, "1304282267.413", 44
    .const 'Sub' $P3610 = "82_1304282272.255" 
    copy $P3609, $P3610
    nqp_get_sc_object $P3611, "1304282267.413", 45
    .const 'Sub' $P3612 = "83_1304282272.255" 
    copy $P3611, $P3612
    nqp_get_sc_object $P3613, "1304282267.413", 46
    .const 'Sub' $P3614 = "85_1304282272.255" 
    copy $P3613, $P3614
    nqp_get_sc_object $P3615, "1304282267.413", 47
    .const 'Sub' $P3616 = "86_1304282272.255" 
    copy $P3615, $P3616
    nqp_get_sc_object $P3617, "1304282267.413", 48
    .const 'Sub' $P3618 = "88_1304282272.255" 
    copy $P3617, $P3618
    nqp_get_sc_object $P3619, "1304282267.413", 49
    .const 'Sub' $P3620 = "89_1304282272.255" 
    copy $P3619, $P3620
    nqp_get_sc_object $P3621, "1304282267.413", 50
    .const 'Sub' $P3622 = "91_1304282272.255" 
    copy $P3621, $P3622
    nqp_get_sc_object $P3623, "1304282267.413", 51
    .const 'Sub' $P3624 = "92_1304282272.255" 
    copy $P3623, $P3624
    nqp_get_sc_object $P3625, "1304282267.413", 52
    .const 'Sub' $P3626 = "94_1304282272.255" 
    copy $P3625, $P3626
    nqp_get_sc_object $P3627, "1304282267.413", 53
    .const 'Sub' $P3628 = "95_1304282272.255" 
    copy $P3627, $P3628
    nqp_get_sc_object $P3629, "1304282267.413", 54
    .const 'Sub' $P3630 = "97_1304282272.255" 
    copy $P3629, $P3630
    nqp_get_sc_object $P3631, "1304282267.413", 55
    .const 'Sub' $P3632 = "98_1304282272.255" 
    copy $P3631, $P3632
    nqp_get_sc_object $P3633, "1304282267.413", 56
    .const 'Sub' $P3634 = "100_1304282272.255" 
    copy $P3633, $P3634
    nqp_get_sc_object $P3635, "1304282267.413", 57
    .const 'Sub' $P3636 = "101_1304282272.255" 
    copy $P3635, $P3636
    nqp_get_sc_object $P3637, "1304282267.413", 58
    .const 'Sub' $P3638 = "103_1304282272.255" 
    copy $P3637, $P3638
    nqp_get_sc_object $P3639, "1304282267.413", 59
    .const 'Sub' $P3640 = "104_1304282272.255" 
    copy $P3639, $P3640
    nqp_get_sc_object $P3641, "1304282267.413", 60
    .const 'Sub' $P3642 = "106_1304282272.255" 
    copy $P3641, $P3642
    nqp_get_sc_object $P3643, "1304282267.413", 61
    .const 'Sub' $P3644 = "107_1304282272.255" 
    copy $P3643, $P3644
    nqp_get_sc_object $P3645, "1304282267.413", 62
    .const 'Sub' $P3646 = "109_1304282272.255" 
    copy $P3645, $P3646
    nqp_get_sc_object $P3647, "1304282267.413", 63
    .const 'Sub' $P3648 = "110_1304282272.255" 
    copy $P3647, $P3648
    nqp_get_sc_object $P3649, "1304282267.413", 64
    .const 'Sub' $P3650 = "112_1304282272.255" 
    copy $P3649, $P3650
    nqp_get_sc_object $P3651, "1304282267.413", 65
    .const 'Sub' $P3652 = "113_1304282272.255" 
    copy $P3651, $P3652
    nqp_get_sc_object $P3653, "1304282267.413", 66
    .const 'Sub' $P3654 = "115_1304282272.255" 
    copy $P3653, $P3654
    nqp_get_sc_object $P3655, "1304282267.413", 67
    .const 'Sub' $P3656 = "116_1304282272.255" 
    copy $P3655, $P3656
    nqp_get_sc_object $P3657, "1304282267.413", 68
    .const 'Sub' $P3658 = "118_1304282272.255" 
    copy $P3657, $P3658
    nqp_get_sc_object $P3659, "1304282267.413", 69
    .const 'Sub' $P3660 = "119_1304282272.255" 
    copy $P3659, $P3660
    nqp_get_sc_object $P3661, "1304282267.413", 70
    .const 'Sub' $P3662 = "121_1304282272.255" 
    copy $P3661, $P3662
    nqp_get_sc_object $P3663, "1304282267.413", 71
    .const 'Sub' $P3664 = "122_1304282272.255" 
    copy $P3663, $P3664
    nqp_get_sc_object $P3665, "1304282267.413", 72
    .const 'Sub' $P3666 = "124_1304282272.255" 
    copy $P3665, $P3666
    nqp_get_sc_object $P3667, "1304282267.413", 73
    .const 'Sub' $P3668 = "125_1304282272.255" 
    copy $P3667, $P3668
    nqp_get_sc_object $P3669, "1304282267.413", 74
    .const 'Sub' $P3670 = "127_1304282272.255" 
    copy $P3669, $P3670
    nqp_get_sc_object $P3671, "1304282267.413", 75
    .const 'Sub' $P3672 = "128_1304282272.255" 
    copy $P3671, $P3672
    nqp_get_sc_object $P3673, "1304282267.413", 76
    .const 'Sub' $P3674 = "130_1304282272.255" 
    copy $P3673, $P3674
    nqp_get_sc_object $P3675, "1304282267.413", 77
    .const 'Sub' $P3676 = "131_1304282272.255" 
    copy $P3675, $P3676
    nqp_get_sc_object $P3677, "1304282267.413", 78
    .const 'Sub' $P3678 = "133_1304282272.255" 
    copy $P3677, $P3678
    nqp_get_sc_object $P3679, "1304282267.413", 79
    .const 'Sub' $P3680 = "134_1304282272.255" 
    copy $P3679, $P3680
    nqp_get_sc_object $P3681, "1304282267.413", 80
    .const 'Sub' $P3682 = "136_1304282272.255" 
    copy $P3681, $P3682
    nqp_get_sc_object $P3683, "1304282267.413", 81
    .const 'Sub' $P3684 = "137_1304282272.255" 
    copy $P3683, $P3684
    nqp_get_sc_object $P3685, "1304282267.413", 82
    .const 'Sub' $P3686 = "139_1304282272.255" 
    copy $P3685, $P3686
    nqp_get_sc_object $P3687, "1304282267.413", 83
    .const 'Sub' $P3688 = "140_1304282272.255" 
    copy $P3687, $P3688
    nqp_get_sc_object $P3689, "1304282267.413", 84
    .const 'Sub' $P3690 = "142_1304282272.255" 
    copy $P3689, $P3690
    nqp_get_sc_object $P3691, "1304282267.413", 85
    .const 'Sub' $P3692 = "143_1304282272.255" 
    copy $P3691, $P3692
    nqp_get_sc_object $P3693, "1304282267.413", 86
    .const 'Sub' $P3694 = "144_1304282272.255" 
    copy $P3693, $P3694
    nqp_get_sc_object $P3695, "1304282267.413", 87
    .const 'Sub' $P3696 = "145_1304282272.255" 
    copy $P3695, $P3696
    nqp_get_sc_object $P3697, "1304282267.413", 88
    .const 'Sub' $P3698 = "147_1304282272.255" 
    copy $P3697, $P3698
    nqp_get_sc_object $P3699, "1304282267.413", 89
    .const 'Sub' $P3700 = "148_1304282272.255" 
    copy $P3699, $P3700
    nqp_get_sc_object $P3701, "1304282267.413", 90
    .const 'Sub' $P3702 = "150_1304282272.255" 
    copy $P3701, $P3702
    nqp_get_sc_object $P3703, "1304282267.413", 91
    .const 'Sub' $P3704 = "151_1304282272.255" 
    copy $P3703, $P3704
    nqp_get_sc_object $P3705, "1304282267.413", 92
    .const 'Sub' $P3706 = "153_1304282272.255" 
    copy $P3705, $P3706
    nqp_get_sc_object $P3707, "1304282267.413", 93
    .const 'Sub' $P3708 = "154_1304282272.255" 
    copy $P3707, $P3708
    nqp_get_sc_object $P3709, "1304282267.413", 94
    .const 'Sub' $P3710 = "156_1304282272.255" 
    copy $P3709, $P3710
    nqp_get_sc_object $P3711, "1304282267.413", 95
    .const 'Sub' $P3712 = "157_1304282272.255" 
    copy $P3711, $P3712
    nqp_get_sc_object $P3713, "1304282267.413", 96
    .const 'Sub' $P3714 = "159_1304282272.255" 
    copy $P3713, $P3714
    nqp_get_sc_object $P3715, "1304282267.413", 97
    .const 'Sub' $P3716 = "160_1304282272.255" 
    copy $P3715, $P3716
    nqp_get_sc_object $P3717, "1304282267.413", 98
    .const 'Sub' $P3718 = "162_1304282272.255" 
    copy $P3717, $P3718
    nqp_get_sc_object $P3719, "1304282267.413", 99
    .const 'Sub' $P3720 = "163_1304282272.255" 
    copy $P3719, $P3720
    nqp_get_sc_object $P3721, "1304282267.413", 100
    .const 'Sub' $P3722 = "165_1304282272.255" 
    copy $P3721, $P3722
    nqp_get_sc_object $P3723, "1304282267.413", 101
    .const 'Sub' $P3724 = "166_1304282272.255" 
    copy $P3723, $P3724
    nqp_get_sc_object $P3725, "1304282267.413", 102
    .const 'Sub' $P3726 = "168_1304282272.255" 
    copy $P3725, $P3726
    nqp_get_sc_object $P3727, "1304282267.413", 103
    .const 'Sub' $P3728 = "169_1304282272.255" 
    copy $P3727, $P3728
    nqp_get_sc_object $P3729, "1304282267.413", 104
    .const 'Sub' $P3730 = "171_1304282272.255" 
    copy $P3729, $P3730
    nqp_get_sc_object $P3731, "1304282267.413", 105
    .const 'Sub' $P3732 = "172_1304282272.255" 
    copy $P3731, $P3732
    nqp_get_sc_object $P3733, "1304282267.413", 106
    .const 'Sub' $P3734 = "174_1304282272.255" 
    copy $P3733, $P3734
    nqp_get_sc_object $P3735, "1304282267.413", 107
    .const 'Sub' $P3736 = "175_1304282272.255" 
    copy $P3735, $P3736
    nqp_get_sc_object $P3737, "1304282267.413", 108
    .const 'Sub' $P3738 = "177_1304282272.255" 
    copy $P3737, $P3738
    nqp_get_sc_object $P3739, "1304282267.413", 109
    .const 'Sub' $P3740 = "178_1304282272.255" 
    copy $P3739, $P3740
    nqp_get_sc_object $P3741, "1304282267.413", 110
    .const 'Sub' $P3742 = "180_1304282272.255" 
    copy $P3741, $P3742
    nqp_get_sc_object $P3743, "1304282267.413", 111
    .const 'Sub' $P3744 = "181_1304282272.255" 
    copy $P3743, $P3744
    nqp_get_sc_object $P3745, "1304282267.413", 112
    .const 'Sub' $P3746 = "183_1304282272.255" 
    copy $P3745, $P3746
    nqp_get_sc_object $P3747, "1304282267.413", 113
    .const 'Sub' $P3748 = "184_1304282272.255" 
    copy $P3747, $P3748
    nqp_get_sc_object $P3749, "1304282267.413", 114
    .const 'Sub' $P3750 = "186_1304282272.255" 
    copy $P3749, $P3750
    nqp_get_sc_object $P3751, "1304282267.413", 115
    .const 'Sub' $P3752 = "187_1304282272.255" 
    copy $P3751, $P3752
    nqp_get_sc_object $P3753, "1304282267.413", 116
    .const 'Sub' $P3754 = "189_1304282272.255" 
    copy $P3753, $P3754
    nqp_get_sc_object $P3755, "1304282267.413", 117
    .const 'Sub' $P3756 = "190_1304282272.255" 
    copy $P3755, $P3756
    nqp_get_sc_object $P3757, "1304282267.413", 118
    .const 'Sub' $P3758 = "193_1304282272.255" 
    copy $P3757, $P3758
    nqp_get_sc_object $P3759, "1304282267.413", 119
    .const 'Sub' $P3760 = "194_1304282272.255" 
    copy $P3759, $P3760
    nqp_get_sc_object $P3761, "1304282267.413", 120
    .const 'Sub' $P3762 = "196_1304282272.255" 
    copy $P3761, $P3762
    nqp_get_sc_object $P3763, "1304282267.413", 121
    .const 'Sub' $P3764 = "197_1304282272.255" 
    copy $P3763, $P3764
    nqp_get_sc_object $P3765, "1304282267.413", 122
    .const 'Sub' $P3766 = "198_1304282272.255" 
    copy $P3765, $P3766
    nqp_get_sc_object $P3767, "1304282267.413", 123
    .const 'Sub' $P3768 = "199_1304282272.255" 
    copy $P3767, $P3768
    nqp_get_sc_object $P3769, "1304282267.413", 124
    .const 'Sub' $P3770 = "202_1304282272.255" 
    copy $P3769, $P3770
    nqp_get_sc_object $P3771, "1304282267.413", 125
    .const 'Sub' $P3772 = "203_1304282272.255" 
    copy $P3771, $P3772
    nqp_get_sc_object $P3773, "1304282267.413", 126
    .const 'Sub' $P3774 = "206_1304282272.255" 
    copy $P3773, $P3774
    nqp_get_sc_object $P3775, "1304282267.413", 127
    .const 'Sub' $P3776 = "207_1304282272.255" 
    copy $P3775, $P3776
    nqp_get_sc_object $P3777, "1304282267.413", 128
    .const 'Sub' $P3778 = "209_1304282272.255" 
    copy $P3777, $P3778
    nqp_get_sc_object $P3779, "1304282267.413", 129
    .const 'Sub' $P3780 = "210_1304282272.255" 
    copy $P3779, $P3780
    nqp_get_sc_object $P3781, "1304282267.413", 130
    .const 'Sub' $P3782 = "213_1304282272.255" 
    copy $P3781, $P3782
    nqp_get_sc_object $P3783, "1304282267.413", 131
    .const 'Sub' $P3784 = "214_1304282272.255" 
    copy $P3783, $P3784
    nqp_get_sc_object $P3785, "1304282267.413", 132
    .const 'Sub' $P3786 = "217_1304282272.255" 
    copy $P3785, $P3786
    nqp_get_sc_object $P3787, "1304282267.413", 133
    .const 'Sub' $P3788 = "218_1304282272.255" 
    copy $P3787, $P3788
    nqp_get_sc_object $P3789, "1304282267.413", 134
    .const 'Sub' $P3790 = "224_1304282272.255" 
    copy $P3789, $P3790
    nqp_get_sc_object $P3791, "1304282267.413", 135
    .const 'Sub' $P3792 = "225_1304282272.255" 
    copy $P3791, $P3792
    nqp_get_sc_object $P3793, "1304282267.413", 136
    .const 'Sub' $P3794 = "228_1304282272.255" 
    copy $P3793, $P3794
    nqp_get_sc_object $P3795, "1304282267.413", 137
    .const 'Sub' $P3796 = "229_1304282272.255" 
    copy $P3795, $P3796
    nqp_get_sc_object $P3797, "1304282267.413", 138
    .const 'Sub' $P3798 = "230_1304282272.255" 
    copy $P3797, $P3798
    nqp_get_sc_object $P3799, "1304282267.413", 139
    .const 'Sub' $P3800 = "231_1304282272.255" 
    copy $P3799, $P3800
    nqp_get_sc_object $P3801, "1304282267.413", 140
    .const 'Sub' $P3802 = "233_1304282272.255" 
    copy $P3801, $P3802
    nqp_get_sc_object $P3803, "1304282267.413", 141
    .const 'Sub' $P3804 = "234_1304282272.255" 
    copy $P3803, $P3804
    nqp_get_sc_object $P3805, "1304282267.413", 142
    .const 'Sub' $P3806 = "236_1304282272.255" 
    copy $P3805, $P3806
    nqp_get_sc_object $P3807, "1304282267.413", 143
    .const 'Sub' $P3808 = "237_1304282272.255" 
    copy $P3807, $P3808
    nqp_get_sc_object $P3809, "1304282267.413", 144
    .const 'Sub' $P3810 = "239_1304282272.255" 
    copy $P3809, $P3810
    .const 'Sub' $P3811 = "12_1304282272.255" 
    $P3812 = $P3811."get_lexinfo"()
    nqp_get_sc_object $P3813, "1304282267.413", 1
    $P3812."set_static_lexpad_value"("$?PACKAGE", $P3813)
    .const 'Sub' $P3814 = "12_1304282272.255" 
    $P3815 = $P3814."get_lexinfo"()
    $P3815."finish_static_lexpad"()
    .const 'Sub' $P3816 = "12_1304282272.255" 
    $P3817 = $P3816."get_lexinfo"()
    nqp_get_sc_object $P3818, "1304282267.413", 1
    $P3817."set_static_lexpad_value"("$?CLASS", $P3818)
    .const 'Sub' $P3819 = "12_1304282272.255" 
    $P3820 = $P3819."get_lexinfo"()
    $P3820."finish_static_lexpad"()
    nqp_get_sc_object $P3821, "1304282267.413", 146
    .const 'Sub' $P3822 = "257_1304282272.255" 
    copy $P3821, $P3822
    nqp_get_sc_object $P3823, "1304282267.413", 147
    .const 'Sub' $P3824 = "258_1304282272.255" 
    copy $P3823, $P3824
    nqp_get_sc_object $P3825, "1304282267.413", 148
    .const 'Sub' $P3826 = "260_1304282272.255" 
    copy $P3825, $P3826
    nqp_get_sc_object $P3827, "1304282267.413", 149
    .const 'Sub' $P3828 = "261_1304282272.255" 
    copy $P3827, $P3828
    nqp_get_sc_object $P3829, "1304282267.413", 150
    .const 'Sub' $P3830 = "264_1304282272.255" 
    copy $P3829, $P3830
    nqp_get_sc_object $P3831, "1304282267.413", 151
    .const 'Sub' $P3832 = "266_1304282272.255" 
    copy $P3831, $P3832
    nqp_get_sc_object $P3833, "1304282267.413", 152
    .const 'Sub' $P3834 = "268_1304282272.255" 
    copy $P3833, $P3834
    nqp_get_sc_object $P3835, "1304282267.413", 153
    .const 'Sub' $P3836 = "270_1304282272.255" 
    copy $P3835, $P3836
    nqp_get_sc_object $P3837, "1304282267.413", 154
    .const 'Sub' $P3838 = "271_1304282272.255" 
    copy $P3837, $P3838
    nqp_get_sc_object $P3839, "1304282267.413", 155
    .const 'Sub' $P3840 = "272_1304282272.255" 
    copy $P3839, $P3840
    nqp_get_sc_object $P3841, "1304282267.413", 156
    .const 'Sub' $P3842 = "273_1304282272.255" 
    copy $P3841, $P3842
    nqp_get_sc_object $P3843, "1304282267.413", 157
    .const 'Sub' $P3844 = "274_1304282272.255" 
    copy $P3843, $P3844
    nqp_get_sc_object $P3845, "1304282267.413", 158
    .const 'Sub' $P3846 = "276_1304282272.255" 
    copy $P3845, $P3846
    nqp_get_sc_object $P3847, "1304282267.413", 159
    .const 'Sub' $P3848 = "277_1304282272.255" 
    copy $P3847, $P3848
    nqp_get_sc_object $P3849, "1304282267.413", 160
    .const 'Sub' $P3850 = "278_1304282272.255" 
    copy $P3849, $P3850
    nqp_get_sc_object $P3851, "1304282267.413", 161
    .const 'Sub' $P3852 = "279_1304282272.255" 
    copy $P3851, $P3852
    nqp_get_sc_object $P3853, "1304282267.413", 162
    .const 'Sub' $P3854 = "280_1304282272.255" 
    copy $P3853, $P3854
    nqp_get_sc_object $P3855, "1304282267.413", 163
    .const 'Sub' $P3856 = "281_1304282272.255" 
    copy $P3855, $P3856
    nqp_get_sc_object $P3857, "1304282267.413", 164
    .const 'Sub' $P3858 = "282_1304282272.255" 
    copy $P3857, $P3858
    nqp_get_sc_object $P3859, "1304282267.413", 165
    .const 'Sub' $P3860 = "283_1304282272.255" 
    copy $P3859, $P3860
    nqp_get_sc_object $P3861, "1304282267.413", 166
    .const 'Sub' $P3862 = "284_1304282272.255" 
    copy $P3861, $P3862
    nqp_get_sc_object $P3863, "1304282267.413", 167
    .const 'Sub' $P3864 = "285_1304282272.255" 
    copy $P3863, $P3864
    nqp_get_sc_object $P3865, "1304282267.413", 168
    .const 'Sub' $P3866 = "286_1304282272.255" 
    copy $P3865, $P3866
    nqp_get_sc_object $P3867, "1304282267.413", 169
    .const 'Sub' $P3868 = "287_1304282272.255" 
    copy $P3867, $P3868
    nqp_get_sc_object $P3869, "1304282267.413", 170
    .const 'Sub' $P3870 = "288_1304282272.255" 
    copy $P3869, $P3870
    nqp_get_sc_object $P3871, "1304282267.413", 171
    .const 'Sub' $P3872 = "289_1304282272.255" 
    copy $P3871, $P3872
    nqp_get_sc_object $P3873, "1304282267.413", 172
    .const 'Sub' $P3874 = "290_1304282272.255" 
    copy $P3873, $P3874
    nqp_get_sc_object $P3875, "1304282267.413", 173
    .const 'Sub' $P3876 = "291_1304282272.255" 
    copy $P3875, $P3876
    nqp_get_sc_object $P3877, "1304282267.413", 174
    .const 'Sub' $P3878 = "292_1304282272.255" 
    copy $P3877, $P3878
    nqp_get_sc_object $P3879, "1304282267.413", 175
    .const 'Sub' $P3880 = "293_1304282272.255" 
    copy $P3879, $P3880
    nqp_get_sc_object $P3881, "1304282267.413", 176
    .const 'Sub' $P3882 = "294_1304282272.255" 
    copy $P3881, $P3882
    nqp_get_sc_object $P3883, "1304282267.413", 177
    .const 'Sub' $P3884 = "295_1304282272.255" 
    copy $P3883, $P3884
    nqp_get_sc_object $P3885, "1304282267.413", 178
    .const 'Sub' $P3886 = "296_1304282272.255" 
    copy $P3885, $P3886
    nqp_get_sc_object $P3887, "1304282267.413", 179
    .const 'Sub' $P3888 = "297_1304282272.255" 
    copy $P3887, $P3888
    nqp_get_sc_object $P3889, "1304282267.413", 180
    .const 'Sub' $P3890 = "298_1304282272.255" 
    copy $P3889, $P3890
    nqp_get_sc_object $P3891, "1304282267.413", 181
    .const 'Sub' $P3892 = "299_1304282272.255" 
    copy $P3891, $P3892
    nqp_get_sc_object $P3893, "1304282267.413", 182
    .const 'Sub' $P3894 = "300_1304282272.255" 
    copy $P3893, $P3894
    nqp_get_sc_object $P3895, "1304282267.413", 183
    .const 'Sub' $P3896 = "301_1304282272.255" 
    copy $P3895, $P3896
    nqp_get_sc_object $P3897, "1304282267.413", 184
    .const 'Sub' $P3898 = "302_1304282272.255" 
    copy $P3897, $P3898
    nqp_get_sc_object $P3899, "1304282267.413", 185
    .const 'Sub' $P3900 = "303_1304282272.255" 
    copy $P3899, $P3900
    nqp_get_sc_object $P3901, "1304282267.413", 186
    .const 'Sub' $P3902 = "304_1304282272.255" 
    copy $P3901, $P3902
    nqp_get_sc_object $P3903, "1304282267.413", 187
    .const 'Sub' $P3904 = "305_1304282272.255" 
    copy $P3903, $P3904
    nqp_get_sc_object $P3905, "1304282267.413", 188
    .const 'Sub' $P3906 = "306_1304282272.255" 
    copy $P3905, $P3906
    nqp_get_sc_object $P3907, "1304282267.413", 189
    .const 'Sub' $P3908 = "307_1304282272.255" 
    copy $P3907, $P3908
    nqp_get_sc_object $P3909, "1304282267.413", 190
    .const 'Sub' $P3910 = "308_1304282272.255" 
    copy $P3909, $P3910
    nqp_get_sc_object $P3911, "1304282267.413", 191
    .const 'Sub' $P3912 = "309_1304282272.255" 
    copy $P3911, $P3912
    nqp_get_sc_object $P3913, "1304282267.413", 192
    .const 'Sub' $P3914 = "310_1304282272.255" 
    copy $P3913, $P3914
    nqp_get_sc_object $P3915, "1304282267.413", 193
    .const 'Sub' $P3916 = "311_1304282272.255" 
    copy $P3915, $P3916
    nqp_get_sc_object $P3917, "1304282267.413", 194
    .const 'Sub' $P3918 = "314_1304282272.255" 
    copy $P3917, $P3918
    nqp_get_sc_object $P3919, "1304282267.413", 195
    .const 'Sub' $P3920 = "316_1304282272.255" 
    copy $P3919, $P3920
    nqp_get_sc_object $P3921, "1304282267.413", 196
    .const 'Sub' $P3922 = "320_1304282272.255" 
    copy $P3921, $P3922
    .const 'Sub' $P3923 = "242_1304282272.255" 
    nqp_get_sc_object $P3924, "1304282267.413", 145
    get_who $P3925, $P3924
    set $P3925["buildsub"], $P3923
    nqp_get_sc_object $P3926, "1304282267.413", 197
    .const 'Sub' $P3927 = "321_1304282272.255" 
    copy $P3926, $P3927
    nqp_get_sc_object $P3928, "1304282267.413", 198
    .const 'Sub' $P3929 = "322_1304282272.255" 
    copy $P3928, $P3929
    .const 'Sub' $P3930 = "241_1304282272.255" 
    $P3931 = $P3930."get_lexinfo"()
    nqp_get_sc_object $P3932, "1304282267.413", 145
    $P3931."set_static_lexpad_value"("$?PACKAGE", $P3932)
    .const 'Sub' $P3933 = "241_1304282272.255" 
    $P3934 = $P3933."get_lexinfo"()
    $P3934."finish_static_lexpad"()
    .const 'Sub' $P3935 = "241_1304282272.255" 
    $P3936 = $P3935."get_lexinfo"()
    nqp_get_sc_object $P3937, "1304282267.413", 145
    $P3936."set_static_lexpad_value"("$?CLASS", $P3937)
    .const 'Sub' $P3938 = "241_1304282272.255" 
    $P3939 = $P3938."get_lexinfo"()
    $P3939."finish_static_lexpad"()
    .const 'Sub' $P3940 = "324_1304282272.255" 
    $P3941 = $P3940."get_lexinfo"()
    nqp_get_sc_object $P3942, "1304282267.413", 199
    $P3941."set_static_lexpad_value"("$?PACKAGE", $P3942)
    .const 'Sub' $P3943 = "324_1304282272.255" 
    $P3944 = $P3943."get_lexinfo"()
    $P3944."finish_static_lexpad"()
    .const 'Sub' $P3945 = "324_1304282272.255" 
    $P3946 = $P3945."get_lexinfo"()
    nqp_get_sc_object $P3947, "1304282267.413", 199
    $P3946."set_static_lexpad_value"("$?CLASS", $P3947)
    .const 'Sub' $P3948 = "324_1304282272.255" 
    $P3949 = $P3948."get_lexinfo"()
    $P3949."finish_static_lexpad"()
    goto if_2640_end
  if_2640:
    nqp_dynop_setup 
    getinterp $P2643
    get_class $P2644, "LexPad"
    get_class $P2645, "NQPLexPad"
    $P2643."hll_map"($P2644, $P2645)
    nqp_create_sc $P2646, "1304282267.413"
    .local pmc cur_sc
    set cur_sc, $P2646
    nqp_get_sc_object $P2647, "__6MODEL_CORE__", 0
    $P2648 = $P2647."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P2648, cur_sc
    nqp_set_sc_object "1304282267.413", 0, $P2648
    .const 'Sub' $P2649 = "10_1304282272.255" 
    $P2650 = $P2649."get_lexinfo"()
    nqp_get_sc_object $P2651, "1304282267.413", 0
    $P2650."set_static_lexpad_value"("GLOBALish", $P2651)
    .const 'Sub' $P2652 = "10_1304282272.255" 
    $P2653 = $P2652."get_lexinfo"()
    $P2653."finish_static_lexpad"()
    .const 'Sub' $P2654 = "10_1304282272.255" 
    $P2655 = $P2654."get_lexinfo"()
    nqp_get_sc_object $P2656, "1304282267.413", 0
    $P2655."set_static_lexpad_value"("$?PACKAGE", $P2656)
    .const 'Sub' $P2657 = "10_1304282272.255" 
    $P2658 = $P2657."get_lexinfo"()
    $P2658."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2659, "ModuleLoader"
    $P2660 = $P2659."load_setting"("NQPCORE")
    block."set_outer_ctx"($P2660)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2661, "ModuleLoader"
    nqp_get_sc_object $P2662, "1304282267.413", 0
    $P2661."load_module"("Regex", $P2662)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P2663, "ModuleLoader"
    nqp_get_sc_object $P2664, "1304282267.413", 0
    $P2663."load_module"("HLL", $P2664)
    nqp_get_sc_object $P2665, "1304282248.255", 41
    $P2666 = $P2665."new_type"("Regex::P6Regex::Grammar" :named("name"))
    nqp_set_sc_for_object $P2666, cur_sc
    nqp_set_sc_object "1304282267.413", 1, $P2666
    nqp_get_sc_object $P2667, "1304282267.413", 1
    nqp_get_sc_object $P2668, "1304282267.413", 0
    nqp_get_package_through_who $P2669, $P2668, "Regex"
    nqp_get_package_through_who $P2670, $P2669, "P6Regex"
    get_who $P2671, $P2670
    set $P2671["Grammar"], $P2667
    nqp_get_sc_object $P2672, "1304282267.413", 1
    get_how $P2673, $P2672
    nqp_get_sc_object $P2674, "1304282267.413", 1
    .const 'Sub' $P2675 = "13_1304282272.255" 
    $P2673."add_method"($P2674, "obs", $P2675)
    nqp_get_sc_object $P2676, "1304282267.413", 1
    get_how $P2677, $P2676
    nqp_get_sc_object $P2678, "1304282267.413", 1
    .const 'Sub' $P2679 = "14_1304282272.255" 
    $P2677."add_method"($P2678, "ws", $P2679)
    nqp_get_sc_object $P2680, "1304282267.413", 1
    get_how $P2681, $P2680
    nqp_get_sc_object $P2682, "1304282267.413", 1
    .const 'Sub' $P2683 = "16_1304282272.255" 
    $P2681."add_method"($P2682, "!PREFIX__ws", $P2683)
    nqp_get_sc_object $P2684, "1304282267.413", 1
    get_how $P2685, $P2684
    nqp_get_sc_object $P2686, "1304282267.413", 1
    .const 'Sub' $P2687 = "17_1304282272.255" 
    $P2685."add_method"($P2686, "normspace", $P2687)
    nqp_get_sc_object $P2688, "1304282267.413", 1
    get_how $P2689, $P2688
    nqp_get_sc_object $P2690, "1304282267.413", 1
    .const 'Sub' $P2691 = "20_1304282272.255" 
    $P2689."add_method"($P2690, "!PREFIX__normspace", $P2691)
    nqp_get_sc_object $P2692, "1304282267.413", 1
    get_how $P2693, $P2692
    nqp_get_sc_object $P2694, "1304282267.413", 1
    .const 'Sub' $P2695 = "21_1304282272.255" 
    $P2693."add_method"($P2694, "identifier", $P2695)
    nqp_get_sc_object $P2696, "1304282267.413", 1
    get_how $P2697, $P2696
    nqp_get_sc_object $P2698, "1304282267.413", 1
    .const 'Sub' $P2699 = "23_1304282272.255" 
    $P2697."add_method"($P2698, "!PREFIX__identifier", $P2699)
    nqp_get_sc_object $P2700, "1304282267.413", 1
    get_how $P2701, $P2700
    nqp_get_sc_object $P2702, "1304282267.413", 1
    .const 'Sub' $P2703 = "24_1304282272.255" 
    $P2701."add_method"($P2702, "arg", $P2703)
    nqp_get_sc_object $P2704, "1304282267.413", 1
    get_how $P2705, $P2704
    nqp_get_sc_object $P2706, "1304282267.413", 1
    .const 'Sub' $P2707 = "26_1304282272.255" 
    $P2705."add_method"($P2706, "!PREFIX__arg", $P2707)
    nqp_get_sc_object $P2708, "1304282267.413", 1
    get_how $P2709, $P2708
    nqp_get_sc_object $P2710, "1304282267.413", 1
    .const 'Sub' $P2711 = "27_1304282272.255" 
    $P2709."add_method"($P2710, "arglist", $P2711)
    nqp_get_sc_object $P2712, "1304282267.413", 1
    get_how $P2713, $P2712
    nqp_get_sc_object $P2714, "1304282267.413", 1
    .const 'Sub' $P2715 = "29_1304282272.255" 
    $P2713."add_method"($P2714, "!PREFIX__arglist", $P2715)
    nqp_get_sc_object $P2716, "1304282267.413", 1
    get_how $P2717, $P2716
    nqp_get_sc_object $P2718, "1304282267.413", 1
    .const 'Sub' $P2719 = "30_1304282272.255" 
    $P2717."add_method"($P2718, "TOP", $P2719)
    nqp_get_sc_object $P2720, "1304282267.413", 1
    get_how $P2721, $P2720
    nqp_get_sc_object $P2722, "1304282267.413", 1
    .const 'Sub' $P2723 = "32_1304282272.255" 
    $P2721."add_method"($P2722, "!PREFIX__TOP", $P2723)
    nqp_get_sc_object $P2724, "1304282267.413", 1
    get_how $P2725, $P2724
    nqp_get_sc_object $P2726, "1304282267.413", 1
    .const 'Sub' $P2727 = "33_1304282272.255" 
    $P2725."add_method"($P2726, "nibbler", $P2727)
    nqp_get_sc_object $P2728, "1304282267.413", 1
    get_how $P2729, $P2728
    nqp_get_sc_object $P2730, "1304282267.413", 1
    .const 'Sub' $P2731 = "35_1304282272.255" 
    $P2729."add_method"($P2730, "!PREFIX__nibbler", $P2731)
    nqp_get_sc_object $P2732, "1304282267.413", 1
    get_how $P2733, $P2732
    nqp_get_sc_object $P2734, "1304282267.413", 1
    .const 'Sub' $P2735 = "36_1304282272.255" 
    $P2733."add_method"($P2734, "termconj", $P2735)
    nqp_get_sc_object $P2736, "1304282267.413", 1
    get_how $P2737, $P2736
    nqp_get_sc_object $P2738, "1304282267.413", 1
    .const 'Sub' $P2739 = "38_1304282272.255" 
    $P2737."add_method"($P2738, "!PREFIX__termconj", $P2739)
    nqp_get_sc_object $P2740, "1304282267.413", 1
    get_how $P2741, $P2740
    nqp_get_sc_object $P2742, "1304282267.413", 1
    .const 'Sub' $P2743 = "39_1304282272.255" 
    $P2741."add_method"($P2742, "termish", $P2743)
    nqp_get_sc_object $P2744, "1304282267.413", 1
    get_how $P2745, $P2744
    nqp_get_sc_object $P2746, "1304282267.413", 1
    .const 'Sub' $P2747 = "41_1304282272.255" 
    $P2745."add_method"($P2746, "!PREFIX__termish", $P2747)
    nqp_get_sc_object $P2748, "1304282267.413", 1
    get_how $P2749, $P2748
    nqp_get_sc_object $P2750, "1304282267.413", 1
    .const 'Sub' $P2751 = "42_1304282272.255" 
    $P2749."add_method"($P2750, "quantified_atom", $P2751)
    nqp_get_sc_object $P2752, "1304282267.413", 1
    get_how $P2753, $P2752
    nqp_get_sc_object $P2754, "1304282267.413", 1
    .const 'Sub' $P2755 = "45_1304282272.255" 
    $P2753."add_method"($P2754, "!PREFIX__quantified_atom", $P2755)
    nqp_get_sc_object $P2756, "1304282267.413", 1
    get_how $P2757, $P2756
    nqp_get_sc_object $P2758, "1304282267.413", 1
    .const 'Sub' $P2759 = "46_1304282272.255" 
    $P2757."add_method"($P2758, "atom", $P2759)
    nqp_get_sc_object $P2760, "1304282267.413", 1
    get_how $P2761, $P2760
    nqp_get_sc_object $P2762, "1304282267.413", 1
    .const 'Sub' $P2763 = "49_1304282272.255" 
    $P2761."add_method"($P2762, "!PREFIX__atom", $P2763)
    nqp_get_sc_object $P2764, "1304282267.413", 1
    get_how $P2765, $P2764
    nqp_get_sc_object $P2766, "1304282267.413", 1
    .const 'Sub' $P2767 = "50_1304282272.255" 
    $P2765."add_method"($P2766, "quantifier", $P2767)
    nqp_get_sc_object $P2768, "1304282267.413", 1
    get_how $P2769, $P2768
    nqp_get_sc_object $P2770, "1304282267.413", 1
    .const 'Sub' $P2771 = "51_1304282272.255" 
    $P2769."add_method"($P2770, "!PREFIX__quantifier", $P2771)
    nqp_get_sc_object $P2772, "1304282267.413", 1
    get_how $P2773, $P2772
    nqp_get_sc_object $P2774, "1304282267.413", 1
    .const 'Sub' $P2775 = "52_1304282272.255" 
    $P2773."add_method"($P2774, "quantifier:sym<*>", $P2775)
    nqp_get_sc_object $P2776, "1304282267.413", 1
    get_how $P2777, $P2776
    nqp_get_sc_object $P2778, "1304282267.413", 1
    .const 'Sub' $P2779 = "54_1304282272.255" 
    $P2777."add_method"($P2778, "!PREFIX__quantifier:sym<*>", $P2779)
    nqp_get_sc_object $P2780, "1304282267.413", 1
    get_how $P2781, $P2780
    nqp_get_sc_object $P2782, "1304282267.413", 1
    .const 'Sub' $P2783 = "55_1304282272.255" 
    $P2781."add_method"($P2782, "quantifier:sym<+>", $P2783)
    nqp_get_sc_object $P2784, "1304282267.413", 1
    get_how $P2785, $P2784
    nqp_get_sc_object $P2786, "1304282267.413", 1
    .const 'Sub' $P2787 = "57_1304282272.255" 
    $P2785."add_method"($P2786, "!PREFIX__quantifier:sym<+>", $P2787)
    nqp_get_sc_object $P2788, "1304282267.413", 1
    get_how $P2789, $P2788
    nqp_get_sc_object $P2790, "1304282267.413", 1
    .const 'Sub' $P2791 = "58_1304282272.255" 
    $P2789."add_method"($P2790, "quantifier:sym<?>", $P2791)
    nqp_get_sc_object $P2792, "1304282267.413", 1
    get_how $P2793, $P2792
    nqp_get_sc_object $P2794, "1304282267.413", 1
    .const 'Sub' $P2795 = "60_1304282272.255" 
    $P2793."add_method"($P2794, "!PREFIX__quantifier:sym<?>", $P2795)
    nqp_get_sc_object $P2796, "1304282267.413", 1
    get_how $P2797, $P2796
    nqp_get_sc_object $P2798, "1304282267.413", 1
    .const 'Sub' $P2799 = "61_1304282272.255" 
    $P2797."add_method"($P2798, "quantifier:sym<{N,M}>", $P2799)
    nqp_get_sc_object $P2800, "1304282267.413", 1
    get_how $P2801, $P2800
    nqp_get_sc_object $P2802, "1304282267.413", 1
    .const 'Sub' $P2803 = "67_1304282272.255" 
    $P2801."add_method"($P2802, "!PREFIX__quantifier:sym<{N,M}>", $P2803)
    nqp_get_sc_object $P2804, "1304282267.413", 1
    get_how $P2805, $P2804
    nqp_get_sc_object $P2806, "1304282267.413", 1
    .const 'Sub' $P2807 = "68_1304282272.255" 
    $P2805."add_method"($P2806, "quantifier:sym<**>", $P2807)
    nqp_get_sc_object $P2808, "1304282267.413", 1
    get_how $P2809, $P2808
    nqp_get_sc_object $P2810, "1304282267.413", 1
    .const 'Sub' $P2811 = "70_1304282272.255" 
    $P2809."add_method"($P2810, "!PREFIX__quantifier:sym<**>", $P2811)
    nqp_get_sc_object $P2812, "1304282267.413", 1
    get_how $P2813, $P2812
    nqp_get_sc_object $P2814, "1304282267.413", 1
    .const 'Sub' $P2815 = "71_1304282272.255" 
    $P2813."add_method"($P2814, "backmod", $P2815)
    nqp_get_sc_object $P2816, "1304282267.413", 1
    get_how $P2817, $P2816
    nqp_get_sc_object $P2818, "1304282267.413", 1
    .const 'Sub' $P2819 = "74_1304282272.255" 
    $P2817."add_method"($P2818, "!PREFIX__backmod", $P2819)
    nqp_get_sc_object $P2820, "1304282267.413", 1
    get_how $P2821, $P2820
    nqp_get_sc_object $P2822, "1304282267.413", 1
    .const 'Sub' $P2823 = "75_1304282272.255" 
    $P2821."add_method"($P2822, "metachar", $P2823)
    nqp_get_sc_object $P2824, "1304282267.413", 1
    get_how $P2825, $P2824
    nqp_get_sc_object $P2826, "1304282267.413", 1
    .const 'Sub' $P2827 = "76_1304282272.255" 
    $P2825."add_method"($P2826, "!PREFIX__metachar", $P2827)
    nqp_get_sc_object $P2828, "1304282267.413", 1
    get_how $P2829, $P2828
    nqp_get_sc_object $P2830, "1304282267.413", 1
    .const 'Sub' $P2831 = "77_1304282272.255" 
    $P2829."add_method"($P2830, "metachar:sym<ws>", $P2831)
    nqp_get_sc_object $P2832, "1304282267.413", 1
    get_how $P2833, $P2832
    nqp_get_sc_object $P2834, "1304282267.413", 1
    .const 'Sub' $P2835 = "79_1304282272.255" 
    $P2833."add_method"($P2834, "!PREFIX__metachar:sym<ws>", $P2835)
    nqp_get_sc_object $P2836, "1304282267.413", 1
    get_how $P2837, $P2836
    nqp_get_sc_object $P2838, "1304282267.413", 1
    .const 'Sub' $P2839 = "80_1304282272.255" 
    $P2837."add_method"($P2838, "metachar:sym<[ ]>", $P2839)
    nqp_get_sc_object $P2840, "1304282267.413", 1
    get_how $P2841, $P2840
    nqp_get_sc_object $P2842, "1304282267.413", 1
    .const 'Sub' $P2843 = "82_1304282272.255" 
    $P2841."add_method"($P2842, "!PREFIX__metachar:sym<[ ]>", $P2843)
    nqp_get_sc_object $P2844, "1304282267.413", 1
    get_how $P2845, $P2844
    nqp_get_sc_object $P2846, "1304282267.413", 1
    .const 'Sub' $P2847 = "83_1304282272.255" 
    $P2845."add_method"($P2846, "metachar:sym<( )>", $P2847)
    nqp_get_sc_object $P2848, "1304282267.413", 1
    get_how $P2849, $P2848
    nqp_get_sc_object $P2850, "1304282267.413", 1
    .const 'Sub' $P2851 = "85_1304282272.255" 
    $P2849."add_method"($P2850, "!PREFIX__metachar:sym<( )>", $P2851)
    nqp_get_sc_object $P2852, "1304282267.413", 1
    get_how $P2853, $P2852
    nqp_get_sc_object $P2854, "1304282267.413", 1
    .const 'Sub' $P2855 = "86_1304282272.255" 
    $P2853."add_method"($P2854, "metachar:sym<'>", $P2855)
    nqp_get_sc_object $P2856, "1304282267.413", 1
    get_how $P2857, $P2856
    nqp_get_sc_object $P2858, "1304282267.413", 1
    .const 'Sub' $P2859 = "88_1304282272.255" 
    $P2857."add_method"($P2858, "!PREFIX__metachar:sym<'>", $P2859)
    nqp_get_sc_object $P2860, "1304282267.413", 1
    get_how $P2861, $P2860
    nqp_get_sc_object $P2862, "1304282267.413", 1
    .const 'Sub' $P2863 = "89_1304282272.255" 
    $P2861."add_method"($P2862, "metachar:sym<\">", $P2863)
    nqp_get_sc_object $P2864, "1304282267.413", 1
    get_how $P2865, $P2864
    nqp_get_sc_object $P2866, "1304282267.413", 1
    .const 'Sub' $P2867 = "91_1304282272.255" 
    $P2865."add_method"($P2866, "!PREFIX__metachar:sym<\">", $P2867)
    nqp_get_sc_object $P2868, "1304282267.413", 1
    get_how $P2869, $P2868
    nqp_get_sc_object $P2870, "1304282267.413", 1
    .const 'Sub' $P2871 = "92_1304282272.255" 
    $P2869."add_method"($P2870, "metachar:sym<.>", $P2871)
    nqp_get_sc_object $P2872, "1304282267.413", 1
    get_how $P2873, $P2872
    nqp_get_sc_object $P2874, "1304282267.413", 1
    .const 'Sub' $P2875 = "94_1304282272.255" 
    $P2873."add_method"($P2874, "!PREFIX__metachar:sym<.>", $P2875)
    nqp_get_sc_object $P2876, "1304282267.413", 1
    get_how $P2877, $P2876
    nqp_get_sc_object $P2878, "1304282267.413", 1
    .const 'Sub' $P2879 = "95_1304282272.255" 
    $P2877."add_method"($P2878, "metachar:sym<^>", $P2879)
    nqp_get_sc_object $P2880, "1304282267.413", 1
    get_how $P2881, $P2880
    nqp_get_sc_object $P2882, "1304282267.413", 1
    .const 'Sub' $P2883 = "97_1304282272.255" 
    $P2881."add_method"($P2882, "!PREFIX__metachar:sym<^>", $P2883)
    nqp_get_sc_object $P2884, "1304282267.413", 1
    get_how $P2885, $P2884
    nqp_get_sc_object $P2886, "1304282267.413", 1
    .const 'Sub' $P2887 = "98_1304282272.255" 
    $P2885."add_method"($P2886, "metachar:sym<^^>", $P2887)
    nqp_get_sc_object $P2888, "1304282267.413", 1
    get_how $P2889, $P2888
    nqp_get_sc_object $P2890, "1304282267.413", 1
    .const 'Sub' $P2891 = "100_1304282272.255" 
    $P2889."add_method"($P2890, "!PREFIX__metachar:sym<^^>", $P2891)
    nqp_get_sc_object $P2892, "1304282267.413", 1
    get_how $P2893, $P2892
    nqp_get_sc_object $P2894, "1304282267.413", 1
    .const 'Sub' $P2895 = "101_1304282272.255" 
    $P2893."add_method"($P2894, "metachar:sym<$>", $P2895)
    nqp_get_sc_object $P2896, "1304282267.413", 1
    get_how $P2897, $P2896
    nqp_get_sc_object $P2898, "1304282267.413", 1
    .const 'Sub' $P2899 = "103_1304282272.255" 
    $P2897."add_method"($P2898, "!PREFIX__metachar:sym<$>", $P2899)
    nqp_get_sc_object $P2900, "1304282267.413", 1
    get_how $P2901, $P2900
    nqp_get_sc_object $P2902, "1304282267.413", 1
    .const 'Sub' $P2903 = "104_1304282272.255" 
    $P2901."add_method"($P2902, "metachar:sym<$$>", $P2903)
    nqp_get_sc_object $P2904, "1304282267.413", 1
    get_how $P2905, $P2904
    nqp_get_sc_object $P2906, "1304282267.413", 1
    .const 'Sub' $P2907 = "106_1304282272.255" 
    $P2905."add_method"($P2906, "!PREFIX__metachar:sym<$$>", $P2907)
    nqp_get_sc_object $P2908, "1304282267.413", 1
    get_how $P2909, $P2908
    nqp_get_sc_object $P2910, "1304282267.413", 1
    .const 'Sub' $P2911 = "107_1304282272.255" 
    $P2909."add_method"($P2910, "metachar:sym<:::>", $P2911)
    nqp_get_sc_object $P2912, "1304282267.413", 1
    get_how $P2913, $P2912
    nqp_get_sc_object $P2914, "1304282267.413", 1
    .const 'Sub' $P2915 = "109_1304282272.255" 
    $P2913."add_method"($P2914, "!PREFIX__metachar:sym<:::>", $P2915)
    nqp_get_sc_object $P2916, "1304282267.413", 1
    get_how $P2917, $P2916
    nqp_get_sc_object $P2918, "1304282267.413", 1
    .const 'Sub' $P2919 = "110_1304282272.255" 
    $P2917."add_method"($P2918, "metachar:sym<::>", $P2919)
    nqp_get_sc_object $P2920, "1304282267.413", 1
    get_how $P2921, $P2920
    nqp_get_sc_object $P2922, "1304282267.413", 1
    .const 'Sub' $P2923 = "112_1304282272.255" 
    $P2921."add_method"($P2922, "!PREFIX__metachar:sym<::>", $P2923)
    nqp_get_sc_object $P2924, "1304282267.413", 1
    get_how $P2925, $P2924
    nqp_get_sc_object $P2926, "1304282267.413", 1
    .const 'Sub' $P2927 = "113_1304282272.255" 
    $P2925."add_method"($P2926, "metachar:sym<lwb>", $P2927)
    nqp_get_sc_object $P2928, "1304282267.413", 1
    get_how $P2929, $P2928
    nqp_get_sc_object $P2930, "1304282267.413", 1
    .const 'Sub' $P2931 = "115_1304282272.255" 
    $P2929."add_method"($P2930, "!PREFIX__metachar:sym<lwb>", $P2931)
    nqp_get_sc_object $P2932, "1304282267.413", 1
    get_how $P2933, $P2932
    nqp_get_sc_object $P2934, "1304282267.413", 1
    .const 'Sub' $P2935 = "116_1304282272.255" 
    $P2933."add_method"($P2934, "metachar:sym<rwb>", $P2935)
    nqp_get_sc_object $P2936, "1304282267.413", 1
    get_how $P2937, $P2936
    nqp_get_sc_object $P2938, "1304282267.413", 1
    .const 'Sub' $P2939 = "118_1304282272.255" 
    $P2937."add_method"($P2938, "!PREFIX__metachar:sym<rwb>", $P2939)
    nqp_get_sc_object $P2940, "1304282267.413", 1
    get_how $P2941, $P2940
    nqp_get_sc_object $P2942, "1304282267.413", 1
    .const 'Sub' $P2943 = "119_1304282272.255" 
    $P2941."add_method"($P2942, "metachar:sym<bs>", $P2943)
    nqp_get_sc_object $P2944, "1304282267.413", 1
    get_how $P2945, $P2944
    nqp_get_sc_object $P2946, "1304282267.413", 1
    .const 'Sub' $P2947 = "121_1304282272.255" 
    $P2945."add_method"($P2946, "!PREFIX__metachar:sym<bs>", $P2947)
    nqp_get_sc_object $P2948, "1304282267.413", 1
    get_how $P2949, $P2948
    nqp_get_sc_object $P2950, "1304282267.413", 1
    .const 'Sub' $P2951 = "122_1304282272.255" 
    $P2949."add_method"($P2950, "metachar:sym<mod>", $P2951)
    nqp_get_sc_object $P2952, "1304282267.413", 1
    get_how $P2953, $P2952
    nqp_get_sc_object $P2954, "1304282267.413", 1
    .const 'Sub' $P2955 = "124_1304282272.255" 
    $P2953."add_method"($P2954, "!PREFIX__metachar:sym<mod>", $P2955)
    nqp_get_sc_object $P2956, "1304282267.413", 1
    get_how $P2957, $P2956
    nqp_get_sc_object $P2958, "1304282267.413", 1
    .const 'Sub' $P2959 = "125_1304282272.255" 
    $P2957."add_method"($P2958, "metachar:sym<quantifier>", $P2959)
    nqp_get_sc_object $P2960, "1304282267.413", 1
    get_how $P2961, $P2960
    nqp_get_sc_object $P2962, "1304282267.413", 1
    .const 'Sub' $P2963 = "127_1304282272.255" 
    $P2961."add_method"($P2962, "!PREFIX__metachar:sym<quantifier>", $P2963)
    nqp_get_sc_object $P2964, "1304282267.413", 1
    get_how $P2965, $P2964
    nqp_get_sc_object $P2966, "1304282267.413", 1
    .const 'Sub' $P2967 = "128_1304282272.255" 
    $P2965."add_method"($P2966, "metachar:sym<~>", $P2967)
    nqp_get_sc_object $P2968, "1304282267.413", 1
    get_how $P2969, $P2968
    nqp_get_sc_object $P2970, "1304282267.413", 1
    .const 'Sub' $P2971 = "130_1304282272.255" 
    $P2969."add_method"($P2970, "!PREFIX__metachar:sym<~>", $P2971)
    nqp_get_sc_object $P2972, "1304282267.413", 1
    get_how $P2973, $P2972
    nqp_get_sc_object $P2974, "1304282267.413", 1
    .const 'Sub' $P2975 = "131_1304282272.255" 
    $P2973."add_method"($P2974, "metachar:sym<{*}>", $P2975)
    nqp_get_sc_object $P2976, "1304282267.413", 1
    get_how $P2977, $P2976
    nqp_get_sc_object $P2978, "1304282267.413", 1
    .const 'Sub' $P2979 = "133_1304282272.255" 
    $P2977."add_method"($P2978, "!PREFIX__metachar:sym<{*}>", $P2979)
    nqp_get_sc_object $P2980, "1304282267.413", 1
    get_how $P2981, $P2980
    nqp_get_sc_object $P2982, "1304282267.413", 1
    .const 'Sub' $P2983 = "134_1304282272.255" 
    $P2981."add_method"($P2982, "metachar:sym<assert>", $P2983)
    nqp_get_sc_object $P2984, "1304282267.413", 1
    get_how $P2985, $P2984
    nqp_get_sc_object $P2986, "1304282267.413", 1
    .const 'Sub' $P2987 = "136_1304282272.255" 
    $P2985."add_method"($P2986, "!PREFIX__metachar:sym<assert>", $P2987)
    nqp_get_sc_object $P2988, "1304282267.413", 1
    get_how $P2989, $P2988
    nqp_get_sc_object $P2990, "1304282267.413", 1
    .const 'Sub' $P2991 = "137_1304282272.255" 
    $P2989."add_method"($P2990, "metachar:sym<var>", $P2991)
    nqp_get_sc_object $P2992, "1304282267.413", 1
    get_how $P2993, $P2992
    nqp_get_sc_object $P2994, "1304282267.413", 1
    .const 'Sub' $P2995 = "139_1304282272.255" 
    $P2993."add_method"($P2994, "!PREFIX__metachar:sym<var>", $P2995)
    nqp_get_sc_object $P2996, "1304282267.413", 1
    get_how $P2997, $P2996
    nqp_get_sc_object $P2998, "1304282267.413", 1
    .const 'Sub' $P2999 = "140_1304282272.255" 
    $P2997."add_method"($P2998, "metachar:sym<PIR>", $P2999)
    nqp_get_sc_object $P3000, "1304282267.413", 1
    get_how $P3001, $P3000
    nqp_get_sc_object $P3002, "1304282267.413", 1
    .const 'Sub' $P3003 = "142_1304282272.255" 
    $P3001."add_method"($P3002, "!PREFIX__metachar:sym<PIR>", $P3003)
    nqp_get_sc_object $P3004, "1304282267.413", 1
    get_how $P3005, $P3004
    nqp_get_sc_object $P3006, "1304282267.413", 1
    .const 'Sub' $P3007 = "143_1304282272.255" 
    $P3005."add_method"($P3006, "backslash", $P3007)
    nqp_get_sc_object $P3008, "1304282267.413", 1
    get_how $P3009, $P3008
    nqp_get_sc_object $P3010, "1304282267.413", 1
    .const 'Sub' $P3011 = "144_1304282272.255" 
    $P3009."add_method"($P3010, "!PREFIX__backslash", $P3011)
    nqp_get_sc_object $P3012, "1304282267.413", 1
    get_how $P3013, $P3012
    nqp_get_sc_object $P3014, "1304282267.413", 1
    .const 'Sub' $P3015 = "145_1304282272.255" 
    $P3013."add_method"($P3014, "backslash:sym<w>", $P3015)
    nqp_get_sc_object $P3016, "1304282267.413", 1
    get_how $P3017, $P3016
    nqp_get_sc_object $P3018, "1304282267.413", 1
    .const 'Sub' $P3019 = "147_1304282272.255" 
    $P3017."add_method"($P3018, "!PREFIX__backslash:sym<w>", $P3019)
    nqp_get_sc_object $P3020, "1304282267.413", 1
    get_how $P3021, $P3020
    nqp_get_sc_object $P3022, "1304282267.413", 1
    .const 'Sub' $P3023 = "148_1304282272.255" 
    $P3021."add_method"($P3022, "backslash:sym<b>", $P3023)
    nqp_get_sc_object $P3024, "1304282267.413", 1
    get_how $P3025, $P3024
    nqp_get_sc_object $P3026, "1304282267.413", 1
    .const 'Sub' $P3027 = "150_1304282272.255" 
    $P3025."add_method"($P3026, "!PREFIX__backslash:sym<b>", $P3027)
    nqp_get_sc_object $P3028, "1304282267.413", 1
    get_how $P3029, $P3028
    nqp_get_sc_object $P3030, "1304282267.413", 1
    .const 'Sub' $P3031 = "151_1304282272.255" 
    $P3029."add_method"($P3030, "backslash:sym<e>", $P3031)
    nqp_get_sc_object $P3032, "1304282267.413", 1
    get_how $P3033, $P3032
    nqp_get_sc_object $P3034, "1304282267.413", 1
    .const 'Sub' $P3035 = "153_1304282272.255" 
    $P3033."add_method"($P3034, "!PREFIX__backslash:sym<e>", $P3035)
    nqp_get_sc_object $P3036, "1304282267.413", 1
    get_how $P3037, $P3036
    nqp_get_sc_object $P3038, "1304282267.413", 1
    .const 'Sub' $P3039 = "154_1304282272.255" 
    $P3037."add_method"($P3038, "backslash:sym<f>", $P3039)
    nqp_get_sc_object $P3040, "1304282267.413", 1
    get_how $P3041, $P3040
    nqp_get_sc_object $P3042, "1304282267.413", 1
    .const 'Sub' $P3043 = "156_1304282272.255" 
    $P3041."add_method"($P3042, "!PREFIX__backslash:sym<f>", $P3043)
    nqp_get_sc_object $P3044, "1304282267.413", 1
    get_how $P3045, $P3044
    nqp_get_sc_object $P3046, "1304282267.413", 1
    .const 'Sub' $P3047 = "157_1304282272.255" 
    $P3045."add_method"($P3046, "backslash:sym<h>", $P3047)
    nqp_get_sc_object $P3048, "1304282267.413", 1
    get_how $P3049, $P3048
    nqp_get_sc_object $P3050, "1304282267.413", 1
    .const 'Sub' $P3051 = "159_1304282272.255" 
    $P3049."add_method"($P3050, "!PREFIX__backslash:sym<h>", $P3051)
    nqp_get_sc_object $P3052, "1304282267.413", 1
    get_how $P3053, $P3052
    nqp_get_sc_object $P3054, "1304282267.413", 1
    .const 'Sub' $P3055 = "160_1304282272.255" 
    $P3053."add_method"($P3054, "backslash:sym<r>", $P3055)
    nqp_get_sc_object $P3056, "1304282267.413", 1
    get_how $P3057, $P3056
    nqp_get_sc_object $P3058, "1304282267.413", 1
    .const 'Sub' $P3059 = "162_1304282272.255" 
    $P3057."add_method"($P3058, "!PREFIX__backslash:sym<r>", $P3059)
    nqp_get_sc_object $P3060, "1304282267.413", 1
    get_how $P3061, $P3060
    nqp_get_sc_object $P3062, "1304282267.413", 1
    .const 'Sub' $P3063 = "163_1304282272.255" 
    $P3061."add_method"($P3062, "backslash:sym<t>", $P3063)
    nqp_get_sc_object $P3064, "1304282267.413", 1
    get_how $P3065, $P3064
    nqp_get_sc_object $P3066, "1304282267.413", 1
    .const 'Sub' $P3067 = "165_1304282272.255" 
    $P3065."add_method"($P3066, "!PREFIX__backslash:sym<t>", $P3067)
    nqp_get_sc_object $P3068, "1304282267.413", 1
    get_how $P3069, $P3068
    nqp_get_sc_object $P3070, "1304282267.413", 1
    .const 'Sub' $P3071 = "166_1304282272.255" 
    $P3069."add_method"($P3070, "backslash:sym<v>", $P3071)
    nqp_get_sc_object $P3072, "1304282267.413", 1
    get_how $P3073, $P3072
    nqp_get_sc_object $P3074, "1304282267.413", 1
    .const 'Sub' $P3075 = "168_1304282272.255" 
    $P3073."add_method"($P3074, "!PREFIX__backslash:sym<v>", $P3075)
    nqp_get_sc_object $P3076, "1304282267.413", 1
    get_how $P3077, $P3076
    nqp_get_sc_object $P3078, "1304282267.413", 1
    .const 'Sub' $P3079 = "169_1304282272.255" 
    $P3077."add_method"($P3078, "backslash:sym<o>", $P3079)
    nqp_get_sc_object $P3080, "1304282267.413", 1
    get_how $P3081, $P3080
    nqp_get_sc_object $P3082, "1304282267.413", 1
    .const 'Sub' $P3083 = "171_1304282272.255" 
    $P3081."add_method"($P3082, "!PREFIX__backslash:sym<o>", $P3083)
    nqp_get_sc_object $P3084, "1304282267.413", 1
    get_how $P3085, $P3084
    nqp_get_sc_object $P3086, "1304282267.413", 1
    .const 'Sub' $P3087 = "172_1304282272.255" 
    $P3085."add_method"($P3086, "backslash:sym<x>", $P3087)
    nqp_get_sc_object $P3088, "1304282267.413", 1
    get_how $P3089, $P3088
    nqp_get_sc_object $P3090, "1304282267.413", 1
    .const 'Sub' $P3091 = "174_1304282272.255" 
    $P3089."add_method"($P3090, "!PREFIX__backslash:sym<x>", $P3091)
    nqp_get_sc_object $P3092, "1304282267.413", 1
    get_how $P3093, $P3092
    nqp_get_sc_object $P3094, "1304282267.413", 1
    .const 'Sub' $P3095 = "175_1304282272.255" 
    $P3093."add_method"($P3094, "backslash:sym<c>", $P3095)
    nqp_get_sc_object $P3096, "1304282267.413", 1
    get_how $P3097, $P3096
    nqp_get_sc_object $P3098, "1304282267.413", 1
    .const 'Sub' $P3099 = "177_1304282272.255" 
    $P3097."add_method"($P3098, "!PREFIX__backslash:sym<c>", $P3099)
    nqp_get_sc_object $P3100, "1304282267.413", 1
    get_how $P3101, $P3100
    nqp_get_sc_object $P3102, "1304282267.413", 1
    .const 'Sub' $P3103 = "178_1304282272.255" 
    $P3101."add_method"($P3102, "backslash:sym<A>", $P3103)
    nqp_get_sc_object $P3104, "1304282267.413", 1
    get_how $P3105, $P3104
    nqp_get_sc_object $P3106, "1304282267.413", 1
    .const 'Sub' $P3107 = "180_1304282272.255" 
    $P3105."add_method"($P3106, "!PREFIX__backslash:sym<A>", $P3107)
    nqp_get_sc_object $P3108, "1304282267.413", 1
    get_how $P3109, $P3108
    nqp_get_sc_object $P3110, "1304282267.413", 1
    .const 'Sub' $P3111 = "181_1304282272.255" 
    $P3109."add_method"($P3110, "backslash:sym<z>", $P3111)
    nqp_get_sc_object $P3112, "1304282267.413", 1
    get_how $P3113, $P3112
    nqp_get_sc_object $P3114, "1304282267.413", 1
    .const 'Sub' $P3115 = "183_1304282272.255" 
    $P3113."add_method"($P3114, "!PREFIX__backslash:sym<z>", $P3115)
    nqp_get_sc_object $P3116, "1304282267.413", 1
    get_how $P3117, $P3116
    nqp_get_sc_object $P3118, "1304282267.413", 1
    .const 'Sub' $P3119 = "184_1304282272.255" 
    $P3117."add_method"($P3118, "backslash:sym<Z>", $P3119)
    nqp_get_sc_object $P3120, "1304282267.413", 1
    get_how $P3121, $P3120
    nqp_get_sc_object $P3122, "1304282267.413", 1
    .const 'Sub' $P3123 = "186_1304282272.255" 
    $P3121."add_method"($P3122, "!PREFIX__backslash:sym<Z>", $P3123)
    nqp_get_sc_object $P3124, "1304282267.413", 1
    get_how $P3125, $P3124
    nqp_get_sc_object $P3126, "1304282267.413", 1
    .const 'Sub' $P3127 = "187_1304282272.255" 
    $P3125."add_method"($P3126, "backslash:sym<Q>", $P3127)
    nqp_get_sc_object $P3128, "1304282267.413", 1
    get_how $P3129, $P3128
    nqp_get_sc_object $P3130, "1304282267.413", 1
    .const 'Sub' $P3131 = "189_1304282272.255" 
    $P3129."add_method"($P3130, "!PREFIX__backslash:sym<Q>", $P3131)
    nqp_get_sc_object $P3132, "1304282267.413", 1
    get_how $P3133, $P3132
    nqp_get_sc_object $P3134, "1304282267.413", 1
    .const 'Sub' $P3135 = "190_1304282272.255" 
    $P3133."add_method"($P3134, "backslash:sym<unrec>", $P3135)
    nqp_get_sc_object $P3136, "1304282267.413", 1
    get_how $P3137, $P3136
    nqp_get_sc_object $P3138, "1304282267.413", 1
    .const 'Sub' $P3139 = "193_1304282272.255" 
    $P3137."add_method"($P3138, "!PREFIX__backslash:sym<unrec>", $P3139)
    nqp_get_sc_object $P3140, "1304282267.413", 1
    get_how $P3141, $P3140
    nqp_get_sc_object $P3142, "1304282267.413", 1
    .const 'Sub' $P3143 = "194_1304282272.255" 
    $P3141."add_method"($P3142, "backslash:sym<misc>", $P3143)
    nqp_get_sc_object $P3144, "1304282267.413", 1
    get_how $P3145, $P3144
    nqp_get_sc_object $P3146, "1304282267.413", 1
    .const 'Sub' $P3147 = "196_1304282272.255" 
    $P3145."add_method"($P3146, "!PREFIX__backslash:sym<misc>", $P3147)
    nqp_get_sc_object $P3148, "1304282267.413", 1
    get_how $P3149, $P3148
    nqp_get_sc_object $P3150, "1304282267.413", 1
    .const 'Sub' $P3151 = "197_1304282272.255" 
    $P3149."add_method"($P3150, "assertion", $P3151)
    nqp_get_sc_object $P3152, "1304282267.413", 1
    get_how $P3153, $P3152
    nqp_get_sc_object $P3154, "1304282267.413", 1
    .const 'Sub' $P3155 = "198_1304282272.255" 
    $P3153."add_method"($P3154, "!PREFIX__assertion", $P3155)
    nqp_get_sc_object $P3156, "1304282267.413", 1
    get_how $P3157, $P3156
    nqp_get_sc_object $P3158, "1304282267.413", 1
    .const 'Sub' $P3159 = "199_1304282272.255" 
    $P3157."add_method"($P3158, "assertion:sym<?>", $P3159)
    nqp_get_sc_object $P3160, "1304282267.413", 1
    get_how $P3161, $P3160
    nqp_get_sc_object $P3162, "1304282267.413", 1
    .const 'Sub' $P3163 = "202_1304282272.255" 
    $P3161."add_method"($P3162, "!PREFIX__assertion:sym<?>", $P3163)
    nqp_get_sc_object $P3164, "1304282267.413", 1
    get_how $P3165, $P3164
    nqp_get_sc_object $P3166, "1304282267.413", 1
    .const 'Sub' $P3167 = "203_1304282272.255" 
    $P3165."add_method"($P3166, "assertion:sym<!>", $P3167)
    nqp_get_sc_object $P3168, "1304282267.413", 1
    get_how $P3169, $P3168
    nqp_get_sc_object $P3170, "1304282267.413", 1
    .const 'Sub' $P3171 = "206_1304282272.255" 
    $P3169."add_method"($P3170, "!PREFIX__assertion:sym<!>", $P3171)
    nqp_get_sc_object $P3172, "1304282267.413", 1
    get_how $P3173, $P3172
    nqp_get_sc_object $P3174, "1304282267.413", 1
    .const 'Sub' $P3175 = "207_1304282272.255" 
    $P3173."add_method"($P3174, "assertion:sym<method>", $P3175)
    nqp_get_sc_object $P3176, "1304282267.413", 1
    get_how $P3177, $P3176
    nqp_get_sc_object $P3178, "1304282267.413", 1
    .const 'Sub' $P3179 = "209_1304282272.255" 
    $P3177."add_method"($P3178, "!PREFIX__assertion:sym<method>", $P3179)
    nqp_get_sc_object $P3180, "1304282267.413", 1
    get_how $P3181, $P3180
    nqp_get_sc_object $P3182, "1304282267.413", 1
    .const 'Sub' $P3183 = "210_1304282272.255" 
    $P3181."add_method"($P3182, "assertion:sym<name>", $P3183)
    nqp_get_sc_object $P3184, "1304282267.413", 1
    get_how $P3185, $P3184
    nqp_get_sc_object $P3186, "1304282267.413", 1
    .const 'Sub' $P3187 = "213_1304282272.255" 
    $P3185."add_method"($P3186, "!PREFIX__assertion:sym<name>", $P3187)
    nqp_get_sc_object $P3188, "1304282267.413", 1
    get_how $P3189, $P3188
    nqp_get_sc_object $P3190, "1304282267.413", 1
    .const 'Sub' $P3191 = "214_1304282272.255" 
    $P3189."add_method"($P3190, "assertion:sym<[>", $P3191)
    nqp_get_sc_object $P3192, "1304282267.413", 1
    get_how $P3193, $P3192
    nqp_get_sc_object $P3194, "1304282267.413", 1
    .const 'Sub' $P3195 = "217_1304282272.255" 
    $P3193."add_method"($P3194, "!PREFIX__assertion:sym<[>", $P3195)
    nqp_get_sc_object $P3196, "1304282267.413", 1
    get_how $P3197, $P3196
    nqp_get_sc_object $P3198, "1304282267.413", 1
    .const 'Sub' $P3199 = "218_1304282272.255" 
    $P3197."add_method"($P3198, "cclass_elem", $P3199)
    nqp_get_sc_object $P3200, "1304282267.413", 1
    get_how $P3201, $P3200
    nqp_get_sc_object $P3202, "1304282267.413", 1
    .const 'Sub' $P3203 = "224_1304282272.255" 
    $P3201."add_method"($P3202, "!PREFIX__cclass_elem", $P3203)
    nqp_get_sc_object $P3204, "1304282267.413", 1
    get_how $P3205, $P3204
    nqp_get_sc_object $P3206, "1304282267.413", 1
    .const 'Sub' $P3207 = "225_1304282272.255" 
    $P3205."add_method"($P3206, "mod_internal", $P3207)
    nqp_get_sc_object $P3208, "1304282267.413", 1
    get_how $P3209, $P3208
    nqp_get_sc_object $P3210, "1304282267.413", 1
    .const 'Sub' $P3211 = "228_1304282272.255" 
    $P3209."add_method"($P3210, "!PREFIX__mod_internal", $P3211)
    nqp_get_sc_object $P3212, "1304282267.413", 1
    get_how $P3213, $P3212
    nqp_get_sc_object $P3214, "1304282267.413", 1
    .const 'Sub' $P3215 = "229_1304282272.255" 
    $P3213."add_method"($P3214, "mod_ident", $P3215)
    nqp_get_sc_object $P3216, "1304282267.413", 1
    get_how $P3217, $P3216
    nqp_get_sc_object $P3218, "1304282267.413", 1
    .const 'Sub' $P3219 = "230_1304282272.255" 
    $P3217."add_method"($P3218, "!PREFIX__mod_ident", $P3219)
    nqp_get_sc_object $P3220, "1304282267.413", 1
    get_how $P3221, $P3220
    nqp_get_sc_object $P3222, "1304282267.413", 1
    .const 'Sub' $P3223 = "231_1304282272.255" 
    $P3221."add_method"($P3222, "mod_ident:sym<ignorecase>", $P3223)
    nqp_get_sc_object $P3224, "1304282267.413", 1
    get_how $P3225, $P3224
    nqp_get_sc_object $P3226, "1304282267.413", 1
    .const 'Sub' $P3227 = "233_1304282272.255" 
    $P3225."add_method"($P3226, "!PREFIX__mod_ident:sym<ignorecase>", $P3227)
    nqp_get_sc_object $P3228, "1304282267.413", 1
    get_how $P3229, $P3228
    nqp_get_sc_object $P3230, "1304282267.413", 1
    .const 'Sub' $P3231 = "234_1304282272.255" 
    $P3229."add_method"($P3230, "mod_ident:sym<ratchet>", $P3231)
    nqp_get_sc_object $P3232, "1304282267.413", 1
    get_how $P3233, $P3232
    nqp_get_sc_object $P3234, "1304282267.413", 1
    .const 'Sub' $P3235 = "236_1304282272.255" 
    $P3233."add_method"($P3234, "!PREFIX__mod_ident:sym<ratchet>", $P3235)
    nqp_get_sc_object $P3236, "1304282267.413", 1
    get_how $P3237, $P3236
    nqp_get_sc_object $P3238, "1304282267.413", 1
    .const 'Sub' $P3239 = "237_1304282272.255" 
    $P3237."add_method"($P3238, "mod_ident:sym<sigspace>", $P3239)
    nqp_get_sc_object $P3240, "1304282267.413", 1
    get_how $P3241, $P3240
    nqp_get_sc_object $P3242, "1304282267.413", 1
    .const 'Sub' $P3243 = "239_1304282272.255" 
    $P3241."add_method"($P3242, "!PREFIX__mod_ident:sym<sigspace>", $P3243)
    .const 'Sub' $P3244 = "12_1304282272.255" 
    $P3245 = $P3244."get_lexinfo"()
    nqp_get_sc_object $P3246, "1304282267.413", 1
    $P3245."set_static_lexpad_value"("$?PACKAGE", $P3246)
    .const 'Sub' $P3247 = "12_1304282272.255" 
    $P3248 = $P3247."get_lexinfo"()
    $P3248."finish_static_lexpad"()
    .const 'Sub' $P3249 = "12_1304282272.255" 
    $P3250 = $P3249."get_lexinfo"()
    nqp_get_sc_object $P3251, "1304282267.413", 1
    $P3250."set_static_lexpad_value"("$?CLASS", $P3251)
    .const 'Sub' $P3252 = "12_1304282272.255" 
    $P3253 = $P3252."get_lexinfo"()
    $P3253."finish_static_lexpad"()
    nqp_get_sc_object $P3254, "1304282267.413", 1
    get_how $P3255, $P3254
    nqp_get_sc_object $P3256, "1304282267.413", 1
    nqp_get_sc_object $P3257, "1304282255.673", 1
    $P3255."add_parent"($P3256, $P3257)
    nqp_get_sc_object $P3258, "1304282248.255", 41
    $P3259 = $P3258."new_type"("Regex::P6Regex::Actions" :named("name"))
    nqp_set_sc_for_object $P3259, cur_sc
    nqp_set_sc_object "1304282267.413", 145, $P3259
    nqp_get_sc_object $P3260, "1304282267.413", 145
    nqp_get_sc_object $P3261, "1304282267.413", 0
    nqp_get_package_through_who $P3262, $P3261, "Regex"
    nqp_get_package_through_who $P3263, $P3262, "P6Regex"
    get_who $P3264, $P3263
    set $P3264["Actions"], $P3260
    nqp_get_sc_object $P3265, "1304282267.413", 145
    get_how $P3266, $P3265
    nqp_get_sc_object $P3267, "1304282267.413", 145
    .const 'Sub' $P3268 = "257_1304282272.255" 
    $P3266."add_method"($P3267, "arg", $P3268)
    nqp_get_sc_object $P3269, "1304282267.413", 145
    get_how $P3270, $P3269
    nqp_get_sc_object $P3271, "1304282267.413", 145
    .const 'Sub' $P3272 = "258_1304282272.255" 
    $P3270."add_method"($P3271, "arglist", $P3272)
    nqp_get_sc_object $P3273, "1304282267.413", 145
    get_how $P3274, $P3273
    nqp_get_sc_object $P3275, "1304282267.413", 145
    .const 'Sub' $P3276 = "260_1304282272.255" 
    $P3274."add_method"($P3275, "TOP", $P3276)
    nqp_get_sc_object $P3277, "1304282267.413", 145
    get_how $P3278, $P3277
    nqp_get_sc_object $P3279, "1304282267.413", 145
    .const 'Sub' $P3280 = "261_1304282272.255" 
    $P3278."add_method"($P3279, "nibbler", $P3280)
    nqp_get_sc_object $P3281, "1304282267.413", 145
    get_how $P3282, $P3281
    nqp_get_sc_object $P3283, "1304282267.413", 145
    .const 'Sub' $P3284 = "264_1304282272.255" 
    $P3282."add_method"($P3283, "termconj", $P3284)
    nqp_get_sc_object $P3285, "1304282267.413", 145
    get_how $P3286, $P3285
    nqp_get_sc_object $P3287, "1304282267.413", 145
    .const 'Sub' $P3288 = "266_1304282272.255" 
    $P3286."add_method"($P3287, "termish", $P3288)
    nqp_get_sc_object $P3289, "1304282267.413", 145
    get_how $P3290, $P3289
    nqp_get_sc_object $P3291, "1304282267.413", 145
    .const 'Sub' $P3292 = "268_1304282272.255" 
    $P3290."add_method"($P3291, "quantified_atom", $P3292)
    nqp_get_sc_object $P3293, "1304282267.413", 145
    get_how $P3294, $P3293
    nqp_get_sc_object $P3295, "1304282267.413", 145
    .const 'Sub' $P3296 = "270_1304282272.255" 
    $P3294."add_method"($P3295, "atom", $P3296)
    nqp_get_sc_object $P3297, "1304282267.413", 145
    get_how $P3298, $P3297
    nqp_get_sc_object $P3299, "1304282267.413", 145
    .const 'Sub' $P3300 = "271_1304282272.255" 
    $P3298."add_method"($P3299, "quantifier:sym<*>", $P3300)
    nqp_get_sc_object $P3301, "1304282267.413", 145
    get_how $P3302, $P3301
    nqp_get_sc_object $P3303, "1304282267.413", 145
    .const 'Sub' $P3304 = "272_1304282272.255" 
    $P3302."add_method"($P3303, "quantifier:sym<+>", $P3304)
    nqp_get_sc_object $P3305, "1304282267.413", 145
    get_how $P3306, $P3305
    nqp_get_sc_object $P3307, "1304282267.413", 145
    .const 'Sub' $P3308 = "273_1304282272.255" 
    $P3306."add_method"($P3307, "quantifier:sym<?>", $P3308)
    nqp_get_sc_object $P3309, "1304282267.413", 145
    get_how $P3310, $P3309
    nqp_get_sc_object $P3311, "1304282267.413", 145
    .const 'Sub' $P3312 = "274_1304282272.255" 
    $P3310."add_method"($P3311, "quantifier:sym<**>", $P3312)
    nqp_get_sc_object $P3313, "1304282267.413", 145
    get_how $P3314, $P3313
    nqp_get_sc_object $P3315, "1304282267.413", 145
    .const 'Sub' $P3316 = "276_1304282272.255" 
    $P3314."add_method"($P3315, "metachar:sym<ws>", $P3316)
    nqp_get_sc_object $P3317, "1304282267.413", 145
    get_how $P3318, $P3317
    nqp_get_sc_object $P3319, "1304282267.413", 145
    .const 'Sub' $P3320 = "277_1304282272.255" 
    $P3318."add_method"($P3319, "metachar:sym<[ ]>", $P3320)
    nqp_get_sc_object $P3321, "1304282267.413", 145
    get_how $P3322, $P3321
    nqp_get_sc_object $P3323, "1304282267.413", 145
    .const 'Sub' $P3324 = "278_1304282272.255" 
    $P3322."add_method"($P3323, "metachar:sym<( )>", $P3324)
    nqp_get_sc_object $P3325, "1304282267.413", 145
    get_how $P3326, $P3325
    nqp_get_sc_object $P3327, "1304282267.413", 145
    .const 'Sub' $P3328 = "279_1304282272.255" 
    $P3326."add_method"($P3327, "metachar:sym<'>", $P3328)
    nqp_get_sc_object $P3329, "1304282267.413", 145
    get_how $P3330, $P3329
    nqp_get_sc_object $P3331, "1304282267.413", 145
    .const 'Sub' $P3332 = "280_1304282272.255" 
    $P3330."add_method"($P3331, "metachar:sym<\">", $P3332)
    nqp_get_sc_object $P3333, "1304282267.413", 145
    get_how $P3334, $P3333
    nqp_get_sc_object $P3335, "1304282267.413", 145
    .const 'Sub' $P3336 = "281_1304282272.255" 
    $P3334."add_method"($P3335, "metachar:sym<.>", $P3336)
    nqp_get_sc_object $P3337, "1304282267.413", 145
    get_how $P3338, $P3337
    nqp_get_sc_object $P3339, "1304282267.413", 145
    .const 'Sub' $P3340 = "282_1304282272.255" 
    $P3338."add_method"($P3339, "metachar:sym<^>", $P3340)
    nqp_get_sc_object $P3341, "1304282267.413", 145
    get_how $P3342, $P3341
    nqp_get_sc_object $P3343, "1304282267.413", 145
    .const 'Sub' $P3344 = "283_1304282272.255" 
    $P3342."add_method"($P3343, "metachar:sym<^^>", $P3344)
    nqp_get_sc_object $P3345, "1304282267.413", 145
    get_how $P3346, $P3345
    nqp_get_sc_object $P3347, "1304282267.413", 145
    .const 'Sub' $P3348 = "284_1304282272.255" 
    $P3346."add_method"($P3347, "metachar:sym<$>", $P3348)
    nqp_get_sc_object $P3349, "1304282267.413", 145
    get_how $P3350, $P3349
    nqp_get_sc_object $P3351, "1304282267.413", 145
    .const 'Sub' $P3352 = "285_1304282272.255" 
    $P3350."add_method"($P3351, "metachar:sym<$$>", $P3352)
    nqp_get_sc_object $P3353, "1304282267.413", 145
    get_how $P3354, $P3353
    nqp_get_sc_object $P3355, "1304282267.413", 145
    .const 'Sub' $P3356 = "286_1304282272.255" 
    $P3354."add_method"($P3355, "metachar:sym<:::>", $P3356)
    nqp_get_sc_object $P3357, "1304282267.413", 145
    get_how $P3358, $P3357
    nqp_get_sc_object $P3359, "1304282267.413", 145
    .const 'Sub' $P3360 = "287_1304282272.255" 
    $P3358."add_method"($P3359, "metachar:sym<lwb>", $P3360)
    nqp_get_sc_object $P3361, "1304282267.413", 145
    get_how $P3362, $P3361
    nqp_get_sc_object $P3363, "1304282267.413", 145
    .const 'Sub' $P3364 = "288_1304282272.255" 
    $P3362."add_method"($P3363, "metachar:sym<rwb>", $P3364)
    nqp_get_sc_object $P3365, "1304282267.413", 145
    get_how $P3366, $P3365
    nqp_get_sc_object $P3367, "1304282267.413", 145
    .const 'Sub' $P3368 = "289_1304282272.255" 
    $P3366."add_method"($P3367, "metachar:sym<bs>", $P3368)
    nqp_get_sc_object $P3369, "1304282267.413", 145
    get_how $P3370, $P3369
    nqp_get_sc_object $P3371, "1304282267.413", 145
    .const 'Sub' $P3372 = "290_1304282272.255" 
    $P3370."add_method"($P3371, "metachar:sym<mod>", $P3372)
    nqp_get_sc_object $P3373, "1304282267.413", 145
    get_how $P3374, $P3373
    nqp_get_sc_object $P3375, "1304282267.413", 145
    .const 'Sub' $P3376 = "291_1304282272.255" 
    $P3374."add_method"($P3375, "metachar:sym<assert>", $P3376)
    nqp_get_sc_object $P3377, "1304282267.413", 145
    get_how $P3378, $P3377
    nqp_get_sc_object $P3379, "1304282267.413", 145
    .const 'Sub' $P3380 = "292_1304282272.255" 
    $P3378."add_method"($P3379, "metachar:sym<~>", $P3380)
    nqp_get_sc_object $P3381, "1304282267.413", 145
    get_how $P3382, $P3381
    nqp_get_sc_object $P3383, "1304282267.413", 145
    .const 'Sub' $P3384 = "293_1304282272.255" 
    $P3382."add_method"($P3383, "metachar:sym<{*}>", $P3384)
    nqp_get_sc_object $P3385, "1304282267.413", 145
    get_how $P3386, $P3385
    nqp_get_sc_object $P3387, "1304282267.413", 145
    .const 'Sub' $P3388 = "294_1304282272.255" 
    $P3386."add_method"($P3387, "metachar:sym<var>", $P3388)
    nqp_get_sc_object $P3389, "1304282267.413", 145
    get_how $P3390, $P3389
    nqp_get_sc_object $P3391, "1304282267.413", 145
    .const 'Sub' $P3392 = "295_1304282272.255" 
    $P3390."add_method"($P3391, "metachar:sym<PIR>", $P3392)
    nqp_get_sc_object $P3393, "1304282267.413", 145
    get_how $P3394, $P3393
    nqp_get_sc_object $P3395, "1304282267.413", 145
    .const 'Sub' $P3396 = "296_1304282272.255" 
    $P3394."add_method"($P3395, "backslash:sym<w>", $P3396)
    nqp_get_sc_object $P3397, "1304282267.413", 145
    get_how $P3398, $P3397
    nqp_get_sc_object $P3399, "1304282267.413", 145
    .const 'Sub' $P3400 = "297_1304282272.255" 
    $P3398."add_method"($P3399, "backslash:sym<b>", $P3400)
    nqp_get_sc_object $P3401, "1304282267.413", 145
    get_how $P3402, $P3401
    nqp_get_sc_object $P3403, "1304282267.413", 145
    .const 'Sub' $P3404 = "298_1304282272.255" 
    $P3402."add_method"($P3403, "backslash:sym<e>", $P3404)
    nqp_get_sc_object $P3405, "1304282267.413", 145
    get_how $P3406, $P3405
    nqp_get_sc_object $P3407, "1304282267.413", 145
    .const 'Sub' $P3408 = "299_1304282272.255" 
    $P3406."add_method"($P3407, "backslash:sym<f>", $P3408)
    nqp_get_sc_object $P3409, "1304282267.413", 145
    get_how $P3410, $P3409
    nqp_get_sc_object $P3411, "1304282267.413", 145
    .const 'Sub' $P3412 = "300_1304282272.255" 
    $P3410."add_method"($P3411, "backslash:sym<h>", $P3412)
    nqp_get_sc_object $P3413, "1304282267.413", 145
    get_how $P3414, $P3413
    nqp_get_sc_object $P3415, "1304282267.413", 145
    .const 'Sub' $P3416 = "301_1304282272.255" 
    $P3414."add_method"($P3415, "backslash:sym<r>", $P3416)
    nqp_get_sc_object $P3417, "1304282267.413", 145
    get_how $P3418, $P3417
    nqp_get_sc_object $P3419, "1304282267.413", 145
    .const 'Sub' $P3420 = "302_1304282272.255" 
    $P3418."add_method"($P3419, "backslash:sym<t>", $P3420)
    nqp_get_sc_object $P3421, "1304282267.413", 145
    get_how $P3422, $P3421
    nqp_get_sc_object $P3423, "1304282267.413", 145
    .const 'Sub' $P3424 = "303_1304282272.255" 
    $P3422."add_method"($P3423, "backslash:sym<v>", $P3424)
    nqp_get_sc_object $P3425, "1304282267.413", 145
    get_how $P3426, $P3425
    nqp_get_sc_object $P3427, "1304282267.413", 145
    .const 'Sub' $P3428 = "304_1304282272.255" 
    $P3426."add_method"($P3427, "backslash:sym<o>", $P3428)
    nqp_get_sc_object $P3429, "1304282267.413", 145
    get_how $P3430, $P3429
    nqp_get_sc_object $P3431, "1304282267.413", 145
    .const 'Sub' $P3432 = "305_1304282272.255" 
    $P3430."add_method"($P3431, "backslash:sym<x>", $P3432)
    nqp_get_sc_object $P3433, "1304282267.413", 145
    get_how $P3434, $P3433
    nqp_get_sc_object $P3435, "1304282267.413", 145
    .const 'Sub' $P3436 = "306_1304282272.255" 
    $P3434."add_method"($P3435, "backslash:sym<c>", $P3436)
    nqp_get_sc_object $P3437, "1304282267.413", 145
    get_how $P3438, $P3437
    nqp_get_sc_object $P3439, "1304282267.413", 145
    .const 'Sub' $P3440 = "307_1304282272.255" 
    $P3438."add_method"($P3439, "backslash:sym<misc>", $P3440)
    nqp_get_sc_object $P3441, "1304282267.413", 145
    get_how $P3442, $P3441
    nqp_get_sc_object $P3443, "1304282267.413", 145
    .const 'Sub' $P3444 = "308_1304282272.255" 
    $P3442."add_method"($P3443, "assertion:sym<?>", $P3444)
    nqp_get_sc_object $P3445, "1304282267.413", 145
    get_how $P3446, $P3445
    nqp_get_sc_object $P3447, "1304282267.413", 145
    .const 'Sub' $P3448 = "309_1304282272.255" 
    $P3446."add_method"($P3447, "assertion:sym<!>", $P3448)
    nqp_get_sc_object $P3449, "1304282267.413", 145
    get_how $P3450, $P3449
    nqp_get_sc_object $P3451, "1304282267.413", 145
    .const 'Sub' $P3452 = "310_1304282272.255" 
    $P3450."add_method"($P3451, "assertion:sym<method>", $P3452)
    nqp_get_sc_object $P3453, "1304282267.413", 145
    get_how $P3454, $P3453
    nqp_get_sc_object $P3455, "1304282267.413", 145
    .const 'Sub' $P3456 = "311_1304282272.255" 
    $P3454."add_method"($P3455, "assertion:sym<name>", $P3456)
    nqp_get_sc_object $P3457, "1304282267.413", 145
    get_how $P3458, $P3457
    nqp_get_sc_object $P3459, "1304282267.413", 145
    .const 'Sub' $P3460 = "314_1304282272.255" 
    $P3458."add_method"($P3459, "assertion:sym<[>", $P3460)
    nqp_get_sc_object $P3461, "1304282267.413", 145
    get_how $P3462, $P3461
    nqp_get_sc_object $P3463, "1304282267.413", 145
    .const 'Sub' $P3464 = "316_1304282272.255" 
    $P3462."add_method"($P3463, "cclass_elem", $P3464)
    nqp_get_sc_object $P3465, "1304282267.413", 145
    get_how $P3466, $P3465
    nqp_get_sc_object $P3467, "1304282267.413", 145
    .const 'Sub' $P3468 = "320_1304282272.255" 
    $P3466."add_method"($P3467, "mod_internal", $P3468)
    .const 'Sub' $P3469 = "242_1304282272.255" 
    nqp_get_sc_object $P3470, "1304282267.413", 145
    get_who $P3471, $P3470
    set $P3471["buildsub"], $P3469
    nqp_get_sc_object $P3472, "1304282267.413", 145
    get_how $P3473, $P3472
    nqp_get_sc_object $P3474, "1304282267.413", 145
    .const 'Sub' $P3475 = "321_1304282272.255" 
    $P3473."add_method"($P3474, "subrule_alias", $P3475)
    nqp_get_sc_object $P3476, "1304282267.413", 145
    get_how $P3477, $P3476
    nqp_get_sc_object $P3478, "1304282267.413", 145
    .const 'Sub' $P3479 = "322_1304282272.255" 
    $P3477."add_method"($P3478, "named_assertion", $P3479)
    .const 'Sub' $P3480 = "241_1304282272.255" 
    $P3481 = $P3480."get_lexinfo"()
    nqp_get_sc_object $P3482, "1304282267.413", 145
    $P3481."set_static_lexpad_value"("$?PACKAGE", $P3482)
    .const 'Sub' $P3483 = "241_1304282272.255" 
    $P3484 = $P3483."get_lexinfo"()
    $P3484."finish_static_lexpad"()
    .const 'Sub' $P3485 = "241_1304282272.255" 
    $P3486 = $P3485."get_lexinfo"()
    nqp_get_sc_object $P3487, "1304282267.413", 145
    $P3486."set_static_lexpad_value"("$?CLASS", $P3487)
    .const 'Sub' $P3488 = "241_1304282272.255" 
    $P3489 = $P3488."get_lexinfo"()
    $P3489."finish_static_lexpad"()
    nqp_get_sc_object $P3490, "1304282267.413", 145
    get_how $P3491, $P3490
    nqp_get_sc_object $P3492, "1304282267.413", 145
    nqp_get_sc_object $P3493, "1304282255.673", 105
    $P3491."add_parent"($P3492, $P3493)
    nqp_get_sc_object $P3494, "1304282248.255", 41
    $P3495 = $P3494."new_type"("Regex::P6Regex::Compiler" :named("name"))
    nqp_set_sc_for_object $P3495, cur_sc
    nqp_set_sc_object "1304282267.413", 199, $P3495
    nqp_get_sc_object $P3496, "1304282267.413", 199
    nqp_get_sc_object $P3497, "1304282267.413", 0
    nqp_get_package_through_who $P3498, $P3497, "Regex"
    nqp_get_package_through_who $P3499, $P3498, "P6Regex"
    get_who $P3500, $P3499
    set $P3500["Compiler"], $P3496
    .const 'Sub' $P3501 = "324_1304282272.255" 
    $P3502 = $P3501."get_lexinfo"()
    nqp_get_sc_object $P3503, "1304282267.413", 199
    $P3502."set_static_lexpad_value"("$?PACKAGE", $P3503)
    .const 'Sub' $P3504 = "324_1304282272.255" 
    $P3505 = $P3504."get_lexinfo"()
    $P3505."finish_static_lexpad"()
    .const 'Sub' $P3506 = "324_1304282272.255" 
    $P3507 = $P3506."get_lexinfo"()
    nqp_get_sc_object $P3508, "1304282267.413", 199
    $P3507."set_static_lexpad_value"("$?CLASS", $P3508)
    .const 'Sub' $P3509 = "324_1304282272.255" 
    $P3510 = $P3509."get_lexinfo"()
    $P3510."finish_static_lexpad"()
    nqp_get_sc_object $P3511, "1304282267.413", 199
    get_how $P3512, $P3511
    nqp_get_sc_object $P3513, "1304282267.413", 199
    nqp_get_sc_object $P3514, "1304282255.673", 138
    $P3512."add_parent"($P3513, $P3514)
  if_2640_end:
    nqp_get_sc_object $P3950, "1304282267.413", 0
    set_hll_global "GLOBAL", $P3950
.end


.HLL "nqp"

.namespace []
.sub "MAIN"  :subid("11_1304282272.255") :outer("10_1304282272.255")
    .param pmc param_18
.annotate 'line', 833
    .lex "@ARGS", param_18
.annotate 'line', 834
    find_lex $P19, "$p6regex"
    unless_null $P19, vivify_328
    new $P19, "Undef"
  vivify_328:
    find_lex $P20, "@ARGS"
    unless_null $P20, vivify_329
    $P20 = root_new ['parrot';'ResizablePMCArray']
  vivify_329:
    $P21 = $P19."command_line"($P20, "utf8" :named("encoding"), "ascii iso-8859-1" :named("transcode"))
.annotate 'line', 833
    .return ($P21)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block23"  :subid("12_1304282272.255") :outer("10_1304282272.255")
.annotate 'line', 9
    .const 'Sub' $P807 = "240_1304282272.255" 
    capture_lex $P807
    .const 'Sub' $P804 = "239_1304282272.255" 
    capture_lex $P804
    .const 'Sub' $P797 = "237_1304282272.255" 
    capture_lex $P797
    .const 'Sub' $P795 = "236_1304282272.255" 
    capture_lex $P795
    .const 'Sub' $P788 = "234_1304282272.255" 
    capture_lex $P788
    .const 'Sub' $P786 = "233_1304282272.255" 
    capture_lex $P786
    .const 'Sub' $P779 = "231_1304282272.255" 
    capture_lex $P779
    .const 'Sub' $P770 = "228_1304282272.255" 
    capture_lex $P770
    .const 'Sub' $P754 = "225_1304282272.255" 
    capture_lex $P754
    .const 'Sub' $P752 = "224_1304282272.255" 
    capture_lex $P752
    .const 'Sub' $P718 = "218_1304282272.255" 
    capture_lex $P718
    .const 'Sub' $P716 = "217_1304282272.255" 
    capture_lex $P716
    .const 'Sub' $P704 = "214_1304282272.255" 
    capture_lex $P704
    .const 'Sub' $P701 = "213_1304282272.255" 
    capture_lex $P701
    .const 'Sub' $P689 = "210_1304282272.255" 
    capture_lex $P689
    .const 'Sub' $P686 = "209_1304282272.255" 
    capture_lex $P686
    .const 'Sub' $P680 = "207_1304282272.255" 
    capture_lex $P680
    .const 'Sub' $P677 = "206_1304282272.255" 
    capture_lex $P677
    .const 'Sub' $P666 = "203_1304282272.255" 
    capture_lex $P666
    .const 'Sub' $P663 = "202_1304282272.255" 
    capture_lex $P663
    .const 'Sub' $P652 = "199_1304282272.255" 
    capture_lex $P652
    .const 'Sub' $P644 = "196_1304282272.255" 
    capture_lex $P644
    .const 'Sub' $P639 = "194_1304282272.255" 
    capture_lex $P639
    .const 'Sub' $P637 = "193_1304282272.255" 
    capture_lex $P637
    .const 'Sub' $P627 = "190_1304282272.255" 
    capture_lex $P627
    .const 'Sub' $P624 = "189_1304282272.255" 
    capture_lex $P624
    .const 'Sub' $P618 = "187_1304282272.255" 
    capture_lex $P618
    .const 'Sub' $P615 = "186_1304282272.255" 
    capture_lex $P615
    .const 'Sub' $P609 = "184_1304282272.255" 
    capture_lex $P609
    .const 'Sub' $P606 = "183_1304282272.255" 
    capture_lex $P606
    .const 'Sub' $P600 = "181_1304282272.255" 
    capture_lex $P600
    .const 'Sub' $P597 = "180_1304282272.255" 
    capture_lex $P597
    .const 'Sub' $P591 = "178_1304282272.255" 
    capture_lex $P591
    .const 'Sub' $P587 = "177_1304282272.255" 
    capture_lex $P587
    .const 'Sub' $P579 = "175_1304282272.255" 
    capture_lex $P579
    .const 'Sub' $P573 = "174_1304282272.255" 
    capture_lex $P573
    .const 'Sub' $P562 = "172_1304282272.255" 
    capture_lex $P562
    .const 'Sub' $P556 = "171_1304282272.255" 
    capture_lex $P556
    .const 'Sub' $P545 = "169_1304282272.255" 
    capture_lex $P545
    .const 'Sub' $P543 = "168_1304282272.255" 
    capture_lex $P543
    .const 'Sub' $P537 = "166_1304282272.255" 
    capture_lex $P537
    .const 'Sub' $P535 = "165_1304282272.255" 
    capture_lex $P535
    .const 'Sub' $P529 = "163_1304282272.255" 
    capture_lex $P529
    .const 'Sub' $P527 = "162_1304282272.255" 
    capture_lex $P527
    .const 'Sub' $P521 = "160_1304282272.255" 
    capture_lex $P521
    .const 'Sub' $P519 = "159_1304282272.255" 
    capture_lex $P519
    .const 'Sub' $P513 = "157_1304282272.255" 
    capture_lex $P513
    .const 'Sub' $P511 = "156_1304282272.255" 
    capture_lex $P511
    .const 'Sub' $P505 = "154_1304282272.255" 
    capture_lex $P505
    .const 'Sub' $P503 = "153_1304282272.255" 
    capture_lex $P503
    .const 'Sub' $P497 = "151_1304282272.255" 
    capture_lex $P497
    .const 'Sub' $P495 = "150_1304282272.255" 
    capture_lex $P495
    .const 'Sub' $P489 = "148_1304282272.255" 
    capture_lex $P489
    .const 'Sub' $P487 = "147_1304282272.255" 
    capture_lex $P487
    .const 'Sub' $P481 = "145_1304282272.255" 
    capture_lex $P481
    .const 'Sub' $P473 = "142_1304282272.255" 
    capture_lex $P473
    .const 'Sub' $P465 = "140_1304282272.255" 
    capture_lex $P465
    .const 'Sub' $P463 = "139_1304282272.255" 
    capture_lex $P463
    .const 'Sub' $P453 = "137_1304282272.255" 
    capture_lex $P453
    .const 'Sub' $P450 = "136_1304282272.255" 
    capture_lex $P450
    .const 'Sub' $P443 = "134_1304282272.255" 
    capture_lex $P443
    .const 'Sub' $P441 = "133_1304282272.255" 
    capture_lex $P441
    .const 'Sub' $P429 = "131_1304282272.255" 
    capture_lex $P429
    .const 'Sub' $P426 = "130_1304282272.255" 
    capture_lex $P426
    .const 'Sub' $P419 = "128_1304282272.255" 
    capture_lex $P419
    .const 'Sub' $P416 = "127_1304282272.255" 
    capture_lex $P416
    .const 'Sub' $P410 = "125_1304282272.255" 
    capture_lex $P410
    .const 'Sub' $P407 = "124_1304282272.255" 
    capture_lex $P407
    .const 'Sub' $P401 = "122_1304282272.255" 
    capture_lex $P401
    .const 'Sub' $P398 = "121_1304282272.255" 
    capture_lex $P398
    .const 'Sub' $P392 = "119_1304282272.255" 
    capture_lex $P392
    .const 'Sub' $P390 = "118_1304282272.255" 
    capture_lex $P390
    .const 'Sub' $P383 = "116_1304282272.255" 
    capture_lex $P383
    .const 'Sub' $P381 = "115_1304282272.255" 
    capture_lex $P381
    .const 'Sub' $P374 = "113_1304282272.255" 
    capture_lex $P374
    .const 'Sub' $P371 = "112_1304282272.255" 
    capture_lex $P371
    .const 'Sub' $P364 = "110_1304282272.255" 
    capture_lex $P364
    .const 'Sub' $P361 = "109_1304282272.255" 
    capture_lex $P361
    .const 'Sub' $P354 = "107_1304282272.255" 
    capture_lex $P354
    .const 'Sub' $P352 = "106_1304282272.255" 
    capture_lex $P352
    .const 'Sub' $P346 = "104_1304282272.255" 
    capture_lex $P346
    .const 'Sub' $P344 = "103_1304282272.255" 
    capture_lex $P344
    .const 'Sub' $P338 = "101_1304282272.255" 
    capture_lex $P338
    .const 'Sub' $P336 = "100_1304282272.255" 
    capture_lex $P336
    .const 'Sub' $P330 = "98_1304282272.255" 
    capture_lex $P330
    .const 'Sub' $P328 = "97_1304282272.255" 
    capture_lex $P328
    .const 'Sub' $P322 = "95_1304282272.255" 
    capture_lex $P322
    .const 'Sub' $P320 = "94_1304282272.255" 
    capture_lex $P320
    .const 'Sub' $P314 = "92_1304282272.255" 
    capture_lex $P314
    .const 'Sub' $P312 = "91_1304282272.255" 
    capture_lex $P312
    .const 'Sub' $P307 = "89_1304282272.255" 
    capture_lex $P307
    .const 'Sub' $P305 = "88_1304282272.255" 
    capture_lex $P305
    .const 'Sub' $P300 = "86_1304282272.255" 
    capture_lex $P300
    .const 'Sub' $P297 = "85_1304282272.255" 
    capture_lex $P297
    .const 'Sub' $P291 = "83_1304282272.255" 
    capture_lex $P291
    .const 'Sub' $P288 = "82_1304282272.255" 
    capture_lex $P288
    .const 'Sub' $P282 = "80_1304282272.255" 
    capture_lex $P282
    .const 'Sub' $P279 = "79_1304282272.255" 
    capture_lex $P279
    .const 'Sub' $P273 = "77_1304282272.255" 
    capture_lex $P273
    .const 'Sub' $P265 = "74_1304282272.255" 
    capture_lex $P265
    .const 'Sub' $P254 = "71_1304282272.255" 
    capture_lex $P254
    .const 'Sub' $P252 = "70_1304282272.255" 
    capture_lex $P252
    .const 'Sub' $P237 = "68_1304282272.255" 
    capture_lex $P237
    .const 'Sub' $P235 = "67_1304282272.255" 
    capture_lex $P235
    .const 'Sub' $P212 = "61_1304282272.255" 
    capture_lex $P212
    .const 'Sub' $P209 = "60_1304282272.255" 
    capture_lex $P209
    .const 'Sub' $P202 = "58_1304282272.255" 
    capture_lex $P202
    .const 'Sub' $P199 = "57_1304282272.255" 
    capture_lex $P199
    .const 'Sub' $P192 = "55_1304282272.255" 
    capture_lex $P192
    .const 'Sub' $P189 = "54_1304282272.255" 
    capture_lex $P189
    .const 'Sub' $P182 = "52_1304282272.255" 
    capture_lex $P182
    .const 'Sub' $P173 = "49_1304282272.255" 
    capture_lex $P173
    .const 'Sub' $P160 = "46_1304282272.255" 
    capture_lex $P160
    .const 'Sub' $P157 = "45_1304282272.255" 
    capture_lex $P157
    .const 'Sub' $P145 = "42_1304282272.255" 
    capture_lex $P145
    .const 'Sub' $P143 = "41_1304282272.255" 
    capture_lex $P143
    .const 'Sub' $P136 = "39_1304282272.255" 
    capture_lex $P136
    .const 'Sub' $P133 = "38_1304282272.255" 
    capture_lex $P133
    .const 'Sub' $P124 = "36_1304282272.255" 
    capture_lex $P124
    .const 'Sub' $P122 = "35_1304282272.255" 
    capture_lex $P122
    .const 'Sub' $P112 = "33_1304282272.255" 
    capture_lex $P112
    .const 'Sub' $P109 = "32_1304282272.255" 
    capture_lex $P109
    .const 'Sub' $P102 = "30_1304282272.255" 
    capture_lex $P102
    .const 'Sub' $P99 = "29_1304282272.255" 
    capture_lex $P99
    .const 'Sub' $P87 = "27_1304282272.255" 
    capture_lex $P87
    .const 'Sub' $P85 = "26_1304282272.255" 
    capture_lex $P85
    .const 'Sub' $P78 = "24_1304282272.255" 
    capture_lex $P78
    .const 'Sub' $P75 = "23_1304282272.255" 
    capture_lex $P75
    .const 'Sub' $P68 = "21_1304282272.255" 
    capture_lex $P68
    .const 'Sub' $P66 = "20_1304282272.255" 
    capture_lex $P66
    .const 'Sub' $P56 = "17_1304282272.255" 
    capture_lex $P56
    .const 'Sub' $P54 = "16_1304282272.255" 
    capture_lex $P54
    .const 'Sub' $P47 = "14_1304282272.255" 
    capture_lex $P47
    .const 'Sub' $P27 = "13_1304282272.255" 
    capture_lex $P27
    .lex "$?PACKAGE", $P25
    .lex "$?CLASS", $P26
.annotate 'line', 11
    .const 'Sub' $P804 = "239_1304282272.255" 
    capture_lex $P804
.annotate 'line', 9
    .return ($P804)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "" :load :init :subid("post330") :outer("12_1304282272.255")
.annotate 'line', 9
    .const 'Sub' $P24 = "12_1304282272.255" 
    .local pmc block
    set block, $P24
    .const 'Sub' $P807 = "240_1304282272.255" 
    capture_lex $P807
    $P807()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block806"  :anon :subid("240_1304282272.255") :outer("12_1304282272.255")
.annotate 'line', 9
    nqp_get_sc_object $P808, "1304282267.413", 1
    .local pmc type_obj
    set type_obj, $P808
    get_how $P809, type_obj
    $P810 = $P809."compose"(type_obj)
    .return ($P810)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("13_1304282272.255") :outer("12_1304282272.255")
    .param pmc param_28
    .param pmc param_29
    .param pmc param_30
    .param pmc param_31 :optional
    .param int has_param_31 :opt_flag
.annotate 'line', 11
    .lex "self", param_28
    .lex "$old", param_29
    .lex "$new", param_30
    if has_param_31, optparam_331
    new $P32, "String"
    assign $P32, "in Perl 6"
    set param_31, $P32
  optparam_331:
    .lex "$when", param_31
.annotate 'line', 12
    find_lex $P33, "self"
    new $P34, "String"
    assign $P34, "Unsupported use of "
    find_lex $P35, "$old"
    unless_null $P35, vivify_332
    new $P35, "Undef"
  vivify_332:
    set $S36, $P35
    concat $P37, $P34, $S36
    concat $P38, $P37, ";"
.annotate 'line', 13
    find_lex $P39, "$when"
    unless_null $P39, vivify_333
    new $P39, "Undef"
  vivify_333:
    set $S40, $P39
    concat $P41, $P38, $S40
    concat $P42, $P41, " please use "
    find_lex $P43, "$new"
    unless_null $P43, vivify_334
    new $P43, "Undef"
  vivify_334:
    set $S44, $P43
    concat $P45, $P42, $S44
    $P46 = $P33."panic"($P45)
.annotate 'line', 11
    .return ($P46)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("14_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx48_debug, debug_335
    rx48_cur."!cursor_debug"("START", "ws")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan51_done
    goto rxscan51_scan
  rxscan51_loop:
    (rx48_pos) = rx48_cur."from"()
    inc rx48_pos
    rx48_cur."!cursor_from"(rx48_pos)
    ge rx48_pos, rx48_eos, rxscan51_done
  rxscan51_scan:
    set_addr $I10, rxscan51_loop
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxscan51_done:
.annotate 'line', 16
  # rx rxquantr52 ** 0..*
    set_addr $I10, rxquantr52_done
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  rxquantr52_loop:
  alt53_0:
    set_addr $I10, alt53_1
    rx48_cur."!mark_push"(0, rx48_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx48_pos, rx48_off
    find_not_cclass $I11, 32, rx48_tgt, $I10, rx48_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx48_fail
    add rx48_pos, rx48_off, $I11
    goto alt53_end
  alt53_1:
  # rx literal  "#"
    add $I11, rx48_pos, 1
    gt $I11, rx48_eos, rx48_fail
    sub $I11, rx48_pos, rx48_off
    ord $I11, rx48_tgt, $I11
    ne $I11, 35, rx48_fail
    add rx48_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx48_pos, rx48_off
    find_cclass $I11, 4096, rx48_tgt, $I10, rx48_eos
    add rx48_pos, rx48_off, $I11
  alt53_end:
    set_addr $I10, rxquantr52_done
    (rx48_rep) = rx48_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr52_done
    rx48_cur."!mark_push"(rx48_rep, rx48_pos, $I10)
    goto rxquantr52_loop
  rxquantr52_done:
  # rx pass
    rx48_cur."!cursor_pass"(rx48_pos, "ws")
    if_null rx48_debug, debug_336
    rx48_cur."!cursor_debug"("PASS", "ws", " at pos=", rx48_pos)
  debug_336:
    .return (rx48_cur)
  rx48_restart:
.annotate 'line', 11
    if_null rx48_debug, debug_337
    rx48_cur."!cursor_debug"("NEXT", "ws")
  debug_337:
  rx48_fail:
    (rx48_rep, rx48_pos, $I10, $P10) = rx48_cur."!mark_fail"(0)
    lt rx48_pos, -1, rx48_done
    eq rx48_pos, -1, rx48_fail
    jump $I10
  rx48_done:
    rx48_cur."!cursor_fail"()
    if_null rx48_debug, debug_338
    rx48_cur."!cursor_debug"("FAIL", "ws")
  debug_338:
    .return (rx48_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("15_1304282272.255") :method
.annotate 'line', 11
    new $P50, "ResizablePMCArray"
    push $P50, ""
    .return ($P50)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("16_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P55, "ResizablePMCArray"
    push $P55, ""
    .return ($P55)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("17_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P62 = "19_1304282272.255" 
    capture_lex $P62
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    .local pmc rx57_debug
    (rx57_cur, rx57_pos, rx57_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx57_cur
    .local pmc match
    .lex "$/", match
    length rx57_eos, rx57_tgt
    gt rx57_pos, rx57_eos, rx57_done
    set rx57_off, 0
    lt rx57_pos, 2, rx57_start
    sub rx57_off, rx57_pos, 1
    substr rx57_tgt, rx57_tgt, rx57_off
  rx57_start:
    eq $I10, 1, rx57_restart
    if_null rx57_debug, debug_339
    rx57_cur."!cursor_debug"("START", "normspace")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan60_done
    goto rxscan60_scan
  rxscan60_loop:
    (rx57_pos) = rx57_cur."from"()
    inc rx57_pos
    rx57_cur."!cursor_from"(rx57_pos)
    ge rx57_pos, rx57_eos, rxscan60_done
  rxscan60_scan:
    set_addr $I10, rxscan60_loop
    rx57_cur."!mark_push"(0, rx57_pos, $I10)
  rxscan60_done:
.annotate 'line', 18
  # rx subrule "before" subtype=zerowidth negate=
    rx57_cur."!cursor_pos"(rx57_pos)
    .const 'Sub' $P62 = "19_1304282272.255" 
    capture_lex $P62
    $P10 = rx57_cur."before"($P62)
    unless $P10, rx57_fail
  # rx subrule "ws" subtype=method negate=
    rx57_cur."!cursor_pos"(rx57_pos)
    $P10 = rx57_cur."ws"()
    unless $P10, rx57_fail
    rx57_pos = $P10."pos"()
  # rx pass
    rx57_cur."!cursor_pass"(rx57_pos, "normspace")
    if_null rx57_debug, debug_344
    rx57_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx57_pos)
  debug_344:
    .return (rx57_cur)
  rx57_restart:
.annotate 'line', 11
    if_null rx57_debug, debug_345
    rx57_cur."!cursor_debug"("NEXT", "normspace")
  debug_345:
  rx57_fail:
    (rx57_rep, rx57_pos, $I10, $P10) = rx57_cur."!mark_fail"(0)
    lt rx57_pos, -1, rx57_done
    eq rx57_pos, -1, rx57_fail
    jump $I10
  rx57_done:
    rx57_cur."!cursor_fail"()
    if_null rx57_debug, debug_346
    rx57_cur."!cursor_debug"("FAIL", "normspace")
  debug_346:
    .return (rx57_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :nsentry("!PREFIX__normspace") :subid("18_1304282272.255") :method
.annotate 'line', 11
    new $P59, "ResizablePMCArray"
    push $P59, ""
    .return ($P59)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block61"  :anon :subid("19_1304282272.255") :method :outer("17_1304282272.255")
.annotate 'line', 18
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    .local pmc rx63_debug
    (rx63_cur, rx63_pos, rx63_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx63_cur
    .local pmc match
    .lex "$/", match
    length rx63_eos, rx63_tgt
    gt rx63_pos, rx63_eos, rx63_done
    set rx63_off, 0
    lt rx63_pos, 2, rx63_start
    sub rx63_off, rx63_pos, 1
    substr rx63_tgt, rx63_tgt, rx63_off
  rx63_start:
    eq $I10, 1, rx63_restart
    if_null rx63_debug, debug_340
    rx63_cur."!cursor_debug"("START", "")
  debug_340:
    $I10 = self.'from'()
    ne $I10, -1, rxscan64_done
    goto rxscan64_scan
  rxscan64_loop:
    (rx63_pos) = rx63_cur."from"()
    inc rx63_pos
    rx63_cur."!cursor_from"(rx63_pos)
    ge rx63_pos, rx63_eos, rxscan64_done
  rxscan64_scan:
    set_addr $I10, rxscan64_loop
    rx63_cur."!mark_push"(0, rx63_pos, $I10)
  rxscan64_done:
  alt65_0:
    set_addr $I10, alt65_1
    rx63_cur."!mark_push"(0, rx63_pos, $I10)
  # rx charclass s
    ge rx63_pos, rx63_eos, rx63_fail
    sub $I10, rx63_pos, rx63_off
    is_cclass $I11, 32, rx63_tgt, $I10
    unless $I11, rx63_fail
    inc rx63_pos
    goto alt65_end
  alt65_1:
  # rx literal  "#"
    add $I11, rx63_pos, 1
    gt $I11, rx63_eos, rx63_fail
    sub $I11, rx63_pos, rx63_off
    ord $I11, rx63_tgt, $I11
    ne $I11, 35, rx63_fail
    add rx63_pos, 1
  alt65_end:
  # rx pass
    rx63_cur."!cursor_pass"(rx63_pos, "")
    if_null rx63_debug, debug_341
    rx63_cur."!cursor_debug"("PASS", "", " at pos=", rx63_pos)
  debug_341:
    .return (rx63_cur)
  rx63_restart:
    if_null rx63_debug, debug_342
    rx63_cur."!cursor_debug"("NEXT", "")
  debug_342:
  rx63_fail:
    (rx63_rep, rx63_pos, $I10, $P10) = rx63_cur."!mark_fail"(0)
    lt rx63_pos, -1, rx63_done
    eq rx63_pos, -1, rx63_fail
    jump $I10
  rx63_done:
    rx63_cur."!cursor_fail"()
    if_null rx63_debug, debug_343
    rx63_cur."!cursor_debug"("FAIL", "")
  debug_343:
    .return (rx63_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("20_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P67, "ResizablePMCArray"
    push $P67, ""
    .return ($P67)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("21_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_debug
    (rx69_cur, rx69_pos, rx69_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx69_cur
    .local pmc match
    .lex "$/", match
    length rx69_eos, rx69_tgt
    gt rx69_pos, rx69_eos, rx69_done
    set rx69_off, 0
    lt rx69_pos, 2, rx69_start
    sub rx69_off, rx69_pos, 1
    substr rx69_tgt, rx69_tgt, rx69_off
  rx69_start:
    eq $I10, 1, rx69_restart
    if_null rx69_debug, debug_347
    rx69_cur."!cursor_debug"("START", "identifier")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    (rx69_pos) = rx69_cur."from"()
    inc rx69_pos
    rx69_cur."!cursor_from"(rx69_pos)
    ge rx69_pos, rx69_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan73_done:
.annotate 'line', 20
  # rx subrule "ident" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ident"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx rxquantr74 ** 0..*
    set_addr $I10, rxquantr74_done
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxquantr74_loop:
  # rx enumcharlist negate=0 
    ge rx69_pos, rx69_eos, rx69_fail
    sub $I10, rx69_pos, rx69_off
    substr $S10, rx69_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx69_fail
    inc rx69_pos
  # rx subrule "ident" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ident"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
    set_addr $I10, rxquantr74_done
    (rx69_rep) = rx69_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr74_done
    rx69_cur."!mark_push"(rx69_rep, rx69_pos, $I10)
    goto rxquantr74_loop
  rxquantr74_done:
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "identifier")
    if_null rx69_debug, debug_348
    rx69_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx69_pos)
  debug_348:
    .return (rx69_cur)
  rx69_restart:
.annotate 'line', 11
    if_null rx69_debug, debug_349
    rx69_cur."!cursor_debug"("NEXT", "identifier")
  debug_349:
  rx69_fail:
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    if_null rx69_debug, debug_350
    rx69_cur."!cursor_debug"("FAIL", "identifier")
  debug_350:
    .return (rx69_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :nsentry("!PREFIX__identifier") :subid("22_1304282272.255") :method
.annotate 'line', 11
    $P71 = self."!PREFIX__!subrule"("ident", "")
    new $P72, "ResizablePMCArray"
    push $P72, $P71
    .return ($P72)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :subid("23_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P76 = self."!PREFIX__!subrule"("ident", "")
    new $P77, "ResizablePMCArray"
    push $P77, $P76
    .return ($P77)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("24_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    .local pmc rx79_debug
    (rx79_cur, rx79_pos, rx79_tgt, $I10) = self."!cursor_start"()
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
    if_null rx79_debug, debug_351
    rx79_cur."!cursor_debug"("START", "arg")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan82_done
    goto rxscan82_scan
  rxscan82_loop:
    (rx79_pos) = rx79_cur."from"()
    inc rx79_pos
    rx79_cur."!cursor_from"(rx79_pos)
    ge rx79_pos, rx79_eos, rxscan82_done
  rxscan82_scan:
    set_addr $I10, rxscan82_loop
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  rxscan82_done:
  alt83_0:
.annotate 'line', 23
    set_addr $I10, alt83_1
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
.annotate 'line', 24
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx79_pos, rx79_off
    substr $S10, rx79_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx79_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."quote_EXPR"(":q")
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx79_pos = $P10."pos"()
    goto alt83_end
  alt83_1:
    set_addr $I10, alt83_2
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
.annotate 'line', 25
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx79_pos, rx79_off
    substr $S10, rx79_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx79_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx79_cur."!cursor_pos"(rx79_pos)
    $P10 = rx79_cur."quote_EXPR"(":qq")
    unless $P10, rx79_fail
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx79_pos = $P10."pos"()
    goto alt83_end
  alt83_2:
.annotate 'line', 26
  # rx subcapture "val"
    set_addr $I10, rxcap_84_fail
    rx79_cur."!mark_push"(0, rx79_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx79_pos, rx79_off
    find_not_cclass $I11, 8, rx79_tgt, $I10, rx79_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx79_fail
    add rx79_pos, rx79_off, $I11
    set_addr $I10, rxcap_84_fail
    ($I12, $I11) = rx79_cur."!mark_peek"($I10)
    rx79_cur."!cursor_pos"($I11)
    ($P10) = rx79_cur."!cursor_start"()
    $P10."!cursor_pass"(rx79_pos, "")
    rx79_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("val")
    goto rxcap_84_done
  rxcap_84_fail:
    goto rx79_fail
  rxcap_84_done:
  alt83_end:
.annotate 'line', 22
  # rx pass
    rx79_cur."!cursor_pass"(rx79_pos, "arg")
    if_null rx79_debug, debug_352
    rx79_cur."!cursor_debug"("PASS", "arg", " at pos=", rx79_pos)
  debug_352:
    .return (rx79_cur)
  rx79_restart:
.annotate 'line', 11
    if_null rx79_debug, debug_353
    rx79_cur."!cursor_debug"("NEXT", "arg")
  debug_353:
  rx79_fail:
    (rx79_rep, rx79_pos, $I10, $P10) = rx79_cur."!mark_fail"(0)
    lt rx79_pos, -1, rx79_done
    eq rx79_pos, -1, rx79_fail
    jump $I10
  rx79_done:
    rx79_cur."!cursor_fail"()
    if_null rx79_debug, debug_354
    rx79_cur."!cursor_debug"("FAIL", "arg")
  debug_354:
    .return (rx79_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :nsentry("!PREFIX__arg") :subid("25_1304282272.255") :method
.annotate 'line', 11
    new $P81, "ResizablePMCArray"
    push $P81, ""
    push $P81, "\""
    push $P81, "'"
    .return ($P81)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("26_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P86, "ResizablePMCArray"
    push $P86, ""
    push $P86, "\""
    push $P86, "'"
    .return ($P86)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("27_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    rx88_cur."!cursor_caparray"("arg")
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
    if_null rx88_debug, debug_355
    rx88_cur."!cursor_debug"("START", "arglist")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan92_done
    goto rxscan92_scan
  rxscan92_loop:
    (rx88_pos) = rx88_cur."from"()
    inc rx88_pos
    rx88_cur."!cursor_from"(rx88_pos)
    ge rx88_pos, rx88_eos, rxscan92_done
  rxscan92_scan:
    set_addr $I10, rxscan92_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan92_done:
.annotate 'line', 30
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."arg"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx88_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  # rx rxquantr95 ** 0..*
    set_addr $I10, rxquantr95_done
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxquantr95_loop:
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 44, rx88_fail
    add rx88_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  # rx subrule "arg" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."arg"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arg")
    rx88_pos = $P10."pos"()
    set_addr $I10, rxquantr95_done
    (rx88_rep) = rx88_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr95_done
    rx88_cur."!mark_push"(rx88_rep, rx88_pos, $I10)
    goto rxquantr95_loop
  rxquantr95_done:
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "arglist")
    if_null rx88_debug, debug_356
    rx88_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx88_pos)
  debug_356:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 11
    if_null rx88_debug, debug_357
    rx88_cur."!cursor_debug"("NEXT", "arglist")
  debug_357:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_358
    rx88_cur."!cursor_debug"("FAIL", "arglist")
  debug_358:
    .return (rx88_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :nsentry("!PREFIX__arglist") :subid("28_1304282272.255") :method
.annotate 'line', 11
    $P90 = self."!PREFIX__!subrule"("ws", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P90
    .return ($P91)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("29_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P100 = self."!PREFIX__!subrule"("ws", "")
    new $P101, "ResizablePMCArray"
    push $P101, $P100
    .return ($P101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("30_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx103_tgt
    .local int rx103_pos
    .local int rx103_off
    .local int rx103_eos
    .local int rx103_rep
    .local pmc rx103_cur
    .local pmc rx103_debug
    (rx103_cur, rx103_pos, rx103_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx103_cur
    .local pmc match
    .lex "$/", match
    length rx103_eos, rx103_tgt
    gt rx103_pos, rx103_eos, rx103_done
    set rx103_off, 0
    lt rx103_pos, 2, rx103_start
    sub rx103_off, rx103_pos, 1
    substr rx103_tgt, rx103_tgt, rx103_off
  rx103_start:
    eq $I10, 1, rx103_restart
    if_null rx103_debug, debug_359
    rx103_cur."!cursor_debug"("START", "TOP")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan107_done
    goto rxscan107_scan
  rxscan107_loop:
    (rx103_pos) = rx103_cur."from"()
    inc rx103_pos
    rx103_cur."!cursor_from"(rx103_pos)
    ge rx103_pos, rx103_eos, rxscan107_done
  rxscan107_scan:
    set_addr $I10, rxscan107_loop
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  rxscan107_done:
.annotate 'line', 33
  # rx subrule "nibbler" subtype=capture negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."nibbler"()
    unless $P10, rx103_fail
    rx103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx103_pos = $P10."pos"()
  alt108_0:
.annotate 'line', 34
    set_addr $I10, alt108_1
    rx103_cur."!mark_push"(0, rx103_pos, $I10)
  # rxanchor eos
    ne rx103_pos, rx103_eos, rx103_fail
    goto alt108_end
  alt108_1:
  # rx subrule "panic" subtype=method negate=
    rx103_cur."!cursor_pos"(rx103_pos)
    $P10 = rx103_cur."panic"("Confused")
    unless $P10, rx103_fail
    rx103_pos = $P10."pos"()
  alt108_end:
.annotate 'line', 32
  # rx pass
    rx103_cur."!cursor_pass"(rx103_pos, "TOP")
    if_null rx103_debug, debug_360
    rx103_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx103_pos)
  debug_360:
    .return (rx103_cur)
  rx103_restart:
.annotate 'line', 11
    if_null rx103_debug, debug_361
    rx103_cur."!cursor_debug"("NEXT", "TOP")
  debug_361:
  rx103_fail:
    (rx103_rep, rx103_pos, $I10, $P10) = rx103_cur."!mark_fail"(0)
    lt rx103_pos, -1, rx103_done
    eq rx103_pos, -1, rx103_fail
    jump $I10
  rx103_done:
    rx103_cur."!cursor_fail"()
    if_null rx103_debug, debug_362
    rx103_cur."!cursor_debug"("FAIL", "TOP")
  debug_362:
    .return (rx103_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :nsentry("!PREFIX__TOP") :subid("31_1304282272.255") :method
.annotate 'line', 11
    $P105 = self."!PREFIX__!subrule"("nibbler", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("32_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P110 = self."!PREFIX__!subrule"("nibbler", "")
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    .return ($P111)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("33_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    .local pmc rx113_debug
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    rx113_cur."!cursor_caparray"("termconj")
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
    if_null rx113_debug, debug_363
    rx113_cur."!cursor_debug"("START", "nibbler")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan116_done
    goto rxscan116_scan
  rxscan116_loop:
    (rx113_pos) = rx113_cur."from"()
    inc rx113_pos
    rx113_cur."!cursor_from"(rx113_pos)
    ge rx113_pos, rx113_eos, rxscan116_done
  rxscan116_scan:
    set_addr $I10, rxscan116_loop
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxscan116_done:
.annotate 'line', 38
  # rx reduce name="nibbler" key="open"
    rx113_cur."!cursor_pos"(rx113_pos)
    rx113_cur."!reduce"("nibbler", "open")
.annotate 'line', 39
  # rx rxquantr117 ** 0..1
    set_addr $I10, rxquantr117_done
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxquantr117_loop:
  # rx subrule "ws" subtype=method negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."ws"()
    unless $P10, rx113_fail
    rx113_pos = $P10."pos"()
  alt118_0:
    set_addr $I10, alt118_1
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx literal  "||"
    add $I11, rx113_pos, 2
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 2
    ne $S10, "||", rx113_fail
    add rx113_pos, 2
    goto alt118_end
  alt118_1:
    set_addr $I10, alt118_2
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx literal  "|"
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    ord $I11, rx113_tgt, $I11
    ne $I11, 124, rx113_fail
    add rx113_pos, 1
    goto alt118_end
  alt118_2:
    set_addr $I10, alt118_3
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx literal  "&&"
    add $I11, rx113_pos, 2
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 2
    ne $S10, "&&", rx113_fail
    add rx113_pos, 2
    goto alt118_end
  alt118_3:
  # rx literal  "&"
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    ord $I11, rx113_tgt, $I11
    ne $I11, 38, rx113_fail
    add rx113_pos, 1
  alt118_end:
    set_addr $I10, rxquantr117_done
    (rx113_rep) = rx113_cur."!mark_commit"($I10)
  rxquantr117_done:
.annotate 'line', 40
  # rx subrule "termconj" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."termconj"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx113_pos = $P10."pos"()
.annotate 'line', 43
  # rx rxquantr119 ** 0..*
    set_addr $I10, rxquantr119_done
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  rxquantr119_loop:
  alt120_0:
.annotate 'line', 41
    set_addr $I10, alt120_1
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx literal  "||"
    add $I11, rx113_pos, 2
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 2
    ne $S10, "||", rx113_fail
    add rx113_pos, 2
    goto alt120_end
  alt120_1:
  # rx literal  "|"
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    ord $I11, rx113_tgt, $I11
    ne $I11, 124, rx113_fail
    add rx113_pos, 1
  alt120_end:
  alt121_0:
.annotate 'line', 42
    set_addr $I10, alt121_1
    rx113_cur."!mark_push"(0, rx113_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."termconj"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx113_pos = $P10."pos"()
    goto alt121_end
  alt121_1:
  # rx subrule "panic" subtype=method negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."panic"("Null pattern not allowed")
    unless $P10, rx113_fail
    rx113_pos = $P10."pos"()
  alt121_end:
.annotate 'line', 43
    set_addr $I10, rxquantr119_done
    (rx113_rep) = rx113_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr119_done
    rx113_cur."!mark_push"(rx113_rep, rx113_pos, $I10)
    goto rxquantr119_loop
  rxquantr119_done:
.annotate 'line', 37
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "nibbler")
    if_null rx113_debug, debug_364
    rx113_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx113_pos)
  debug_364:
    .return (rx113_cur)
  rx113_restart:
.annotate 'line', 11
    if_null rx113_debug, debug_365
    rx113_cur."!cursor_debug"("NEXT", "nibbler")
  debug_365:
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    if_null rx113_debug, debug_366
    rx113_cur."!cursor_debug"("FAIL", "nibbler")
  debug_366:
    .return (rx113_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :nsentry("!PREFIX__nibbler") :subid("34_1304282272.255") :method
.annotate 'line', 11
    new $P115, "ResizablePMCArray"
    push $P115, ""
    .return ($P115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("35_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P123, "ResizablePMCArray"
    push $P123, ""
    .return ($P123)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("36_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_debug
    (rx125_cur, rx125_pos, rx125_tgt, $I10) = self."!cursor_start"()
    rx125_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx125_cur
    .local pmc match
    .lex "$/", match
    length rx125_eos, rx125_tgt
    gt rx125_pos, rx125_eos, rx125_done
    set rx125_off, 0
    lt rx125_pos, 2, rx125_start
    sub rx125_off, rx125_pos, 1
    substr rx125_tgt, rx125_tgt, rx125_off
  rx125_start:
    eq $I10, 1, rx125_restart
    if_null rx125_debug, debug_367
    rx125_cur."!cursor_debug"("START", "termconj")
  debug_367:
    $I10 = self.'from'()
    ne $I10, -1, rxscan129_done
    goto rxscan129_scan
  rxscan129_loop:
    (rx125_pos) = rx125_cur."from"()
    inc rx125_pos
    rx125_cur."!cursor_from"(rx125_pos)
    ge rx125_pos, rx125_eos, rxscan129_done
  rxscan129_scan:
    set_addr $I10, rxscan129_loop
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxscan129_done:
.annotate 'line', 47
  # rx subrule "termish" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."termish"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx125_pos = $P10."pos"()
.annotate 'line', 50
  # rx rxquantr130 ** 0..*
    set_addr $I10, rxquantr130_done
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  rxquantr130_loop:
  alt131_0:
.annotate 'line', 48
    set_addr $I10, alt131_1
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  # rx literal  "&&"
    add $I11, rx125_pos, 2
    gt $I11, rx125_eos, rx125_fail
    sub $I11, rx125_pos, rx125_off
    substr $S10, rx125_tgt, $I11, 2
    ne $S10, "&&", rx125_fail
    add rx125_pos, 2
    goto alt131_end
  alt131_1:
  # rx literal  "&"
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail
    sub $I11, rx125_pos, rx125_off
    ord $I11, rx125_tgt, $I11
    ne $I11, 38, rx125_fail
    add rx125_pos, 1
  alt131_end:
  alt132_0:
.annotate 'line', 49
    set_addr $I10, alt132_1
    rx125_cur."!mark_push"(0, rx125_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."termish"()
    unless $P10, rx125_fail
    rx125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx125_pos = $P10."pos"()
    goto alt132_end
  alt132_1:
  # rx subrule "panic" subtype=method negate=
    rx125_cur."!cursor_pos"(rx125_pos)
    $P10 = rx125_cur."panic"("Null pattern not allowed")
    unless $P10, rx125_fail
    rx125_pos = $P10."pos"()
  alt132_end:
.annotate 'line', 50
    set_addr $I10, rxquantr130_done
    (rx125_rep) = rx125_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr130_done
    rx125_cur."!mark_push"(rx125_rep, rx125_pos, $I10)
    goto rxquantr130_loop
  rxquantr130_done:
.annotate 'line', 46
  # rx pass
    rx125_cur."!cursor_pass"(rx125_pos, "termconj")
    if_null rx125_debug, debug_368
    rx125_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx125_pos)
  debug_368:
    .return (rx125_cur)
  rx125_restart:
.annotate 'line', 11
    if_null rx125_debug, debug_369
    rx125_cur."!cursor_debug"("NEXT", "termconj")
  debug_369:
  rx125_fail:
    (rx125_rep, rx125_pos, $I10, $P10) = rx125_cur."!mark_fail"(0)
    lt rx125_pos, -1, rx125_done
    eq rx125_pos, -1, rx125_fail
    jump $I10
  rx125_done:
    rx125_cur."!cursor_fail"()
    if_null rx125_debug, debug_370
    rx125_cur."!cursor_debug"("FAIL", "termconj")
  debug_370:
    .return (rx125_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :nsentry("!PREFIX__termconj") :subid("37_1304282272.255") :method
.annotate 'line', 11
    $P127 = self."!PREFIX__!subrule"("termish", "")
    new $P128, "ResizablePMCArray"
    push $P128, $P127
    .return ($P128)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :subid("38_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P134 = self."!PREFIX__!subrule"("termish", "")
    new $P135, "ResizablePMCArray"
    push $P135, $P134
    .return ($P135)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("39_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_debug
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    rx137_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx137_cur
    .local pmc match
    .lex "$/", match
    length rx137_eos, rx137_tgt
    gt rx137_pos, rx137_eos, rx137_done
    set rx137_off, 0
    lt rx137_pos, 2, rx137_start
    sub rx137_off, rx137_pos, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
    eq $I10, 1, rx137_restart
    if_null rx137_debug, debug_371
    rx137_cur."!cursor_debug"("START", "termish")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    (rx137_pos) = rx137_cur."from"()
    inc rx137_pos
    rx137_cur."!cursor_from"(rx137_pos)
    ge rx137_pos, rx137_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxscan140_done:
.annotate 'line', 54
  # rx rxquantr141 ** 1..*
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(0, -1, $I10)
  rxquantr141_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."quantified_atom"()
    unless $P10, rx137_fail
    goto rxsubrule142_pass
  rxsubrule142_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx137_fail
  rxsubrule142_pass:
    set_addr $I10, rxsubrule142_back
    rx137_cur."!mark_push"(0, rx137_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx137_pos = $P10."pos"()
    set_addr $I10, rxquantr141_done
    (rx137_rep) = rx137_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I10)
    goto rxquantr141_loop
  rxquantr141_done:
.annotate 'line', 53
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "termish")
    if_null rx137_debug, debug_372
    rx137_cur."!cursor_debug"("PASS", "termish", " at pos=", rx137_pos)
  debug_372:
    .return (rx137_cur)
  rx137_restart:
.annotate 'line', 11
    if_null rx137_debug, debug_373
    rx137_cur."!cursor_debug"("NEXT", "termish")
  debug_373:
  rx137_fail:
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    if_null rx137_debug, debug_374
    rx137_cur."!cursor_debug"("FAIL", "termish")
  debug_374:
    .return (rx137_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("40_1304282272.255") :method
.annotate 'line', 11
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("41_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P144, "ResizablePMCArray"
    push $P144, ""
    .return ($P144)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("42_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P154 = "44_1304282272.255" 
    capture_lex $P154
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    .local pmc rx146_debug
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    rx146_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    gt rx146_pos, rx146_eos, rx146_done
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    eq $I10, 1, rx146_restart
    if_null rx146_debug, debug_375
    rx146_cur."!cursor_debug"("START", "quantified_atom")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan150_done
    goto rxscan150_scan
  rxscan150_loop:
    (rx146_pos) = rx146_cur."from"()
    inc rx146_pos
    rx146_cur."!cursor_from"(rx146_pos)
    ge rx146_pos, rx146_eos, rxscan150_done
  rxscan150_scan:
    set_addr $I10, rxscan150_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan150_done:
.annotate 'line', 58
  # rx subrule "atom" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."atom"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx146_pos = $P10."pos"()
  # rx rxquantr151 ** 0..1
    set_addr $I10, rxquantr151_done
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxquantr151_loop:
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
  alt152_0:
    set_addr $I10, alt152_1
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."quantifier"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx146_pos = $P10."pos"()
    goto alt152_end
  alt152_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    .const 'Sub' $P154 = "44_1304282272.255" 
    capture_lex $P154
    $P10 = rx146_cur."before"($P154)
    unless $P10, rx146_fail
  # rx subrule "backmod" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."backmod"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx146_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."alpha"()
    if $P10, rx146_fail
  alt152_end:
    set_addr $I10, rxquantr151_done
    (rx146_rep) = rx146_cur."!mark_commit"($I10)
  rxquantr151_done:
.annotate 'line', 57
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "quantified_atom")
    if_null rx146_debug, debug_380
    rx146_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx146_pos)
  debug_380:
    .return (rx146_cur)
  rx146_restart:
.annotate 'line', 11
    if_null rx146_debug, debug_381
    rx146_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_381:
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    if_null rx146_debug, debug_382
    rx146_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_382:
    .return (rx146_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :nsentry("!PREFIX__quantified_atom") :subid("43_1304282272.255") :method
.annotate 'line', 11
    $P148 = self."!PREFIX__!subrule"("atom", "")
    new $P149, "ResizablePMCArray"
    push $P149, $P148
    .return ($P149)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block153"  :anon :subid("44_1304282272.255") :method :outer("42_1304282272.255")
.annotate 'line', 58
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
    if_null rx155_debug, debug_376
    rx155_cur."!cursor_debug"("START", "")
  debug_376:
    $I10 = self.'from'()
    ne $I10, -1, rxscan156_done
    goto rxscan156_scan
  rxscan156_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan156_done
  rxscan156_scan:
    set_addr $I10, rxscan156_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan156_done:
  # rx literal  ":"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 58, rx155_fail
    add rx155_pos, 1
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "")
    if_null rx155_debug, debug_377
    rx155_cur."!cursor_debug"("PASS", "", " at pos=", rx155_pos)
  debug_377:
    .return (rx155_cur)
  rx155_restart:
    if_null rx155_debug, debug_378
    rx155_cur."!cursor_debug"("NEXT", "")
  debug_378:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_379
    rx155_cur."!cursor_debug"("FAIL", "")
  debug_379:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("45_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P158 = self."!PREFIX__!subrule"("atom", "")
    new $P159, "ResizablePMCArray"
    push $P159, $P158
    .return ($P159)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("46_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P170 = "48_1304282272.255" 
    capture_lex $P170
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    .local pmc rx161_debug
    (rx161_cur, rx161_pos, rx161_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx161_cur
    .local pmc match
    .lex "$/", match
    length rx161_eos, rx161_tgt
    gt rx161_pos, rx161_eos, rx161_done
    set rx161_off, 0
    lt rx161_pos, 2, rx161_start
    sub rx161_off, rx161_pos, 1
    substr rx161_tgt, rx161_tgt, rx161_off
  rx161_start:
    eq $I10, 1, rx161_restart
    if_null rx161_debug, debug_383
    rx161_cur."!cursor_debug"("START", "atom")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx161_pos) = rx161_cur."from"()
    inc rx161_pos
    rx161_cur."!cursor_from"(rx161_pos)
    ge rx161_pos, rx161_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  rxscan165_done:
  alt166_0:
.annotate 'line', 63
    set_addr $I10, alt166_1
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
.annotate 'line', 64
  # rx charclass w
    ge rx161_pos, rx161_eos, rx161_fail
    sub $I10, rx161_pos, rx161_off
    is_cclass $I11, 8192, rx161_tgt, $I10
    unless $I11, rx161_fail
    inc rx161_pos
  # rx rxquantr167 ** 0..1
    set_addr $I10, rxquantr167_done
    rx161_cur."!mark_push"(0, rx161_pos, $I10)
  rxquantr167_loop:
  # rx rxquantg168 ** 1..*
  rxquantg168_loop:
  # rx charclass w
    ge rx161_pos, rx161_eos, rx161_fail
    sub $I10, rx161_pos, rx161_off
    is_cclass $I11, 8192, rx161_tgt, $I10
    unless $I11, rx161_fail
    inc rx161_pos
    set_addr $I10, rxquantg168_done
    rx161_cur."!mark_push"(rx161_rep, rx161_pos, $I10)
    goto rxquantg168_loop
  rxquantg168_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    .const 'Sub' $P170 = "48_1304282272.255" 
    capture_lex $P170
    $P10 = rx161_cur."before"($P170)
    unless $P10, rx161_fail
    set_addr $I10, rxquantr167_done
    (rx161_rep) = rx161_cur."!mark_commit"($I10)
  rxquantr167_done:
    goto alt166_end
  alt166_1:
.annotate 'line', 65
  # rx subrule "metachar" subtype=capture negate=
    rx161_cur."!cursor_pos"(rx161_pos)
    $P10 = rx161_cur."metachar"()
    unless $P10, rx161_fail
    rx161_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx161_pos = $P10."pos"()
  alt166_end:
.annotate 'line', 61
  # rx pass
    rx161_cur."!cursor_pass"(rx161_pos, "atom")
    if_null rx161_debug, debug_388
    rx161_cur."!cursor_debug"("PASS", "atom", " at pos=", rx161_pos)
  debug_388:
    .return (rx161_cur)
  rx161_restart:
.annotate 'line', 11
    if_null rx161_debug, debug_389
    rx161_cur."!cursor_debug"("NEXT", "atom")
  debug_389:
  rx161_fail:
    (rx161_rep, rx161_pos, $I10, $P10) = rx161_cur."!mark_fail"(0)
    lt rx161_pos, -1, rx161_done
    eq rx161_pos, -1, rx161_fail
    jump $I10
  rx161_done:
    rx161_cur."!cursor_fail"()
    if_null rx161_debug, debug_390
    rx161_cur."!cursor_debug"("FAIL", "atom")
  debug_390:
    .return (rx161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :nsentry("!PREFIX__atom") :subid("47_1304282272.255") :method
.annotate 'line', 11
    $P163 = self."!PREFIX__!subrule"("metachar", "")
    new $P164, "ResizablePMCArray"
    push $P164, $P163
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block169"  :anon :subid("48_1304282272.255") :method :outer("46_1304282272.255")
.annotate 'line', 64
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
    if_null rx171_debug, debug_384
    rx171_cur."!cursor_debug"("START", "")
  debug_384:
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
  # rx charclass w
    ge rx171_pos, rx171_eos, rx171_fail
    sub $I10, rx171_pos, rx171_off
    is_cclass $I11, 8192, rx171_tgt, $I10
    unless $I11, rx171_fail
    inc rx171_pos
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "")
    if_null rx171_debug, debug_385
    rx171_cur."!cursor_debug"("PASS", "", " at pos=", rx171_pos)
  debug_385:
    .return (rx171_cur)
  rx171_restart:
    if_null rx171_debug, debug_386
    rx171_cur."!cursor_debug"("NEXT", "")
  debug_386:
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    if_null rx171_debug, debug_387
    rx171_cur."!cursor_debug"("FAIL", "")
  debug_387:
    .return (rx171_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("49_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P174 = self."!PREFIX__!subrule"("metachar", "")
    new $P175, "ResizablePMCArray"
    push $P175, $P174
    push $P175, ""
    .return ($P175)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("50_1304282272.255")
    .param pmc param_177
.annotate 'line', 69
    .lex "self", param_177
    $P178 = param_177."!protoregex"("quantifier")
    .return ($P178)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("51_1304282272.255")
    .param pmc param_180
.annotate 'line', 69
    .lex "self", param_180
    $P181 = param_180."!PREFIX__!protoregex"("quantifier")
    .return ($P181)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("52_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_debug
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx183_cur
    .local pmc match
    .lex "$/", match
    length rx183_eos, rx183_tgt
    gt rx183_pos, rx183_eos, rx183_done
    set rx183_off, 0
    lt rx183_pos, 2, rx183_start
    sub rx183_off, rx183_pos, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
    eq $I10, 1, rx183_restart
    if_null rx183_debug, debug_391
    rx183_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan187_done
    goto rxscan187_scan
  rxscan187_loop:
    (rx183_pos) = rx183_cur."from"()
    inc rx183_pos
    rx183_cur."!cursor_from"(rx183_pos)
    ge rx183_pos, rx183_eos, rxscan187_done
  rxscan187_scan:
    set_addr $I10, rxscan187_loop
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxscan187_done:
.annotate 'line', 70
  # rx subcapture "sym"
    set_addr $I10, rxcap_188_fail
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  # rx literal  "*"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 42, rx183_fail
    add rx183_pos, 1
    set_addr $I10, rxcap_188_fail
    ($I12, $I11) = rx183_cur."!mark_peek"($I10)
    rx183_cur."!cursor_pos"($I11)
    ($P10) = rx183_cur."!cursor_start"()
    $P10."!cursor_pass"(rx183_pos, "")
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_188_done
  rxcap_188_fail:
    goto rx183_fail
  rxcap_188_done:
  # rx subrule "backmod" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."backmod"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx183_pos = $P10."pos"()
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "quantifier:sym<*>")
    if_null rx183_debug, debug_392
    rx183_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx183_pos)
  debug_392:
    .return (rx183_cur)
  rx183_restart:
.annotate 'line', 11
    if_null rx183_debug, debug_393
    rx183_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_393:
  rx183_fail:
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    if_null rx183_debug, debug_394
    rx183_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_394:
    .return (rx183_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :nsentry("!PREFIX__quantifier:sym<*>") :subid("53_1304282272.255") :method
.annotate 'line', 11
    $P185 = self."!PREFIX__!subrule"("backmod", "*")
    new $P186, "ResizablePMCArray"
    push $P186, $P185
    .return ($P186)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("54_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P190 = self."!PREFIX__!subrule"("backmod", "*")
    new $P191, "ResizablePMCArray"
    push $P191, $P190
    .return ($P191)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("55_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    .local pmc rx193_debug
    (rx193_cur, rx193_pos, rx193_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx193_cur
    .local pmc match
    .lex "$/", match
    length rx193_eos, rx193_tgt
    gt rx193_pos, rx193_eos, rx193_done
    set rx193_off, 0
    lt rx193_pos, 2, rx193_start
    sub rx193_off, rx193_pos, 1
    substr rx193_tgt, rx193_tgt, rx193_off
  rx193_start:
    eq $I10, 1, rx193_restart
    if_null rx193_debug, debug_395
    rx193_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan197_done
    goto rxscan197_scan
  rxscan197_loop:
    (rx193_pos) = rx193_cur."from"()
    inc rx193_pos
    rx193_cur."!cursor_from"(rx193_pos)
    ge rx193_pos, rx193_eos, rxscan197_done
  rxscan197_scan:
    set_addr $I10, rxscan197_loop
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  rxscan197_done:
.annotate 'line', 71
  # rx subcapture "sym"
    set_addr $I10, rxcap_198_fail
    rx193_cur."!mark_push"(0, rx193_pos, $I10)
  # rx literal  "+"
    add $I11, rx193_pos, 1
    gt $I11, rx193_eos, rx193_fail
    sub $I11, rx193_pos, rx193_off
    ord $I11, rx193_tgt, $I11
    ne $I11, 43, rx193_fail
    add rx193_pos, 1
    set_addr $I10, rxcap_198_fail
    ($I12, $I11) = rx193_cur."!mark_peek"($I10)
    rx193_cur."!cursor_pos"($I11)
    ($P10) = rx193_cur."!cursor_start"()
    $P10."!cursor_pass"(rx193_pos, "")
    rx193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_198_done
  rxcap_198_fail:
    goto rx193_fail
  rxcap_198_done:
  # rx subrule "backmod" subtype=capture negate=
    rx193_cur."!cursor_pos"(rx193_pos)
    $P10 = rx193_cur."backmod"()
    unless $P10, rx193_fail
    rx193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx193_pos = $P10."pos"()
  # rx pass
    rx193_cur."!cursor_pass"(rx193_pos, "quantifier:sym<+>")
    if_null rx193_debug, debug_396
    rx193_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx193_pos)
  debug_396:
    .return (rx193_cur)
  rx193_restart:
.annotate 'line', 11
    if_null rx193_debug, debug_397
    rx193_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_397:
  rx193_fail:
    (rx193_rep, rx193_pos, $I10, $P10) = rx193_cur."!mark_fail"(0)
    lt rx193_pos, -1, rx193_done
    eq rx193_pos, -1, rx193_fail
    jump $I10
  rx193_done:
    rx193_cur."!cursor_fail"()
    if_null rx193_debug, debug_398
    rx193_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_398:
    .return (rx193_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :nsentry("!PREFIX__quantifier:sym<+>") :subid("56_1304282272.255") :method
.annotate 'line', 11
    $P195 = self."!PREFIX__!subrule"("backmod", "+")
    new $P196, "ResizablePMCArray"
    push $P196, $P195
    .return ($P196)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("57_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P200 = self."!PREFIX__!subrule"("backmod", "+")
    new $P201, "ResizablePMCArray"
    push $P201, $P200
    .return ($P201)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("58_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx203_debug, debug_399
    rx203_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan207_done
    goto rxscan207_scan
  rxscan207_loop:
    (rx203_pos) = rx203_cur."from"()
    inc rx203_pos
    rx203_cur."!cursor_from"(rx203_pos)
    ge rx203_pos, rx203_eos, rxscan207_done
  rxscan207_scan:
    set_addr $I10, rxscan207_loop
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  rxscan207_done:
.annotate 'line', 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_208_fail
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  # rx literal  "?"
    add $I11, rx203_pos, 1
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    ord $I11, rx203_tgt, $I11
    ne $I11, 63, rx203_fail
    add rx203_pos, 1
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx203_cur."!mark_peek"($I10)
    rx203_cur."!cursor_pos"($I11)
    ($P10) = rx203_cur."!cursor_start"()
    $P10."!cursor_pass"(rx203_pos, "")
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx203_fail
  rxcap_208_done:
  # rx subrule "backmod" subtype=capture negate=
    rx203_cur."!cursor_pos"(rx203_pos)
    $P10 = rx203_cur."backmod"()
    unless $P10, rx203_fail
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx203_pos = $P10."pos"()
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "quantifier:sym<?>")
    if_null rx203_debug, debug_400
    rx203_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx203_pos)
  debug_400:
    .return (rx203_cur)
  rx203_restart:
.annotate 'line', 11
    if_null rx203_debug, debug_401
    rx203_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_401:
  rx203_fail:
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    if_null rx203_debug, debug_402
    rx203_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_402:
    .return (rx203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :nsentry("!PREFIX__quantifier:sym<?>") :subid("59_1304282272.255") :method
.annotate 'line', 11
    $P205 = self."!PREFIX__!subrule"("backmod", "?")
    new $P206, "ResizablePMCArray"
    push $P206, $P205
    .return ($P206)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("60_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P210 = self."!PREFIX__!subrule"("backmod", "?")
    new $P211, "ResizablePMCArray"
    push $P211, $P210
    .return ($P211)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("61_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P232 = "66_1304282272.255" 
    capture_lex $P232
    .const 'Sub' $P227 = "65_1304282272.255" 
    capture_lex $P227
    .const 'Sub' $P223 = "64_1304282272.255" 
    capture_lex $P223
    .const 'Sub' $P220 = "63_1304282272.255" 
    capture_lex $P220
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    .local pmc rx213_debug
    (rx213_cur, rx213_pos, rx213_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx213_cur
    .local pmc match
    .lex "$/", match
    length rx213_eos, rx213_tgt
    gt rx213_pos, rx213_eos, rx213_done
    set rx213_off, 0
    lt rx213_pos, 2, rx213_start
    sub rx213_off, rx213_pos, 1
    substr rx213_tgt, rx213_tgt, rx213_off
  rx213_start:
    eq $I10, 1, rx213_restart
    if_null rx213_debug, debug_403
    rx213_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan216_done
    goto rxscan216_scan
  rxscan216_loop:
    (rx213_pos) = rx213_cur."from"()
    inc rx213_pos
    rx213_cur."!cursor_from"(rx213_pos)
    ge rx213_pos, rx213_eos, rxscan216_done
  rxscan216_scan:
    set_addr $I10, rxscan216_loop
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  rxscan216_done:
.annotate 'line', 73
    rx213_cur."!cursor_pos"(rx213_pos)
    find_lex $P217, unicode:"$\x{a2}"
    $P218 = $P217."MATCH"()
    store_lex "$/", $P218
    .const 'Sub' $P220 = "63_1304282272.255" 
    capture_lex $P220
    $P221 = $P220()
  # rx literal  "{"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    ord $I11, rx213_tgt, $I11
    ne $I11, 123, rx213_fail
    add rx213_pos, 1
  # rx subrule $P223 subtype=capture negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    .const 'Sub' $P223 = "64_1304282272.255" 
    capture_lex $P223
    $P10 = rx213_cur.$P223()
    unless $P10, rx213_fail
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx213_pos = $P10."pos"()
  # rx subrule $P227 subtype=capture negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    .const 'Sub' $P227 = "65_1304282272.255" 
    capture_lex $P227
    $P10 = rx213_cur.$P227()
    unless $P10, rx213_fail
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx213_pos = $P10."pos"()
  # rx subrule $P232 subtype=capture negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    .const 'Sub' $P232 = "66_1304282272.255" 
    capture_lex $P232
    $P10 = rx213_cur.$P232()
    unless $P10, rx213_fail
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx213_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    ord $I11, rx213_tgt, $I11
    ne $I11, 125, rx213_fail
    add rx213_pos, 1
.annotate 'line', 74
  # rx subrule "obs" subtype=method negate=
    rx213_cur."!cursor_pos"(rx213_pos)
    $P10 = rx213_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx213_fail
    rx213_pos = $P10."pos"()
.annotate 'line', 73
  # rx pass
    rx213_cur."!cursor_pass"(rx213_pos, "quantifier:sym<{N,M}>")
    if_null rx213_debug, debug_416
    rx213_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx213_pos)
  debug_416:
    .return (rx213_cur)
  rx213_restart:
.annotate 'line', 11
    if_null rx213_debug, debug_417
    rx213_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_417:
  rx213_fail:
    (rx213_rep, rx213_pos, $I10, $P10) = rx213_cur."!mark_fail"(0)
    lt rx213_pos, -1, rx213_done
    eq rx213_pos, -1, rx213_fail
    jump $I10
  rx213_done:
    rx213_cur."!cursor_fail"()
    if_null rx213_debug, debug_418
    rx213_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_418:
    .return (rx213_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :nsentry("!PREFIX__quantifier:sym<{N,M}>") :subid("62_1304282272.255") :method
.annotate 'line', 11
    new $P215, "ResizablePMCArray"
    push $P215, ""
    .return ($P215)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block219"  :anon :subid("63_1304282272.255") :outer("61_1304282272.255")
.annotate 'line', 73
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block222"  :anon :subid("64_1304282272.255") :method :outer("61_1304282272.255")
.annotate 'line', 73
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    .local pmc rx224_debug
    (rx224_cur, rx224_pos, rx224_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx224_cur
    .local pmc match
    .lex "$/", match
    length rx224_eos, rx224_tgt
    gt rx224_pos, rx224_eos, rx224_done
    set rx224_off, 0
    lt rx224_pos, 2, rx224_start
    sub rx224_off, rx224_pos, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    eq $I10, 1, rx224_restart
    if_null rx224_debug, debug_404
    rx224_cur."!cursor_debug"("START", "")
  debug_404:
    $I10 = self.'from'()
    ne $I10, -1, rxscan225_done
    goto rxscan225_scan
  rxscan225_loop:
    (rx224_pos) = rx224_cur."from"()
    inc rx224_pos
    rx224_cur."!cursor_from"(rx224_pos)
    ge rx224_pos, rx224_eos, rxscan225_done
  rxscan225_scan:
    set_addr $I10, rxscan225_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan225_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx224_pos, rx224_off
    find_not_cclass $I11, 8, rx224_tgt, $I10, rx224_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx224_fail
    add rx224_pos, rx224_off, $I11
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "")
    if_null rx224_debug, debug_405
    rx224_cur."!cursor_debug"("PASS", "", " at pos=", rx224_pos)
  debug_405:
    .return (rx224_cur)
  rx224_restart:
    if_null rx224_debug, debug_406
    rx224_cur."!cursor_debug"("NEXT", "")
  debug_406:
  rx224_fail:
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    if_null rx224_debug, debug_407
    rx224_cur."!cursor_debug"("FAIL", "")
  debug_407:
    .return (rx224_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block226"  :anon :subid("65_1304282272.255") :method :outer("61_1304282272.255")
.annotate 'line', 73
    .local string rx228_tgt
    .local int rx228_pos
    .local int rx228_off
    .local int rx228_eos
    .local int rx228_rep
    .local pmc rx228_cur
    .local pmc rx228_debug
    (rx228_cur, rx228_pos, rx228_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx228_cur
    .local pmc match
    .lex "$/", match
    length rx228_eos, rx228_tgt
    gt rx228_pos, rx228_eos, rx228_done
    set rx228_off, 0
    lt rx228_pos, 2, rx228_start
    sub rx228_off, rx228_pos, 1
    substr rx228_tgt, rx228_tgt, rx228_off
  rx228_start:
    eq $I10, 1, rx228_restart
    if_null rx228_debug, debug_408
    rx228_cur."!cursor_debug"("START", "")
  debug_408:
    $I10 = self.'from'()
    ne $I10, -1, rxscan229_done
    goto rxscan229_scan
  rxscan229_loop:
    (rx228_pos) = rx228_cur."from"()
    inc rx228_pos
    rx228_cur."!cursor_from"(rx228_pos)
    ge rx228_pos, rx228_eos, rxscan229_done
  rxscan229_scan:
    set_addr $I10, rxscan229_loop
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  rxscan229_done:
  # rx rxquantr230 ** 0..1
    set_addr $I10, rxquantr230_done
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  rxquantr230_loop:
  # rx literal  ","
    add $I11, rx228_pos, 1
    gt $I11, rx228_eos, rx228_fail
    sub $I11, rx228_pos, rx228_off
    ord $I11, rx228_tgt, $I11
    ne $I11, 44, rx228_fail
    add rx228_pos, 1
    set_addr $I10, rxquantr230_done
    (rx228_rep) = rx228_cur."!mark_commit"($I10)
  rxquantr230_done:
  # rx pass
    rx228_cur."!cursor_pass"(rx228_pos, "")
    if_null rx228_debug, debug_409
    rx228_cur."!cursor_debug"("PASS", "", " at pos=", rx228_pos)
  debug_409:
    .return (rx228_cur)
  rx228_restart:
    if_null rx228_debug, debug_410
    rx228_cur."!cursor_debug"("NEXT", "")
  debug_410:
  rx228_fail:
    (rx228_rep, rx228_pos, $I10, $P10) = rx228_cur."!mark_fail"(0)
    lt rx228_pos, -1, rx228_done
    eq rx228_pos, -1, rx228_fail
    jump $I10
  rx228_done:
    rx228_cur."!cursor_fail"()
    if_null rx228_debug, debug_411
    rx228_cur."!cursor_debug"("FAIL", "")
  debug_411:
    .return (rx228_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block231"  :anon :subid("66_1304282272.255") :method :outer("61_1304282272.255")
.annotate 'line', 73
    .local string rx233_tgt
    .local int rx233_pos
    .local int rx233_off
    .local int rx233_eos
    .local int rx233_rep
    .local pmc rx233_cur
    .local pmc rx233_debug
    (rx233_cur, rx233_pos, rx233_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx233_cur
    .local pmc match
    .lex "$/", match
    length rx233_eos, rx233_tgt
    gt rx233_pos, rx233_eos, rx233_done
    set rx233_off, 0
    lt rx233_pos, 2, rx233_start
    sub rx233_off, rx233_pos, 1
    substr rx233_tgt, rx233_tgt, rx233_off
  rx233_start:
    eq $I10, 1, rx233_restart
    if_null rx233_debug, debug_412
    rx233_cur."!cursor_debug"("START", "")
  debug_412:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    (rx233_pos) = rx233_cur."from"()
    inc rx233_pos
    rx233_cur."!cursor_from"(rx233_pos)
    ge rx233_pos, rx233_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx233_cur."!mark_push"(0, rx233_pos, $I10)
  rxscan234_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx233_pos, rx233_off
    find_not_cclass $I11, 8, rx233_tgt, $I10, rx233_eos
    add rx233_pos, rx233_off, $I11
  # rx pass
    rx233_cur."!cursor_pass"(rx233_pos, "")
    if_null rx233_debug, debug_413
    rx233_cur."!cursor_debug"("PASS", "", " at pos=", rx233_pos)
  debug_413:
    .return (rx233_cur)
  rx233_restart:
    if_null rx233_debug, debug_414
    rx233_cur."!cursor_debug"("NEXT", "")
  debug_414:
  rx233_fail:
    (rx233_rep, rx233_pos, $I10, $P10) = rx233_cur."!mark_fail"(0)
    lt rx233_pos, -1, rx233_done
    eq rx233_pos, -1, rx233_fail
    jump $I10
  rx233_done:
    rx233_cur."!cursor_fail"()
    if_null rx233_debug, debug_415
    rx233_cur."!cursor_debug"("FAIL", "")
  debug_415:
    .return (rx233_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :subid("67_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P236, "ResizablePMCArray"
    push $P236, ""
    .return ($P236)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("68_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx238_tgt
    .local int rx238_pos
    .local int rx238_off
    .local int rx238_eos
    .local int rx238_rep
    .local pmc rx238_cur
    .local pmc rx238_debug
    (rx238_cur, rx238_pos, rx238_tgt, $I10) = self."!cursor_start"()
    rx238_cur."!cursor_caparray"("normspace", "max")
    .lex unicode:"$\x{a2}", rx238_cur
    .local pmc match
    .lex "$/", match
    length rx238_eos, rx238_tgt
    gt rx238_pos, rx238_eos, rx238_done
    set rx238_off, 0
    lt rx238_pos, 2, rx238_start
    sub rx238_off, rx238_pos, 1
    substr rx238_tgt, rx238_tgt, rx238_off
  rx238_start:
    eq $I10, 1, rx238_restart
    if_null rx238_debug, debug_419
    rx238_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan241_done
    goto rxscan241_scan
  rxscan241_loop:
    (rx238_pos) = rx238_cur."from"()
    inc rx238_pos
    rx238_cur."!cursor_from"(rx238_pos)
    ge rx238_pos, rx238_eos, rxscan241_done
  rxscan241_scan:
    set_addr $I10, rxscan241_loop
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxscan241_done:
.annotate 'line', 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_242_fail
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  # rx literal  "**"
    add $I11, rx238_pos, 2
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I11, 2
    ne $S10, "**", rx238_fail
    add rx238_pos, 2
    set_addr $I10, rxcap_242_fail
    ($I12, $I11) = rx238_cur."!mark_peek"($I10)
    rx238_cur."!cursor_pos"($I11)
    ($P10) = rx238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx238_pos, "")
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_242_done
  rxcap_242_fail:
    goto rx238_fail
  rxcap_242_done:
  # rx rxquantr243 ** 0..1
    set_addr $I10, rxquantr243_done
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxquantr243_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."normspace"()
    unless $P10, rx238_fail
    goto rxsubrule244_pass
  rxsubrule244_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx238_fail
  rxsubrule244_pass:
    set_addr $I10, rxsubrule244_back
    rx238_cur."!mark_push"(0, rx238_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx238_pos = $P10."pos"()
    set_addr $I10, rxquantr243_done
    (rx238_rep) = rx238_cur."!mark_commit"($I10)
  rxquantr243_done:
  # rx subrule "backmod" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."backmod"()
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx238_pos = $P10."pos"()
  # rx rxquantr245 ** 0..1
    set_addr $I10, rxquantr245_done
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxquantr245_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."normspace"()
    unless $P10, rx238_fail
    goto rxsubrule246_pass
  rxsubrule246_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx238_fail
  rxsubrule246_pass:
    set_addr $I10, rxsubrule246_back
    rx238_cur."!mark_push"(0, rx238_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx238_pos = $P10."pos"()
    set_addr $I10, rxquantr245_done
    (rx238_rep) = rx238_cur."!mark_commit"($I10)
  rxquantr245_done:
  alt247_0:
.annotate 'line', 78
    set_addr $I10, alt247_1
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
.annotate 'line', 79
  # rx subcapture "min"
    set_addr $I10, rxcap_248_fail
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx238_pos, rx238_off
    find_not_cclass $I11, 8, rx238_tgt, $I10, rx238_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx238_fail
    add rx238_pos, rx238_off, $I11
    set_addr $I10, rxcap_248_fail
    ($I12, $I11) = rx238_cur."!mark_peek"($I10)
    rx238_cur."!cursor_pos"($I11)
    ($P10) = rx238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx238_pos, "")
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_248_done
  rxcap_248_fail:
    goto rx238_fail
  rxcap_248_done:
.annotate 'line', 86
  # rx rxquantr249 ** 0..1
    set_addr $I10, rxquantr249_done
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  rxquantr249_loop:
.annotate 'line', 80
  # rx literal  ".."
    add $I11, rx238_pos, 2
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    substr $S10, rx238_tgt, $I11, 2
    ne $S10, "..", rx238_fail
    add rx238_pos, 2
.annotate 'line', 81
  # rx subcapture "max"
    set_addr $I10, rxcap_251_fail
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
  alt250_0:
    set_addr $I10, alt250_1
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
.annotate 'line', 82
  # rx charclass_q d r 1..-1
    sub $I10, rx238_pos, rx238_off
    find_not_cclass $I11, 8, rx238_tgt, $I10, rx238_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx238_fail
    add rx238_pos, rx238_off, $I11
    goto alt250_end
  alt250_1:
    set_addr $I10, alt250_2
    rx238_cur."!mark_push"(0, rx238_pos, $I10)
.annotate 'line', 83
  # rx literal  "*"
    add $I11, rx238_pos, 1
    gt $I11, rx238_eos, rx238_fail
    sub $I11, rx238_pos, rx238_off
    ord $I11, rx238_tgt, $I11
    ne $I11, 42, rx238_fail
    add rx238_pos, 1
    goto alt250_end
  alt250_2:
.annotate 'line', 84
  # rx subrule "panic" subtype=method negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx238_fail
    rx238_pos = $P10."pos"()
  alt250_end:
.annotate 'line', 81
    set_addr $I10, rxcap_251_fail
    ($I12, $I11) = rx238_cur."!mark_peek"($I10)
    rx238_cur."!cursor_pos"($I11)
    ($P10) = rx238_cur."!cursor_start"()
    $P10."!cursor_pass"(rx238_pos, "")
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_251_done
  rxcap_251_fail:
    goto rx238_fail
  rxcap_251_done:
.annotate 'line', 86
    set_addr $I10, rxquantr249_done
    (rx238_rep) = rx238_cur."!mark_commit"($I10)
  rxquantr249_done:
.annotate 'line', 79
    goto alt247_end
  alt247_1:
.annotate 'line', 87
  # rx subrule "quantified_atom" subtype=capture negate=
    rx238_cur."!cursor_pos"(rx238_pos)
    $P10 = rx238_cur."quantified_atom"()
    unless $P10, rx238_fail
    rx238_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx238_pos = $P10."pos"()
  alt247_end:
.annotate 'line', 76
  # rx pass
    rx238_cur."!cursor_pass"(rx238_pos, "quantifier:sym<**>")
    if_null rx238_debug, debug_420
    rx238_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx238_pos)
  debug_420:
    .return (rx238_cur)
  rx238_restart:
.annotate 'line', 11
    if_null rx238_debug, debug_421
    rx238_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_421:
  rx238_fail:
    (rx238_rep, rx238_pos, $I10, $P10) = rx238_cur."!mark_fail"(0)
    lt rx238_pos, -1, rx238_done
    eq rx238_pos, -1, rx238_fail
    jump $I10
  rx238_done:
    rx238_cur."!cursor_fail"()
    if_null rx238_debug, debug_422
    rx238_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_422:
    .return (rx238_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :nsentry("!PREFIX__quantifier:sym<**>") :subid("69_1304282272.255") :method
.annotate 'line', 11
    new $P240, "ResizablePMCArray"
    push $P240, "**"
    .return ($P240)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("70_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P253, "ResizablePMCArray"
    push $P253, "**"
    .return ($P253)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("71_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P262 = "73_1304282272.255" 
    capture_lex $P262
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    .local pmc rx255_debug
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    gt rx255_pos, rx255_eos, rx255_done
    set rx255_off, 0
    lt rx255_pos, 2, rx255_start
    sub rx255_off, rx255_pos, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
    eq $I10, 1, rx255_restart
    if_null rx255_debug, debug_423
    rx255_cur."!cursor_debug"("START", "backmod")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    (rx255_pos) = rx255_cur."from"()
    inc rx255_pos
    rx255_cur."!cursor_from"(rx255_pos)
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
.annotate 'line', 91
  # rx rxquantr259 ** 0..1
    set_addr $I10, rxquantr259_done
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxquantr259_loop:
  # rx literal  ":"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    ord $I11, rx255_tgt, $I11
    ne $I11, 58, rx255_fail
    add rx255_pos, 1
    set_addr $I10, rxquantr259_done
    (rx255_rep) = rx255_cur."!mark_commit"($I10)
  rxquantr259_done:
  alt260_0:
    set_addr $I10, alt260_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "?"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    ord $I11, rx255_tgt, $I11
    ne $I11, 63, rx255_fail
    add rx255_pos, 1
    goto alt260_end
  alt260_1:
    set_addr $I10, alt260_2
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "!"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    ord $I11, rx255_tgt, $I11
    ne $I11, 33, rx255_fail
    add rx255_pos, 1
    goto alt260_end
  alt260_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P262 = "73_1304282272.255" 
    capture_lex $P262
    $P10 = rx255_cur."before"($P262)
    if $P10, rx255_fail
  alt260_end:
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "backmod")
    if_null rx255_debug, debug_428
    rx255_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx255_pos)
  debug_428:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 11
    if_null rx255_debug, debug_429
    rx255_cur."!cursor_debug"("NEXT", "backmod")
  debug_429:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_430
    rx255_cur."!cursor_debug"("FAIL", "backmod")
  debug_430:
    .return (rx255_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :nsentry("!PREFIX__backmod") :subid("72_1304282272.255") :method
.annotate 'line', 11
    new $P257, "ResizablePMCArray"
    push $P257, ""
    .return ($P257)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block261"  :anon :subid("73_1304282272.255") :method :outer("71_1304282272.255")
.annotate 'line', 91
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
    if_null rx263_debug, debug_424
    rx263_cur."!cursor_debug"("START", "")
  debug_424:
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
  # rx literal  ":"
    add $I11, rx263_pos, 1
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    ord $I11, rx263_tgt, $I11
    ne $I11, 58, rx263_fail
    add rx263_pos, 1
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "")
    if_null rx263_debug, debug_425
    rx263_cur."!cursor_debug"("PASS", "", " at pos=", rx263_pos)
  debug_425:
    .return (rx263_cur)
  rx263_restart:
    if_null rx263_debug, debug_426
    rx263_cur."!cursor_debug"("NEXT", "")
  debug_426:
  rx263_fail:
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    if_null rx263_debug, debug_427
    rx263_cur."!cursor_debug"("FAIL", "")
  debug_427:
    .return (rx263_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("74_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P266, "ResizablePMCArray"
    push $P266, ""
    .return ($P266)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("75_1304282272.255")
    .param pmc param_268
.annotate 'line', 93
    .lex "self", param_268
    $P269 = param_268."!protoregex"("metachar")
    .return ($P269)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("76_1304282272.255")
    .param pmc param_271
.annotate 'line', 93
    .lex "self", param_271
    $P272 = param_271."!PREFIX__!protoregex"("metachar")
    .return ($P272)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("77_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx274_debug, debug_431
    rx274_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan278_done
    goto rxscan278_scan
  rxscan278_loop:
    (rx274_pos) = rx274_cur."from"()
    inc rx274_pos
    rx274_cur."!cursor_from"(rx274_pos)
    ge rx274_pos, rx274_eos, rxscan278_done
  rxscan278_scan:
    set_addr $I10, rxscan278_loop
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  rxscan278_done:
.annotate 'line', 94
  # rx subrule "normspace" subtype=method negate=
    rx274_cur."!cursor_pos"(rx274_pos)
    $P10 = rx274_cur."normspace"()
    unless $P10, rx274_fail
    rx274_pos = $P10."pos"()
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "metachar:sym<ws>")
    if_null rx274_debug, debug_432
    rx274_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx274_pos)
  debug_432:
    .return (rx274_cur)
  rx274_restart:
.annotate 'line', 11
    if_null rx274_debug, debug_433
    rx274_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_433:
  rx274_fail:
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    if_null rx274_debug, debug_434
    rx274_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_434:
    .return (rx274_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :nsentry("!PREFIX__metachar:sym<ws>") :subid("78_1304282272.255") :method
.annotate 'line', 11
    $P276 = self."!PREFIX__!subrule"("normspace", "")
    new $P277, "ResizablePMCArray"
    push $P277, $P276
    .return ($P277)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("79_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P280 = self."!PREFIX__!subrule"("normspace", "")
    new $P281, "ResizablePMCArray"
    push $P281, $P280
    .return ($P281)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("80_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx283_debug, debug_435
    rx283_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_435:
    $I10 = self.'from'()
    ne $I10, -1, rxscan287_done
    goto rxscan287_scan
  rxscan287_loop:
    (rx283_pos) = rx283_cur."from"()
    inc rx283_pos
    rx283_cur."!cursor_from"(rx283_pos)
    ge rx283_pos, rx283_eos, rxscan287_done
  rxscan287_scan:
    set_addr $I10, rxscan287_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan287_done:
.annotate 'line', 95
  # rx literal  "["
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    ord $I11, rx283_tgt, $I11
    ne $I11, 91, rx283_fail
    add rx283_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."nibbler"()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx283_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    ord $I11, rx283_tgt, $I11
    ne $I11, 93, rx283_fail
    add rx283_pos, 1
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "metachar:sym<[ ]>")
    if_null rx283_debug, debug_436
    rx283_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx283_pos)
  debug_436:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 11
    if_null rx283_debug, debug_437
    rx283_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_437:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_438
    rx283_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_438:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :nsentry("!PREFIX__metachar:sym<[ ]>") :subid("81_1304282272.255") :method
.annotate 'line', 11
    $P285 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P286, "ResizablePMCArray"
    push $P286, $P285
    .return ($P286)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("82_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P289 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P290, "ResizablePMCArray"
    push $P290, $P289
    .return ($P290)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("83_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx292_debug, debug_439
    rx292_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    (rx292_pos) = rx292_cur."from"()
    inc rx292_pos
    rx292_cur."!cursor_from"(rx292_pos)
    ge rx292_pos, rx292_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx292_cur."!mark_push"(0, rx292_pos, $I10)
  rxscan296_done:
.annotate 'line', 96
  # rx literal  "("
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    ord $I11, rx292_tgt, $I11
    ne $I11, 40, rx292_fail
    add rx292_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx292_cur."!cursor_pos"(rx292_pos)
    $P10 = rx292_cur."nibbler"()
    unless $P10, rx292_fail
    rx292_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx292_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail
    sub $I11, rx292_pos, rx292_off
    ord $I11, rx292_tgt, $I11
    ne $I11, 41, rx292_fail
    add rx292_pos, 1
  # rx pass
    rx292_cur."!cursor_pass"(rx292_pos, "metachar:sym<( )>")
    if_null rx292_debug, debug_440
    rx292_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx292_pos)
  debug_440:
    .return (rx292_cur)
  rx292_restart:
.annotate 'line', 11
    if_null rx292_debug, debug_441
    rx292_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_441:
  rx292_fail:
    (rx292_rep, rx292_pos, $I10, $P10) = rx292_cur."!mark_fail"(0)
    lt rx292_pos, -1, rx292_done
    eq rx292_pos, -1, rx292_fail
    jump $I10
  rx292_done:
    rx292_cur."!cursor_fail"()
    if_null rx292_debug, debug_442
    rx292_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_442:
    .return (rx292_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :nsentry("!PREFIX__metachar:sym<( )>") :subid("84_1304282272.255") :method
.annotate 'line', 11
    $P294 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P295, "ResizablePMCArray"
    push $P295, $P294
    .return ($P295)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("85_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P298 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P299, "ResizablePMCArray"
    push $P299, $P298
    .return ($P299)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("86_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx301_tgt
    .local int rx301_pos
    .local int rx301_off
    .local int rx301_eos
    .local int rx301_rep
    .local pmc rx301_cur
    .local pmc rx301_debug
    (rx301_cur, rx301_pos, rx301_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx301_cur
    .local pmc match
    .lex "$/", match
    length rx301_eos, rx301_tgt
    gt rx301_pos, rx301_eos, rx301_done
    set rx301_off, 0
    lt rx301_pos, 2, rx301_start
    sub rx301_off, rx301_pos, 1
    substr rx301_tgt, rx301_tgt, rx301_off
  rx301_start:
    eq $I10, 1, rx301_restart
    if_null rx301_debug, debug_443
    rx301_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_443:
    $I10 = self.'from'()
    ne $I10, -1, rxscan304_done
    goto rxscan304_scan
  rxscan304_loop:
    (rx301_pos) = rx301_cur."from"()
    inc rx301_pos
    rx301_cur."!cursor_from"(rx301_pos)
    ge rx301_pos, rx301_eos, rxscan304_done
  rxscan304_scan:
    set_addr $I10, rxscan304_loop
    rx301_cur."!mark_push"(0, rx301_pos, $I10)
  rxscan304_done:
.annotate 'line', 97
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx301_pos, rx301_off
    substr $S10, rx301_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx301_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx301_cur."!cursor_pos"(rx301_pos)
    $P10 = rx301_cur."quote_EXPR"(":q")
    unless $P10, rx301_fail
    rx301_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx301_pos = $P10."pos"()
  # rx pass
    rx301_cur."!cursor_pass"(rx301_pos, "metachar:sym<'>")
    if_null rx301_debug, debug_444
    rx301_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx301_pos)
  debug_444:
    .return (rx301_cur)
  rx301_restart:
.annotate 'line', 11
    if_null rx301_debug, debug_445
    rx301_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_445:
  rx301_fail:
    (rx301_rep, rx301_pos, $I10, $P10) = rx301_cur."!mark_fail"(0)
    lt rx301_pos, -1, rx301_done
    eq rx301_pos, -1, rx301_fail
    jump $I10
  rx301_done:
    rx301_cur."!cursor_fail"()
    if_null rx301_debug, debug_446
    rx301_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_446:
    .return (rx301_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :nsentry("!PREFIX__metachar:sym<'>") :subid("87_1304282272.255") :method
.annotate 'line', 11
    new $P303, "ResizablePMCArray"
    push $P303, "'"
    .return ($P303)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("88_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P306, "ResizablePMCArray"
    push $P306, "'"
    .return ($P306)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("89_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx308_tgt
    .local int rx308_pos
    .local int rx308_off
    .local int rx308_eos
    .local int rx308_rep
    .local pmc rx308_cur
    .local pmc rx308_debug
    (rx308_cur, rx308_pos, rx308_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx308_cur
    .local pmc match
    .lex "$/", match
    length rx308_eos, rx308_tgt
    gt rx308_pos, rx308_eos, rx308_done
    set rx308_off, 0
    lt rx308_pos, 2, rx308_start
    sub rx308_off, rx308_pos, 1
    substr rx308_tgt, rx308_tgt, rx308_off
  rx308_start:
    eq $I10, 1, rx308_restart
    if_null rx308_debug, debug_447
    rx308_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_447:
    $I10 = self.'from'()
    ne $I10, -1, rxscan311_done
    goto rxscan311_scan
  rxscan311_loop:
    (rx308_pos) = rx308_cur."from"()
    inc rx308_pos
    rx308_cur."!cursor_from"(rx308_pos)
    ge rx308_pos, rx308_eos, rxscan311_done
  rxscan311_scan:
    set_addr $I10, rxscan311_loop
    rx308_cur."!mark_push"(0, rx308_pos, $I10)
  rxscan311_done:
.annotate 'line', 98
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx308_pos, rx308_off
    substr $S10, rx308_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx308_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx308_cur."!cursor_pos"(rx308_pos)
    $P10 = rx308_cur."quote_EXPR"(":qq")
    unless $P10, rx308_fail
    rx308_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx308_pos = $P10."pos"()
  # rx pass
    rx308_cur."!cursor_pass"(rx308_pos, "metachar:sym<\">")
    if_null rx308_debug, debug_448
    rx308_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx308_pos)
  debug_448:
    .return (rx308_cur)
  rx308_restart:
.annotate 'line', 11
    if_null rx308_debug, debug_449
    rx308_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_449:
  rx308_fail:
    (rx308_rep, rx308_pos, $I10, $P10) = rx308_cur."!mark_fail"(0)
    lt rx308_pos, -1, rx308_done
    eq rx308_pos, -1, rx308_fail
    jump $I10
  rx308_done:
    rx308_cur."!cursor_fail"()
    if_null rx308_debug, debug_450
    rx308_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_450:
    .return (rx308_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :nsentry("!PREFIX__metachar:sym<\">") :subid("90_1304282272.255") :method
.annotate 'line', 11
    new $P310, "ResizablePMCArray"
    push $P310, "\""
    .return ($P310)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :subid("91_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P313, "ResizablePMCArray"
    push $P313, "\""
    .return ($P313)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("92_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    .local pmc rx315_debug
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx315_cur
    .local pmc match
    .lex "$/", match
    length rx315_eos, rx315_tgt
    gt rx315_pos, rx315_eos, rx315_done
    set rx315_off, 0
    lt rx315_pos, 2, rx315_start
    sub rx315_off, rx315_pos, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
    eq $I10, 1, rx315_restart
    if_null rx315_debug, debug_451
    rx315_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_451:
    $I10 = self.'from'()
    ne $I10, -1, rxscan318_done
    goto rxscan318_scan
  rxscan318_loop:
    (rx315_pos) = rx315_cur."from"()
    inc rx315_pos
    rx315_cur."!cursor_from"(rx315_pos)
    ge rx315_pos, rx315_eos, rxscan318_done
  rxscan318_scan:
    set_addr $I10, rxscan318_loop
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  rxscan318_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_319_fail
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  # rx literal  "."
    add $I11, rx315_pos, 1
    gt $I11, rx315_eos, rx315_fail
    sub $I11, rx315_pos, rx315_off
    ord $I11, rx315_tgt, $I11
    ne $I11, 46, rx315_fail
    add rx315_pos, 1
    set_addr $I10, rxcap_319_fail
    ($I12, $I11) = rx315_cur."!mark_peek"($I10)
    rx315_cur."!cursor_pos"($I11)
    ($P10) = rx315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx315_pos, "")
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_319_done
  rxcap_319_fail:
    goto rx315_fail
  rxcap_319_done:
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "metachar:sym<.>")
    if_null rx315_debug, debug_452
    rx315_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx315_pos)
  debug_452:
    .return (rx315_cur)
  rx315_restart:
.annotate 'line', 11
    if_null rx315_debug, debug_453
    rx315_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_453:
  rx315_fail:
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    if_null rx315_debug, debug_454
    rx315_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_454:
    .return (rx315_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :nsentry("!PREFIX__metachar:sym<.>") :subid("93_1304282272.255") :method
.annotate 'line', 11
    new $P317, "ResizablePMCArray"
    push $P317, "."
    .return ($P317)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("94_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P321, "ResizablePMCArray"
    push $P321, "."
    .return ($P321)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("95_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx323_tgt
    .local int rx323_pos
    .local int rx323_off
    .local int rx323_eos
    .local int rx323_rep
    .local pmc rx323_cur
    .local pmc rx323_debug
    (rx323_cur, rx323_pos, rx323_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx323_cur
    .local pmc match
    .lex "$/", match
    length rx323_eos, rx323_tgt
    gt rx323_pos, rx323_eos, rx323_done
    set rx323_off, 0
    lt rx323_pos, 2, rx323_start
    sub rx323_off, rx323_pos, 1
    substr rx323_tgt, rx323_tgt, rx323_off
  rx323_start:
    eq $I10, 1, rx323_restart
    if_null rx323_debug, debug_455
    rx323_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_455:
    $I10 = self.'from'()
    ne $I10, -1, rxscan326_done
    goto rxscan326_scan
  rxscan326_loop:
    (rx323_pos) = rx323_cur."from"()
    inc rx323_pos
    rx323_cur."!cursor_from"(rx323_pos)
    ge rx323_pos, rx323_eos, rxscan326_done
  rxscan326_scan:
    set_addr $I10, rxscan326_loop
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  rxscan326_done:
.annotate 'line', 100
  # rx subcapture "sym"
    set_addr $I10, rxcap_327_fail
    rx323_cur."!mark_push"(0, rx323_pos, $I10)
  # rx literal  "^"
    add $I11, rx323_pos, 1
    gt $I11, rx323_eos, rx323_fail
    sub $I11, rx323_pos, rx323_off
    ord $I11, rx323_tgt, $I11
    ne $I11, 94, rx323_fail
    add rx323_pos, 1
    set_addr $I10, rxcap_327_fail
    ($I12, $I11) = rx323_cur."!mark_peek"($I10)
    rx323_cur."!cursor_pos"($I11)
    ($P10) = rx323_cur."!cursor_start"()
    $P10."!cursor_pass"(rx323_pos, "")
    rx323_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_327_done
  rxcap_327_fail:
    goto rx323_fail
  rxcap_327_done:
  # rx pass
    rx323_cur."!cursor_pass"(rx323_pos, "metachar:sym<^>")
    if_null rx323_debug, debug_456
    rx323_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx323_pos)
  debug_456:
    .return (rx323_cur)
  rx323_restart:
.annotate 'line', 11
    if_null rx323_debug, debug_457
    rx323_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_457:
  rx323_fail:
    (rx323_rep, rx323_pos, $I10, $P10) = rx323_cur."!mark_fail"(0)
    lt rx323_pos, -1, rx323_done
    eq rx323_pos, -1, rx323_fail
    jump $I10
  rx323_done:
    rx323_cur."!cursor_fail"()
    if_null rx323_debug, debug_458
    rx323_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_458:
    .return (rx323_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :nsentry("!PREFIX__metachar:sym<^>") :subid("96_1304282272.255") :method
.annotate 'line', 11
    new $P325, "ResizablePMCArray"
    push $P325, "^"
    .return ($P325)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("97_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P329, "ResizablePMCArray"
    push $P329, "^"
    .return ($P329)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("98_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    .local pmc rx331_debug
    (rx331_cur, rx331_pos, rx331_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx331_cur
    .local pmc match
    .lex "$/", match
    length rx331_eos, rx331_tgt
    gt rx331_pos, rx331_eos, rx331_done
    set rx331_off, 0
    lt rx331_pos, 2, rx331_start
    sub rx331_off, rx331_pos, 1
    substr rx331_tgt, rx331_tgt, rx331_off
  rx331_start:
    eq $I10, 1, rx331_restart
    if_null rx331_debug, debug_459
    rx331_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_459:
    $I10 = self.'from'()
    ne $I10, -1, rxscan334_done
    goto rxscan334_scan
  rxscan334_loop:
    (rx331_pos) = rx331_cur."from"()
    inc rx331_pos
    rx331_cur."!cursor_from"(rx331_pos)
    ge rx331_pos, rx331_eos, rxscan334_done
  rxscan334_scan:
    set_addr $I10, rxscan334_loop
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  rxscan334_done:
.annotate 'line', 101
  # rx subcapture "sym"
    set_addr $I10, rxcap_335_fail
    rx331_cur."!mark_push"(0, rx331_pos, $I10)
  # rx literal  "^^"
    add $I11, rx331_pos, 2
    gt $I11, rx331_eos, rx331_fail
    sub $I11, rx331_pos, rx331_off
    substr $S10, rx331_tgt, $I11, 2
    ne $S10, "^^", rx331_fail
    add rx331_pos, 2
    set_addr $I10, rxcap_335_fail
    ($I12, $I11) = rx331_cur."!mark_peek"($I10)
    rx331_cur."!cursor_pos"($I11)
    ($P10) = rx331_cur."!cursor_start"()
    $P10."!cursor_pass"(rx331_pos, "")
    rx331_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_335_done
  rxcap_335_fail:
    goto rx331_fail
  rxcap_335_done:
  # rx pass
    rx331_cur."!cursor_pass"(rx331_pos, "metachar:sym<^^>")
    if_null rx331_debug, debug_460
    rx331_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx331_pos)
  debug_460:
    .return (rx331_cur)
  rx331_restart:
.annotate 'line', 11
    if_null rx331_debug, debug_461
    rx331_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_461:
  rx331_fail:
    (rx331_rep, rx331_pos, $I10, $P10) = rx331_cur."!mark_fail"(0)
    lt rx331_pos, -1, rx331_done
    eq rx331_pos, -1, rx331_fail
    jump $I10
  rx331_done:
    rx331_cur."!cursor_fail"()
    if_null rx331_debug, debug_462
    rx331_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_462:
    .return (rx331_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :nsentry("!PREFIX__metachar:sym<^^>") :subid("99_1304282272.255") :method
.annotate 'line', 11
    new $P333, "ResizablePMCArray"
    push $P333, "^^"
    .return ($P333)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("100_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P337, "ResizablePMCArray"
    push $P337, "^^"
    .return ($P337)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("101_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
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
    if_null rx339_debug, debug_463
    rx339_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_463:
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
.annotate 'line', 102
  # rx subcapture "sym"
    set_addr $I10, rxcap_343_fail
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  # rx literal  "$"
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 36, rx339_fail
    add rx339_pos, 1
    set_addr $I10, rxcap_343_fail
    ($I12, $I11) = rx339_cur."!mark_peek"($I10)
    rx339_cur."!cursor_pos"($I11)
    ($P10) = rx339_cur."!cursor_start"()
    $P10."!cursor_pass"(rx339_pos, "")
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_343_done
  rxcap_343_fail:
    goto rx339_fail
  rxcap_343_done:
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "metachar:sym<$>")
    if_null rx339_debug, debug_464
    rx339_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx339_pos)
  debug_464:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 11
    if_null rx339_debug, debug_465
    rx339_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_465:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_466
    rx339_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_466:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :nsentry("!PREFIX__metachar:sym<$>") :subid("102_1304282272.255") :method
.annotate 'line', 11
    new $P341, "ResizablePMCArray"
    push $P341, "$"
    .return ($P341)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("103_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P345, "ResizablePMCArray"
    push $P345, "$"
    .return ($P345)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("104_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx347_tgt
    .local int rx347_pos
    .local int rx347_off
    .local int rx347_eos
    .local int rx347_rep
    .local pmc rx347_cur
    .local pmc rx347_debug
    (rx347_cur, rx347_pos, rx347_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx347_cur
    .local pmc match
    .lex "$/", match
    length rx347_eos, rx347_tgt
    gt rx347_pos, rx347_eos, rx347_done
    set rx347_off, 0
    lt rx347_pos, 2, rx347_start
    sub rx347_off, rx347_pos, 1
    substr rx347_tgt, rx347_tgt, rx347_off
  rx347_start:
    eq $I10, 1, rx347_restart
    if_null rx347_debug, debug_467
    rx347_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan350_done
    goto rxscan350_scan
  rxscan350_loop:
    (rx347_pos) = rx347_cur."from"()
    inc rx347_pos
    rx347_cur."!cursor_from"(rx347_pos)
    ge rx347_pos, rx347_eos, rxscan350_done
  rxscan350_scan:
    set_addr $I10, rxscan350_loop
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  rxscan350_done:
.annotate 'line', 103
  # rx subcapture "sym"
    set_addr $I10, rxcap_351_fail
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  # rx literal  "$$"
    add $I11, rx347_pos, 2
    gt $I11, rx347_eos, rx347_fail
    sub $I11, rx347_pos, rx347_off
    substr $S10, rx347_tgt, $I11, 2
    ne $S10, "$$", rx347_fail
    add rx347_pos, 2
    set_addr $I10, rxcap_351_fail
    ($I12, $I11) = rx347_cur."!mark_peek"($I10)
    rx347_cur."!cursor_pos"($I11)
    ($P10) = rx347_cur."!cursor_start"()
    $P10."!cursor_pass"(rx347_pos, "")
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_351_done
  rxcap_351_fail:
    goto rx347_fail
  rxcap_351_done:
  # rx pass
    rx347_cur."!cursor_pass"(rx347_pos, "metachar:sym<$$>")
    if_null rx347_debug, debug_468
    rx347_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx347_pos)
  debug_468:
    .return (rx347_cur)
  rx347_restart:
.annotate 'line', 11
    if_null rx347_debug, debug_469
    rx347_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_469:
  rx347_fail:
    (rx347_rep, rx347_pos, $I10, $P10) = rx347_cur."!mark_fail"(0)
    lt rx347_pos, -1, rx347_done
    eq rx347_pos, -1, rx347_fail
    jump $I10
  rx347_done:
    rx347_cur."!cursor_fail"()
    if_null rx347_debug, debug_470
    rx347_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_470:
    .return (rx347_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :nsentry("!PREFIX__metachar:sym<$$>") :subid("105_1304282272.255") :method
.annotate 'line', 11
    new $P349, "ResizablePMCArray"
    push $P349, "$$"
    .return ($P349)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("106_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P353, "ResizablePMCArray"
    push $P353, "$$"
    .return ($P353)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("107_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    .local pmc rx355_debug
    (rx355_cur, rx355_pos, rx355_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx355_cur
    .local pmc match
    .lex "$/", match
    length rx355_eos, rx355_tgt
    gt rx355_pos, rx355_eos, rx355_done
    set rx355_off, 0
    lt rx355_pos, 2, rx355_start
    sub rx355_off, rx355_pos, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
    eq $I10, 1, rx355_restart
    if_null rx355_debug, debug_471
    rx355_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_471:
    $I10 = self.'from'()
    ne $I10, -1, rxscan359_done
    goto rxscan359_scan
  rxscan359_loop:
    (rx355_pos) = rx355_cur."from"()
    inc rx355_pos
    rx355_cur."!cursor_from"(rx355_pos)
    ge rx355_pos, rx355_eos, rxscan359_done
  rxscan359_scan:
    set_addr $I10, rxscan359_loop
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  rxscan359_done:
.annotate 'line', 104
  # rx subcapture "sym"
    set_addr $I10, rxcap_360_fail
    rx355_cur."!mark_push"(0, rx355_pos, $I10)
  # rx literal  ":::"
    add $I11, rx355_pos, 3
    gt $I11, rx355_eos, rx355_fail
    sub $I11, rx355_pos, rx355_off
    substr $S10, rx355_tgt, $I11, 3
    ne $S10, ":::", rx355_fail
    add rx355_pos, 3
    set_addr $I10, rxcap_360_fail
    ($I12, $I11) = rx355_cur."!mark_peek"($I10)
    rx355_cur."!cursor_pos"($I11)
    ($P10) = rx355_cur."!cursor_start"()
    $P10."!cursor_pass"(rx355_pos, "")
    rx355_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_360_done
  rxcap_360_fail:
    goto rx355_fail
  rxcap_360_done:
  # rx subrule "panic" subtype=method negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."panic"("::: not yet implemented")
    unless $P10, rx355_fail
    rx355_pos = $P10."pos"()
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "metachar:sym<:::>")
    if_null rx355_debug, debug_472
    rx355_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx355_pos)
  debug_472:
    .return (rx355_cur)
  rx355_restart:
.annotate 'line', 11
    if_null rx355_debug, debug_473
    rx355_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_473:
  rx355_fail:
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    if_null rx355_debug, debug_474
    rx355_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_474:
    .return (rx355_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :nsentry("!PREFIX__metachar:sym<:::>") :subid("108_1304282272.255") :method
.annotate 'line', 11
    $P357 = self."!PREFIX__!subrule"("panic", ":::")
    new $P358, "ResizablePMCArray"
    push $P358, $P357
    .return ($P358)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("109_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P362 = self."!PREFIX__!subrule"("panic", ":::")
    new $P363, "ResizablePMCArray"
    push $P363, $P362
    .return ($P363)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("110_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx365_tgt
    .local int rx365_pos
    .local int rx365_off
    .local int rx365_eos
    .local int rx365_rep
    .local pmc rx365_cur
    .local pmc rx365_debug
    (rx365_cur, rx365_pos, rx365_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx365_cur
    .local pmc match
    .lex "$/", match
    length rx365_eos, rx365_tgt
    gt rx365_pos, rx365_eos, rx365_done
    set rx365_off, 0
    lt rx365_pos, 2, rx365_start
    sub rx365_off, rx365_pos, 1
    substr rx365_tgt, rx365_tgt, rx365_off
  rx365_start:
    eq $I10, 1, rx365_restart
    if_null rx365_debug, debug_475
    rx365_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_475:
    $I10 = self.'from'()
    ne $I10, -1, rxscan369_done
    goto rxscan369_scan
  rxscan369_loop:
    (rx365_pos) = rx365_cur."from"()
    inc rx365_pos
    rx365_cur."!cursor_from"(rx365_pos)
    ge rx365_pos, rx365_eos, rxscan369_done
  rxscan369_scan:
    set_addr $I10, rxscan369_loop
    rx365_cur."!mark_push"(0, rx365_pos, $I10)
  rxscan369_done:
.annotate 'line', 105
  # rx subcapture "sym"
    set_addr $I10, rxcap_370_fail
    rx365_cur."!mark_push"(0, rx365_pos, $I10)
  # rx literal  "::"
    add $I11, rx365_pos, 2
    gt $I11, rx365_eos, rx365_fail
    sub $I11, rx365_pos, rx365_off
    substr $S10, rx365_tgt, $I11, 2
    ne $S10, "::", rx365_fail
    add rx365_pos, 2
    set_addr $I10, rxcap_370_fail
    ($I12, $I11) = rx365_cur."!mark_peek"($I10)
    rx365_cur."!cursor_pos"($I11)
    ($P10) = rx365_cur."!cursor_start"()
    $P10."!cursor_pass"(rx365_pos, "")
    rx365_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_370_done
  rxcap_370_fail:
    goto rx365_fail
  rxcap_370_done:
  # rx subrule "panic" subtype=method negate=
    rx365_cur."!cursor_pos"(rx365_pos)
    $P10 = rx365_cur."panic"(":: not yet implemented")
    unless $P10, rx365_fail
    rx365_pos = $P10."pos"()
  # rx pass
    rx365_cur."!cursor_pass"(rx365_pos, "metachar:sym<::>")
    if_null rx365_debug, debug_476
    rx365_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx365_pos)
  debug_476:
    .return (rx365_cur)
  rx365_restart:
.annotate 'line', 11
    if_null rx365_debug, debug_477
    rx365_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_477:
  rx365_fail:
    (rx365_rep, rx365_pos, $I10, $P10) = rx365_cur."!mark_fail"(0)
    lt rx365_pos, -1, rx365_done
    eq rx365_pos, -1, rx365_fail
    jump $I10
  rx365_done:
    rx365_cur."!cursor_fail"()
    if_null rx365_debug, debug_478
    rx365_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_478:
    .return (rx365_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :nsentry("!PREFIX__metachar:sym<::>") :subid("111_1304282272.255") :method
.annotate 'line', 11
    $P367 = self."!PREFIX__!subrule"("panic", "::")
    new $P368, "ResizablePMCArray"
    push $P368, $P367
    .return ($P368)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("112_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P372 = self."!PREFIX__!subrule"("panic", "::")
    new $P373, "ResizablePMCArray"
    push $P373, $P372
    .return ($P373)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("113_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    .local pmc rx375_debug
    (rx375_cur, rx375_pos, rx375_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx375_cur
    .local pmc match
    .lex "$/", match
    length rx375_eos, rx375_tgt
    gt rx375_pos, rx375_eos, rx375_done
    set rx375_off, 0
    lt rx375_pos, 2, rx375_start
    sub rx375_off, rx375_pos, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
    eq $I10, 1, rx375_restart
    if_null rx375_debug, debug_479
    rx375_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_479:
    $I10 = self.'from'()
    ne $I10, -1, rxscan378_done
    goto rxscan378_scan
  rxscan378_loop:
    (rx375_pos) = rx375_cur."from"()
    inc rx375_pos
    rx375_cur."!cursor_from"(rx375_pos)
    ge rx375_pos, rx375_eos, rxscan378_done
  rxscan378_scan:
    set_addr $I10, rxscan378_loop
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  rxscan378_done:
.annotate 'line', 106
  # rx subcapture "sym"
    set_addr $I10, rxcap_380_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  alt379_0:
    set_addr $I10, alt379_1
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx literal  "<<"
    add $I11, rx375_pos, 2
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I11, 2
    ne $S10, "<<", rx375_fail
    add rx375_pos, 2
    goto alt379_end
  alt379_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail
    sub $I11, rx375_pos, rx375_off
    ord $I11, rx375_tgt, $I11
    ne $I11, 171, rx375_fail
    add rx375_pos, 1
  alt379_end:
    set_addr $I10, rxcap_380_fail
    ($I12, $I11) = rx375_cur."!mark_peek"($I10)
    rx375_cur."!cursor_pos"($I11)
    ($P10) = rx375_cur."!cursor_start"()
    $P10."!cursor_pass"(rx375_pos, "")
    rx375_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_380_done
  rxcap_380_fail:
    goto rx375_fail
  rxcap_380_done:
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "metachar:sym<lwb>")
    if_null rx375_debug, debug_480
    rx375_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx375_pos)
  debug_480:
    .return (rx375_cur)
  rx375_restart:
.annotate 'line', 11
    if_null rx375_debug, debug_481
    rx375_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_481:
  rx375_fail:
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    if_null rx375_debug, debug_482
    rx375_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_482:
    .return (rx375_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :nsentry("!PREFIX__metachar:sym<lwb>") :subid("114_1304282272.255") :method
.annotate 'line', 11
    new $P377, "ResizablePMCArray"
    push $P377, unicode:"\x{ab}"
    push $P377, "<<"
    .return ($P377)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("115_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P382, "ResizablePMCArray"
    push $P382, unicode:"\x{ab}"
    push $P382, "<<"
    .return ($P382)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("116_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx384_tgt
    .local int rx384_pos
    .local int rx384_off
    .local int rx384_eos
    .local int rx384_rep
    .local pmc rx384_cur
    .local pmc rx384_debug
    (rx384_cur, rx384_pos, rx384_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx384_cur
    .local pmc match
    .lex "$/", match
    length rx384_eos, rx384_tgt
    gt rx384_pos, rx384_eos, rx384_done
    set rx384_off, 0
    lt rx384_pos, 2, rx384_start
    sub rx384_off, rx384_pos, 1
    substr rx384_tgt, rx384_tgt, rx384_off
  rx384_start:
    eq $I10, 1, rx384_restart
    if_null rx384_debug, debug_483
    rx384_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_483:
    $I10 = self.'from'()
    ne $I10, -1, rxscan387_done
    goto rxscan387_scan
  rxscan387_loop:
    (rx384_pos) = rx384_cur."from"()
    inc rx384_pos
    rx384_cur."!cursor_from"(rx384_pos)
    ge rx384_pos, rx384_eos, rxscan387_done
  rxscan387_scan:
    set_addr $I10, rxscan387_loop
    rx384_cur."!mark_push"(0, rx384_pos, $I10)
  rxscan387_done:
.annotate 'line', 107
  # rx subcapture "sym"
    set_addr $I10, rxcap_389_fail
    rx384_cur."!mark_push"(0, rx384_pos, $I10)
  alt388_0:
    set_addr $I10, alt388_1
    rx384_cur."!mark_push"(0, rx384_pos, $I10)
  # rx literal  ">>"
    add $I11, rx384_pos, 2
    gt $I11, rx384_eos, rx384_fail
    sub $I11, rx384_pos, rx384_off
    substr $S10, rx384_tgt, $I11, 2
    ne $S10, ">>", rx384_fail
    add rx384_pos, 2
    goto alt388_end
  alt388_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx384_pos, 1
    gt $I11, rx384_eos, rx384_fail
    sub $I11, rx384_pos, rx384_off
    ord $I11, rx384_tgt, $I11
    ne $I11, 187, rx384_fail
    add rx384_pos, 1
  alt388_end:
    set_addr $I10, rxcap_389_fail
    ($I12, $I11) = rx384_cur."!mark_peek"($I10)
    rx384_cur."!cursor_pos"($I11)
    ($P10) = rx384_cur."!cursor_start"()
    $P10."!cursor_pass"(rx384_pos, "")
    rx384_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_389_done
  rxcap_389_fail:
    goto rx384_fail
  rxcap_389_done:
  # rx pass
    rx384_cur."!cursor_pass"(rx384_pos, "metachar:sym<rwb>")
    if_null rx384_debug, debug_484
    rx384_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx384_pos)
  debug_484:
    .return (rx384_cur)
  rx384_restart:
.annotate 'line', 11
    if_null rx384_debug, debug_485
    rx384_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_485:
  rx384_fail:
    (rx384_rep, rx384_pos, $I10, $P10) = rx384_cur."!mark_fail"(0)
    lt rx384_pos, -1, rx384_done
    eq rx384_pos, -1, rx384_fail
    jump $I10
  rx384_done:
    rx384_cur."!cursor_fail"()
    if_null rx384_debug, debug_486
    rx384_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_486:
    .return (rx384_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :nsentry("!PREFIX__metachar:sym<rwb>") :subid("117_1304282272.255") :method
.annotate 'line', 11
    new $P386, "ResizablePMCArray"
    push $P386, unicode:"\x{bb}"
    push $P386, ">>"
    .return ($P386)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("118_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P391, "ResizablePMCArray"
    push $P391, unicode:"\x{bb}"
    push $P391, ">>"
    .return ($P391)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("119_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    .local pmc rx393_debug
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    gt rx393_pos, rx393_eos, rx393_done
    set rx393_off, 0
    lt rx393_pos, 2, rx393_start
    sub rx393_off, rx393_pos, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
    eq $I10, 1, rx393_restart
    if_null rx393_debug, debug_487
    rx393_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_487:
    $I10 = self.'from'()
    ne $I10, -1, rxscan397_done
    goto rxscan397_scan
  rxscan397_loop:
    (rx393_pos) = rx393_cur."from"()
    inc rx393_pos
    rx393_cur."!cursor_from"(rx393_pos)
    ge rx393_pos, rx393_eos, rxscan397_done
  rxscan397_scan:
    set_addr $I10, rxscan397_loop
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  rxscan397_done:
.annotate 'line', 108
  # rx literal  "\\"
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    ord $I11, rx393_tgt, $I11
    ne $I11, 92, rx393_fail
    add rx393_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."backslash"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx393_pos = $P10."pos"()
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "metachar:sym<bs>")
    if_null rx393_debug, debug_488
    rx393_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx393_pos)
  debug_488:
    .return (rx393_cur)
  rx393_restart:
.annotate 'line', 11
    if_null rx393_debug, debug_489
    rx393_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_489:
  rx393_fail:
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    if_null rx393_debug, debug_490
    rx393_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_490:
    .return (rx393_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :nsentry("!PREFIX__metachar:sym<bs>") :subid("120_1304282272.255") :method
.annotate 'line', 11
    $P395 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P396, "ResizablePMCArray"
    push $P396, $P395
    .return ($P396)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("121_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P399 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P400, "ResizablePMCArray"
    push $P400, $P399
    .return ($P400)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("122_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx402_tgt
    .local int rx402_pos
    .local int rx402_off
    .local int rx402_eos
    .local int rx402_rep
    .local pmc rx402_cur
    .local pmc rx402_debug
    (rx402_cur, rx402_pos, rx402_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx402_cur
    .local pmc match
    .lex "$/", match
    length rx402_eos, rx402_tgt
    gt rx402_pos, rx402_eos, rx402_done
    set rx402_off, 0
    lt rx402_pos, 2, rx402_start
    sub rx402_off, rx402_pos, 1
    substr rx402_tgt, rx402_tgt, rx402_off
  rx402_start:
    eq $I10, 1, rx402_restart
    if_null rx402_debug, debug_491
    rx402_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_491:
    $I10 = self.'from'()
    ne $I10, -1, rxscan406_done
    goto rxscan406_scan
  rxscan406_loop:
    (rx402_pos) = rx402_cur."from"()
    inc rx402_pos
    rx402_cur."!cursor_from"(rx402_pos)
    ge rx402_pos, rx402_eos, rxscan406_done
  rxscan406_scan:
    set_addr $I10, rxscan406_loop
    rx402_cur."!mark_push"(0, rx402_pos, $I10)
  rxscan406_done:
.annotate 'line', 109
  # rx subrule "mod_internal" subtype=capture negate=
    rx402_cur."!cursor_pos"(rx402_pos)
    $P10 = rx402_cur."mod_internal"()
    unless $P10, rx402_fail
    rx402_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx402_pos = $P10."pos"()
  # rx pass
    rx402_cur."!cursor_pass"(rx402_pos, "metachar:sym<mod>")
    if_null rx402_debug, debug_492
    rx402_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx402_pos)
  debug_492:
    .return (rx402_cur)
  rx402_restart:
.annotate 'line', 11
    if_null rx402_debug, debug_493
    rx402_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_493:
  rx402_fail:
    (rx402_rep, rx402_pos, $I10, $P10) = rx402_cur."!mark_fail"(0)
    lt rx402_pos, -1, rx402_done
    eq rx402_pos, -1, rx402_fail
    jump $I10
  rx402_done:
    rx402_cur."!cursor_fail"()
    if_null rx402_debug, debug_494
    rx402_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_494:
    .return (rx402_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :nsentry("!PREFIX__metachar:sym<mod>") :subid("123_1304282272.255") :method
.annotate 'line', 11
    $P404 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P405, "ResizablePMCArray"
    push $P405, $P404
    .return ($P405)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("124_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P408 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P409, "ResizablePMCArray"
    push $P409, $P408
    .return ($P409)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("125_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx411_tgt
    .local int rx411_pos
    .local int rx411_off
    .local int rx411_eos
    .local int rx411_rep
    .local pmc rx411_cur
    .local pmc rx411_debug
    (rx411_cur, rx411_pos, rx411_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx411_cur
    .local pmc match
    .lex "$/", match
    length rx411_eos, rx411_tgt
    gt rx411_pos, rx411_eos, rx411_done
    set rx411_off, 0
    lt rx411_pos, 2, rx411_start
    sub rx411_off, rx411_pos, 1
    substr rx411_tgt, rx411_tgt, rx411_off
  rx411_start:
    eq $I10, 1, rx411_restart
    if_null rx411_debug, debug_495
    rx411_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_495:
    $I10 = self.'from'()
    ne $I10, -1, rxscan415_done
    goto rxscan415_scan
  rxscan415_loop:
    (rx411_pos) = rx411_cur."from"()
    inc rx411_pos
    rx411_cur."!cursor_from"(rx411_pos)
    ge rx411_pos, rx411_eos, rxscan415_done
  rxscan415_scan:
    set_addr $I10, rxscan415_loop
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  rxscan415_done:
.annotate 'line', 111
  # rx subrule "quantifier" subtype=capture negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    $P10 = rx411_cur."quantifier"()
    unless $P10, rx411_fail
    rx411_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx411_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx411_cur."!cursor_pos"(rx411_pos)
    $P10 = rx411_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx411_fail
    rx411_pos = $P10."pos"()
.annotate 'line', 110
  # rx pass
    rx411_cur."!cursor_pass"(rx411_pos, "metachar:sym<quantifier>")
    if_null rx411_debug, debug_496
    rx411_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx411_pos)
  debug_496:
    .return (rx411_cur)
  rx411_restart:
.annotate 'line', 11
    if_null rx411_debug, debug_497
    rx411_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_497:
  rx411_fail:
    (rx411_rep, rx411_pos, $I10, $P10) = rx411_cur."!mark_fail"(0)
    lt rx411_pos, -1, rx411_done
    eq rx411_pos, -1, rx411_fail
    jump $I10
  rx411_done:
    rx411_cur."!cursor_fail"()
    if_null rx411_debug, debug_498
    rx411_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_498:
    .return (rx411_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :nsentry("!PREFIX__metachar:sym<quantifier>") :subid("126_1304282272.255") :method
.annotate 'line', 11
    $P413 = self."!PREFIX__!subrule"("quantifier", "")
    new $P414, "ResizablePMCArray"
    push $P414, $P413
    .return ($P414)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :subid("127_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P417 = self."!PREFIX__!subrule"("quantifier", "")
    new $P418, "ResizablePMCArray"
    push $P418, $P417
    .return ($P418)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("128_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx420_tgt
    .local int rx420_pos
    .local int rx420_off
    .local int rx420_eos
    .local int rx420_rep
    .local pmc rx420_cur
    .local pmc rx420_debug
    (rx420_cur, rx420_pos, rx420_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx420_cur
    .local pmc match
    .lex "$/", match
    length rx420_eos, rx420_tgt
    gt rx420_pos, rx420_eos, rx420_done
    set rx420_off, 0
    lt rx420_pos, 2, rx420_start
    sub rx420_off, rx420_pos, 1
    substr rx420_tgt, rx420_tgt, rx420_off
  rx420_start:
    eq $I10, 1, rx420_restart
    if_null rx420_debug, debug_499
    rx420_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_499:
    $I10 = self.'from'()
    ne $I10, -1, rxscan424_done
    goto rxscan424_scan
  rxscan424_loop:
    (rx420_pos) = rx420_cur."from"()
    inc rx420_pos
    rx420_cur."!cursor_from"(rx420_pos)
    ge rx420_pos, rx420_eos, rxscan424_done
  rxscan424_scan:
    set_addr $I10, rxscan424_loop
    rx420_cur."!mark_push"(0, rx420_pos, $I10)
  rxscan424_done:
.annotate 'line', 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_425_fail
    rx420_cur."!mark_push"(0, rx420_pos, $I10)
  # rx literal  "~"
    add $I11, rx420_pos, 1
    gt $I11, rx420_eos, rx420_fail
    sub $I11, rx420_pos, rx420_off
    ord $I11, rx420_tgt, $I11
    ne $I11, 126, rx420_fail
    add rx420_pos, 1
    set_addr $I10, rxcap_425_fail
    ($I12, $I11) = rx420_cur."!mark_peek"($I10)
    rx420_cur."!cursor_pos"($I11)
    ($P10) = rx420_cur."!cursor_start"()
    $P10."!cursor_pass"(rx420_pos, "")
    rx420_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_425_done
  rxcap_425_fail:
    goto rx420_fail
  rxcap_425_done:
.annotate 'line', 117
  # rx subrule "ws" subtype=method negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."ws"()
    unless $P10, rx420_fail
    rx420_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."quantified_atom"()
    unless $P10, rx420_fail
    rx420_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx420_pos = $P10."pos"()
.annotate 'line', 118
  # rx subrule "ws" subtype=method negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."ws"()
    unless $P10, rx420_fail
    rx420_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."quantified_atom"()
    unless $P10, rx420_fail
    rx420_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx420_pos = $P10."pos"()
.annotate 'line', 115
  # rx pass
    rx420_cur."!cursor_pass"(rx420_pos, "metachar:sym<~>")
    if_null rx420_debug, debug_500
    rx420_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx420_pos)
  debug_500:
    .return (rx420_cur)
  rx420_restart:
.annotate 'line', 11
    if_null rx420_debug, debug_501
    rx420_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_501:
  rx420_fail:
    (rx420_rep, rx420_pos, $I10, $P10) = rx420_cur."!mark_fail"(0)
    lt rx420_pos, -1, rx420_done
    eq rx420_pos, -1, rx420_fail
    jump $I10
  rx420_done:
    rx420_cur."!cursor_fail"()
    if_null rx420_debug, debug_502
    rx420_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_502:
    .return (rx420_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :nsentry("!PREFIX__metachar:sym<~>") :subid("129_1304282272.255") :method
.annotate 'line', 11
    $P422 = self."!PREFIX__!subrule"("ws", "~")
    new $P423, "ResizablePMCArray"
    push $P423, $P422
    .return ($P423)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("130_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P427 = self."!PREFIX__!subrule"("ws", "~")
    new $P428, "ResizablePMCArray"
    push $P428, $P427
    .return ($P428)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("131_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_debug
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    rx430_cur."!cursor_caparray"("key")
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
    if_null rx430_debug, debug_503
    rx430_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_503:
    $I10 = self.'from'()
    ne $I10, -1, rxscan433_done
    goto rxscan433_scan
  rxscan433_loop:
    (rx430_pos) = rx430_cur."from"()
    inc rx430_pos
    rx430_cur."!cursor_from"(rx430_pos)
    ge rx430_pos, rx430_eos, rxscan433_done
  rxscan433_scan:
    set_addr $I10, rxscan433_loop
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxscan433_done:
.annotate 'line', 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_434_fail
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx430_pos, 3
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I11, 3
    ne $S10, "{*}", rx430_fail
    add rx430_pos, 3
    set_addr $I10, rxcap_434_fail
    ($I12, $I11) = rx430_cur."!mark_peek"($I10)
    rx430_cur."!cursor_pos"($I11)
    ($P10) = rx430_cur."!cursor_start"()
    $P10."!cursor_pass"(rx430_pos, "")
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_434_done
  rxcap_434_fail:
    goto rx430_fail
  rxcap_434_done:
.annotate 'line', 123
  # rx rxquantr435 ** 0..1
    set_addr $I10, rxquantr435_done
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxquantr435_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx430_pos, rx430_off
    set rx430_rep, 0
    sub $I12, rx430_eos, rx430_pos
  rxenumcharlistq436_loop:
    le $I12, 0, rxenumcharlistq436_done
    substr $S10, rx430_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq436_done
    inc rx430_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq436_loop
  rxenumcharlistq436_done:
    add rx430_pos, rx430_pos, rx430_rep
  # rx literal  "#= "
    add $I11, rx430_pos, 3
    gt $I11, rx430_eos, rx430_fail
    sub $I11, rx430_pos, rx430_off
    substr $S10, rx430_tgt, $I11, 3
    ne $S10, "#= ", rx430_fail
    add rx430_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx430_pos, rx430_off
    set rx430_rep, 0
    sub $I12, rx430_eos, rx430_pos
  rxenumcharlistq437_loop:
    le $I12, 0, rxenumcharlistq437_done
    substr $S10, rx430_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq437_done
    inc rx430_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq437_loop
  rxenumcharlistq437_done:
    add rx430_pos, rx430_pos, rx430_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_440_fail
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx430_pos, rx430_off
    find_cclass $I11, 32, rx430_tgt, $I10, rx430_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx430_fail
    add rx430_pos, rx430_off, $I11
  # rx rxquantr438 ** 0..*
    set_addr $I10, rxquantr438_done
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxquantr438_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx430_pos, rx430_off
    set rx430_rep, 0
    sub $I12, rx430_eos, rx430_pos
  rxenumcharlistq439_loop:
    le $I12, 0, rxenumcharlistq439_done
    substr $S10, rx430_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq439_done
    inc rx430_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq439_loop
  rxenumcharlistq439_done:
    lt rx430_rep, 1, rx430_fail
    add rx430_pos, rx430_pos, rx430_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx430_pos, rx430_off
    find_cclass $I11, 32, rx430_tgt, $I10, rx430_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx430_fail
    add rx430_pos, rx430_off, $I11
    set_addr $I10, rxquantr438_done
    (rx430_rep) = rx430_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr438_done
    rx430_cur."!mark_push"(rx430_rep, rx430_pos, $I10)
    goto rxquantr438_loop
  rxquantr438_done:
    set_addr $I10, rxcap_440_fail
    ($I12, $I11) = rx430_cur."!mark_peek"($I10)
    rx430_cur."!cursor_pos"($I11)
    ($P10) = rx430_cur."!cursor_start"()
    $P10."!cursor_pass"(rx430_pos, "")
    rx430_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_440_done
  rxcap_440_fail:
    goto rx430_fail
  rxcap_440_done:
    set_addr $I10, rxquantr435_done
    (rx430_rep) = rx430_cur."!mark_commit"($I10)
  rxquantr435_done:
.annotate 'line', 121
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "metachar:sym<{*}>")
    if_null rx430_debug, debug_504
    rx430_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx430_pos)
  debug_504:
    .return (rx430_cur)
  rx430_restart:
.annotate 'line', 11
    if_null rx430_debug, debug_505
    rx430_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_505:
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    if_null rx430_debug, debug_506
    rx430_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_506:
    .return (rx430_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :nsentry("!PREFIX__metachar:sym<{*}>") :subid("132_1304282272.255") :method
.annotate 'line', 11
    new $P432, "ResizablePMCArray"
    push $P432, "{*}"
    .return ($P432)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("133_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P442, "ResizablePMCArray"
    push $P442, "{*}"
    .return ($P442)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("134_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx444_tgt
    .local int rx444_pos
    .local int rx444_off
    .local int rx444_eos
    .local int rx444_rep
    .local pmc rx444_cur
    .local pmc rx444_debug
    (rx444_cur, rx444_pos, rx444_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx444_cur
    .local pmc match
    .lex "$/", match
    length rx444_eos, rx444_tgt
    gt rx444_pos, rx444_eos, rx444_done
    set rx444_off, 0
    lt rx444_pos, 2, rx444_start
    sub rx444_off, rx444_pos, 1
    substr rx444_tgt, rx444_tgt, rx444_off
  rx444_start:
    eq $I10, 1, rx444_restart
    if_null rx444_debug, debug_507
    rx444_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_507:
    $I10 = self.'from'()
    ne $I10, -1, rxscan448_done
    goto rxscan448_scan
  rxscan448_loop:
    (rx444_pos) = rx444_cur."from"()
    inc rx444_pos
    rx444_cur."!cursor_from"(rx444_pos)
    ge rx444_pos, rx444_eos, rxscan448_done
  rxscan448_scan:
    set_addr $I10, rxscan448_loop
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  rxscan448_done:
.annotate 'line', 126
  # rx literal  "<"
    add $I11, rx444_pos, 1
    gt $I11, rx444_eos, rx444_fail
    sub $I11, rx444_pos, rx444_off
    ord $I11, rx444_tgt, $I11
    ne $I11, 60, rx444_fail
    add rx444_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."assertion"()
    unless $P10, rx444_fail
    rx444_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx444_pos = $P10."pos"()
  alt449_0:
.annotate 'line', 127
    set_addr $I10, alt449_1
    rx444_cur."!mark_push"(0, rx444_pos, $I10)
  # rx literal  ">"
    add $I11, rx444_pos, 1
    gt $I11, rx444_eos, rx444_fail
    sub $I11, rx444_pos, rx444_off
    ord $I11, rx444_tgt, $I11
    ne $I11, 62, rx444_fail
    add rx444_pos, 1
    goto alt449_end
  alt449_1:
  # rx subrule "panic" subtype=method negate=
    rx444_cur."!cursor_pos"(rx444_pos)
    $P10 = rx444_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx444_fail
    rx444_pos = $P10."pos"()
  alt449_end:
.annotate 'line', 125
  # rx pass
    rx444_cur."!cursor_pass"(rx444_pos, "metachar:sym<assert>")
    if_null rx444_debug, debug_508
    rx444_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx444_pos)
  debug_508:
    .return (rx444_cur)
  rx444_restart:
.annotate 'line', 11
    if_null rx444_debug, debug_509
    rx444_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_509:
  rx444_fail:
    (rx444_rep, rx444_pos, $I10, $P10) = rx444_cur."!mark_fail"(0)
    lt rx444_pos, -1, rx444_done
    eq rx444_pos, -1, rx444_fail
    jump $I10
  rx444_done:
    rx444_cur."!cursor_fail"()
    if_null rx444_debug, debug_510
    rx444_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_510:
    .return (rx444_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :nsentry("!PREFIX__metachar:sym<assert>") :subid("135_1304282272.255") :method
.annotate 'line', 11
    $P446 = self."!PREFIX__!subrule"("assertion", "<")
    new $P447, "ResizablePMCArray"
    push $P447, $P446
    .return ($P447)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("136_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P451 = self."!PREFIX__!subrule"("assertion", "<")
    new $P452, "ResizablePMCArray"
    push $P452, $P451
    .return ($P452)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("137_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx454_tgt
    .local int rx454_pos
    .local int rx454_off
    .local int rx454_eos
    .local int rx454_rep
    .local pmc rx454_cur
    .local pmc rx454_debug
    (rx454_cur, rx454_pos, rx454_tgt, $I10) = self."!cursor_start"()
    rx454_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx454_cur
    .local pmc match
    .lex "$/", match
    length rx454_eos, rx454_tgt
    gt rx454_pos, rx454_eos, rx454_done
    set rx454_off, 0
    lt rx454_pos, 2, rx454_start
    sub rx454_off, rx454_pos, 1
    substr rx454_tgt, rx454_tgt, rx454_off
  rx454_start:
    eq $I10, 1, rx454_restart
    if_null rx454_debug, debug_511
    rx454_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_511:
    $I10 = self.'from'()
    ne $I10, -1, rxscan457_done
    goto rxscan457_scan
  rxscan457_loop:
    (rx454_pos) = rx454_cur."from"()
    inc rx454_pos
    rx454_cur."!cursor_from"(rx454_pos)
    ge rx454_pos, rx454_eos, rxscan457_done
  rxscan457_scan:
    set_addr $I10, rxscan457_loop
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  rxscan457_done:
  alt458_0:
.annotate 'line', 131
    set_addr $I10, alt458_1
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
.annotate 'line', 132
  # rx literal  "$<"
    add $I11, rx454_pos, 2
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    substr $S10, rx454_tgt, $I11, 2
    ne $S10, "$<", rx454_fail
    add rx454_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_460_fail
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx454_pos, rx454_off
    set rx454_rep, 0
    sub $I12, rx454_eos, rx454_pos
  rxenumcharlistq459_loop:
    le $I12, 0, rxenumcharlistq459_done
    substr $S10, rx454_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq459_done
    inc rx454_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq459_loop
  rxenumcharlistq459_done:
    lt rx454_rep, 1, rx454_fail
    add rx454_pos, rx454_pos, rx454_rep
    set_addr $I10, rxcap_460_fail
    ($I12, $I11) = rx454_cur."!mark_peek"($I10)
    rx454_cur."!cursor_pos"($I11)
    ($P10) = rx454_cur."!cursor_start"()
    $P10."!cursor_pass"(rx454_pos, "")
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_460_done
  rxcap_460_fail:
    goto rx454_fail
  rxcap_460_done:
  # rx literal  ">"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    ord $I11, rx454_tgt, $I11
    ne $I11, 62, rx454_fail
    add rx454_pos, 1
    goto alt458_end
  alt458_1:
.annotate 'line', 133
  # rx literal  "$"
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    ord $I11, rx454_tgt, $I11
    ne $I11, 36, rx454_fail
    add rx454_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_461_fail
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx454_pos, rx454_off
    find_not_cclass $I11, 8, rx454_tgt, $I10, rx454_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx454_fail
    add rx454_pos, rx454_off, $I11
    set_addr $I10, rxcap_461_fail
    ($I12, $I11) = rx454_cur."!mark_peek"($I10)
    rx454_cur."!cursor_pos"($I11)
    ($P10) = rx454_cur."!cursor_start"()
    $P10."!cursor_pass"(rx454_pos, "")
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_461_done
  rxcap_461_fail:
    goto rx454_fail
  rxcap_461_done:
  alt458_end:
.annotate 'line', 136
  # rx rxquantr462 ** 0..1
    set_addr $I10, rxquantr462_done
    rx454_cur."!mark_push"(0, rx454_pos, $I10)
  rxquantr462_loop:
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx454_pos, 1
    gt $I11, rx454_eos, rx454_fail
    sub $I11, rx454_pos, rx454_off
    ord $I11, rx454_tgt, $I11
    ne $I11, 61, rx454_fail
    add rx454_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."ws"()
    unless $P10, rx454_fail
    rx454_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx454_cur."!cursor_pos"(rx454_pos)
    $P10 = rx454_cur."quantified_atom"()
    unless $P10, rx454_fail
    rx454_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx454_pos = $P10."pos"()
    set_addr $I10, rxquantr462_done
    (rx454_rep) = rx454_cur."!mark_commit"($I10)
  rxquantr462_done:
.annotate 'line', 130
  # rx pass
    rx454_cur."!cursor_pass"(rx454_pos, "metachar:sym<var>")
    if_null rx454_debug, debug_512
    rx454_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx454_pos)
  debug_512:
    .return (rx454_cur)
  rx454_restart:
.annotate 'line', 11
    if_null rx454_debug, debug_513
    rx454_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_513:
  rx454_fail:
    (rx454_rep, rx454_pos, $I10, $P10) = rx454_cur."!mark_fail"(0)
    lt rx454_pos, -1, rx454_done
    eq rx454_pos, -1, rx454_fail
    jump $I10
  rx454_done:
    rx454_cur."!cursor_fail"()
    if_null rx454_debug, debug_514
    rx454_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_514:
    .return (rx454_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :nsentry("!PREFIX__metachar:sym<var>") :subid("138_1304282272.255") :method
.annotate 'line', 11
    new $P456, "ResizablePMCArray"
    push $P456, "$"
    push $P456, "$<"
    .return ($P456)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("139_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P464, "ResizablePMCArray"
    push $P464, "$"
    push $P464, "$<"
    .return ($P464)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("140_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx466_tgt
    .local int rx466_pos
    .local int rx466_off
    .local int rx466_eos
    .local int rx466_rep
    .local pmc rx466_cur
    .local pmc rx466_debug
    (rx466_cur, rx466_pos, rx466_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx466_cur
    .local pmc match
    .lex "$/", match
    length rx466_eos, rx466_tgt
    gt rx466_pos, rx466_eos, rx466_done
    set rx466_off, 0
    lt rx466_pos, 2, rx466_start
    sub rx466_off, rx466_pos, 1
    substr rx466_tgt, rx466_tgt, rx466_off
  rx466_start:
    eq $I10, 1, rx466_restart
    if_null rx466_debug, debug_515
    rx466_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_515:
    $I10 = self.'from'()
    ne $I10, -1, rxscan469_done
    goto rxscan469_scan
  rxscan469_loop:
    (rx466_pos) = rx466_cur."from"()
    inc rx466_pos
    rx466_cur."!cursor_from"(rx466_pos)
    ge rx466_pos, rx466_eos, rxscan469_done
  rxscan469_scan:
    set_addr $I10, rxscan469_loop
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
  rxscan469_done:
.annotate 'line', 140
  # rx literal  ":PIR{{"
    add $I11, rx466_pos, 6
    gt $I11, rx466_eos, rx466_fail
    sub $I11, rx466_pos, rx466_off
    substr $S10, rx466_tgt, $I11, 6
    ne $S10, ":PIR{{", rx466_fail
    add rx466_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_472_fail
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
  # rx rxquantf470 ** 0..*
    set_addr $I10, rxquantf470_loop
    rx466_cur."!mark_push"(0, rx466_pos, $I10)
    goto rxquantf470_done
  rxquantf470_loop:
  # rx charclass .
    ge rx466_pos, rx466_eos, rx466_fail
    inc rx466_pos
    set_addr $I10, rxquantf470_loop
    rx466_cur."!mark_push"(rx466_rep, rx466_pos, $I10)
  rxquantf470_done:
    set_addr $I10, rxcap_472_fail
    ($I12, $I11) = rx466_cur."!mark_peek"($I10)
    rx466_cur."!cursor_pos"($I11)
    ($P10) = rx466_cur."!cursor_start"()
    $P10."!cursor_pass"(rx466_pos, "")
    rx466_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_472_done
  rxcap_472_fail:
    goto rx466_fail
  rxcap_472_done:
  # rx literal  "}}"
    add $I11, rx466_pos, 2
    gt $I11, rx466_eos, rx466_fail
    sub $I11, rx466_pos, rx466_off
    substr $S10, rx466_tgt, $I11, 2
    ne $S10, "}}", rx466_fail
    add rx466_pos, 2
.annotate 'line', 139
  # rx pass
    rx466_cur."!cursor_pass"(rx466_pos, "metachar:sym<PIR>")
    if_null rx466_debug, debug_516
    rx466_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx466_pos)
  debug_516:
    .return (rx466_cur)
  rx466_restart:
.annotate 'line', 11
    if_null rx466_debug, debug_517
    rx466_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_517:
  rx466_fail:
    (rx466_rep, rx466_pos, $I10, $P10) = rx466_cur."!mark_fail"(0)
    lt rx466_pos, -1, rx466_done
    eq rx466_pos, -1, rx466_fail
    jump $I10
  rx466_done:
    rx466_cur."!cursor_fail"()
    if_null rx466_debug, debug_518
    rx466_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_518:
    .return (rx466_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :nsentry("!PREFIX__metachar:sym<PIR>") :subid("141_1304282272.255") :method
.annotate 'line', 11
    new $P468, "ResizablePMCArray"
    push $P468, ":PIR{{"
    .return ($P468)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("142_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P474, "ResizablePMCArray"
    push $P474, ":PIR{{"
    .return ($P474)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("143_1304282272.255")
    .param pmc param_476
.annotate 'line', 143
    .lex "self", param_476
    $P477 = param_476."!protoregex"("backslash")
    .return ($P477)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("144_1304282272.255")
    .param pmc param_479
.annotate 'line', 143
    .lex "self", param_479
    $P480 = param_479."!PREFIX__!protoregex"("backslash")
    .return ($P480)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("145_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx482_tgt
    .local int rx482_pos
    .local int rx482_off
    .local int rx482_eos
    .local int rx482_rep
    .local pmc rx482_cur
    .local pmc rx482_debug
    (rx482_cur, rx482_pos, rx482_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx482_cur
    .local pmc match
    .lex "$/", match
    length rx482_eos, rx482_tgt
    gt rx482_pos, rx482_eos, rx482_done
    set rx482_off, 0
    lt rx482_pos, 2, rx482_start
    sub rx482_off, rx482_pos, 1
    substr rx482_tgt, rx482_tgt, rx482_off
  rx482_start:
    eq $I10, 1, rx482_restart
    if_null rx482_debug, debug_519
    rx482_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_519:
    $I10 = self.'from'()
    ne $I10, -1, rxscan485_done
    goto rxscan485_scan
  rxscan485_loop:
    (rx482_pos) = rx482_cur."from"()
    inc rx482_pos
    rx482_cur."!cursor_from"(rx482_pos)
    ge rx482_pos, rx482_eos, rxscan485_done
  rxscan485_scan:
    set_addr $I10, rxscan485_loop
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  rxscan485_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_486_fail
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx482_pos, rx482_eos, rx482_fail
    sub $I10, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx482_fail
    inc rx482_pos
    set_addr $I10, rxcap_486_fail
    ($I12, $I11) = rx482_cur."!mark_peek"($I10)
    rx482_cur."!cursor_pos"($I11)
    ($P10) = rx482_cur."!cursor_start"()
    $P10."!cursor_pass"(rx482_pos, "")
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_486_done
  rxcap_486_fail:
    goto rx482_fail
  rxcap_486_done:
  # rx pass
    rx482_cur."!cursor_pass"(rx482_pos, "backslash:sym<w>")
    if_null rx482_debug, debug_520
    rx482_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx482_pos)
  debug_520:
    .return (rx482_cur)
  rx482_restart:
.annotate 'line', 11
    if_null rx482_debug, debug_521
    rx482_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_521:
  rx482_fail:
    (rx482_rep, rx482_pos, $I10, $P10) = rx482_cur."!mark_fail"(0)
    lt rx482_pos, -1, rx482_done
    eq rx482_pos, -1, rx482_fail
    jump $I10
  rx482_done:
    rx482_cur."!cursor_fail"()
    if_null rx482_debug, debug_522
    rx482_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_522:
    .return (rx482_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :nsentry("!PREFIX__backslash:sym<w>") :subid("146_1304282272.255") :method
.annotate 'line', 11
    new $P484, "ResizablePMCArray"
    push $P484, "N"
    push $P484, "W"
    push $P484, "S"
    push $P484, "D"
    push $P484, "n"
    push $P484, "w"
    push $P484, "s"
    push $P484, "d"
    .return ($P484)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("147_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P488, "ResizablePMCArray"
    push $P488, "d"
    push $P488, "s"
    push $P488, "w"
    push $P488, "n"
    push $P488, "D"
    push $P488, "S"
    push $P488, "W"
    push $P488, "N"
    .return ($P488)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("148_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx490_debug, debug_523
    rx490_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_523:
    $I10 = self.'from'()
    ne $I10, -1, rxscan493_done
    goto rxscan493_scan
  rxscan493_loop:
    (rx490_pos) = rx490_cur."from"()
    inc rx490_pos
    rx490_cur."!cursor_from"(rx490_pos)
    ge rx490_pos, rx490_eos, rxscan493_done
  rxscan493_scan:
    set_addr $I10, rxscan493_loop
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  rxscan493_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_494_fail
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx490_pos, rx490_eos, rx490_fail
    sub $I10, rx490_pos, rx490_off
    substr $S10, rx490_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx490_fail
    inc rx490_pos
    set_addr $I10, rxcap_494_fail
    ($I12, $I11) = rx490_cur."!mark_peek"($I10)
    rx490_cur."!cursor_pos"($I11)
    ($P10) = rx490_cur."!cursor_start"()
    $P10."!cursor_pass"(rx490_pos, "")
    rx490_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_494_done
  rxcap_494_fail:
    goto rx490_fail
  rxcap_494_done:
  # rx pass
    rx490_cur."!cursor_pass"(rx490_pos, "backslash:sym<b>")
    if_null rx490_debug, debug_524
    rx490_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx490_pos)
  debug_524:
    .return (rx490_cur)
  rx490_restart:
.annotate 'line', 11
    if_null rx490_debug, debug_525
    rx490_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_525:
  rx490_fail:
    (rx490_rep, rx490_pos, $I10, $P10) = rx490_cur."!mark_fail"(0)
    lt rx490_pos, -1, rx490_done
    eq rx490_pos, -1, rx490_fail
    jump $I10
  rx490_done:
    rx490_cur."!cursor_fail"()
    if_null rx490_debug, debug_526
    rx490_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_526:
    .return (rx490_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :nsentry("!PREFIX__backslash:sym<b>") :subid("149_1304282272.255") :method
.annotate 'line', 11
    new $P492, "ResizablePMCArray"
    push $P492, "B"
    push $P492, "b"
    .return ($P492)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("150_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P496, "ResizablePMCArray"
    push $P496, "b"
    push $P496, "B"
    .return ($P496)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("151_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx498_tgt
    .local int rx498_pos
    .local int rx498_off
    .local int rx498_eos
    .local int rx498_rep
    .local pmc rx498_cur
    .local pmc rx498_debug
    (rx498_cur, rx498_pos, rx498_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx498_cur
    .local pmc match
    .lex "$/", match
    length rx498_eos, rx498_tgt
    gt rx498_pos, rx498_eos, rx498_done
    set rx498_off, 0
    lt rx498_pos, 2, rx498_start
    sub rx498_off, rx498_pos, 1
    substr rx498_tgt, rx498_tgt, rx498_off
  rx498_start:
    eq $I10, 1, rx498_restart
    if_null rx498_debug, debug_527
    rx498_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_527:
    $I10 = self.'from'()
    ne $I10, -1, rxscan501_done
    goto rxscan501_scan
  rxscan501_loop:
    (rx498_pos) = rx498_cur."from"()
    inc rx498_pos
    rx498_cur."!cursor_from"(rx498_pos)
    ge rx498_pos, rx498_eos, rxscan501_done
  rxscan501_scan:
    set_addr $I10, rxscan501_loop
    rx498_cur."!mark_push"(0, rx498_pos, $I10)
  rxscan501_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_502_fail
    rx498_cur."!mark_push"(0, rx498_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx498_pos, rx498_eos, rx498_fail
    sub $I10, rx498_pos, rx498_off
    substr $S10, rx498_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx498_fail
    inc rx498_pos
    set_addr $I10, rxcap_502_fail
    ($I12, $I11) = rx498_cur."!mark_peek"($I10)
    rx498_cur."!cursor_pos"($I11)
    ($P10) = rx498_cur."!cursor_start"()
    $P10."!cursor_pass"(rx498_pos, "")
    rx498_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_502_done
  rxcap_502_fail:
    goto rx498_fail
  rxcap_502_done:
  # rx pass
    rx498_cur."!cursor_pass"(rx498_pos, "backslash:sym<e>")
    if_null rx498_debug, debug_528
    rx498_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx498_pos)
  debug_528:
    .return (rx498_cur)
  rx498_restart:
.annotate 'line', 11
    if_null rx498_debug, debug_529
    rx498_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_529:
  rx498_fail:
    (rx498_rep, rx498_pos, $I10, $P10) = rx498_cur."!mark_fail"(0)
    lt rx498_pos, -1, rx498_done
    eq rx498_pos, -1, rx498_fail
    jump $I10
  rx498_done:
    rx498_cur."!cursor_fail"()
    if_null rx498_debug, debug_530
    rx498_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_530:
    .return (rx498_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :nsentry("!PREFIX__backslash:sym<e>") :subid("152_1304282272.255") :method
.annotate 'line', 11
    new $P500, "ResizablePMCArray"
    push $P500, "E"
    push $P500, "e"
    .return ($P500)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("153_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P504, "ResizablePMCArray"
    push $P504, "e"
    push $P504, "E"
    .return ($P504)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("154_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx506_debug, debug_531
    rx506_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_531:
    $I10 = self.'from'()
    ne $I10, -1, rxscan509_done
    goto rxscan509_scan
  rxscan509_loop:
    (rx506_pos) = rx506_cur."from"()
    inc rx506_pos
    rx506_cur."!cursor_from"(rx506_pos)
    ge rx506_pos, rx506_eos, rxscan509_done
  rxscan509_scan:
    set_addr $I10, rxscan509_loop
    rx506_cur."!mark_push"(0, rx506_pos, $I10)
  rxscan509_done:
.annotate 'line', 147
  # rx subcapture "sym"
    set_addr $I10, rxcap_510_fail
    rx506_cur."!mark_push"(0, rx506_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx506_pos, rx506_eos, rx506_fail
    sub $I10, rx506_pos, rx506_off
    substr $S10, rx506_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx506_fail
    inc rx506_pos
    set_addr $I10, rxcap_510_fail
    ($I12, $I11) = rx506_cur."!mark_peek"($I10)
    rx506_cur."!cursor_pos"($I11)
    ($P10) = rx506_cur."!cursor_start"()
    $P10."!cursor_pass"(rx506_pos, "")
    rx506_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_510_done
  rxcap_510_fail:
    goto rx506_fail
  rxcap_510_done:
  # rx pass
    rx506_cur."!cursor_pass"(rx506_pos, "backslash:sym<f>")
    if_null rx506_debug, debug_532
    rx506_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx506_pos)
  debug_532:
    .return (rx506_cur)
  rx506_restart:
.annotate 'line', 11
    if_null rx506_debug, debug_533
    rx506_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_533:
  rx506_fail:
    (rx506_rep, rx506_pos, $I10, $P10) = rx506_cur."!mark_fail"(0)
    lt rx506_pos, -1, rx506_done
    eq rx506_pos, -1, rx506_fail
    jump $I10
  rx506_done:
    rx506_cur."!cursor_fail"()
    if_null rx506_debug, debug_534
    rx506_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_534:
    .return (rx506_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :nsentry("!PREFIX__backslash:sym<f>") :subid("155_1304282272.255") :method
.annotate 'line', 11
    new $P508, "ResizablePMCArray"
    push $P508, "F"
    push $P508, "f"
    .return ($P508)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("156_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P512, "ResizablePMCArray"
    push $P512, "f"
    push $P512, "F"
    .return ($P512)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("157_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx514_tgt
    .local int rx514_pos
    .local int rx514_off
    .local int rx514_eos
    .local int rx514_rep
    .local pmc rx514_cur
    .local pmc rx514_debug
    (rx514_cur, rx514_pos, rx514_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx514_cur
    .local pmc match
    .lex "$/", match
    length rx514_eos, rx514_tgt
    gt rx514_pos, rx514_eos, rx514_done
    set rx514_off, 0
    lt rx514_pos, 2, rx514_start
    sub rx514_off, rx514_pos, 1
    substr rx514_tgt, rx514_tgt, rx514_off
  rx514_start:
    eq $I10, 1, rx514_restart
    if_null rx514_debug, debug_535
    rx514_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_535:
    $I10 = self.'from'()
    ne $I10, -1, rxscan517_done
    goto rxscan517_scan
  rxscan517_loop:
    (rx514_pos) = rx514_cur."from"()
    inc rx514_pos
    rx514_cur."!cursor_from"(rx514_pos)
    ge rx514_pos, rx514_eos, rxscan517_done
  rxscan517_scan:
    set_addr $I10, rxscan517_loop
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  rxscan517_done:
.annotate 'line', 148
  # rx subcapture "sym"
    set_addr $I10, rxcap_518_fail
    rx514_cur."!mark_push"(0, rx514_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx514_pos, rx514_eos, rx514_fail
    sub $I10, rx514_pos, rx514_off
    substr $S10, rx514_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx514_fail
    inc rx514_pos
    set_addr $I10, rxcap_518_fail
    ($I12, $I11) = rx514_cur."!mark_peek"($I10)
    rx514_cur."!cursor_pos"($I11)
    ($P10) = rx514_cur."!cursor_start"()
    $P10."!cursor_pass"(rx514_pos, "")
    rx514_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_518_done
  rxcap_518_fail:
    goto rx514_fail
  rxcap_518_done:
  # rx pass
    rx514_cur."!cursor_pass"(rx514_pos, "backslash:sym<h>")
    if_null rx514_debug, debug_536
    rx514_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx514_pos)
  debug_536:
    .return (rx514_cur)
  rx514_restart:
.annotate 'line', 11
    if_null rx514_debug, debug_537
    rx514_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_537:
  rx514_fail:
    (rx514_rep, rx514_pos, $I10, $P10) = rx514_cur."!mark_fail"(0)
    lt rx514_pos, -1, rx514_done
    eq rx514_pos, -1, rx514_fail
    jump $I10
  rx514_done:
    rx514_cur."!cursor_fail"()
    if_null rx514_debug, debug_538
    rx514_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_538:
    .return (rx514_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :nsentry("!PREFIX__backslash:sym<h>") :subid("158_1304282272.255") :method
.annotate 'line', 11
    new $P516, "ResizablePMCArray"
    push $P516, "H"
    push $P516, "h"
    .return ($P516)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("159_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P520, "ResizablePMCArray"
    push $P520, "h"
    push $P520, "H"
    .return ($P520)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("160_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
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
    if_null rx522_debug, debug_539
    rx522_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_539:
    $I10 = self.'from'()
    ne $I10, -1, rxscan525_done
    goto rxscan525_scan
  rxscan525_loop:
    (rx522_pos) = rx522_cur."from"()
    inc rx522_pos
    rx522_cur."!cursor_from"(rx522_pos)
    ge rx522_pos, rx522_eos, rxscan525_done
  rxscan525_scan:
    set_addr $I10, rxscan525_loop
    rx522_cur."!mark_push"(0, rx522_pos, $I10)
  rxscan525_done:
.annotate 'line', 149
  # rx subcapture "sym"
    set_addr $I10, rxcap_526_fail
    rx522_cur."!mark_push"(0, rx522_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx522_pos, rx522_eos, rx522_fail
    sub $I10, rx522_pos, rx522_off
    substr $S10, rx522_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx522_fail
    inc rx522_pos
    set_addr $I10, rxcap_526_fail
    ($I12, $I11) = rx522_cur."!mark_peek"($I10)
    rx522_cur."!cursor_pos"($I11)
    ($P10) = rx522_cur."!cursor_start"()
    $P10."!cursor_pass"(rx522_pos, "")
    rx522_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_526_done
  rxcap_526_fail:
    goto rx522_fail
  rxcap_526_done:
  # rx pass
    rx522_cur."!cursor_pass"(rx522_pos, "backslash:sym<r>")
    if_null rx522_debug, debug_540
    rx522_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx522_pos)
  debug_540:
    .return (rx522_cur)
  rx522_restart:
.annotate 'line', 11
    if_null rx522_debug, debug_541
    rx522_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_541:
  rx522_fail:
    (rx522_rep, rx522_pos, $I10, $P10) = rx522_cur."!mark_fail"(0)
    lt rx522_pos, -1, rx522_done
    eq rx522_pos, -1, rx522_fail
    jump $I10
  rx522_done:
    rx522_cur."!cursor_fail"()
    if_null rx522_debug, debug_542
    rx522_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_542:
    .return (rx522_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :nsentry("!PREFIX__backslash:sym<r>") :subid("161_1304282272.255") :method
.annotate 'line', 11
    new $P524, "ResizablePMCArray"
    push $P524, "R"
    push $P524, "r"
    .return ($P524)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("162_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P528, "ResizablePMCArray"
    push $P528, "r"
    push $P528, "R"
    .return ($P528)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("163_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    .local pmc rx530_debug
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx530_cur
    .local pmc match
    .lex "$/", match
    length rx530_eos, rx530_tgt
    gt rx530_pos, rx530_eos, rx530_done
    set rx530_off, 0
    lt rx530_pos, 2, rx530_start
    sub rx530_off, rx530_pos, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
    eq $I10, 1, rx530_restart
    if_null rx530_debug, debug_543
    rx530_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_543:
    $I10 = self.'from'()
    ne $I10, -1, rxscan533_done
    goto rxscan533_scan
  rxscan533_loop:
    (rx530_pos) = rx530_cur."from"()
    inc rx530_pos
    rx530_cur."!cursor_from"(rx530_pos)
    ge rx530_pos, rx530_eos, rxscan533_done
  rxscan533_scan:
    set_addr $I10, rxscan533_loop
    rx530_cur."!mark_push"(0, rx530_pos, $I10)
  rxscan533_done:
.annotate 'line', 150
  # rx subcapture "sym"
    set_addr $I10, rxcap_534_fail
    rx530_cur."!mark_push"(0, rx530_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx530_pos, rx530_eos, rx530_fail
    sub $I10, rx530_pos, rx530_off
    substr $S10, rx530_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx530_fail
    inc rx530_pos
    set_addr $I10, rxcap_534_fail
    ($I12, $I11) = rx530_cur."!mark_peek"($I10)
    rx530_cur."!cursor_pos"($I11)
    ($P10) = rx530_cur."!cursor_start"()
    $P10."!cursor_pass"(rx530_pos, "")
    rx530_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_534_done
  rxcap_534_fail:
    goto rx530_fail
  rxcap_534_done:
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "backslash:sym<t>")
    if_null rx530_debug, debug_544
    rx530_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx530_pos)
  debug_544:
    .return (rx530_cur)
  rx530_restart:
.annotate 'line', 11
    if_null rx530_debug, debug_545
    rx530_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_545:
  rx530_fail:
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    if_null rx530_debug, debug_546
    rx530_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_546:
    .return (rx530_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :nsentry("!PREFIX__backslash:sym<t>") :subid("164_1304282272.255") :method
.annotate 'line', 11
    new $P532, "ResizablePMCArray"
    push $P532, "T"
    push $P532, "t"
    .return ($P532)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("165_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P536, "ResizablePMCArray"
    push $P536, "t"
    push $P536, "T"
    .return ($P536)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("166_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx538_tgt
    .local int rx538_pos
    .local int rx538_off
    .local int rx538_eos
    .local int rx538_rep
    .local pmc rx538_cur
    .local pmc rx538_debug
    (rx538_cur, rx538_pos, rx538_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx538_cur
    .local pmc match
    .lex "$/", match
    length rx538_eos, rx538_tgt
    gt rx538_pos, rx538_eos, rx538_done
    set rx538_off, 0
    lt rx538_pos, 2, rx538_start
    sub rx538_off, rx538_pos, 1
    substr rx538_tgt, rx538_tgt, rx538_off
  rx538_start:
    eq $I10, 1, rx538_restart
    if_null rx538_debug, debug_547
    rx538_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_547:
    $I10 = self.'from'()
    ne $I10, -1, rxscan541_done
    goto rxscan541_scan
  rxscan541_loop:
    (rx538_pos) = rx538_cur."from"()
    inc rx538_pos
    rx538_cur."!cursor_from"(rx538_pos)
    ge rx538_pos, rx538_eos, rxscan541_done
  rxscan541_scan:
    set_addr $I10, rxscan541_loop
    rx538_cur."!mark_push"(0, rx538_pos, $I10)
  rxscan541_done:
.annotate 'line', 151
  # rx subcapture "sym"
    set_addr $I10, rxcap_542_fail
    rx538_cur."!mark_push"(0, rx538_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx538_pos, rx538_eos, rx538_fail
    sub $I10, rx538_pos, rx538_off
    substr $S10, rx538_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx538_fail
    inc rx538_pos
    set_addr $I10, rxcap_542_fail
    ($I12, $I11) = rx538_cur."!mark_peek"($I10)
    rx538_cur."!cursor_pos"($I11)
    ($P10) = rx538_cur."!cursor_start"()
    $P10."!cursor_pass"(rx538_pos, "")
    rx538_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_542_done
  rxcap_542_fail:
    goto rx538_fail
  rxcap_542_done:
  # rx pass
    rx538_cur."!cursor_pass"(rx538_pos, "backslash:sym<v>")
    if_null rx538_debug, debug_548
    rx538_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx538_pos)
  debug_548:
    .return (rx538_cur)
  rx538_restart:
.annotate 'line', 11
    if_null rx538_debug, debug_549
    rx538_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_549:
  rx538_fail:
    (rx538_rep, rx538_pos, $I10, $P10) = rx538_cur."!mark_fail"(0)
    lt rx538_pos, -1, rx538_done
    eq rx538_pos, -1, rx538_fail
    jump $I10
  rx538_done:
    rx538_cur."!cursor_fail"()
    if_null rx538_debug, debug_550
    rx538_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_550:
    .return (rx538_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :nsentry("!PREFIX__backslash:sym<v>") :subid("167_1304282272.255") :method
.annotate 'line', 11
    new $P540, "ResizablePMCArray"
    push $P540, "V"
    push $P540, "v"
    .return ($P540)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("168_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P544, "ResizablePMCArray"
    push $P544, "v"
    push $P544, "V"
    .return ($P544)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("169_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx546_tgt
    .local int rx546_pos
    .local int rx546_off
    .local int rx546_eos
    .local int rx546_rep
    .local pmc rx546_cur
    .local pmc rx546_debug
    (rx546_cur, rx546_pos, rx546_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx546_cur
    .local pmc match
    .lex "$/", match
    length rx546_eos, rx546_tgt
    gt rx546_pos, rx546_eos, rx546_done
    set rx546_off, 0
    lt rx546_pos, 2, rx546_start
    sub rx546_off, rx546_pos, 1
    substr rx546_tgt, rx546_tgt, rx546_off
  rx546_start:
    eq $I10, 1, rx546_restart
    if_null rx546_debug, debug_551
    rx546_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_551:
    $I10 = self.'from'()
    ne $I10, -1, rxscan553_done
    goto rxscan553_scan
  rxscan553_loop:
    (rx546_pos) = rx546_cur."from"()
    inc rx546_pos
    rx546_cur."!cursor_from"(rx546_pos)
    ge rx546_pos, rx546_eos, rxscan553_done
  rxscan553_scan:
    set_addr $I10, rxscan553_loop
    rx546_cur."!mark_push"(0, rx546_pos, $I10)
  rxscan553_done:
.annotate 'line', 152
  # rx subcapture "sym"
    set_addr $I10, rxcap_554_fail
    rx546_cur."!mark_push"(0, rx546_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx546_pos, rx546_eos, rx546_fail
    sub $I10, rx546_pos, rx546_off
    substr $S10, rx546_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx546_fail
    inc rx546_pos
    set_addr $I10, rxcap_554_fail
    ($I12, $I11) = rx546_cur."!mark_peek"($I10)
    rx546_cur."!cursor_pos"($I11)
    ($P10) = rx546_cur."!cursor_start"()
    $P10."!cursor_pass"(rx546_pos, "")
    rx546_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_554_done
  rxcap_554_fail:
    goto rx546_fail
  rxcap_554_done:
  alt555_0:
    set_addr $I10, alt555_1
    rx546_cur."!mark_push"(0, rx546_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx546_cur."!cursor_pos"(rx546_pos)
    $P10 = rx546_cur."octint"()
    unless $P10, rx546_fail
    rx546_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx546_pos = $P10."pos"()
    goto alt555_end
  alt555_1:
  # rx literal  "["
    add $I11, rx546_pos, 1
    gt $I11, rx546_eos, rx546_fail
    sub $I11, rx546_pos, rx546_off
    ord $I11, rx546_tgt, $I11
    ne $I11, 91, rx546_fail
    add rx546_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx546_cur."!cursor_pos"(rx546_pos)
    $P10 = rx546_cur."octints"()
    unless $P10, rx546_fail
    rx546_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx546_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx546_pos, 1
    gt $I11, rx546_eos, rx546_fail
    sub $I11, rx546_pos, rx546_off
    ord $I11, rx546_tgt, $I11
    ne $I11, 93, rx546_fail
    add rx546_pos, 1
  alt555_end:
  # rx pass
    rx546_cur."!cursor_pass"(rx546_pos, "backslash:sym<o>")
    if_null rx546_debug, debug_552
    rx546_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx546_pos)
  debug_552:
    .return (rx546_cur)
  rx546_restart:
.annotate 'line', 11
    if_null rx546_debug, debug_553
    rx546_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_553:
  rx546_fail:
    (rx546_rep, rx546_pos, $I10, $P10) = rx546_cur."!mark_fail"(0)
    lt rx546_pos, -1, rx546_done
    eq rx546_pos, -1, rx546_fail
    jump $I10
  rx546_done:
    rx546_cur."!cursor_fail"()
    if_null rx546_debug, debug_554
    rx546_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_554:
    .return (rx546_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :nsentry("!PREFIX__backslash:sym<o>") :subid("170_1304282272.255") :method
.annotate 'line', 11
    $P548 = self."!PREFIX__!subrule"("octints", "O[")
    $P549 = self."!PREFIX__!subrule"("octint", "O")
    $P550 = self."!PREFIX__!subrule"("octints", "o[")
    $P551 = self."!PREFIX__!subrule"("octint", "o")
    new $P552, "ResizablePMCArray"
    push $P552, $P548
    push $P552, $P549
    push $P552, $P550
    push $P552, $P551
    .return ($P552)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("171_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P557 = self."!PREFIX__!subrule"("octints", "O[")
    $P558 = self."!PREFIX__!subrule"("octint", "O")
    $P559 = self."!PREFIX__!subrule"("octints", "o[")
    $P560 = self."!PREFIX__!subrule"("octint", "o")
    new $P561, "ResizablePMCArray"
    push $P561, $P557
    push $P561, $P558
    push $P561, $P559
    push $P561, $P560
    .return ($P561)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("172_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx563_tgt
    .local int rx563_pos
    .local int rx563_off
    .local int rx563_eos
    .local int rx563_rep
    .local pmc rx563_cur
    .local pmc rx563_debug
    (rx563_cur, rx563_pos, rx563_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx563_cur
    .local pmc match
    .lex "$/", match
    length rx563_eos, rx563_tgt
    gt rx563_pos, rx563_eos, rx563_done
    set rx563_off, 0
    lt rx563_pos, 2, rx563_start
    sub rx563_off, rx563_pos, 1
    substr rx563_tgt, rx563_tgt, rx563_off
  rx563_start:
    eq $I10, 1, rx563_restart
    if_null rx563_debug, debug_555
    rx563_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_555:
    $I10 = self.'from'()
    ne $I10, -1, rxscan570_done
    goto rxscan570_scan
  rxscan570_loop:
    (rx563_pos) = rx563_cur."from"()
    inc rx563_pos
    rx563_cur."!cursor_from"(rx563_pos)
    ge rx563_pos, rx563_eos, rxscan570_done
  rxscan570_scan:
    set_addr $I10, rxscan570_loop
    rx563_cur."!mark_push"(0, rx563_pos, $I10)
  rxscan570_done:
.annotate 'line', 153
  # rx subcapture "sym"
    set_addr $I10, rxcap_571_fail
    rx563_cur."!mark_push"(0, rx563_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx563_pos, rx563_eos, rx563_fail
    sub $I10, rx563_pos, rx563_off
    substr $S10, rx563_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx563_fail
    inc rx563_pos
    set_addr $I10, rxcap_571_fail
    ($I12, $I11) = rx563_cur."!mark_peek"($I10)
    rx563_cur."!cursor_pos"($I11)
    ($P10) = rx563_cur."!cursor_start"()
    $P10."!cursor_pass"(rx563_pos, "")
    rx563_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_571_done
  rxcap_571_fail:
    goto rx563_fail
  rxcap_571_done:
  alt572_0:
    set_addr $I10, alt572_1
    rx563_cur."!mark_push"(0, rx563_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx563_cur."!cursor_pos"(rx563_pos)
    $P10 = rx563_cur."hexint"()
    unless $P10, rx563_fail
    rx563_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx563_pos = $P10."pos"()
    goto alt572_end
  alt572_1:
  # rx literal  "["
    add $I11, rx563_pos, 1
    gt $I11, rx563_eos, rx563_fail
    sub $I11, rx563_pos, rx563_off
    ord $I11, rx563_tgt, $I11
    ne $I11, 91, rx563_fail
    add rx563_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx563_cur."!cursor_pos"(rx563_pos)
    $P10 = rx563_cur."hexints"()
    unless $P10, rx563_fail
    rx563_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx563_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx563_pos, 1
    gt $I11, rx563_eos, rx563_fail
    sub $I11, rx563_pos, rx563_off
    ord $I11, rx563_tgt, $I11
    ne $I11, 93, rx563_fail
    add rx563_pos, 1
  alt572_end:
  # rx pass
    rx563_cur."!cursor_pass"(rx563_pos, "backslash:sym<x>")
    if_null rx563_debug, debug_556
    rx563_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx563_pos)
  debug_556:
    .return (rx563_cur)
  rx563_restart:
.annotate 'line', 11
    if_null rx563_debug, debug_557
    rx563_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_557:
  rx563_fail:
    (rx563_rep, rx563_pos, $I10, $P10) = rx563_cur."!mark_fail"(0)
    lt rx563_pos, -1, rx563_done
    eq rx563_pos, -1, rx563_fail
    jump $I10
  rx563_done:
    rx563_cur."!cursor_fail"()
    if_null rx563_debug, debug_558
    rx563_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_558:
    .return (rx563_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :nsentry("!PREFIX__backslash:sym<x>") :subid("173_1304282272.255") :method
.annotate 'line', 11
    $P565 = self."!PREFIX__!subrule"("hexints", "X[")
    $P566 = self."!PREFIX__!subrule"("hexint", "X")
    $P567 = self."!PREFIX__!subrule"("hexints", "x[")
    $P568 = self."!PREFIX__!subrule"("hexint", "x")
    new $P569, "ResizablePMCArray"
    push $P569, $P565
    push $P569, $P566
    push $P569, $P567
    push $P569, $P568
    .return ($P569)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("174_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P574 = self."!PREFIX__!subrule"("hexints", "X[")
    $P575 = self."!PREFIX__!subrule"("hexint", "X")
    $P576 = self."!PREFIX__!subrule"("hexints", "x[")
    $P577 = self."!PREFIX__!subrule"("hexint", "x")
    new $P578, "ResizablePMCArray"
    push $P578, $P574
    push $P578, $P575
    push $P578, $P576
    push $P578, $P577
    .return ($P578)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("175_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx580_tgt
    .local int rx580_pos
    .local int rx580_off
    .local int rx580_eos
    .local int rx580_rep
    .local pmc rx580_cur
    .local pmc rx580_debug
    (rx580_cur, rx580_pos, rx580_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx580_cur
    .local pmc match
    .lex "$/", match
    length rx580_eos, rx580_tgt
    gt rx580_pos, rx580_eos, rx580_done
    set rx580_off, 0
    lt rx580_pos, 2, rx580_start
    sub rx580_off, rx580_pos, 1
    substr rx580_tgt, rx580_tgt, rx580_off
  rx580_start:
    eq $I10, 1, rx580_restart
    if_null rx580_debug, debug_559
    rx580_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_559:
    $I10 = self.'from'()
    ne $I10, -1, rxscan585_done
    goto rxscan585_scan
  rxscan585_loop:
    (rx580_pos) = rx580_cur."from"()
    inc rx580_pos
    rx580_cur."!cursor_from"(rx580_pos)
    ge rx580_pos, rx580_eos, rxscan585_done
  rxscan585_scan:
    set_addr $I10, rxscan585_loop
    rx580_cur."!mark_push"(0, rx580_pos, $I10)
  rxscan585_done:
.annotate 'line', 154
  # rx subcapture "sym"
    set_addr $I10, rxcap_586_fail
    rx580_cur."!mark_push"(0, rx580_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx580_pos, rx580_eos, rx580_fail
    sub $I10, rx580_pos, rx580_off
    substr $S10, rx580_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx580_fail
    inc rx580_pos
    set_addr $I10, rxcap_586_fail
    ($I12, $I11) = rx580_cur."!mark_peek"($I10)
    rx580_cur."!cursor_pos"($I11)
    ($P10) = rx580_cur."!cursor_start"()
    $P10."!cursor_pass"(rx580_pos, "")
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_586_done
  rxcap_586_fail:
    goto rx580_fail
  rxcap_586_done:
  # rx subrule "charspec" subtype=capture negate=
    rx580_cur."!cursor_pos"(rx580_pos)
    $P10 = rx580_cur."charspec"()
    unless $P10, rx580_fail
    rx580_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx580_pos = $P10."pos"()
  # rx pass
    rx580_cur."!cursor_pass"(rx580_pos, "backslash:sym<c>")
    if_null rx580_debug, debug_560
    rx580_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx580_pos)
  debug_560:
    .return (rx580_cur)
  rx580_restart:
.annotate 'line', 11
    if_null rx580_debug, debug_561
    rx580_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_561:
  rx580_fail:
    (rx580_rep, rx580_pos, $I10, $P10) = rx580_cur."!mark_fail"(0)
    lt rx580_pos, -1, rx580_done
    eq rx580_pos, -1, rx580_fail
    jump $I10
  rx580_done:
    rx580_cur."!cursor_fail"()
    if_null rx580_debug, debug_562
    rx580_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_562:
    .return (rx580_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :nsentry("!PREFIX__backslash:sym<c>") :subid("176_1304282272.255") :method
.annotate 'line', 11
    $P582 = self."!PREFIX__!subrule"("charspec", "C")
    $P583 = self."!PREFIX__!subrule"("charspec", "c")
    new $P584, "ResizablePMCArray"
    push $P584, $P582
    push $P584, $P583
    .return ($P584)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("177_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P588 = self."!PREFIX__!subrule"("charspec", "C")
    $P589 = self."!PREFIX__!subrule"("charspec", "c")
    new $P590, "ResizablePMCArray"
    push $P590, $P588
    push $P590, $P589
    .return ($P590)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("178_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx592_tgt
    .local int rx592_pos
    .local int rx592_off
    .local int rx592_eos
    .local int rx592_rep
    .local pmc rx592_cur
    .local pmc rx592_debug
    (rx592_cur, rx592_pos, rx592_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx592_cur
    .local pmc match
    .lex "$/", match
    length rx592_eos, rx592_tgt
    gt rx592_pos, rx592_eos, rx592_done
    set rx592_off, 0
    lt rx592_pos, 2, rx592_start
    sub rx592_off, rx592_pos, 1
    substr rx592_tgt, rx592_tgt, rx592_off
  rx592_start:
    eq $I10, 1, rx592_restart
    if_null rx592_debug, debug_563
    rx592_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_563:
    $I10 = self.'from'()
    ne $I10, -1, rxscan596_done
    goto rxscan596_scan
  rxscan596_loop:
    (rx592_pos) = rx592_cur."from"()
    inc rx592_pos
    rx592_cur."!cursor_from"(rx592_pos)
    ge rx592_pos, rx592_eos, rxscan596_done
  rxscan596_scan:
    set_addr $I10, rxscan596_loop
    rx592_cur."!mark_push"(0, rx592_pos, $I10)
  rxscan596_done:
.annotate 'line', 155
  # rx literal  "A"
    add $I11, rx592_pos, 1
    gt $I11, rx592_eos, rx592_fail
    sub $I11, rx592_pos, rx592_off
    ord $I11, rx592_tgt, $I11
    ne $I11, 65, rx592_fail
    add rx592_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx592_cur."!cursor_pos"(rx592_pos)
    $P10 = rx592_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx592_fail
    rx592_pos = $P10."pos"()
  # rx pass
    rx592_cur."!cursor_pass"(rx592_pos, "backslash:sym<A>")
    if_null rx592_debug, debug_564
    rx592_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx592_pos)
  debug_564:
    .return (rx592_cur)
  rx592_restart:
.annotate 'line', 11
    if_null rx592_debug, debug_565
    rx592_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_565:
  rx592_fail:
    (rx592_rep, rx592_pos, $I10, $P10) = rx592_cur."!mark_fail"(0)
    lt rx592_pos, -1, rx592_done
    eq rx592_pos, -1, rx592_fail
    jump $I10
  rx592_done:
    rx592_cur."!cursor_fail"()
    if_null rx592_debug, debug_566
    rx592_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_566:
    .return (rx592_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :nsentry("!PREFIX__backslash:sym<A>") :subid("179_1304282272.255") :method
.annotate 'line', 11
    $P594 = self."!PREFIX__!subrule"("obs", "A")
    new $P595, "ResizablePMCArray"
    push $P595, $P594
    .return ($P595)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("180_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P598 = self."!PREFIX__!subrule"("obs", "A")
    new $P599, "ResizablePMCArray"
    push $P599, $P598
    .return ($P599)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("181_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx601_tgt
    .local int rx601_pos
    .local int rx601_off
    .local int rx601_eos
    .local int rx601_rep
    .local pmc rx601_cur
    .local pmc rx601_debug
    (rx601_cur, rx601_pos, rx601_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx601_cur
    .local pmc match
    .lex "$/", match
    length rx601_eos, rx601_tgt
    gt rx601_pos, rx601_eos, rx601_done
    set rx601_off, 0
    lt rx601_pos, 2, rx601_start
    sub rx601_off, rx601_pos, 1
    substr rx601_tgt, rx601_tgt, rx601_off
  rx601_start:
    eq $I10, 1, rx601_restart
    if_null rx601_debug, debug_567
    rx601_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_567:
    $I10 = self.'from'()
    ne $I10, -1, rxscan605_done
    goto rxscan605_scan
  rxscan605_loop:
    (rx601_pos) = rx601_cur."from"()
    inc rx601_pos
    rx601_cur."!cursor_from"(rx601_pos)
    ge rx601_pos, rx601_eos, rxscan605_done
  rxscan605_scan:
    set_addr $I10, rxscan605_loop
    rx601_cur."!mark_push"(0, rx601_pos, $I10)
  rxscan605_done:
.annotate 'line', 156
  # rx literal  "z"
    add $I11, rx601_pos, 1
    gt $I11, rx601_eos, rx601_fail
    sub $I11, rx601_pos, rx601_off
    ord $I11, rx601_tgt, $I11
    ne $I11, 122, rx601_fail
    add rx601_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx601_cur."!cursor_pos"(rx601_pos)
    $P10 = rx601_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx601_fail
    rx601_pos = $P10."pos"()
  # rx pass
    rx601_cur."!cursor_pass"(rx601_pos, "backslash:sym<z>")
    if_null rx601_debug, debug_568
    rx601_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx601_pos)
  debug_568:
    .return (rx601_cur)
  rx601_restart:
.annotate 'line', 11
    if_null rx601_debug, debug_569
    rx601_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_569:
  rx601_fail:
    (rx601_rep, rx601_pos, $I10, $P10) = rx601_cur."!mark_fail"(0)
    lt rx601_pos, -1, rx601_done
    eq rx601_pos, -1, rx601_fail
    jump $I10
  rx601_done:
    rx601_cur."!cursor_fail"()
    if_null rx601_debug, debug_570
    rx601_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_570:
    .return (rx601_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :nsentry("!PREFIX__backslash:sym<z>") :subid("182_1304282272.255") :method
.annotate 'line', 11
    $P603 = self."!PREFIX__!subrule"("obs", "z")
    new $P604, "ResizablePMCArray"
    push $P604, $P603
    .return ($P604)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("183_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P607 = self."!PREFIX__!subrule"("obs", "z")
    new $P608, "ResizablePMCArray"
    push $P608, $P607
    .return ($P608)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("184_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx610_tgt
    .local int rx610_pos
    .local int rx610_off
    .local int rx610_eos
    .local int rx610_rep
    .local pmc rx610_cur
    .local pmc rx610_debug
    (rx610_cur, rx610_pos, rx610_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx610_cur
    .local pmc match
    .lex "$/", match
    length rx610_eos, rx610_tgt
    gt rx610_pos, rx610_eos, rx610_done
    set rx610_off, 0
    lt rx610_pos, 2, rx610_start
    sub rx610_off, rx610_pos, 1
    substr rx610_tgt, rx610_tgt, rx610_off
  rx610_start:
    eq $I10, 1, rx610_restart
    if_null rx610_debug, debug_571
    rx610_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_571:
    $I10 = self.'from'()
    ne $I10, -1, rxscan614_done
    goto rxscan614_scan
  rxscan614_loop:
    (rx610_pos) = rx610_cur."from"()
    inc rx610_pos
    rx610_cur."!cursor_from"(rx610_pos)
    ge rx610_pos, rx610_eos, rxscan614_done
  rxscan614_scan:
    set_addr $I10, rxscan614_loop
    rx610_cur."!mark_push"(0, rx610_pos, $I10)
  rxscan614_done:
.annotate 'line', 157
  # rx literal  "Z"
    add $I11, rx610_pos, 1
    gt $I11, rx610_eos, rx610_fail
    sub $I11, rx610_pos, rx610_off
    ord $I11, rx610_tgt, $I11
    ne $I11, 90, rx610_fail
    add rx610_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx610_cur."!cursor_pos"(rx610_pos)
    $P10 = rx610_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx610_fail
    rx610_pos = $P10."pos"()
  # rx pass
    rx610_cur."!cursor_pass"(rx610_pos, "backslash:sym<Z>")
    if_null rx610_debug, debug_572
    rx610_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx610_pos)
  debug_572:
    .return (rx610_cur)
  rx610_restart:
.annotate 'line', 11
    if_null rx610_debug, debug_573
    rx610_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_573:
  rx610_fail:
    (rx610_rep, rx610_pos, $I10, $P10) = rx610_cur."!mark_fail"(0)
    lt rx610_pos, -1, rx610_done
    eq rx610_pos, -1, rx610_fail
    jump $I10
  rx610_done:
    rx610_cur."!cursor_fail"()
    if_null rx610_debug, debug_574
    rx610_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_574:
    .return (rx610_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :nsentry("!PREFIX__backslash:sym<Z>") :subid("185_1304282272.255") :method
.annotate 'line', 11
    $P612 = self."!PREFIX__!subrule"("obs", "Z")
    new $P613, "ResizablePMCArray"
    push $P613, $P612
    .return ($P613)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("186_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P616 = self."!PREFIX__!subrule"("obs", "Z")
    new $P617, "ResizablePMCArray"
    push $P617, $P616
    .return ($P617)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("187_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx619_tgt
    .local int rx619_pos
    .local int rx619_off
    .local int rx619_eos
    .local int rx619_rep
    .local pmc rx619_cur
    .local pmc rx619_debug
    (rx619_cur, rx619_pos, rx619_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx619_cur
    .local pmc match
    .lex "$/", match
    length rx619_eos, rx619_tgt
    gt rx619_pos, rx619_eos, rx619_done
    set rx619_off, 0
    lt rx619_pos, 2, rx619_start
    sub rx619_off, rx619_pos, 1
    substr rx619_tgt, rx619_tgt, rx619_off
  rx619_start:
    eq $I10, 1, rx619_restart
    if_null rx619_debug, debug_575
    rx619_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_575:
    $I10 = self.'from'()
    ne $I10, -1, rxscan623_done
    goto rxscan623_scan
  rxscan623_loop:
    (rx619_pos) = rx619_cur."from"()
    inc rx619_pos
    rx619_cur."!cursor_from"(rx619_pos)
    ge rx619_pos, rx619_eos, rxscan623_done
  rxscan623_scan:
    set_addr $I10, rxscan623_loop
    rx619_cur."!mark_push"(0, rx619_pos, $I10)
  rxscan623_done:
.annotate 'line', 158
  # rx literal  "Q"
    add $I11, rx619_pos, 1
    gt $I11, rx619_eos, rx619_fail
    sub $I11, rx619_pos, rx619_off
    ord $I11, rx619_tgt, $I11
    ne $I11, 81, rx619_fail
    add rx619_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx619_cur."!cursor_pos"(rx619_pos)
    $P10 = rx619_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx619_fail
    rx619_pos = $P10."pos"()
  # rx pass
    rx619_cur."!cursor_pass"(rx619_pos, "backslash:sym<Q>")
    if_null rx619_debug, debug_576
    rx619_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx619_pos)
  debug_576:
    .return (rx619_cur)
  rx619_restart:
.annotate 'line', 11
    if_null rx619_debug, debug_577
    rx619_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_577:
  rx619_fail:
    (rx619_rep, rx619_pos, $I10, $P10) = rx619_cur."!mark_fail"(0)
    lt rx619_pos, -1, rx619_done
    eq rx619_pos, -1, rx619_fail
    jump $I10
  rx619_done:
    rx619_cur."!cursor_fail"()
    if_null rx619_debug, debug_578
    rx619_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_578:
    .return (rx619_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :nsentry("!PREFIX__backslash:sym<Q>") :subid("188_1304282272.255") :method
.annotate 'line', 11
    $P621 = self."!PREFIX__!subrule"("obs", "Q")
    new $P622, "ResizablePMCArray"
    push $P622, $P621
    .return ($P622)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("189_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P625 = self."!PREFIX__!subrule"("obs", "Q")
    new $P626, "ResizablePMCArray"
    push $P626, $P625
    .return ($P626)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("190_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P635 = "192_1304282272.255" 
    capture_lex $P635
    .local string rx628_tgt
    .local int rx628_pos
    .local int rx628_off
    .local int rx628_eos
    .local int rx628_rep
    .local pmc rx628_cur
    .local pmc rx628_debug
    (rx628_cur, rx628_pos, rx628_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx628_cur
    .local pmc match
    .lex "$/", match
    length rx628_eos, rx628_tgt
    gt rx628_pos, rx628_eos, rx628_done
    set rx628_off, 0
    lt rx628_pos, 2, rx628_start
    sub rx628_off, rx628_pos, 1
    substr rx628_tgt, rx628_tgt, rx628_off
  rx628_start:
    eq $I10, 1, rx628_restart
    if_null rx628_debug, debug_579
    rx628_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_579:
    $I10 = self.'from'()
    ne $I10, -1, rxscan631_done
    goto rxscan631_scan
  rxscan631_loop:
    (rx628_pos) = rx628_cur."from"()
    inc rx628_pos
    rx628_cur."!cursor_from"(rx628_pos)
    ge rx628_pos, rx628_eos, rxscan631_done
  rxscan631_scan:
    set_addr $I10, rxscan631_loop
    rx628_cur."!mark_push"(0, rx628_pos, $I10)
  rxscan631_done:
.annotate 'line', 159
    rx628_cur."!cursor_pos"(rx628_pos)
    find_lex $P632, unicode:"$\x{a2}"
    $P633 = $P632."MATCH"()
    store_lex "$/", $P633
    .const 'Sub' $P635 = "192_1304282272.255" 
    capture_lex $P635
    $P636 = $P635()
  # rx charclass w
    ge rx628_pos, rx628_eos, rx628_fail
    sub $I10, rx628_pos, rx628_off
    is_cclass $I11, 8192, rx628_tgt, $I10
    unless $I11, rx628_fail
    inc rx628_pos
  # rx subrule "panic" subtype=method negate=
    rx628_cur."!cursor_pos"(rx628_pos)
    $P10 = rx628_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx628_fail
    rx628_pos = $P10."pos"()
  # rx pass
    rx628_cur."!cursor_pass"(rx628_pos, "backslash:sym<unrec>")
    if_null rx628_debug, debug_580
    rx628_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx628_pos)
  debug_580:
    .return (rx628_cur)
  rx628_restart:
.annotate 'line', 11
    if_null rx628_debug, debug_581
    rx628_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_581:
  rx628_fail:
    (rx628_rep, rx628_pos, $I10, $P10) = rx628_cur."!mark_fail"(0)
    lt rx628_pos, -1, rx628_done
    eq rx628_pos, -1, rx628_fail
    jump $I10
  rx628_done:
    rx628_cur."!cursor_fail"()
    if_null rx628_debug, debug_582
    rx628_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_582:
    .return (rx628_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :nsentry("!PREFIX__backslash:sym<unrec>") :subid("191_1304282272.255") :method
.annotate 'line', 11
    new $P630, "ResizablePMCArray"
    push $P630, ""
    .return ($P630)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block634"  :anon :subid("192_1304282272.255") :outer("190_1304282272.255")
.annotate 'line', 159
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :subid("193_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P638, "ResizablePMCArray"
    push $P638, ""
    .return ($P638)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("194_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx640_tgt
    .local int rx640_pos
    .local int rx640_off
    .local int rx640_eos
    .local int rx640_rep
    .local pmc rx640_cur
    .local pmc rx640_debug
    (rx640_cur, rx640_pos, rx640_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx640_cur
    .local pmc match
    .lex "$/", match
    length rx640_eos, rx640_tgt
    gt rx640_pos, rx640_eos, rx640_done
    set rx640_off, 0
    lt rx640_pos, 2, rx640_start
    sub rx640_off, rx640_pos, 1
    substr rx640_tgt, rx640_tgt, rx640_off
  rx640_start:
    eq $I10, 1, rx640_restart
    if_null rx640_debug, debug_583
    rx640_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_583:
    $I10 = self.'from'()
    ne $I10, -1, rxscan643_done
    goto rxscan643_scan
  rxscan643_loop:
    (rx640_pos) = rx640_cur."from"()
    inc rx640_pos
    rx640_cur."!cursor_from"(rx640_pos)
    ge rx640_pos, rx640_eos, rxscan643_done
  rxscan643_scan:
    set_addr $I10, rxscan643_loop
    rx640_cur."!mark_push"(0, rx640_pos, $I10)
  rxscan643_done:
.annotate 'line', 160
  # rx charclass W
    ge rx640_pos, rx640_eos, rx640_fail
    sub $I10, rx640_pos, rx640_off
    is_cclass $I11, 8192, rx640_tgt, $I10
    if $I11, rx640_fail
    inc rx640_pos
  # rx pass
    rx640_cur."!cursor_pass"(rx640_pos, "backslash:sym<misc>")
    if_null rx640_debug, debug_584
    rx640_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx640_pos)
  debug_584:
    .return (rx640_cur)
  rx640_restart:
.annotate 'line', 11
    if_null rx640_debug, debug_585
    rx640_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_585:
  rx640_fail:
    (rx640_rep, rx640_pos, $I10, $P10) = rx640_cur."!mark_fail"(0)
    lt rx640_pos, -1, rx640_done
    eq rx640_pos, -1, rx640_fail
    jump $I10
  rx640_done:
    rx640_cur."!cursor_fail"()
    if_null rx640_debug, debug_586
    rx640_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_586:
    .return (rx640_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :nsentry("!PREFIX__backslash:sym<misc>") :subid("195_1304282272.255") :method
.annotate 'line', 11
    new $P642, "ResizablePMCArray"
    push $P642, ""
    .return ($P642)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("196_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P645, "ResizablePMCArray"
    push $P645, ""
    .return ($P645)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("197_1304282272.255")
    .param pmc param_647
.annotate 'line', 162
    .lex "self", param_647
    $P648 = param_647."!protoregex"("assertion")
    .return ($P648)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("198_1304282272.255")
    .param pmc param_650
.annotate 'line', 162
    .lex "self", param_650
    $P651 = param_650."!PREFIX__!protoregex"("assertion")
    .return ($P651)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("199_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P660 = "201_1304282272.255" 
    capture_lex $P660
    .local string rx653_tgt
    .local int rx653_pos
    .local int rx653_off
    .local int rx653_eos
    .local int rx653_rep
    .local pmc rx653_cur
    .local pmc rx653_debug
    (rx653_cur, rx653_pos, rx653_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx653_cur
    .local pmc match
    .lex "$/", match
    length rx653_eos, rx653_tgt
    gt rx653_pos, rx653_eos, rx653_done
    set rx653_off, 0
    lt rx653_pos, 2, rx653_start
    sub rx653_off, rx653_pos, 1
    substr rx653_tgt, rx653_tgt, rx653_off
  rx653_start:
    eq $I10, 1, rx653_restart
    if_null rx653_debug, debug_587
    rx653_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_587:
    $I10 = self.'from'()
    ne $I10, -1, rxscan657_done
    goto rxscan657_scan
  rxscan657_loop:
    (rx653_pos) = rx653_cur."from"()
    inc rx653_pos
    rx653_cur."!cursor_from"(rx653_pos)
    ge rx653_pos, rx653_eos, rxscan657_done
  rxscan657_scan:
    set_addr $I10, rxscan657_loop
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  rxscan657_done:
.annotate 'line', 164
  # rx literal  "?"
    add $I11, rx653_pos, 1
    gt $I11, rx653_eos, rx653_fail
    sub $I11, rx653_pos, rx653_off
    ord $I11, rx653_tgt, $I11
    ne $I11, 63, rx653_fail
    add rx653_pos, 1
  alt658_0:
    set_addr $I10, alt658_1
    rx653_cur."!mark_push"(0, rx653_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx653_cur."!cursor_pos"(rx653_pos)
    .const 'Sub' $P660 = "201_1304282272.255" 
    capture_lex $P660
    $P10 = rx653_cur."before"($P660)
    unless $P10, rx653_fail
    goto alt658_end
  alt658_1:
  # rx subrule "assertion" subtype=capture negate=
    rx653_cur."!cursor_pos"(rx653_pos)
    $P10 = rx653_cur."assertion"()
    unless $P10, rx653_fail
    rx653_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx653_pos = $P10."pos"()
  alt658_end:
  # rx pass
    rx653_cur."!cursor_pass"(rx653_pos, "assertion:sym<?>")
    if_null rx653_debug, debug_592
    rx653_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx653_pos)
  debug_592:
    .return (rx653_cur)
  rx653_restart:
.annotate 'line', 11
    if_null rx653_debug, debug_593
    rx653_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_593:
  rx653_fail:
    (rx653_rep, rx653_pos, $I10, $P10) = rx653_cur."!mark_fail"(0)
    lt rx653_pos, -1, rx653_done
    eq rx653_pos, -1, rx653_fail
    jump $I10
  rx653_done:
    rx653_cur."!cursor_fail"()
    if_null rx653_debug, debug_594
    rx653_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_594:
    .return (rx653_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :nsentry("!PREFIX__assertion:sym<?>") :subid("200_1304282272.255") :method
.annotate 'line', 11
    $P655 = self."!PREFIX__!subrule"("assertion", "?")
    new $P656, "ResizablePMCArray"
    push $P656, $P655
    push $P656, "?"
    .return ($P656)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block659"  :anon :subid("201_1304282272.255") :method :outer("199_1304282272.255")
.annotate 'line', 164
    .local string rx661_tgt
    .local int rx661_pos
    .local int rx661_off
    .local int rx661_eos
    .local int rx661_rep
    .local pmc rx661_cur
    .local pmc rx661_debug
    (rx661_cur, rx661_pos, rx661_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx661_cur
    .local pmc match
    .lex "$/", match
    length rx661_eos, rx661_tgt
    gt rx661_pos, rx661_eos, rx661_done
    set rx661_off, 0
    lt rx661_pos, 2, rx661_start
    sub rx661_off, rx661_pos, 1
    substr rx661_tgt, rx661_tgt, rx661_off
  rx661_start:
    eq $I10, 1, rx661_restart
    if_null rx661_debug, debug_588
    rx661_cur."!cursor_debug"("START", "")
  debug_588:
    $I10 = self.'from'()
    ne $I10, -1, rxscan662_done
    goto rxscan662_scan
  rxscan662_loop:
    (rx661_pos) = rx661_cur."from"()
    inc rx661_pos
    rx661_cur."!cursor_from"(rx661_pos)
    ge rx661_pos, rx661_eos, rxscan662_done
  rxscan662_scan:
    set_addr $I10, rxscan662_loop
    rx661_cur."!mark_push"(0, rx661_pos, $I10)
  rxscan662_done:
  # rx literal  ">"
    add $I11, rx661_pos, 1
    gt $I11, rx661_eos, rx661_fail
    sub $I11, rx661_pos, rx661_off
    ord $I11, rx661_tgt, $I11
    ne $I11, 62, rx661_fail
    add rx661_pos, 1
  # rx pass
    rx661_cur."!cursor_pass"(rx661_pos, "")
    if_null rx661_debug, debug_589
    rx661_cur."!cursor_debug"("PASS", "", " at pos=", rx661_pos)
  debug_589:
    .return (rx661_cur)
  rx661_restart:
    if_null rx661_debug, debug_590
    rx661_cur."!cursor_debug"("NEXT", "")
  debug_590:
  rx661_fail:
    (rx661_rep, rx661_pos, $I10, $P10) = rx661_cur."!mark_fail"(0)
    lt rx661_pos, -1, rx661_done
    eq rx661_pos, -1, rx661_fail
    jump $I10
  rx661_done:
    rx661_cur."!cursor_fail"()
    if_null rx661_debug, debug_591
    rx661_cur."!cursor_debug"("FAIL", "")
  debug_591:
    .return (rx661_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("202_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P664 = self."!PREFIX__!subrule"("assertion", "?")
    new $P665, "ResizablePMCArray"
    push $P665, $P664
    push $P665, "?"
    .return ($P665)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("203_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P674 = "205_1304282272.255" 
    capture_lex $P674
    .local string rx667_tgt
    .local int rx667_pos
    .local int rx667_off
    .local int rx667_eos
    .local int rx667_rep
    .local pmc rx667_cur
    .local pmc rx667_debug
    (rx667_cur, rx667_pos, rx667_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx667_cur
    .local pmc match
    .lex "$/", match
    length rx667_eos, rx667_tgt
    gt rx667_pos, rx667_eos, rx667_done
    set rx667_off, 0
    lt rx667_pos, 2, rx667_start
    sub rx667_off, rx667_pos, 1
    substr rx667_tgt, rx667_tgt, rx667_off
  rx667_start:
    eq $I10, 1, rx667_restart
    if_null rx667_debug, debug_595
    rx667_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_595:
    $I10 = self.'from'()
    ne $I10, -1, rxscan671_done
    goto rxscan671_scan
  rxscan671_loop:
    (rx667_pos) = rx667_cur."from"()
    inc rx667_pos
    rx667_cur."!cursor_from"(rx667_pos)
    ge rx667_pos, rx667_eos, rxscan671_done
  rxscan671_scan:
    set_addr $I10, rxscan671_loop
    rx667_cur."!mark_push"(0, rx667_pos, $I10)
  rxscan671_done:
.annotate 'line', 165
  # rx literal  "!"
    add $I11, rx667_pos, 1
    gt $I11, rx667_eos, rx667_fail
    sub $I11, rx667_pos, rx667_off
    ord $I11, rx667_tgt, $I11
    ne $I11, 33, rx667_fail
    add rx667_pos, 1
  alt672_0:
    set_addr $I10, alt672_1
    rx667_cur."!mark_push"(0, rx667_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx667_cur."!cursor_pos"(rx667_pos)
    .const 'Sub' $P674 = "205_1304282272.255" 
    capture_lex $P674
    $P10 = rx667_cur."before"($P674)
    unless $P10, rx667_fail
    goto alt672_end
  alt672_1:
  # rx subrule "assertion" subtype=capture negate=
    rx667_cur."!cursor_pos"(rx667_pos)
    $P10 = rx667_cur."assertion"()
    unless $P10, rx667_fail
    rx667_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx667_pos = $P10."pos"()
  alt672_end:
  # rx pass
    rx667_cur."!cursor_pass"(rx667_pos, "assertion:sym<!>")
    if_null rx667_debug, debug_600
    rx667_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx667_pos)
  debug_600:
    .return (rx667_cur)
  rx667_restart:
.annotate 'line', 11
    if_null rx667_debug, debug_601
    rx667_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_601:
  rx667_fail:
    (rx667_rep, rx667_pos, $I10, $P10) = rx667_cur."!mark_fail"(0)
    lt rx667_pos, -1, rx667_done
    eq rx667_pos, -1, rx667_fail
    jump $I10
  rx667_done:
    rx667_cur."!cursor_fail"()
    if_null rx667_debug, debug_602
    rx667_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_602:
    .return (rx667_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :nsentry("!PREFIX__assertion:sym<!>") :subid("204_1304282272.255") :method
.annotate 'line', 11
    $P669 = self."!PREFIX__!subrule"("assertion", "!")
    new $P670, "ResizablePMCArray"
    push $P670, $P669
    push $P670, "!"
    .return ($P670)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block673"  :anon :subid("205_1304282272.255") :method :outer("203_1304282272.255")
.annotate 'line', 165
    .local string rx675_tgt
    .local int rx675_pos
    .local int rx675_off
    .local int rx675_eos
    .local int rx675_rep
    .local pmc rx675_cur
    .local pmc rx675_debug
    (rx675_cur, rx675_pos, rx675_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx675_cur
    .local pmc match
    .lex "$/", match
    length rx675_eos, rx675_tgt
    gt rx675_pos, rx675_eos, rx675_done
    set rx675_off, 0
    lt rx675_pos, 2, rx675_start
    sub rx675_off, rx675_pos, 1
    substr rx675_tgt, rx675_tgt, rx675_off
  rx675_start:
    eq $I10, 1, rx675_restart
    if_null rx675_debug, debug_596
    rx675_cur."!cursor_debug"("START", "")
  debug_596:
    $I10 = self.'from'()
    ne $I10, -1, rxscan676_done
    goto rxscan676_scan
  rxscan676_loop:
    (rx675_pos) = rx675_cur."from"()
    inc rx675_pos
    rx675_cur."!cursor_from"(rx675_pos)
    ge rx675_pos, rx675_eos, rxscan676_done
  rxscan676_scan:
    set_addr $I10, rxscan676_loop
    rx675_cur."!mark_push"(0, rx675_pos, $I10)
  rxscan676_done:
  # rx literal  ">"
    add $I11, rx675_pos, 1
    gt $I11, rx675_eos, rx675_fail
    sub $I11, rx675_pos, rx675_off
    ord $I11, rx675_tgt, $I11
    ne $I11, 62, rx675_fail
    add rx675_pos, 1
  # rx pass
    rx675_cur."!cursor_pass"(rx675_pos, "")
    if_null rx675_debug, debug_597
    rx675_cur."!cursor_debug"("PASS", "", " at pos=", rx675_pos)
  debug_597:
    .return (rx675_cur)
  rx675_restart:
    if_null rx675_debug, debug_598
    rx675_cur."!cursor_debug"("NEXT", "")
  debug_598:
  rx675_fail:
    (rx675_rep, rx675_pos, $I10, $P10) = rx675_cur."!mark_fail"(0)
    lt rx675_pos, -1, rx675_done
    eq rx675_pos, -1, rx675_fail
    jump $I10
  rx675_done:
    rx675_cur."!cursor_fail"()
    if_null rx675_debug, debug_599
    rx675_cur."!cursor_debug"("FAIL", "")
  debug_599:
    .return (rx675_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("206_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P678 = self."!PREFIX__!subrule"("assertion", "!")
    new $P679, "ResizablePMCArray"
    push $P679, $P678
    push $P679, "!"
    .return ($P679)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("207_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx681_tgt
    .local int rx681_pos
    .local int rx681_off
    .local int rx681_eos
    .local int rx681_rep
    .local pmc rx681_cur
    .local pmc rx681_debug
    (rx681_cur, rx681_pos, rx681_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx681_cur
    .local pmc match
    .lex "$/", match
    length rx681_eos, rx681_tgt
    gt rx681_pos, rx681_eos, rx681_done
    set rx681_off, 0
    lt rx681_pos, 2, rx681_start
    sub rx681_off, rx681_pos, 1
    substr rx681_tgt, rx681_tgt, rx681_off
  rx681_start:
    eq $I10, 1, rx681_restart
    if_null rx681_debug, debug_603
    rx681_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_603:
    $I10 = self.'from'()
    ne $I10, -1, rxscan685_done
    goto rxscan685_scan
  rxscan685_loop:
    (rx681_pos) = rx681_cur."from"()
    inc rx681_pos
    rx681_cur."!cursor_from"(rx681_pos)
    ge rx681_pos, rx681_eos, rxscan685_done
  rxscan685_scan:
    set_addr $I10, rxscan685_loop
    rx681_cur."!mark_push"(0, rx681_pos, $I10)
  rxscan685_done:
.annotate 'line', 168
  # rx literal  "."
    add $I11, rx681_pos, 1
    gt $I11, rx681_eos, rx681_fail
    sub $I11, rx681_pos, rx681_off
    ord $I11, rx681_tgt, $I11
    ne $I11, 46, rx681_fail
    add rx681_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx681_cur."!cursor_pos"(rx681_pos)
    $P10 = rx681_cur."assertion"()
    unless $P10, rx681_fail
    rx681_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx681_pos = $P10."pos"()
.annotate 'line', 167
  # rx pass
    rx681_cur."!cursor_pass"(rx681_pos, "assertion:sym<method>")
    if_null rx681_debug, debug_604
    rx681_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx681_pos)
  debug_604:
    .return (rx681_cur)
  rx681_restart:
.annotate 'line', 11
    if_null rx681_debug, debug_605
    rx681_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_605:
  rx681_fail:
    (rx681_rep, rx681_pos, $I10, $P10) = rx681_cur."!mark_fail"(0)
    lt rx681_pos, -1, rx681_done
    eq rx681_pos, -1, rx681_fail
    jump $I10
  rx681_done:
    rx681_cur."!cursor_fail"()
    if_null rx681_debug, debug_606
    rx681_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_606:
    .return (rx681_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :nsentry("!PREFIX__assertion:sym<method>") :subid("208_1304282272.255") :method
.annotate 'line', 11
    $P683 = self."!PREFIX__!subrule"("assertion", ".")
    new $P684, "ResizablePMCArray"
    push $P684, $P683
    .return ($P684)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("209_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P687 = self."!PREFIX__!subrule"("assertion", ".")
    new $P688, "ResizablePMCArray"
    push $P688, $P687
    .return ($P688)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("210_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P698 = "212_1304282272.255" 
    capture_lex $P698
    .local string rx690_tgt
    .local int rx690_pos
    .local int rx690_off
    .local int rx690_eos
    .local int rx690_rep
    .local pmc rx690_cur
    .local pmc rx690_debug
    (rx690_cur, rx690_pos, rx690_tgt, $I10) = self."!cursor_start"()
    rx690_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    .lex unicode:"$\x{a2}", rx690_cur
    .local pmc match
    .lex "$/", match
    length rx690_eos, rx690_tgt
    gt rx690_pos, rx690_eos, rx690_done
    set rx690_off, 0
    lt rx690_pos, 2, rx690_start
    sub rx690_off, rx690_pos, 1
    substr rx690_tgt, rx690_tgt, rx690_off
  rx690_start:
    eq $I10, 1, rx690_restart
    if_null rx690_debug, debug_607
    rx690_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_607:
    $I10 = self.'from'()
    ne $I10, -1, rxscan694_done
    goto rxscan694_scan
  rxscan694_loop:
    (rx690_pos) = rx690_cur."from"()
    inc rx690_pos
    rx690_cur."!cursor_from"(rx690_pos)
    ge rx690_pos, rx690_eos, rxscan694_done
  rxscan694_scan:
    set_addr $I10, rxscan694_loop
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  rxscan694_done:
.annotate 'line', 172
  # rx subrule "identifier" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."identifier"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx690_pos = $P10."pos"()
.annotate 'line', 179
  # rx rxquantr695 ** 0..1
    set_addr $I10, rxquantr695_done
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
  rxquantr695_loop:
  alt696_0:
.annotate 'line', 173
    set_addr $I10, alt696_1
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    .const 'Sub' $P698 = "212_1304282272.255" 
    capture_lex $P698
    $P10 = rx690_cur."before"($P698)
    unless $P10, rx690_fail
    goto alt696_end
  alt696_1:
    set_addr $I10, alt696_2
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
.annotate 'line', 175
  # rx literal  "="
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    ord $I11, rx690_tgt, $I11
    ne $I11, 61, rx690_fail
    add rx690_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."assertion"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx690_pos = $P10."pos"()
    goto alt696_end
  alt696_2:
    set_addr $I10, alt696_3
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
.annotate 'line', 176
  # rx literal  ":"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    ord $I11, rx690_tgt, $I11
    ne $I11, 58, rx690_fail
    add rx690_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."arglist"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx690_pos = $P10."pos"()
    goto alt696_end
  alt696_3:
    set_addr $I10, alt696_4
    rx690_cur."!mark_push"(0, rx690_pos, $I10)
.annotate 'line', 177
  # rx literal  "("
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    ord $I11, rx690_tgt, $I11
    ne $I11, 40, rx690_fail
    add rx690_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."arglist"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx690_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx690_pos, 1
    gt $I11, rx690_eos, rx690_fail
    sub $I11, rx690_pos, rx690_off
    ord $I11, rx690_tgt, $I11
    ne $I11, 41, rx690_fail
    add rx690_pos, 1
    goto alt696_end
  alt696_4:
.annotate 'line', 178
  # rx subrule "normspace" subtype=method negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."normspace"()
    unless $P10, rx690_fail
    rx690_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx690_cur."!cursor_pos"(rx690_pos)
    $P10 = rx690_cur."nibbler"()
    unless $P10, rx690_fail
    rx690_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx690_pos = $P10."pos"()
  alt696_end:
.annotate 'line', 179
    set_addr $I10, rxquantr695_done
    (rx690_rep) = rx690_cur."!mark_commit"($I10)
  rxquantr695_done:
.annotate 'line', 171
  # rx pass
    rx690_cur."!cursor_pass"(rx690_pos, "assertion:sym<name>")
    if_null rx690_debug, debug_612
    rx690_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx690_pos)
  debug_612:
    .return (rx690_cur)
  rx690_restart:
.annotate 'line', 11
    if_null rx690_debug, debug_613
    rx690_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_613:
  rx690_fail:
    (rx690_rep, rx690_pos, $I10, $P10) = rx690_cur."!mark_fail"(0)
    lt rx690_pos, -1, rx690_done
    eq rx690_pos, -1, rx690_fail
    jump $I10
  rx690_done:
    rx690_cur."!cursor_fail"()
    if_null rx690_debug, debug_614
    rx690_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_614:
    .return (rx690_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :nsentry("!PREFIX__assertion:sym<name>") :subid("211_1304282272.255") :method
.annotate 'line', 11
    $P692 = self."!PREFIX__!subrule"("identifier", "")
    new $P693, "ResizablePMCArray"
    push $P693, $P692
    .return ($P693)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block697"  :anon :subid("212_1304282272.255") :method :outer("210_1304282272.255")
.annotate 'line', 174
    .local string rx699_tgt
    .local int rx699_pos
    .local int rx699_off
    .local int rx699_eos
    .local int rx699_rep
    .local pmc rx699_cur
    .local pmc rx699_debug
    (rx699_cur, rx699_pos, rx699_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx699_cur
    .local pmc match
    .lex "$/", match
    length rx699_eos, rx699_tgt
    gt rx699_pos, rx699_eos, rx699_done
    set rx699_off, 0
    lt rx699_pos, 2, rx699_start
    sub rx699_off, rx699_pos, 1
    substr rx699_tgt, rx699_tgt, rx699_off
  rx699_start:
    eq $I10, 1, rx699_restart
    if_null rx699_debug, debug_608
    rx699_cur."!cursor_debug"("START", "")
  debug_608:
    $I10 = self.'from'()
    ne $I10, -1, rxscan700_done
    goto rxscan700_scan
  rxscan700_loop:
    (rx699_pos) = rx699_cur."from"()
    inc rx699_pos
    rx699_cur."!cursor_from"(rx699_pos)
    ge rx699_pos, rx699_eos, rxscan700_done
  rxscan700_scan:
    set_addr $I10, rxscan700_loop
    rx699_cur."!mark_push"(0, rx699_pos, $I10)
  rxscan700_done:
  # rx literal  ">"
    add $I11, rx699_pos, 1
    gt $I11, rx699_eos, rx699_fail
    sub $I11, rx699_pos, rx699_off
    ord $I11, rx699_tgt, $I11
    ne $I11, 62, rx699_fail
    add rx699_pos, 1
  # rx pass
    rx699_cur."!cursor_pass"(rx699_pos, "")
    if_null rx699_debug, debug_609
    rx699_cur."!cursor_debug"("PASS", "", " at pos=", rx699_pos)
  debug_609:
    .return (rx699_cur)
  rx699_restart:
    if_null rx699_debug, debug_610
    rx699_cur."!cursor_debug"("NEXT", "")
  debug_610:
  rx699_fail:
    (rx699_rep, rx699_pos, $I10, $P10) = rx699_cur."!mark_fail"(0)
    lt rx699_pos, -1, rx699_done
    eq rx699_pos, -1, rx699_fail
    jump $I10
  rx699_done:
    rx699_cur."!cursor_fail"()
    if_null rx699_debug, debug_611
    rx699_cur."!cursor_debug"("FAIL", "")
  debug_611:
    .return (rx699_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("213_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P702 = self."!PREFIX__!subrule"("identifier", "")
    new $P703, "ResizablePMCArray"
    push $P703, $P702
    .return ($P703)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("214_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P710 = "216_1304282272.255" 
    capture_lex $P710
    .local string rx705_tgt
    .local int rx705_pos
    .local int rx705_off
    .local int rx705_eos
    .local int rx705_rep
    .local pmc rx705_cur
    .local pmc rx705_debug
    (rx705_cur, rx705_pos, rx705_tgt, $I10) = self."!cursor_start"()
    rx705_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx705_cur
    .local pmc match
    .lex "$/", match
    length rx705_eos, rx705_tgt
    gt rx705_pos, rx705_eos, rx705_done
    set rx705_off, 0
    lt rx705_pos, 2, rx705_start
    sub rx705_off, rx705_pos, 1
    substr rx705_tgt, rx705_tgt, rx705_off
  rx705_start:
    eq $I10, 1, rx705_restart
    if_null rx705_debug, debug_615
    rx705_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_615:
    $I10 = self.'from'()
    ne $I10, -1, rxscan708_done
    goto rxscan708_scan
  rxscan708_loop:
    (rx705_pos) = rx705_cur."from"()
    inc rx705_pos
    rx705_cur."!cursor_from"(rx705_pos)
    ge rx705_pos, rx705_eos, rxscan708_done
  rxscan708_scan:
    set_addr $I10, rxscan708_loop
    rx705_cur."!mark_push"(0, rx705_pos, $I10)
  rxscan708_done:
.annotate 'line', 182
  # rx subrule "before" subtype=zerowidth negate=
    rx705_cur."!cursor_pos"(rx705_pos)
    .const 'Sub' $P710 = "216_1304282272.255" 
    capture_lex $P710
    $P10 = rx705_cur."before"($P710)
    unless $P10, rx705_fail
  # rx rxquantr714 ** 1..*
    set_addr $I10, rxquantr714_done
    rx705_cur."!mark_push"(0, -1, $I10)
  rxquantr714_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx705_cur."!cursor_pos"(rx705_pos)
    $P10 = rx705_cur."cclass_elem"()
    unless $P10, rx705_fail
    goto rxsubrule715_pass
  rxsubrule715_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx705_fail
  rxsubrule715_pass:
    set_addr $I10, rxsubrule715_back
    rx705_cur."!mark_push"(0, rx705_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx705_pos = $P10."pos"()
    set_addr $I10, rxquantr714_done
    (rx705_rep) = rx705_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr714_done
    rx705_cur."!mark_push"(rx705_rep, rx705_pos, $I10)
    goto rxquantr714_loop
  rxquantr714_done:
  # rx pass
    rx705_cur."!cursor_pass"(rx705_pos, "assertion:sym<[>")
    if_null rx705_debug, debug_620
    rx705_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx705_pos)
  debug_620:
    .return (rx705_cur)
  rx705_restart:
.annotate 'line', 11
    if_null rx705_debug, debug_621
    rx705_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_621:
  rx705_fail:
    (rx705_rep, rx705_pos, $I10, $P10) = rx705_cur."!mark_fail"(0)
    lt rx705_pos, -1, rx705_done
    eq rx705_pos, -1, rx705_fail
    jump $I10
  rx705_done:
    rx705_cur."!cursor_fail"()
    if_null rx705_debug, debug_622
    rx705_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_622:
    .return (rx705_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :nsentry("!PREFIX__assertion:sym<[>") :subid("215_1304282272.255") :method
.annotate 'line', 11
    new $P707, "ResizablePMCArray"
    push $P707, ""
    .return ($P707)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block709"  :anon :subid("216_1304282272.255") :method :outer("214_1304282272.255")
.annotate 'line', 182
    .local string rx711_tgt
    .local int rx711_pos
    .local int rx711_off
    .local int rx711_eos
    .local int rx711_rep
    .local pmc rx711_cur
    .local pmc rx711_debug
    (rx711_cur, rx711_pos, rx711_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx711_cur
    .local pmc match
    .lex "$/", match
    length rx711_eos, rx711_tgt
    gt rx711_pos, rx711_eos, rx711_done
    set rx711_off, 0
    lt rx711_pos, 2, rx711_start
    sub rx711_off, rx711_pos, 1
    substr rx711_tgt, rx711_tgt, rx711_off
  rx711_start:
    eq $I10, 1, rx711_restart
    if_null rx711_debug, debug_616
    rx711_cur."!cursor_debug"("START", "")
  debug_616:
    $I10 = self.'from'()
    ne $I10, -1, rxscan712_done
    goto rxscan712_scan
  rxscan712_loop:
    (rx711_pos) = rx711_cur."from"()
    inc rx711_pos
    rx711_cur."!cursor_from"(rx711_pos)
    ge rx711_pos, rx711_eos, rxscan712_done
  rxscan712_scan:
    set_addr $I10, rxscan712_loop
    rx711_cur."!mark_push"(0, rx711_pos, $I10)
  rxscan712_done:
  alt713_0:
    set_addr $I10, alt713_1
    rx711_cur."!mark_push"(0, rx711_pos, $I10)
  # rx literal  "["
    add $I11, rx711_pos, 1
    gt $I11, rx711_eos, rx711_fail
    sub $I11, rx711_pos, rx711_off
    ord $I11, rx711_tgt, $I11
    ne $I11, 91, rx711_fail
    add rx711_pos, 1
    goto alt713_end
  alt713_1:
    set_addr $I10, alt713_2
    rx711_cur."!mark_push"(0, rx711_pos, $I10)
  # rx literal  "+"
    add $I11, rx711_pos, 1
    gt $I11, rx711_eos, rx711_fail
    sub $I11, rx711_pos, rx711_off
    ord $I11, rx711_tgt, $I11
    ne $I11, 43, rx711_fail
    add rx711_pos, 1
    goto alt713_end
  alt713_2:
  # rx literal  "-"
    add $I11, rx711_pos, 1
    gt $I11, rx711_eos, rx711_fail
    sub $I11, rx711_pos, rx711_off
    ord $I11, rx711_tgt, $I11
    ne $I11, 45, rx711_fail
    add rx711_pos, 1
  alt713_end:
  # rx pass
    rx711_cur."!cursor_pass"(rx711_pos, "")
    if_null rx711_debug, debug_617
    rx711_cur."!cursor_debug"("PASS", "", " at pos=", rx711_pos)
  debug_617:
    .return (rx711_cur)
  rx711_restart:
    if_null rx711_debug, debug_618
    rx711_cur."!cursor_debug"("NEXT", "")
  debug_618:
  rx711_fail:
    (rx711_rep, rx711_pos, $I10, $P10) = rx711_cur."!mark_fail"(0)
    lt rx711_pos, -1, rx711_done
    eq rx711_pos, -1, rx711_fail
    jump $I10
  rx711_done:
    rx711_cur."!cursor_fail"()
    if_null rx711_debug, debug_619
    rx711_cur."!cursor_debug"("FAIL", "")
  debug_619:
    .return (rx711_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("217_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P717, "ResizablePMCArray"
    push $P717, ""
    .return ($P717)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("218_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P730 = "220_1304282272.255" 
    capture_lex $P730
    .local string rx719_tgt
    .local int rx719_pos
    .local int rx719_off
    .local int rx719_eos
    .local int rx719_rep
    .local pmc rx719_cur
    .local pmc rx719_debug
    (rx719_cur, rx719_pos, rx719_tgt, $I10) = self."!cursor_start"()
    rx719_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx719_cur
    .local pmc match
    .lex "$/", match
    length rx719_eos, rx719_tgt
    gt rx719_pos, rx719_eos, rx719_done
    set rx719_off, 0
    lt rx719_pos, 2, rx719_start
    sub rx719_off, rx719_pos, 1
    substr rx719_tgt, rx719_tgt, rx719_off
  rx719_start:
    eq $I10, 1, rx719_restart
    if_null rx719_debug, debug_623
    rx719_cur."!cursor_debug"("START", "cclass_elem")
  debug_623:
    $I10 = self.'from'()
    ne $I10, -1, rxscan722_done
    goto rxscan722_scan
  rxscan722_loop:
    (rx719_pos) = rx719_cur."from"()
    inc rx719_pos
    rx719_cur."!cursor_from"(rx719_pos)
    ge rx719_pos, rx719_eos, rxscan722_done
  rxscan722_scan:
    set_addr $I10, rxscan722_loop
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxscan722_done:
.annotate 'line', 185
  # rx subcapture "sign"
    set_addr $I10, rxcap_724_fail
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  alt723_0:
    set_addr $I10, alt723_1
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  # rx literal  "+"
    add $I11, rx719_pos, 1
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    ord $I11, rx719_tgt, $I11
    ne $I11, 43, rx719_fail
    add rx719_pos, 1
    goto alt723_end
  alt723_1:
    set_addr $I10, alt723_2
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  # rx literal  "-"
    add $I11, rx719_pos, 1
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    ord $I11, rx719_tgt, $I11
    ne $I11, 45, rx719_fail
    add rx719_pos, 1
    goto alt723_end
  alt723_2:
  alt723_end:
    set_addr $I10, rxcap_724_fail
    ($I12, $I11) = rx719_cur."!mark_peek"($I10)
    rx719_cur."!cursor_pos"($I11)
    ($P10) = rx719_cur."!cursor_start"()
    $P10."!cursor_pass"(rx719_pos, "")
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_724_done
  rxcap_724_fail:
    goto rx719_fail
  rxcap_724_done:
.annotate 'line', 186
  # rx rxquantr725 ** 0..1
    set_addr $I10, rxquantr725_done
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxquantr725_loop:
  # rx subrule "normspace" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."normspace"()
    unless $P10, rx719_fail
    goto rxsubrule726_pass
  rxsubrule726_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx719_fail
  rxsubrule726_pass:
    set_addr $I10, rxsubrule726_back
    rx719_cur."!mark_push"(0, rx719_pos, $I10, $P10)
    rx719_pos = $P10."pos"()
    set_addr $I10, rxquantr725_done
    (rx719_rep) = rx719_cur."!mark_commit"($I10)
  rxquantr725_done:
  alt727_0:
.annotate 'line', 187
    set_addr $I10, alt727_1
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
.annotate 'line', 188
  # rx literal  "["
    add $I11, rx719_pos, 1
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    ord $I11, rx719_tgt, $I11
    ne $I11, 91, rx719_fail
    add rx719_pos, 1
.annotate 'line', 191
  # rx rxquantr728 ** 0..*
    set_addr $I10, rxquantr728_done
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxquantr728_loop:
.annotate 'line', 188
  # rx subrule $P730 subtype=capture negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    .const 'Sub' $P730 = "220_1304282272.255" 
    capture_lex $P730
    $P10 = rx719_cur.$P730()
    unless $P10, rx719_fail
    goto rxsubrule748_pass
  rxsubrule748_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx719_fail
  rxsubrule748_pass:
    set_addr $I10, rxsubrule748_back
    rx719_cur."!mark_push"(0, rx719_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx719_pos = $P10."pos"()
.annotate 'line', 191
    set_addr $I10, rxquantr728_done
    (rx719_rep) = rx719_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr728_done
    rx719_cur."!mark_push"(rx719_rep, rx719_pos, $I10)
    goto rxquantr728_loop
  rxquantr728_done:
.annotate 'line', 192
  # rx charclass_q s r 0..-1
    sub $I10, rx719_pos, rx719_off
    find_not_cclass $I11, 32, rx719_tgt, $I10, rx719_eos
    add rx719_pos, rx719_off, $I11
  # rx literal  "]"
    add $I11, rx719_pos, 1
    gt $I11, rx719_eos, rx719_fail
    sub $I11, rx719_pos, rx719_off
    ord $I11, rx719_tgt, $I11
    ne $I11, 93, rx719_fail
    add rx719_pos, 1
.annotate 'line', 188
    goto alt727_end
  alt727_1:
.annotate 'line', 193
  # rx subcapture "name"
    set_addr $I10, rxcap_749_fail
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx719_pos, rx719_off
    find_not_cclass $I11, 8192, rx719_tgt, $I10, rx719_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx719_fail
    add rx719_pos, rx719_off, $I11
    set_addr $I10, rxcap_749_fail
    ($I12, $I11) = rx719_cur."!mark_peek"($I10)
    rx719_cur."!cursor_pos"($I11)
    ($P10) = rx719_cur."!cursor_start"()
    $P10."!cursor_pass"(rx719_pos, "")
    rx719_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_749_done
  rxcap_749_fail:
    goto rx719_fail
  rxcap_749_done:
  alt727_end:
.annotate 'line', 195
  # rx rxquantr750 ** 0..1
    set_addr $I10, rxquantr750_done
    rx719_cur."!mark_push"(0, rx719_pos, $I10)
  rxquantr750_loop:
  # rx subrule "normspace" subtype=method negate=
    rx719_cur."!cursor_pos"(rx719_pos)
    $P10 = rx719_cur."normspace"()
    unless $P10, rx719_fail
    goto rxsubrule751_pass
  rxsubrule751_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx719_fail
  rxsubrule751_pass:
    set_addr $I10, rxsubrule751_back
    rx719_cur."!mark_push"(0, rx719_pos, $I10, $P10)
    rx719_pos = $P10."pos"()
    set_addr $I10, rxquantr750_done
    (rx719_rep) = rx719_cur."!mark_commit"($I10)
  rxquantr750_done:
.annotate 'line', 184
  # rx pass
    rx719_cur."!cursor_pass"(rx719_pos, "cclass_elem")
    if_null rx719_debug, debug_640
    rx719_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx719_pos)
  debug_640:
    .return (rx719_cur)
  rx719_restart:
.annotate 'line', 11
    if_null rx719_debug, debug_641
    rx719_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_641:
  rx719_fail:
    (rx719_rep, rx719_pos, $I10, $P10) = rx719_cur."!mark_fail"(0)
    lt rx719_pos, -1, rx719_done
    eq rx719_pos, -1, rx719_fail
    jump $I10
  rx719_done:
    rx719_cur."!cursor_fail"()
    if_null rx719_debug, debug_642
    rx719_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_642:
    .return (rx719_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :nsentry("!PREFIX__cclass_elem") :subid("219_1304282272.255") :method
.annotate 'line', 11
    new $P721, "ResizablePMCArray"
    push $P721, ""
    push $P721, "-"
    push $P721, "+"
    .return ($P721)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block729"  :anon :subid("220_1304282272.255") :method :outer("218_1304282272.255")
.annotate 'line', 188
    .const 'Sub' $P745 = "223_1304282272.255" 
    capture_lex $P745
    .const 'Sub' $P740 = "222_1304282272.255" 
    capture_lex $P740
    .const 'Sub' $P736 = "221_1304282272.255" 
    capture_lex $P736
    .local string rx731_tgt
    .local int rx731_pos
    .local int rx731_off
    .local int rx731_eos
    .local int rx731_rep
    .local pmc rx731_cur
    .local pmc rx731_debug
    (rx731_cur, rx731_pos, rx731_tgt, $I10) = self."!cursor_start"()
    rx731_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx731_cur
    .local pmc match
    .lex "$/", match
    length rx731_eos, rx731_tgt
    gt rx731_pos, rx731_eos, rx731_done
    set rx731_off, 0
    lt rx731_pos, 2, rx731_start
    sub rx731_off, rx731_pos, 1
    substr rx731_tgt, rx731_tgt, rx731_off
  rx731_start:
    eq $I10, 1, rx731_restart
    if_null rx731_debug, debug_624
    rx731_cur."!cursor_debug"("START", "")
  debug_624:
    $I10 = self.'from'()
    ne $I10, -1, rxscan732_done
    goto rxscan732_scan
  rxscan732_loop:
    (rx731_pos) = rx731_cur."from"()
    inc rx731_pos
    rx731_cur."!cursor_from"(rx731_pos)
    ge rx731_pos, rx731_eos, rxscan732_done
  rxscan732_scan:
    set_addr $I10, rxscan732_loop
    rx731_cur."!mark_push"(0, rx731_pos, $I10)
  rxscan732_done:
  alt733_0:
    set_addr $I10, alt733_1
    rx731_cur."!mark_push"(0, rx731_pos, $I10)
.annotate 'line', 189
  # rx charclass_q s r 0..-1
    sub $I10, rx731_pos, rx731_off
    find_not_cclass $I11, 32, rx731_tgt, $I10, rx731_eos
    add rx731_pos, rx731_off, $I11
  # rx literal  "-"
    add $I11, rx731_pos, 1
    gt $I11, rx731_eos, rx731_fail
    sub $I11, rx731_pos, rx731_off
    ord $I11, rx731_tgt, $I11
    ne $I11, 45, rx731_fail
    add rx731_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx731_cur."!cursor_pos"(rx731_pos)
    $P10 = rx731_cur."obs"("- as character range", "..")
    unless $P10, rx731_fail
    rx731_pos = $P10."pos"()
    goto alt733_end
  alt733_1:
.annotate 'line', 190
  # rx charclass_q s r 0..-1
    sub $I10, rx731_pos, rx731_off
    find_not_cclass $I11, 32, rx731_tgt, $I10, rx731_eos
    add rx731_pos, rx731_off, $I11
  alt734_0:
    set_addr $I10, alt734_1
    rx731_cur."!mark_push"(0, rx731_pos, $I10)
  # rx literal  "\\"
    add $I11, rx731_pos, 1
    gt $I11, rx731_eos, rx731_fail
    sub $I11, rx731_pos, rx731_off
    ord $I11, rx731_tgt, $I11
    ne $I11, 92, rx731_fail
    add rx731_pos, 1
  # rx subrule $P736 subtype=capture negate=
    rx731_cur."!cursor_pos"(rx731_pos)
    .const 'Sub' $P736 = "221_1304282272.255" 
    capture_lex $P736
    $P10 = rx731_cur.$P736()
    unless $P10, rx731_fail
    rx731_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx731_pos = $P10."pos"()
    goto alt734_end
  alt734_1:
  # rx subrule $P740 subtype=capture negate=
    rx731_cur."!cursor_pos"(rx731_pos)
    .const 'Sub' $P740 = "222_1304282272.255" 
    capture_lex $P740
    $P10 = rx731_cur.$P740()
    unless $P10, rx731_fail
    rx731_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx731_pos = $P10."pos"()
  alt734_end:
  # rx rxquantr743 ** 0..1
    set_addr $I10, rxquantr743_done
    rx731_cur."!mark_push"(0, rx731_pos, $I10)
  rxquantr743_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx731_pos, rx731_off
    find_not_cclass $I11, 32, rx731_tgt, $I10, rx731_eos
    add rx731_pos, rx731_off, $I11
  # rx literal  ".."
    add $I11, rx731_pos, 2
    gt $I11, rx731_eos, rx731_fail
    sub $I11, rx731_pos, rx731_off
    substr $S10, rx731_tgt, $I11, 2
    ne $S10, "..", rx731_fail
    add rx731_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx731_pos, rx731_off
    find_not_cclass $I11, 32, rx731_tgt, $I10, rx731_eos
    add rx731_pos, rx731_off, $I11
  # rx subrule $P745 subtype=capture negate=
    rx731_cur."!cursor_pos"(rx731_pos)
    .const 'Sub' $P745 = "223_1304282272.255" 
    capture_lex $P745
    $P10 = rx731_cur.$P745()
    unless $P10, rx731_fail
    rx731_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx731_pos = $P10."pos"()
    set_addr $I10, rxquantr743_done
    (rx731_rep) = rx731_cur."!mark_commit"($I10)
  rxquantr743_done:
  alt733_end:
.annotate 'line', 188
  # rx pass
    rx731_cur."!cursor_pass"(rx731_pos, "")
    if_null rx731_debug, debug_637
    rx731_cur."!cursor_debug"("PASS", "", " at pos=", rx731_pos)
  debug_637:
    .return (rx731_cur)
  rx731_restart:
    if_null rx731_debug, debug_638
    rx731_cur."!cursor_debug"("NEXT", "")
  debug_638:
  rx731_fail:
    (rx731_rep, rx731_pos, $I10, $P10) = rx731_cur."!mark_fail"(0)
    lt rx731_pos, -1, rx731_done
    eq rx731_pos, -1, rx731_fail
    jump $I10
  rx731_done:
    rx731_cur."!cursor_fail"()
    if_null rx731_debug, debug_639
    rx731_cur."!cursor_debug"("FAIL", "")
  debug_639:
    .return (rx731_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block735"  :anon :subid("221_1304282272.255") :method :outer("220_1304282272.255")
.annotate 'line', 190
    .local string rx737_tgt
    .local int rx737_pos
    .local int rx737_off
    .local int rx737_eos
    .local int rx737_rep
    .local pmc rx737_cur
    .local pmc rx737_debug
    (rx737_cur, rx737_pos, rx737_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx737_cur
    .local pmc match
    .lex "$/", match
    length rx737_eos, rx737_tgt
    gt rx737_pos, rx737_eos, rx737_done
    set rx737_off, 0
    lt rx737_pos, 2, rx737_start
    sub rx737_off, rx737_pos, 1
    substr rx737_tgt, rx737_tgt, rx737_off
  rx737_start:
    eq $I10, 1, rx737_restart
    if_null rx737_debug, debug_625
    rx737_cur."!cursor_debug"("START", "")
  debug_625:
    $I10 = self.'from'()
    ne $I10, -1, rxscan738_done
    goto rxscan738_scan
  rxscan738_loop:
    (rx737_pos) = rx737_cur."from"()
    inc rx737_pos
    rx737_cur."!cursor_from"(rx737_pos)
    ge rx737_pos, rx737_eos, rxscan738_done
  rxscan738_scan:
    set_addr $I10, rxscan738_loop
    rx737_cur."!mark_push"(0, rx737_pos, $I10)
  rxscan738_done:
  # rx charclass .
    ge rx737_pos, rx737_eos, rx737_fail
    inc rx737_pos
  # rx pass
    rx737_cur."!cursor_pass"(rx737_pos, "")
    if_null rx737_debug, debug_626
    rx737_cur."!cursor_debug"("PASS", "", " at pos=", rx737_pos)
  debug_626:
    .return (rx737_cur)
  rx737_restart:
    if_null rx737_debug, debug_627
    rx737_cur."!cursor_debug"("NEXT", "")
  debug_627:
  rx737_fail:
    (rx737_rep, rx737_pos, $I10, $P10) = rx737_cur."!mark_fail"(0)
    lt rx737_pos, -1, rx737_done
    eq rx737_pos, -1, rx737_fail
    jump $I10
  rx737_done:
    rx737_cur."!cursor_fail"()
    if_null rx737_debug, debug_628
    rx737_cur."!cursor_debug"("FAIL", "")
  debug_628:
    .return (rx737_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block739"  :anon :subid("222_1304282272.255") :method :outer("220_1304282272.255")
.annotate 'line', 190
    .local string rx741_tgt
    .local int rx741_pos
    .local int rx741_off
    .local int rx741_eos
    .local int rx741_rep
    .local pmc rx741_cur
    .local pmc rx741_debug
    (rx741_cur, rx741_pos, rx741_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx741_cur
    .local pmc match
    .lex "$/", match
    length rx741_eos, rx741_tgt
    gt rx741_pos, rx741_eos, rx741_done
    set rx741_off, 0
    lt rx741_pos, 2, rx741_start
    sub rx741_off, rx741_pos, 1
    substr rx741_tgt, rx741_tgt, rx741_off
  rx741_start:
    eq $I10, 1, rx741_restart
    if_null rx741_debug, debug_629
    rx741_cur."!cursor_debug"("START", "")
  debug_629:
    $I10 = self.'from'()
    ne $I10, -1, rxscan742_done
    goto rxscan742_scan
  rxscan742_loop:
    (rx741_pos) = rx741_cur."from"()
    inc rx741_pos
    rx741_cur."!cursor_from"(rx741_pos)
    ge rx741_pos, rx741_eos, rxscan742_done
  rxscan742_scan:
    set_addr $I10, rxscan742_loop
    rx741_cur."!mark_push"(0, rx741_pos, $I10)
  rxscan742_done:
  # rx enumcharlist negate=1 
    ge rx741_pos, rx741_eos, rx741_fail
    sub $I10, rx741_pos, rx741_off
    substr $S10, rx741_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx741_fail
    inc rx741_pos
  # rx pass
    rx741_cur."!cursor_pass"(rx741_pos, "")
    if_null rx741_debug, debug_630
    rx741_cur."!cursor_debug"("PASS", "", " at pos=", rx741_pos)
  debug_630:
    .return (rx741_cur)
  rx741_restart:
    if_null rx741_debug, debug_631
    rx741_cur."!cursor_debug"("NEXT", "")
  debug_631:
  rx741_fail:
    (rx741_rep, rx741_pos, $I10, $P10) = rx741_cur."!mark_fail"(0)
    lt rx741_pos, -1, rx741_done
    eq rx741_pos, -1, rx741_fail
    jump $I10
  rx741_done:
    rx741_cur."!cursor_fail"()
    if_null rx741_debug, debug_632
    rx741_cur."!cursor_debug"("FAIL", "")
  debug_632:
    .return (rx741_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block744"  :anon :subid("223_1304282272.255") :method :outer("220_1304282272.255")
.annotate 'line', 190
    .local string rx746_tgt
    .local int rx746_pos
    .local int rx746_off
    .local int rx746_eos
    .local int rx746_rep
    .local pmc rx746_cur
    .local pmc rx746_debug
    (rx746_cur, rx746_pos, rx746_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx746_cur
    .local pmc match
    .lex "$/", match
    length rx746_eos, rx746_tgt
    gt rx746_pos, rx746_eos, rx746_done
    set rx746_off, 0
    lt rx746_pos, 2, rx746_start
    sub rx746_off, rx746_pos, 1
    substr rx746_tgt, rx746_tgt, rx746_off
  rx746_start:
    eq $I10, 1, rx746_restart
    if_null rx746_debug, debug_633
    rx746_cur."!cursor_debug"("START", "")
  debug_633:
    $I10 = self.'from'()
    ne $I10, -1, rxscan747_done
    goto rxscan747_scan
  rxscan747_loop:
    (rx746_pos) = rx746_cur."from"()
    inc rx746_pos
    rx746_cur."!cursor_from"(rx746_pos)
    ge rx746_pos, rx746_eos, rxscan747_done
  rxscan747_scan:
    set_addr $I10, rxscan747_loop
    rx746_cur."!mark_push"(0, rx746_pos, $I10)
  rxscan747_done:
  # rx charclass .
    ge rx746_pos, rx746_eos, rx746_fail
    inc rx746_pos
  # rx pass
    rx746_cur."!cursor_pass"(rx746_pos, "")
    if_null rx746_debug, debug_634
    rx746_cur."!cursor_debug"("PASS", "", " at pos=", rx746_pos)
  debug_634:
    .return (rx746_cur)
  rx746_restart:
    if_null rx746_debug, debug_635
    rx746_cur."!cursor_debug"("NEXT", "")
  debug_635:
  rx746_fail:
    (rx746_rep, rx746_pos, $I10, $P10) = rx746_cur."!mark_fail"(0)
    lt rx746_pos, -1, rx746_done
    eq rx746_pos, -1, rx746_fail
    jump $I10
  rx746_done:
    rx746_cur."!cursor_fail"()
    if_null rx746_debug, debug_636
    rx746_cur."!cursor_debug"("FAIL", "")
  debug_636:
    .return (rx746_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("224_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P753, "ResizablePMCArray"
    push $P753, ""
    push $P753, "-"
    push $P753, "+"
    .return ($P753)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("225_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .const 'Sub' $P763 = "227_1304282272.255" 
    capture_lex $P763
    .local string rx755_tgt
    .local int rx755_pos
    .local int rx755_off
    .local int rx755_eos
    .local int rx755_rep
    .local pmc rx755_cur
    .local pmc rx755_debug
    (rx755_cur, rx755_pos, rx755_tgt, $I10) = self."!cursor_start"()
    rx755_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx755_cur
    .local pmc match
    .lex "$/", match
    length rx755_eos, rx755_tgt
    gt rx755_pos, rx755_eos, rx755_done
    set rx755_off, 0
    lt rx755_pos, 2, rx755_start
    sub rx755_off, rx755_pos, 1
    substr rx755_tgt, rx755_tgt, rx755_off
  rx755_start:
    eq $I10, 1, rx755_restart
    if_null rx755_debug, debug_643
    rx755_cur."!cursor_debug"("START", "mod_internal")
  debug_643:
    $I10 = self.'from'()
    ne $I10, -1, rxscan759_done
    goto rxscan759_scan
  rxscan759_loop:
    (rx755_pos) = rx755_cur."from"()
    inc rx755_pos
    rx755_cur."!cursor_from"(rx755_pos)
    ge rx755_pos, rx755_eos, rxscan759_done
  rxscan759_scan:
    set_addr $I10, rxscan759_loop
    rx755_cur."!mark_push"(0, rx755_pos, $I10)
  rxscan759_done:
  alt760_0:
.annotate 'line', 199
    set_addr $I10, alt760_1
    rx755_cur."!mark_push"(0, rx755_pos, $I10)
.annotate 'line', 200
  # rx literal  ":"
    add $I11, rx755_pos, 1
    gt $I11, rx755_eos, rx755_fail
    sub $I11, rx755_pos, rx755_off
    ord $I11, rx755_tgt, $I11
    ne $I11, 58, rx755_fail
    add rx755_pos, 1
  # rx rxquantr761 ** 1..1
    set_addr $I10, rxquantr761_done
    rx755_cur."!mark_push"(0, -1, $I10)
  rxquantr761_loop:
  # rx subrule $P763 subtype=capture negate=
    rx755_cur."!cursor_pos"(rx755_pos)
    .const 'Sub' $P763 = "227_1304282272.255" 
    capture_lex $P763
    $P10 = rx755_cur.$P763()
    unless $P10, rx755_fail
    goto rxsubrule767_pass
  rxsubrule767_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx755_fail
  rxsubrule767_pass:
    set_addr $I10, rxsubrule767_back
    rx755_cur."!mark_push"(0, rx755_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx755_pos = $P10."pos"()
    set_addr $I10, rxquantr761_done
    (rx755_rep) = rx755_cur."!mark_commit"($I10)
  rxquantr761_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx755_cur."!cursor_pos"(rx755_pos)
    $P10 = rx755_cur."mod_ident"()
    unless $P10, rx755_fail
    rx755_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx755_pos = $P10."pos"()
  # rxanchor rwb
    le rx755_pos, 0, rx755_fail
    sub $I10, rx755_pos, rx755_off
    is_cclass $I11, 8192, rx755_tgt, $I10
    if $I11, rx755_fail
    dec $I10
    is_cclass $I11, 8192, rx755_tgt, $I10
    unless $I11, rx755_fail
    goto alt760_end
  alt760_1:
.annotate 'line', 201
  # rx literal  ":"
    add $I11, rx755_pos, 1
    gt $I11, rx755_eos, rx755_fail
    sub $I11, rx755_pos, rx755_off
    ord $I11, rx755_tgt, $I11
    ne $I11, 58, rx755_fail
    add rx755_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx755_cur."!cursor_pos"(rx755_pos)
    $P10 = rx755_cur."mod_ident"()
    unless $P10, rx755_fail
    rx755_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx755_pos = $P10."pos"()
  # rx rxquantr768 ** 0..1
    set_addr $I10, rxquantr768_done
    rx755_cur."!mark_push"(0, rx755_pos, $I10)
  rxquantr768_loop:
  # rx literal  "("
    add $I11, rx755_pos, 1
    gt $I11, rx755_eos, rx755_fail
    sub $I11, rx755_pos, rx755_off
    ord $I11, rx755_tgt, $I11
    ne $I11, 40, rx755_fail
    add rx755_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_769_fail
    rx755_cur."!mark_push"(0, rx755_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx755_pos, rx755_off
    find_not_cclass $I11, 8, rx755_tgt, $I10, rx755_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx755_fail
    add rx755_pos, rx755_off, $I11
    set_addr $I10, rxcap_769_fail
    ($I12, $I11) = rx755_cur."!mark_peek"($I10)
    rx755_cur."!cursor_pos"($I11)
    ($P10) = rx755_cur."!cursor_start"()
    $P10."!cursor_pass"(rx755_pos, "")
    rx755_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_769_done
  rxcap_769_fail:
    goto rx755_fail
  rxcap_769_done:
  # rx literal  ")"
    add $I11, rx755_pos, 1
    gt $I11, rx755_eos, rx755_fail
    sub $I11, rx755_pos, rx755_off
    ord $I11, rx755_tgt, $I11
    ne $I11, 41, rx755_fail
    add rx755_pos, 1
    set_addr $I10, rxquantr768_done
    (rx755_rep) = rx755_cur."!mark_commit"($I10)
  rxquantr768_done:
  alt760_end:
.annotate 'line', 198
  # rx pass
    rx755_cur."!cursor_pass"(rx755_pos, "mod_internal")
    if_null rx755_debug, debug_648
    rx755_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx755_pos)
  debug_648:
    .return (rx755_cur)
  rx755_restart:
.annotate 'line', 11
    if_null rx755_debug, debug_649
    rx755_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_649:
  rx755_fail:
    (rx755_rep, rx755_pos, $I10, $P10) = rx755_cur."!mark_fail"(0)
    lt rx755_pos, -1, rx755_done
    eq rx755_pos, -1, rx755_fail
    jump $I10
  rx755_done:
    rx755_cur."!cursor_fail"()
    if_null rx755_debug, debug_650
    rx755_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_650:
    .return (rx755_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :nsentry("!PREFIX__mod_internal") :subid("226_1304282272.255") :method
.annotate 'line', 11
    $P757 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P758, "ResizablePMCArray"
    push $P758, $P757
    push $P758, ":"
    .return ($P758)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block762"  :anon :subid("227_1304282272.255") :method :outer("225_1304282272.255")
.annotate 'line', 200
    .local string rx764_tgt
    .local int rx764_pos
    .local int rx764_off
    .local int rx764_eos
    .local int rx764_rep
    .local pmc rx764_cur
    .local pmc rx764_debug
    (rx764_cur, rx764_pos, rx764_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx764_cur
    .local pmc match
    .lex "$/", match
    length rx764_eos, rx764_tgt
    gt rx764_pos, rx764_eos, rx764_done
    set rx764_off, 0
    lt rx764_pos, 2, rx764_start
    sub rx764_off, rx764_pos, 1
    substr rx764_tgt, rx764_tgt, rx764_off
  rx764_start:
    eq $I10, 1, rx764_restart
    if_null rx764_debug, debug_644
    rx764_cur."!cursor_debug"("START", "")
  debug_644:
    $I10 = self.'from'()
    ne $I10, -1, rxscan765_done
    goto rxscan765_scan
  rxscan765_loop:
    (rx764_pos) = rx764_cur."from"()
    inc rx764_pos
    rx764_cur."!cursor_from"(rx764_pos)
    ge rx764_pos, rx764_eos, rxscan765_done
  rxscan765_scan:
    set_addr $I10, rxscan765_loop
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  rxscan765_done:
  alt766_0:
    set_addr $I10, alt766_1
    rx764_cur."!mark_push"(0, rx764_pos, $I10)
  # rx literal  "!"
    add $I11, rx764_pos, 1
    gt $I11, rx764_eos, rx764_fail
    sub $I11, rx764_pos, rx764_off
    ord $I11, rx764_tgt, $I11
    ne $I11, 33, rx764_fail
    add rx764_pos, 1
    goto alt766_end
  alt766_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx764_pos, rx764_off
    find_not_cclass $I11, 8, rx764_tgt, $I10, rx764_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx764_fail
    add rx764_pos, rx764_off, $I11
  alt766_end:
  # rx pass
    rx764_cur."!cursor_pass"(rx764_pos, "")
    if_null rx764_debug, debug_645
    rx764_cur."!cursor_debug"("PASS", "", " at pos=", rx764_pos)
  debug_645:
    .return (rx764_cur)
  rx764_restart:
    if_null rx764_debug, debug_646
    rx764_cur."!cursor_debug"("NEXT", "")
  debug_646:
  rx764_fail:
    (rx764_rep, rx764_pos, $I10, $P10) = rx764_cur."!mark_fail"(0)
    lt rx764_pos, -1, rx764_done
    eq rx764_pos, -1, rx764_fail
    jump $I10
  rx764_done:
    rx764_cur."!cursor_fail"()
    if_null rx764_debug, debug_647
    rx764_cur."!cursor_debug"("FAIL", "")
  debug_647:
    .return (rx764_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("228_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    $P771 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P772, "ResizablePMCArray"
    push $P772, $P771
    push $P772, ":"
    .return ($P772)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("229_1304282272.255")
    .param pmc param_774
.annotate 'line', 205
    .lex "self", param_774
    $P775 = param_774."!protoregex"("mod_ident")
    .return ($P775)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("230_1304282272.255")
    .param pmc param_777
.annotate 'line', 205
    .lex "self", param_777
    $P778 = param_777."!PREFIX__!protoregex"("mod_ident")
    .return ($P778)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("231_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx780_tgt
    .local int rx780_pos
    .local int rx780_off
    .local int rx780_eos
    .local int rx780_rep
    .local pmc rx780_cur
    .local pmc rx780_debug
    (rx780_cur, rx780_pos, rx780_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx780_cur
    .local pmc match
    .lex "$/", match
    length rx780_eos, rx780_tgt
    gt rx780_pos, rx780_eos, rx780_done
    set rx780_off, 0
    lt rx780_pos, 2, rx780_start
    sub rx780_off, rx780_pos, 1
    substr rx780_tgt, rx780_tgt, rx780_off
  rx780_start:
    eq $I10, 1, rx780_restart
    if_null rx780_debug, debug_651
    rx780_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_651:
    $I10 = self.'from'()
    ne $I10, -1, rxscan783_done
    goto rxscan783_scan
  rxscan783_loop:
    (rx780_pos) = rx780_cur."from"()
    inc rx780_pos
    rx780_cur."!cursor_from"(rx780_pos)
    ge rx780_pos, rx780_eos, rxscan783_done
  rxscan783_scan:
    set_addr $I10, rxscan783_loop
    rx780_cur."!mark_push"(0, rx780_pos, $I10)
  rxscan783_done:
.annotate 'line', 206
  # rx subcapture "sym"
    set_addr $I10, rxcap_784_fail
    rx780_cur."!mark_push"(0, rx780_pos, $I10)
  # rx literal  "i"
    add $I11, rx780_pos, 1
    gt $I11, rx780_eos, rx780_fail
    sub $I11, rx780_pos, rx780_off
    ord $I11, rx780_tgt, $I11
    ne $I11, 105, rx780_fail
    add rx780_pos, 1
    set_addr $I10, rxcap_784_fail
    ($I12, $I11) = rx780_cur."!mark_peek"($I10)
    rx780_cur."!cursor_pos"($I11)
    ($P10) = rx780_cur."!cursor_start"()
    $P10."!cursor_pass"(rx780_pos, "")
    rx780_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_784_done
  rxcap_784_fail:
    goto rx780_fail
  rxcap_784_done:
  # rx rxquantr785 ** 0..1
    set_addr $I10, rxquantr785_done
    rx780_cur."!mark_push"(0, rx780_pos, $I10)
  rxquantr785_loop:
  # rx literal  "gnorecase"
    add $I11, rx780_pos, 9
    gt $I11, rx780_eos, rx780_fail
    sub $I11, rx780_pos, rx780_off
    substr $S10, rx780_tgt, $I11, 9
    ne $S10, "gnorecase", rx780_fail
    add rx780_pos, 9
    set_addr $I10, rxquantr785_done
    (rx780_rep) = rx780_cur."!mark_commit"($I10)
  rxquantr785_done:
  # rx pass
    rx780_cur."!cursor_pass"(rx780_pos, "mod_ident:sym<ignorecase>")
    if_null rx780_debug, debug_652
    rx780_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx780_pos)
  debug_652:
    .return (rx780_cur)
  rx780_restart:
.annotate 'line', 11
    if_null rx780_debug, debug_653
    rx780_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_653:
  rx780_fail:
    (rx780_rep, rx780_pos, $I10, $P10) = rx780_cur."!mark_fail"(0)
    lt rx780_pos, -1, rx780_done
    eq rx780_pos, -1, rx780_fail
    jump $I10
  rx780_done:
    rx780_cur."!cursor_fail"()
    if_null rx780_debug, debug_654
    rx780_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_654:
    .return (rx780_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :nsentry("!PREFIX__mod_ident:sym<ignorecase>") :subid("232_1304282272.255") :method
.annotate 'line', 11
    new $P782, "ResizablePMCArray"
    push $P782, "i"
    .return ($P782)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("233_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P787, "ResizablePMCArray"
    push $P787, "i"
    .return ($P787)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("234_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx789_tgt
    .local int rx789_pos
    .local int rx789_off
    .local int rx789_eos
    .local int rx789_rep
    .local pmc rx789_cur
    .local pmc rx789_debug
    (rx789_cur, rx789_pos, rx789_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx789_cur
    .local pmc match
    .lex "$/", match
    length rx789_eos, rx789_tgt
    gt rx789_pos, rx789_eos, rx789_done
    set rx789_off, 0
    lt rx789_pos, 2, rx789_start
    sub rx789_off, rx789_pos, 1
    substr rx789_tgt, rx789_tgt, rx789_off
  rx789_start:
    eq $I10, 1, rx789_restart
    if_null rx789_debug, debug_655
    rx789_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_655:
    $I10 = self.'from'()
    ne $I10, -1, rxscan792_done
    goto rxscan792_scan
  rxscan792_loop:
    (rx789_pos) = rx789_cur."from"()
    inc rx789_pos
    rx789_cur."!cursor_from"(rx789_pos)
    ge rx789_pos, rx789_eos, rxscan792_done
  rxscan792_scan:
    set_addr $I10, rxscan792_loop
    rx789_cur."!mark_push"(0, rx789_pos, $I10)
  rxscan792_done:
.annotate 'line', 207
  # rx subcapture "sym"
    set_addr $I10, rxcap_793_fail
    rx789_cur."!mark_push"(0, rx789_pos, $I10)
  # rx literal  "r"
    add $I11, rx789_pos, 1
    gt $I11, rx789_eos, rx789_fail
    sub $I11, rx789_pos, rx789_off
    ord $I11, rx789_tgt, $I11
    ne $I11, 114, rx789_fail
    add rx789_pos, 1
    set_addr $I10, rxcap_793_fail
    ($I12, $I11) = rx789_cur."!mark_peek"($I10)
    rx789_cur."!cursor_pos"($I11)
    ($P10) = rx789_cur."!cursor_start"()
    $P10."!cursor_pass"(rx789_pos, "")
    rx789_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_793_done
  rxcap_793_fail:
    goto rx789_fail
  rxcap_793_done:
  # rx rxquantr794 ** 0..1
    set_addr $I10, rxquantr794_done
    rx789_cur."!mark_push"(0, rx789_pos, $I10)
  rxquantr794_loop:
  # rx literal  "atchet"
    add $I11, rx789_pos, 6
    gt $I11, rx789_eos, rx789_fail
    sub $I11, rx789_pos, rx789_off
    substr $S10, rx789_tgt, $I11, 6
    ne $S10, "atchet", rx789_fail
    add rx789_pos, 6
    set_addr $I10, rxquantr794_done
    (rx789_rep) = rx789_cur."!mark_commit"($I10)
  rxquantr794_done:
  # rx pass
    rx789_cur."!cursor_pass"(rx789_pos, "mod_ident:sym<ratchet>")
    if_null rx789_debug, debug_656
    rx789_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx789_pos)
  debug_656:
    .return (rx789_cur)
  rx789_restart:
.annotate 'line', 11
    if_null rx789_debug, debug_657
    rx789_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_657:
  rx789_fail:
    (rx789_rep, rx789_pos, $I10, $P10) = rx789_cur."!mark_fail"(0)
    lt rx789_pos, -1, rx789_done
    eq rx789_pos, -1, rx789_fail
    jump $I10
  rx789_done:
    rx789_cur."!cursor_fail"()
    if_null rx789_debug, debug_658
    rx789_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_658:
    .return (rx789_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :nsentry("!PREFIX__mod_ident:sym<ratchet>") :subid("235_1304282272.255") :method
.annotate 'line', 11
    new $P791, "ResizablePMCArray"
    push $P791, "r"
    .return ($P791)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("236_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P796, "ResizablePMCArray"
    push $P796, "r"
    .return ($P796)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("237_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    .local string rx798_tgt
    .local int rx798_pos
    .local int rx798_off
    .local int rx798_eos
    .local int rx798_rep
    .local pmc rx798_cur
    .local pmc rx798_debug
    (rx798_cur, rx798_pos, rx798_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx798_cur
    .local pmc match
    .lex "$/", match
    length rx798_eos, rx798_tgt
    gt rx798_pos, rx798_eos, rx798_done
    set rx798_off, 0
    lt rx798_pos, 2, rx798_start
    sub rx798_off, rx798_pos, 1
    substr rx798_tgt, rx798_tgt, rx798_off
  rx798_start:
    eq $I10, 1, rx798_restart
    if_null rx798_debug, debug_659
    rx798_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_659:
    $I10 = self.'from'()
    ne $I10, -1, rxscan801_done
    goto rxscan801_scan
  rxscan801_loop:
    (rx798_pos) = rx798_cur."from"()
    inc rx798_pos
    rx798_cur."!cursor_from"(rx798_pos)
    ge rx798_pos, rx798_eos, rxscan801_done
  rxscan801_scan:
    set_addr $I10, rxscan801_loop
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  rxscan801_done:
.annotate 'line', 208
  # rx subcapture "sym"
    set_addr $I10, rxcap_802_fail
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  # rx literal  "s"
    add $I11, rx798_pos, 1
    gt $I11, rx798_eos, rx798_fail
    sub $I11, rx798_pos, rx798_off
    ord $I11, rx798_tgt, $I11
    ne $I11, 115, rx798_fail
    add rx798_pos, 1
    set_addr $I10, rxcap_802_fail
    ($I12, $I11) = rx798_cur."!mark_peek"($I10)
    rx798_cur."!cursor_pos"($I11)
    ($P10) = rx798_cur."!cursor_start"()
    $P10."!cursor_pass"(rx798_pos, "")
    rx798_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_802_done
  rxcap_802_fail:
    goto rx798_fail
  rxcap_802_done:
  # rx rxquantr803 ** 0..1
    set_addr $I10, rxquantr803_done
    rx798_cur."!mark_push"(0, rx798_pos, $I10)
  rxquantr803_loop:
  # rx literal  "igspace"
    add $I11, rx798_pos, 7
    gt $I11, rx798_eos, rx798_fail
    sub $I11, rx798_pos, rx798_off
    substr $S10, rx798_tgt, $I11, 7
    ne $S10, "igspace", rx798_fail
    add rx798_pos, 7
    set_addr $I10, rxquantr803_done
    (rx798_rep) = rx798_cur."!mark_commit"($I10)
  rxquantr803_done:
  # rx pass
    rx798_cur."!cursor_pass"(rx798_pos, "mod_ident:sym<sigspace>")
    if_null rx798_debug, debug_660
    rx798_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx798_pos)
  debug_660:
    .return (rx798_cur)
  rx798_restart:
.annotate 'line', 11
    if_null rx798_debug, debug_661
    rx798_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_661:
  rx798_fail:
    (rx798_rep, rx798_pos, $I10, $P10) = rx798_cur."!mark_fail"(0)
    lt rx798_pos, -1, rx798_done
    eq rx798_pos, -1, rx798_fail
    jump $I10
  rx798_done:
    rx798_cur."!cursor_fail"()
    if_null rx798_debug, debug_662
    rx798_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_662:
    .return (rx798_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :nsentry("!PREFIX__mod_ident:sym<sigspace>") :subid("238_1304282272.255") :method
.annotate 'line', 11
    new $P800, "ResizablePMCArray"
    push $P800, "s"
    .return ($P800)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("239_1304282272.255") :method :outer("12_1304282272.255")
.annotate 'line', 11
    new $P805, "ResizablePMCArray"
    push $P805, "s"
    .return ($P805)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block811"  :subid("241_1304282272.255") :outer("10_1304282272.255")
.annotate 'line', 212
    .const 'Sub' $P2597 = "323_1304282272.255" 
    capture_lex $P2597
    .const 'Sub' $P2577 = "322_1304282272.255" 
    capture_lex $P2577
    .const 'Sub' $P2559 = "321_1304282272.255" 
    capture_lex $P2559
    .const 'Sub' $P2527 = "320_1304282272.255" 
    capture_lex $P2527
    .const 'Sub' $P2454 = "316_1304282272.255" 
    capture_lex $P2454
    .const 'Sub' $P2376 = "314_1304282272.255" 
    capture_lex $P2376
    .const 'Sub' $P2296 = "311_1304282272.255" 
    capture_lex $P2296
    .const 'Sub' $P2284 = "310_1304282272.255" 
    capture_lex $P2284
    .const 'Sub' $P2259 = "309_1304282272.255" 
    capture_lex $P2259
    .const 'Sub' $P2243 = "308_1304282272.255" 
    capture_lex $P2243
    .const 'Sub' $P2228 = "307_1304282272.255" 
    capture_lex $P2228
    .const 'Sub' $P2214 = "306_1304282272.255" 
    capture_lex $P2214
    .const 'Sub' $P2175 = "305_1304282272.255" 
    capture_lex $P2175
    .const 'Sub' $P2136 = "304_1304282272.255" 
    capture_lex $P2136
    .const 'Sub' $P2119 = "303_1304282272.255" 
    capture_lex $P2119
    .const 'Sub' $P2102 = "302_1304282272.255" 
    capture_lex $P2102
    .const 'Sub' $P2085 = "301_1304282272.255" 
    capture_lex $P2085
    .const 'Sub' $P2068 = "300_1304282272.255" 
    capture_lex $P2068
    .const 'Sub' $P2051 = "299_1304282272.255" 
    capture_lex $P2051
    .const 'Sub' $P2034 = "298_1304282272.255" 
    capture_lex $P2034
    .const 'Sub' $P2017 = "297_1304282272.255" 
    capture_lex $P2017
    .const 'Sub' $P1992 = "296_1304282272.255" 
    capture_lex $P1992
    .const 'Sub' $P1973 = "295_1304282272.255" 
    capture_lex $P1973
    .const 'Sub' $P1911 = "294_1304282272.255" 
    capture_lex $P1911
    .const 'Sub' $P1889 = "293_1304282272.255" 
    capture_lex $P1889
    .const 'Sub' $P1860 = "292_1304282272.255" 
    capture_lex $P1860
    .const 'Sub' $P1852 = "291_1304282272.255" 
    capture_lex $P1852
    .const 'Sub' $P1844 = "290_1304282272.255" 
    capture_lex $P1844
    .const 'Sub' $P1836 = "289_1304282272.255" 
    capture_lex $P1836
    .const 'Sub' $P1823 = "288_1304282272.255" 
    capture_lex $P1823
    .const 'Sub' $P1810 = "287_1304282272.255" 
    capture_lex $P1810
    .const 'Sub' $P1797 = "286_1304282272.255" 
    capture_lex $P1797
    .const 'Sub' $P1784 = "285_1304282272.255" 
    capture_lex $P1784
    .const 'Sub' $P1771 = "284_1304282272.255" 
    capture_lex $P1771
    .const 'Sub' $P1758 = "283_1304282272.255" 
    capture_lex $P1758
    .const 'Sub' $P1745 = "282_1304282272.255" 
    capture_lex $P1745
    .const 'Sub' $P1732 = "281_1304282272.255" 
    capture_lex $P1732
    .const 'Sub' $P1698 = "280_1304282272.255" 
    capture_lex $P1698
    .const 'Sub' $P1664 = "279_1304282272.255" 
    capture_lex $P1664
    .const 'Sub' $P1645 = "278_1304282272.255" 
    capture_lex $P1645
    .const 'Sub' $P1637 = "277_1304282272.255" 
    capture_lex $P1637
    .const 'Sub' $P1616 = "276_1304282272.255" 
    capture_lex $P1616
    .const 'Sub' $P1525 = "274_1304282272.255" 
    capture_lex $P1525
    .const 'Sub' $P1507 = "273_1304282272.255" 
    capture_lex $P1507
    .const 'Sub' $P1491 = "272_1304282272.255" 
    capture_lex $P1491
    .const 'Sub' $P1475 = "271_1304282272.255" 
    capture_lex $P1475
    .const 'Sub' $P1446 = "270_1304282272.255" 
    capture_lex $P1446
    .const 'Sub' $P1395 = "268_1304282272.255" 
    capture_lex $P1395
    .const 'Sub' $P1320 = "266_1304282272.255" 
    capture_lex $P1320
    .const 'Sub' $P1282 = "264_1304282272.255" 
    capture_lex $P1282
    .const 'Sub' $P1216 = "261_1304282272.255" 
    capture_lex $P1216
    .const 'Sub' $P1203 = "260_1304282272.255" 
    capture_lex $P1203
    .const 'Sub' $P1176 = "258_1304282272.255" 
    capture_lex $P1176
    .const 'Sub' $P1161 = "257_1304282272.255" 
    capture_lex $P1161
    .const 'Sub' $P1120 = "256_1304282272.255" 
    capture_lex $P1120
    .const 'Sub' $P868 = "243_1304282272.255" 
    capture_lex $P868
    .const 'Sub' $P813 = "242_1304282272.255" 
    capture_lex $P813
.annotate 'line', 719
    .const 'Sub' $P813 = "242_1304282272.255" 
    newclosure $P864, $P813
    .lex "buildsub", $P864
.annotate 'line', 212
    find_lex $P865, "buildsub"
    find_lex $P866, "$?PACKAGE"
    get_who $P867, $P866
    set $P867["buildsub"], $P865
.annotate 'line', 737
    .const 'Sub' $P868 = "243_1304282272.255" 
    newclosure $P1119, $P868
    .lex "capnames", $P1119
.annotate 'line', 803
    .const 'Sub' $P1120 = "256_1304282272.255" 
    newclosure $P1149, $P1120
    .lex "backmod", $P1149
.annotate 'line', 212
    .lex "$?PACKAGE", $P1150
    .lex "$?CLASS", $P1151
.annotate 'line', 219

            $P1152 = new ['ResizablePMCArray']
            $P0 = new ['Hash']
            push $P1152, $P0
        
    find_lex $P1153, "$?PACKAGE"
    get_who $P1154, $P1153
    set $P1154["@MODIFIERS"], $P1152
.annotate 'line', 212
    find_lex $P1155, "$?PACKAGE"
    get_who $P1156, $P1155
    set $P1157, $P1156["@MODIFIERS"]
    unless_null $P1157, vivify_781
    $P1157 = root_new ['parrot';'ResizablePMCArray']
  vivify_781:
    find_lex $P1158, "$?PACKAGE"
    get_who $P1159, $P1158
    set $P1160, $P1159["$REGEXNAME"]
    unless_null $P1160, vivify_782
    new $P1160, "Undef"
  vivify_782:
.annotate 'line', 712
    find_lex $P2556, "buildsub"
    find_lex $P2557, "capnames"
    find_lex $P2558, "backmod"
.annotate 'line', 816
    .const 'Sub' $P2577 = "322_1304282272.255" 
    newclosure $P2595, $P2577
.annotate 'line', 212
    .return ($P2595)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post663") :outer("241_1304282272.255")
.annotate 'line', 212
    .const 'Sub' $P812 = "241_1304282272.255" 
    .local pmc block
    set block, $P812
    .const 'Sub' $P2597 = "323_1304282272.255" 
    capture_lex $P2597
    $P2597()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2596"  :anon :subid("323_1304282272.255") :outer("241_1304282272.255")
.annotate 'line', 212
    nqp_get_sc_object $P2598, "1304282267.413", 145
    .local pmc type_obj
    set type_obj, $P2598
    get_how $P2599, type_obj
    $P2600 = $P2599."compose"(type_obj)
    .return ($P2600)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("242_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_814
    .param pmc param_815 :optional
    .param int has_param_815 :opt_flag
.annotate 'line', 719
    .lex "$rpast", param_814
    if has_param_815, optparam_664
    get_hll_global $P816, "GLOBAL"
    nqp_get_package_through_who $P817, $P816, "PAST"
    get_who $P818, $P817
    set $P819, $P818["Block"]
    $P820 = $P819."new"()
    set param_815, $P820
  optparam_664:
    .lex "$block", param_815
.annotate 'line', 720
    $P821 = root_new ['parrot';'Hash']
    .lex "%capnames", $P821
    find_lex $P822, "$rpast"
    unless_null $P822, vivify_665
    new $P822, "Undef"
  vivify_665:
    $P823 = "capnames"($P822, 0)
    store_lex "%capnames", $P823
.annotate 'line', 721
    new $P824, "Integer"
    assign $P824, 0
    find_lex $P825, "%capnames"
    unless_null $P825, vivify_666
    $P825 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P825
  vivify_666:
    set $P825[""], $P824
.annotate 'line', 722
    get_hll_global $P826, "GLOBAL"
    nqp_get_package_through_who $P827, $P826, "PAST"
    get_who $P828, $P827
    set $P829, $P828["Regex"]
.annotate 'line', 723
    get_hll_global $P830, "GLOBAL"
    nqp_get_package_through_who $P831, $P830, "PAST"
    get_who $P832, $P831
    set $P833, $P832["Regex"]
    $P834 = $P833."new"("scan" :named("pasttype"))
    find_lex $P835, "$rpast"
    unless_null $P835, vivify_667
    new $P835, "Undef"
  vivify_667:
.annotate 'line', 725
    get_hll_global $P836, "GLOBAL"
    nqp_get_package_through_who $P837, $P836, "PAST"
    get_who $P838, $P837
    set $P839, $P838["Regex"]
.annotate 'line', 726
    find_lex $P842, "$?PACKAGE"
    get_who $P843, $P842
    set $P844, $P843["@MODIFIERS"]
    unless_null $P844, vivify_668
    $P844 = root_new ['parrot';'ResizablePMCArray']
  vivify_668:
    set $P845, $P844[0]
    unless_null $P845, vivify_669
    $P845 = root_new ['parrot';'Hash']
  vivify_669:
    set $P846, $P845["r"]
    unless_null $P846, vivify_670
    new $P846, "Undef"
  vivify_670:
    if $P846, if_841
    new $P848, "String"
    assign $P848, "g"
    set $P840, $P848
    goto if_841_end
  if_841:
    new $P847, "String"
    assign $P847, "r"
    set $P840, $P847
  if_841_end:
    $P849 = $P839."new"("pass" :named("pasttype"), $P840 :named("backtrack"))
.annotate 'line', 725
    find_lex $P850, "%capnames"
    unless_null $P850, vivify_671
    $P850 = root_new ['parrot';'Hash']
  vivify_671:
    $P851 = $P829."new"($P834, $P835, $P849, "concat" :named("pasttype"), $P850 :named("capnames"))
.annotate 'line', 722
    store_lex "$rpast", $P851
.annotate 'line', 730
    find_lex $P853, "$block"
    unless_null $P853, vivify_672
    new $P853, "Undef"
  vivify_672:
    $P854 = $P853."symbol"(unicode:"$\x{a2}")
    if $P854, unless_852_end
    find_lex $P855, "$block"
    unless_null $P855, vivify_673
    new $P855, "Undef"
  vivify_673:
    $P855."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_852_end:
.annotate 'line', 731
    find_lex $P857, "$block"
    unless_null $P857, vivify_674
    new $P857, "Undef"
  vivify_674:
    $P858 = $P857."symbol"("$/")
    if $P858, unless_856_end
    find_lex $P859, "$block"
    unless_null $P859, vivify_675
    new $P859, "Undef"
  vivify_675:
    $P859."symbol"("$/", "lexical" :named("scope"))
  unless_856_end:
.annotate 'line', 732
    find_lex $P860, "$block"
    unless_null $P860, vivify_676
    new $P860, "Undef"
  vivify_676:
    find_lex $P861, "$rpast"
    unless_null $P861, vivify_677
    new $P861, "Undef"
  vivify_677:
    $P860."push"($P861)
.annotate 'line', 733
    find_lex $P862, "$block"
    unless_null $P862, vivify_678
    new $P862, "Undef"
  vivify_678:
    $P862."blocktype"("method")
    find_lex $P863, "$block"
    unless_null $P863, vivify_679
    new $P863, "Undef"
  vivify_679:
.annotate 'line', 719
    .return ($P863)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("243_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_869
    .param pmc param_870
.annotate 'line', 737
    .const 'Sub' $P1095 = "254_1304282272.255" 
    capture_lex $P1095
    .const 'Sub' $P1032 = "251_1304282272.255" 
    capture_lex $P1032
    .const 'Sub' $P990 = "249_1304282272.255" 
    capture_lex $P990
    .const 'Sub' $P948 = "247_1304282272.255" 
    capture_lex $P948
    .const 'Sub' $P881 = "244_1304282272.255" 
    capture_lex $P881
    .lex "$ast", param_869
    .lex "$count", param_870
.annotate 'line', 738
    $P871 = root_new ['parrot';'Hash']
    .lex "%capnames", $P871
.annotate 'line', 739
    new $P872, "Undef"
    .lex "$pasttype", $P872
.annotate 'line', 737
    find_lex $P873, "%capnames"
    unless_null $P873, vivify_680
    $P873 = root_new ['parrot';'Hash']
  vivify_680:
.annotate 'line', 739
    find_lex $P874, "$ast"
    unless_null $P874, vivify_681
    new $P874, "Undef"
  vivify_681:
    $P875 = $P874."pasttype"()
    store_lex "$pasttype", $P875
.annotate 'line', 740
    find_lex $P877, "$pasttype"
    unless_null $P877, vivify_682
    new $P877, "Undef"
  vivify_682:
    set $S878, $P877
    iseq $I879, $S878, "alt"
    if $I879, if_876
.annotate 'line', 753
    find_lex $P939, "$pasttype"
    unless_null $P939, vivify_683
    new $P939, "Undef"
  vivify_683:
    set $S940, $P939
    iseq $I941, $S940, "concat"
    if $I941, if_938
.annotate 'line', 762
    find_lex $P983, "$pasttype"
    unless_null $P983, vivify_684
    new $P983, "Undef"
  vivify_684:
    set $S984, $P983
    iseq $I985, $S984, "subrule"
    if $I985, if_982
    new $P981, 'Integer'
    set $P981, $I985
    goto if_982_end
  if_982:
    find_lex $P986, "$ast"
    unless_null $P986, vivify_685
    new $P986, "Undef"
  vivify_685:
    $S987 = $P986."subtype"()
    iseq $I988, $S987, "capture"
    new $P981, 'Integer'
    set $P981, $I988
  if_982_end:
    if $P981, if_980
.annotate 'line', 775
    find_lex $P1028, "$pasttype"
    unless_null $P1028, vivify_686
    new $P1028, "Undef"
  vivify_686:
    set $S1029, $P1028
    iseq $I1030, $S1029, "subcapture"
    if $I1030, if_1027
.annotate 'line', 792
    find_lex $P1091, "$pasttype"
    unless_null $P1091, vivify_687
    new $P1091, "Undef"
  vivify_687:
    set $S1092, $P1091
    iseq $I1093, $S1092, "quant"
    unless $I1093, if_1090_end
    .const 'Sub' $P1095 = "254_1304282272.255" 
    capture_lex $P1095
    $P1095()
  if_1090_end:
    goto if_1027_end
  if_1027:
.annotate 'line', 775
    .const 'Sub' $P1032 = "251_1304282272.255" 
    capture_lex $P1032
    $P1032()
  if_1027_end:
    goto if_980_end
  if_980:
.annotate 'line', 762
    .const 'Sub' $P990 = "249_1304282272.255" 
    capture_lex $P990
    $P990()
  if_980_end:
    goto if_938_end
  if_938:
.annotate 'line', 754
    find_lex $P943, "$ast"
    unless_null $P943, vivify_732
    new $P943, "Undef"
  vivify_732:
    $P944 = $P943."list"()
    defined $I945, $P944
    unless $I945, for_undef_733
    iter $P942, $P944
    new $P978, 'ExceptionHandler'
    set_label $P978, loop977_handler
    $P978."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P978
  loop977_test:
    unless $P942, loop977_done
    shift $P946, $P942
  loop977_redo:
    .const 'Sub' $P948 = "247_1304282272.255" 
    capture_lex $P948
    $P948($P946)
  loop977_next:
    goto loop977_test
  loop977_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P979, exception, 'type'
    eq $P979, .CONTROL_LOOP_NEXT, loop977_next
    eq $P979, .CONTROL_LOOP_REDO, loop977_redo
  loop977_done:
    pop_eh 
  for_undef_733:
  if_938_end:
.annotate 'line', 753
    goto if_876_end
  if_876:
.annotate 'line', 740
    .const 'Sub' $P881 = "244_1304282272.255" 
    capture_lex $P881
    $P881()
  if_876_end:
.annotate 'line', 799
    find_lex $P1116, "$count"
    unless_null $P1116, vivify_769
    new $P1116, "Undef"
  vivify_769:
    find_lex $P1117, "%capnames"
    unless_null $P1117, vivify_770
    $P1117 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1117
  vivify_770:
    set $P1117[""], $P1116
    find_lex $P1118, "%capnames"
    unless_null $P1118, vivify_771
    $P1118 = root_new ['parrot';'Hash']
  vivify_771:
.annotate 'line', 737
    .return ($P1118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1094"  :anon :subid("254_1304282272.255") :outer("243_1304282272.255")
.annotate 'line', 792
    .const 'Sub' $P1106 = "255_1304282272.255" 
    capture_lex $P1106
.annotate 'line', 793
    $P1096 = root_new ['parrot';'Hash']
    .lex "%astcap", $P1096
    find_lex $P1097, "$ast"
    unless_null $P1097, vivify_688
    $P1097 = root_new ['parrot';'ResizablePMCArray']
  vivify_688:
    set $P1098, $P1097[0]
    unless_null $P1098, vivify_689
    new $P1098, "Undef"
  vivify_689:
    find_lex $P1099, "$count"
    unless_null $P1099, vivify_690
    new $P1099, "Undef"
  vivify_690:
    $P1100 = "capnames"($P1098, $P1099)
    store_lex "%astcap", $P1100
.annotate 'line', 794
    find_lex $P1102, "%astcap"
    unless_null $P1102, vivify_691
    $P1102 = root_new ['parrot';'Hash']
  vivify_691:
    defined $I1103, $P1102
    unless $I1103, for_undef_692
    iter $P1101, $P1102
    new $P1112, 'ExceptionHandler'
    set_label $P1112, loop1111_handler
    $P1112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1112
  loop1111_test:
    unless $P1101, loop1111_done
    shift $P1104, $P1101
  loop1111_redo:
    .const 'Sub' $P1106 = "255_1304282272.255" 
    capture_lex $P1106
    $P1106($P1104)
  loop1111_next:
    goto loop1111_test
  loop1111_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1113, exception, 'type'
    eq $P1113, .CONTROL_LOOP_NEXT, loop1111_next
    eq $P1113, .CONTROL_LOOP_REDO, loop1111_redo
  loop1111_done:
    pop_eh 
  for_undef_692:
.annotate 'line', 797
    find_lex $P1114, "%astcap"
    unless_null $P1114, vivify_695
    $P1114 = root_new ['parrot';'Hash']
  vivify_695:
    set $P1115, $P1114[""]
    unless_null $P1115, vivify_696
    new $P1115, "Undef"
  vivify_696:
    store_lex "$count", $P1115
.annotate 'line', 792
    .return ($P1115)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1105"  :anon :subid("255_1304282272.255") :outer("254_1304282272.255")
    .param pmc param_1107
.annotate 'line', 794
    .lex "$_", param_1107
.annotate 'line', 795
    new $P1108, "Integer"
    assign $P1108, 2
    find_lex $P1109, "$_"
    unless_null $P1109, vivify_693
    new $P1109, "Undef"
  vivify_693:
    find_lex $P1110, "%capnames"
    unless_null $P1110, vivify_694
    $P1110 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1110
  vivify_694:
    set $P1110[$P1109], $P1108
.annotate 'line', 794
    .return ($P1108)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1031"  :anon :subid("251_1304282272.255") :outer("243_1304282272.255")
.annotate 'line', 775
    .const 'Sub' $P1072 = "253_1304282272.255" 
    capture_lex $P1072
    .const 'Sub' $P1044 = "252_1304282272.255" 
    capture_lex $P1044
.annotate 'line', 776
    new $P1033, "Undef"
    .lex "$name", $P1033
.annotate 'line', 777
    $P1034 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P1034
.annotate 'line', 786
    $P1035 = root_new ['parrot';'Hash']
    .lex "%x", $P1035
.annotate 'line', 776
    find_lex $P1036, "$ast"
    unless_null $P1036, vivify_697
    new $P1036, "Undef"
  vivify_697:
    $P1037 = $P1036."name"()
    store_lex "$name", $P1037
.annotate 'line', 777

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1038 = split '=', $S0
            
    store_lex "@names", $P1038
.annotate 'line', 782
    find_lex $P1040, "@names"
    unless_null $P1040, vivify_698
    $P1040 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    defined $I1041, $P1040
    unless $I1041, for_undef_699
    iter $P1039, $P1040
    new $P1061, 'ExceptionHandler'
    set_label $P1061, loop1060_handler
    $P1061."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1061
  loop1060_test:
    unless $P1039, loop1060_done
    shift $P1042, $P1039
  loop1060_redo:
    .const 'Sub' $P1044 = "252_1304282272.255" 
    capture_lex $P1044
    $P1044($P1042)
  loop1060_next:
    goto loop1060_test
  loop1060_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1062, exception, 'type'
    eq $P1062, .CONTROL_LOOP_NEXT, loop1060_next
    eq $P1062, .CONTROL_LOOP_REDO, loop1060_redo
  loop1060_done:
    pop_eh 
  for_undef_699:
.annotate 'line', 786
    find_lex $P1063, "$ast"
    unless_null $P1063, vivify_705
    $P1063 = root_new ['parrot';'ResizablePMCArray']
  vivify_705:
    set $P1064, $P1063[0]
    unless_null $P1064, vivify_706
    new $P1064, "Undef"
  vivify_706:
    find_lex $P1065, "$count"
    unless_null $P1065, vivify_707
    new $P1065, "Undef"
  vivify_707:
    $P1066 = "capnames"($P1064, $P1065)
    store_lex "%x", $P1066
.annotate 'line', 787
    find_lex $P1068, "%x"
    unless_null $P1068, vivify_708
    $P1068 = root_new ['parrot';'Hash']
  vivify_708:
    defined $I1069, $P1068
    unless $I1069, for_undef_709
    iter $P1067, $P1068
    new $P1086, 'ExceptionHandler'
    set_label $P1086, loop1085_handler
    $P1086."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1086
  loop1085_test:
    unless $P1067, loop1085_done
    shift $P1070, $P1067
  loop1085_redo:
    .const 'Sub' $P1072 = "253_1304282272.255" 
    capture_lex $P1072
    $P1072($P1070)
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
  for_undef_709:
.annotate 'line', 790
    find_lex $P1088, "%x"
    unless_null $P1088, vivify_718
    $P1088 = root_new ['parrot';'Hash']
  vivify_718:
    set $P1089, $P1088[""]
    unless_null $P1089, vivify_719
    new $P1089, "Undef"
  vivify_719:
    store_lex "$count", $P1089
.annotate 'line', 775
    .return ($P1089)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1043"  :anon :subid("252_1304282272.255") :outer("251_1304282272.255")
    .param pmc param_1045
.annotate 'line', 782
    .lex "$_", param_1045
.annotate 'line', 783
    find_lex $P1049, "$_"
    unless_null $P1049, vivify_700
    new $P1049, "Undef"
  vivify_700:
    set $S1050, $P1049
    iseq $I1051, $S1050, "0"
    unless $I1051, unless_1048
    new $P1047, 'Integer'
    set $P1047, $I1051
    goto unless_1048_end
  unless_1048:
    find_lex $P1052, "$_"
    unless_null $P1052, vivify_701
    new $P1052, "Undef"
  vivify_701:
    set $N1053, $P1052
    isgt $I1054, $N1053, 0.0
    new $P1047, 'Integer'
    set $P1047, $I1054
  unless_1048_end:
    unless $P1047, if_1046_end
    find_lex $P1055, "$_"
    unless_null $P1055, vivify_702
    new $P1055, "Undef"
  vivify_702:
    add $P1056, $P1055, 1
    store_lex "$count", $P1056
  if_1046_end:
.annotate 'line', 784
    new $P1057, "Integer"
    assign $P1057, 1
    find_lex $P1058, "$_"
    unless_null $P1058, vivify_703
    new $P1058, "Undef"
  vivify_703:
    find_lex $P1059, "%capnames"
    unless_null $P1059, vivify_704
    $P1059 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1059
  vivify_704:
    set $P1059[$P1058], $P1057
.annotate 'line', 782
    .return ($P1057)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1071"  :anon :subid("253_1304282272.255") :outer("251_1304282272.255")
    .param pmc param_1073
.annotate 'line', 787
    .lex "$_", param_1073
.annotate 'line', 788
    find_lex $P1074, "$_"
    unless_null $P1074, vivify_710
    new $P1074, "Undef"
  vivify_710:
    find_lex $P1075, "%capnames"
    unless_null $P1075, vivify_711
    $P1075 = root_new ['parrot';'Hash']
  vivify_711:
    set $P1076, $P1075[$P1074]
    unless_null $P1076, vivify_712
    new $P1076, "Undef"
  vivify_712:
    set $N1077, $P1076
    new $P1078, 'Float'
    set $P1078, $N1077
    find_lex $P1079, "$_"
    unless_null $P1079, vivify_713
    new $P1079, "Undef"
  vivify_713:
    find_lex $P1080, "%x"
    unless_null $P1080, vivify_714
    $P1080 = root_new ['parrot';'Hash']
  vivify_714:
    set $P1081, $P1080[$P1079]
    unless_null $P1081, vivify_715
    new $P1081, "Undef"
  vivify_715:
    add $P1082, $P1078, $P1081
    find_lex $P1083, "$_"
    unless_null $P1083, vivify_716
    new $P1083, "Undef"
  vivify_716:
    find_lex $P1084, "%capnames"
    unless_null $P1084, vivify_717
    $P1084 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1084
  vivify_717:
    set $P1084[$P1083], $P1082
.annotate 'line', 787
    .return ($P1082)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block989"  :anon :subid("249_1304282272.255") :outer("243_1304282272.255")
.annotate 'line', 762
    .const 'Sub' $P1008 = "250_1304282272.255" 
    capture_lex $P1008
.annotate 'line', 763
    new $P991, "Undef"
    .lex "$name", $P991
.annotate 'line', 765
    $P992 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P992
.annotate 'line', 763
    find_lex $P993, "$ast"
    unless_null $P993, vivify_720
    new $P993, "Undef"
  vivify_720:
    $P994 = $P993."name"()
    store_lex "$name", $P994
.annotate 'line', 764
    find_lex $P996, "$name"
    unless_null $P996, vivify_721
    new $P996, "Undef"
  vivify_721:
    set $S997, $P996
    iseq $I998, $S997, ""
    unless $I998, if_995_end
    find_lex $P999, "$count"
    unless_null $P999, vivify_722
    new $P999, "Undef"
  vivify_722:
    store_lex "$name", $P999
    find_lex $P1000, "$ast"
    unless_null $P1000, vivify_723
    new $P1000, "Undef"
  vivify_723:
    find_lex $P1001, "$name"
    unless_null $P1001, vivify_724
    new $P1001, "Undef"
  vivify_724:
    $P1000."name"($P1001)
  if_995_end:
.annotate 'line', 765

                $P0 = find_lex '$name'
                $S0 = $P0
                $P1002 = split '=', $S0
            
    store_lex "@names", $P1002
.annotate 'line', 770
    find_lex $P1004, "@names"
    unless_null $P1004, vivify_725
    $P1004 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    defined $I1005, $P1004
    unless $I1005, for_undef_726
    iter $P1003, $P1004
    new $P1025, 'ExceptionHandler'
    set_label $P1025, loop1024_handler
    $P1025."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1025
  loop1024_test:
    unless $P1003, loop1024_done
    shift $P1006, $P1003
  loop1024_redo:
    .const 'Sub' $P1008 = "250_1304282272.255" 
    capture_lex $P1008
    $P1008($P1006)
  loop1024_next:
    goto loop1024_test
  loop1024_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1026, exception, 'type'
    eq $P1026, .CONTROL_LOOP_NEXT, loop1024_next
    eq $P1026, .CONTROL_LOOP_REDO, loop1024_redo
  loop1024_done:
    pop_eh 
  for_undef_726:
.annotate 'line', 762
    .return ($P1003)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1007"  :anon :subid("250_1304282272.255") :outer("249_1304282272.255")
    .param pmc param_1009
.annotate 'line', 770
    .lex "$_", param_1009
.annotate 'line', 771
    find_lex $P1013, "$_"
    unless_null $P1013, vivify_727
    new $P1013, "Undef"
  vivify_727:
    set $S1014, $P1013
    iseq $I1015, $S1014, "0"
    unless $I1015, unless_1012
    new $P1011, 'Integer'
    set $P1011, $I1015
    goto unless_1012_end
  unless_1012:
    find_lex $P1016, "$_"
    unless_null $P1016, vivify_728
    new $P1016, "Undef"
  vivify_728:
    set $N1017, $P1016
    isgt $I1018, $N1017, 0.0
    new $P1011, 'Integer'
    set $P1011, $I1018
  unless_1012_end:
    unless $P1011, if_1010_end
    find_lex $P1019, "$_"
    unless_null $P1019, vivify_729
    new $P1019, "Undef"
  vivify_729:
    add $P1020, $P1019, 1
    store_lex "$count", $P1020
  if_1010_end:
.annotate 'line', 772
    new $P1021, "Integer"
    assign $P1021, 1
    find_lex $P1022, "$_"
    unless_null $P1022, vivify_730
    new $P1022, "Undef"
  vivify_730:
    find_lex $P1023, "%capnames"
    unless_null $P1023, vivify_731
    $P1023 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P1023
  vivify_731:
    set $P1023[$P1022], $P1021
.annotate 'line', 770
    .return ($P1021)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block947"  :anon :subid("247_1304282272.255") :outer("243_1304282272.255")
    .param pmc param_950
.annotate 'line', 754
    .const 'Sub' $P959 = "248_1304282272.255" 
    capture_lex $P959
.annotate 'line', 755
    $P949 = root_new ['parrot';'Hash']
    .lex "%x", $P949
    .lex "$_", param_950
    find_lex $P951, "$_"
    unless_null $P951, vivify_734
    new $P951, "Undef"
  vivify_734:
    find_lex $P952, "$count"
    unless_null $P952, vivify_735
    new $P952, "Undef"
  vivify_735:
    $P953 = "capnames"($P951, $P952)
    store_lex "%x", $P953
.annotate 'line', 756
    find_lex $P955, "%x"
    unless_null $P955, vivify_736
    $P955 = root_new ['parrot';'Hash']
  vivify_736:
    defined $I956, $P955
    unless $I956, for_undef_737
    iter $P954, $P955
    new $P973, 'ExceptionHandler'
    set_label $P973, loop972_handler
    $P973."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P973
  loop972_test:
    unless $P954, loop972_done
    shift $P957, $P954
  loop972_redo:
    .const 'Sub' $P959 = "248_1304282272.255" 
    capture_lex $P959
    $P959($P957)
  loop972_next:
    goto loop972_test
  loop972_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P974, exception, 'type'
    eq $P974, .CONTROL_LOOP_NEXT, loop972_next
    eq $P974, .CONTROL_LOOP_REDO, loop972_redo
  loop972_done:
    pop_eh 
  for_undef_737:
.annotate 'line', 759
    find_lex $P975, "%x"
    unless_null $P975, vivify_746
    $P975 = root_new ['parrot';'Hash']
  vivify_746:
    set $P976, $P975[""]
    unless_null $P976, vivify_747
    new $P976, "Undef"
  vivify_747:
    store_lex "$count", $P976
.annotate 'line', 754
    .return ($P976)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block958"  :anon :subid("248_1304282272.255") :outer("247_1304282272.255")
    .param pmc param_960
.annotate 'line', 756
    .lex "$_", param_960
.annotate 'line', 757
    find_lex $P961, "$_"
    unless_null $P961, vivify_738
    new $P961, "Undef"
  vivify_738:
    find_lex $P962, "%capnames"
    unless_null $P962, vivify_739
    $P962 = root_new ['parrot';'Hash']
  vivify_739:
    set $P963, $P962[$P961]
    unless_null $P963, vivify_740
    new $P963, "Undef"
  vivify_740:
    set $N964, $P963
    new $P965, 'Float'
    set $P965, $N964
    find_lex $P966, "$_"
    unless_null $P966, vivify_741
    new $P966, "Undef"
  vivify_741:
    find_lex $P967, "%x"
    unless_null $P967, vivify_742
    $P967 = root_new ['parrot';'Hash']
  vivify_742:
    set $P968, $P967[$P966]
    unless_null $P968, vivify_743
    new $P968, "Undef"
  vivify_743:
    add $P969, $P965, $P968
    find_lex $P970, "$_"
    unless_null $P970, vivify_744
    new $P970, "Undef"
  vivify_744:
    find_lex $P971, "%capnames"
    unless_null $P971, vivify_745
    $P971 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P971
  vivify_745:
    set $P971[$P970], $P969
.annotate 'line', 756
    .return ($P969)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block880"  :anon :subid("244_1304282272.255") :outer("243_1304282272.255")
.annotate 'line', 740
    .const 'Sub' $P890 = "245_1304282272.255" 
    capture_lex $P890
.annotate 'line', 741
    new $P882, "Undef"
    .lex "$max", $P882
    find_lex $P883, "$count"
    unless_null $P883, vivify_748
    new $P883, "Undef"
  vivify_748:
    store_lex "$max", $P883
.annotate 'line', 742
    find_lex $P885, "$ast"
    unless_null $P885, vivify_749
    new $P885, "Undef"
  vivify_749:
    $P886 = $P885."list"()
    defined $I887, $P886
    unless $I887, for_undef_750
    iter $P884, $P886
    new $P935, 'ExceptionHandler'
    set_label $P935, loop934_handler
    $P935."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P935
  loop934_test:
    unless $P884, loop934_done
    shift $P888, $P884
  loop934_redo:
    .const 'Sub' $P890 = "245_1304282272.255" 
    capture_lex $P890
    $P890($P888)
  loop934_next:
    goto loop934_test
  loop934_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P936, exception, 'type'
    eq $P936, .CONTROL_LOOP_NEXT, loop934_next
    eq $P936, .CONTROL_LOOP_REDO, loop934_redo
  loop934_done:
    pop_eh 
  for_undef_750:
.annotate 'line', 751
    find_lex $P937, "$max"
    unless_null $P937, vivify_768
    new $P937, "Undef"
  vivify_768:
    store_lex "$count", $P937
.annotate 'line', 740
    .return ($P937)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block889"  :anon :subid("245_1304282272.255") :outer("244_1304282272.255")
    .param pmc param_892
.annotate 'line', 742
    .const 'Sub' $P901 = "246_1304282272.255" 
    capture_lex $P901
.annotate 'line', 743
    $P891 = root_new ['parrot';'Hash']
    .lex "%x", $P891
    .lex "$_", param_892
    find_lex $P893, "$_"
    unless_null $P893, vivify_751
    new $P893, "Undef"
  vivify_751:
    find_lex $P894, "$count"
    unless_null $P894, vivify_752
    new $P894, "Undef"
  vivify_752:
    $P895 = "capnames"($P893, $P894)
    store_lex "%x", $P895
.annotate 'line', 744
    find_lex $P897, "%x"
    unless_null $P897, vivify_753
    $P897 = root_new ['parrot';'Hash']
  vivify_753:
    defined $I898, $P897
    unless $I898, for_undef_754
    iter $P896, $P897
    new $P922, 'ExceptionHandler'
    set_label $P922, loop921_handler
    $P922."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P922
  loop921_test:
    unless $P896, loop921_done
    shift $P899, $P896
  loop921_redo:
    .const 'Sub' $P901 = "246_1304282272.255" 
    capture_lex $P901
    $P901($P899)
  loop921_next:
    goto loop921_test
  loop921_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P923, exception, 'type'
    eq $P923, .CONTROL_LOOP_NEXT, loop921_next
    eq $P923, .CONTROL_LOOP_REDO, loop921_redo
  loop921_done:
    pop_eh 
  for_undef_754:
.annotate 'line', 749
    find_lex $P926, "%x"
    unless_null $P926, vivify_763
    $P926 = root_new ['parrot';'Hash']
  vivify_763:
    set $P927, $P926[""]
    unless_null $P927, vivify_764
    new $P927, "Undef"
  vivify_764:
    set $N928, $P927
    find_lex $P929, "$max"
    unless_null $P929, vivify_765
    new $P929, "Undef"
  vivify_765:
    set $N930, $P929
    isgt $I931, $N928, $N930
    if $I931, if_925
    new $P924, 'Integer'
    set $P924, $I931
    goto if_925_end
  if_925:
    find_lex $P932, "%x"
    unless_null $P932, vivify_766
    $P932 = root_new ['parrot';'Hash']
  vivify_766:
    set $P933, $P932[""]
    unless_null $P933, vivify_767
    new $P933, "Undef"
  vivify_767:
    store_lex "$max", $P933
    set $P924, $P933
  if_925_end:
.annotate 'line', 742
    .return ($P924)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block900"  :anon :subid("246_1304282272.255") :outer("245_1304282272.255")
    .param pmc param_902
.annotate 'line', 744
    .lex "$_", param_902
.annotate 'line', 745
    find_lex $P907, "$_"
    unless_null $P907, vivify_755
    new $P907, "Undef"
  vivify_755:
    find_lex $P908, "%capnames"
    unless_null $P908, vivify_756
    $P908 = root_new ['parrot';'Hash']
  vivify_756:
    set $P909, $P908[$P907]
    unless_null $P909, vivify_757
    new $P909, "Undef"
  vivify_757:
    set $N910, $P909
    islt $I911, $N910, 2.0
    if $I911, if_906
    new $P905, 'Integer'
    set $P905, $I911
    goto if_906_end
  if_906:
    find_lex $P912, "$_"
    unless_null $P912, vivify_758
    new $P912, "Undef"
  vivify_758:
    find_lex $P913, "%x"
    unless_null $P913, vivify_759
    $P913 = root_new ['parrot';'Hash']
  vivify_759:
    set $P914, $P913[$P912]
    unless_null $P914, vivify_760
    new $P914, "Undef"
  vivify_760:
    set $N915, $P914
    iseq $I916, $N915, 1.0
    new $P905, 'Integer'
    set $P905, $I916
  if_906_end:
    if $P905, if_904
    new $P918, "Integer"
    assign $P918, 2
    set $P903, $P918
    goto if_904_end
  if_904:
    new $P917, "Integer"
    assign $P917, 1
    set $P903, $P917
  if_904_end:
.annotate 'line', 746
    find_lex $P919, "$_"
    unless_null $P919, vivify_761
    new $P919, "Undef"
  vivify_761:
    find_lex $P920, "%capnames"
    unless_null $P920, vivify_762
    $P920 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P920
  vivify_762:
    set $P920[$P919], $P903
.annotate 'line', 744
    .return ($P903)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("256_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1121
    .param pmc param_1122
.annotate 'line', 803
    .lex "$ast", param_1121
    .lex "$backmod", param_1122
.annotate 'line', 804
    find_lex $P1124, "$backmod"
    unless_null $P1124, vivify_772
    new $P1124, "Undef"
  vivify_772:
    set $S1125, $P1124
    iseq $I1126, $S1125, ":"
    if $I1126, if_1123
.annotate 'line', 805
    find_lex $P1131, "$backmod"
    unless_null $P1131, vivify_773
    new $P1131, "Undef"
  vivify_773:
    set $S1132, $P1131
    iseq $I1133, $S1132, ":?"
    unless $I1133, unless_1130
    new $P1129, 'Integer'
    set $P1129, $I1133
    goto unless_1130_end
  unless_1130:
    find_lex $P1134, "$backmod"
    unless_null $P1134, vivify_774
    new $P1134, "Undef"
  vivify_774:
    set $S1135, $P1134
    iseq $I1136, $S1135, "?"
    new $P1129, 'Integer'
    set $P1129, $I1136
  unless_1130_end:
    if $P1129, if_1128
.annotate 'line', 806
    find_lex $P1141, "$backmod"
    unless_null $P1141, vivify_775
    new $P1141, "Undef"
  vivify_775:
    set $S1142, $P1141
    iseq $I1143, $S1142, ":!"
    unless $I1143, unless_1140
    new $P1139, 'Integer'
    set $P1139, $I1143
    goto unless_1140_end
  unless_1140:
    find_lex $P1144, "$backmod"
    unless_null $P1144, vivify_776
    new $P1144, "Undef"
  vivify_776:
    set $S1145, $P1144
    iseq $I1146, $S1145, "!"
    new $P1139, 'Integer'
    set $P1139, $I1146
  unless_1140_end:
    unless $P1139, if_1138_end
    find_lex $P1147, "$ast"
    unless_null $P1147, vivify_777
    new $P1147, "Undef"
  vivify_777:
    $P1147."backtrack"("g")
  if_1138_end:
    goto if_1128_end
  if_1128:
.annotate 'line', 805
    find_lex $P1137, "$ast"
    unless_null $P1137, vivify_778
    new $P1137, "Undef"
  vivify_778:
    $P1137."backtrack"("f")
  if_1128_end:
    goto if_1123_end
  if_1123:
.annotate 'line', 804
    find_lex $P1127, "$ast"
    unless_null $P1127, vivify_779
    new $P1127, "Undef"
  vivify_779:
    $P1127."backtrack"("r")
  if_1123_end:
    find_lex $P1148, "$ast"
    unless_null $P1148, vivify_780
    new $P1148, "Undef"
  vivify_780:
.annotate 'line', 803
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("257_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1162
    .param pmc param_1163
.annotate 'line', 226
    .lex "self", param_1162
    .lex "$/", param_1163
.annotate 'line', 227
    find_lex $P1164, "$/"
    find_lex $P1167, "$/"
    unless_null $P1167, vivify_783
    $P1167 = root_new ['parrot';'Hash']
  vivify_783:
    set $P1168, $P1167["quote_EXPR"]
    unless_null $P1168, vivify_784
    new $P1168, "Undef"
  vivify_784:
    if $P1168, if_1166
    find_lex $P1172, "$/"
    unless_null $P1172, vivify_785
    $P1172 = root_new ['parrot';'Hash']
  vivify_785:
    set $P1173, $P1172["val"]
    unless_null $P1173, vivify_786
    new $P1173, "Undef"
  vivify_786:
    set $N1174, $P1173
    new $P1165, 'Float'
    set $P1165, $N1174
    goto if_1166_end
  if_1166:
    find_lex $P1169, "$/"
    unless_null $P1169, vivify_787
    $P1169 = root_new ['parrot';'Hash']
  vivify_787:
    set $P1170, $P1169["quote_EXPR"]
    unless_null $P1170, vivify_788
    new $P1170, "Undef"
  vivify_788:
    $P1171 = $P1170."ast"()
    set $P1165, $P1171
  if_1166_end:
    $P1175 = $P1164."!make"($P1165)
.annotate 'line', 226
    .return ($P1175)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("258_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1177
    .param pmc param_1178
.annotate 'line', 230
    .const 'Sub' $P1191 = "259_1304282272.255" 
    capture_lex $P1191
    .lex "self", param_1177
    .lex "$/", param_1178
.annotate 'line', 231
    new $P1179, "Undef"
    .lex "$past", $P1179
    get_hll_global $P1180, "GLOBAL"
    nqp_get_package_through_who $P1181, $P1180, "PAST"
    get_who $P1182, $P1181
    set $P1183, $P1182["Op"]
    $P1184 = $P1183."new"("list" :named("pasttype"))
    store_lex "$past", $P1184
.annotate 'line', 232
    find_lex $P1186, "$/"
    unless_null $P1186, vivify_789
    $P1186 = root_new ['parrot';'Hash']
  vivify_789:
    set $P1187, $P1186["arg"]
    unless_null $P1187, vivify_790
    new $P1187, "Undef"
  vivify_790:
    defined $I1188, $P1187
    unless $I1188, for_undef_791
    iter $P1185, $P1187
    new $P1198, 'ExceptionHandler'
    set_label $P1198, loop1197_handler
    $P1198."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1198
  loop1197_test:
    unless $P1185, loop1197_done
    shift $P1189, $P1185
  loop1197_redo:
    .const 'Sub' $P1191 = "259_1304282272.255" 
    capture_lex $P1191
    $P1191($P1189)
  loop1197_next:
    goto loop1197_test
  loop1197_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1199, exception, 'type'
    eq $P1199, .CONTROL_LOOP_NEXT, loop1197_next
    eq $P1199, .CONTROL_LOOP_REDO, loop1197_redo
  loop1197_done:
    pop_eh 
  for_undef_791:
.annotate 'line', 233
    find_lex $P1200, "$/"
    find_lex $P1201, "$past"
    unless_null $P1201, vivify_794
    new $P1201, "Undef"
  vivify_794:
    $P1202 = $P1200."!make"($P1201)
.annotate 'line', 230
    .return ($P1202)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1190"  :anon :subid("259_1304282272.255") :outer("258_1304282272.255")
    .param pmc param_1192
.annotate 'line', 232
    .lex "$_", param_1192
    find_lex $P1193, "$past"
    unless_null $P1193, vivify_792
    new $P1193, "Undef"
  vivify_792:
    find_lex $P1194, "$_"
    unless_null $P1194, vivify_793
    new $P1194, "Undef"
  vivify_793:
    $P1195 = $P1194."ast"()
    $P1196 = $P1193."push"($P1195)
    .return ($P1196)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("260_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1204
    .param pmc param_1205
.annotate 'line', 236
    .lex "self", param_1204
    .lex "$/", param_1205
.annotate 'line', 237
    new $P1206, "Undef"
    .lex "$past", $P1206
    find_lex $P1207, "$/"
    unless_null $P1207, vivify_795
    $P1207 = root_new ['parrot';'Hash']
  vivify_795:
    set $P1208, $P1207["nibbler"]
    unless_null $P1208, vivify_796
    new $P1208, "Undef"
  vivify_796:
    $P1209 = $P1208."ast"()
    $P1210 = "buildsub"($P1209)
    store_lex "$past", $P1210
.annotate 'line', 238
    find_lex $P1211, "$past"
    unless_null $P1211, vivify_797
    new $P1211, "Undef"
  vivify_797:
    find_lex $P1212, "$/"
    unless_null $P1212, vivify_798
    new $P1212, "Undef"
  vivify_798:
    $P1211."node"($P1212)
.annotate 'line', 239
    find_lex $P1213, "$/"
    find_lex $P1214, "$past"
    unless_null $P1214, vivify_799
    new $P1214, "Undef"
  vivify_799:
    $P1215 = $P1213."!make"($P1214)
.annotate 'line', 236
    .return ($P1215)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("261_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1219
    .param pmc param_1220
    .param pmc param_1221 :optional
    .param int has_param_1221 :opt_flag
.annotate 'line', 242
    .const 'Sub' $P1265 = "263_1304282272.255" 
    capture_lex $P1265
    .const 'Sub' $P1229 = "262_1304282272.255" 
    capture_lex $P1229
    new $P1218, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1218, control_1217
    push_eh $P1218
    .lex "self", param_1219
    .lex "$/", param_1220
    if has_param_1221, optparam_800
    new $P1222, "Undef"
    set param_1221, $P1222
  optparam_800:
    .lex "$key", param_1221
.annotate 'line', 251
    new $P1223, "Undef"
    .lex "$past", $P1223
.annotate 'line', 243
    find_lex $P1225, "$key"
    unless_null $P1225, vivify_801
    new $P1225, "Undef"
  vivify_801:
    set $S1226, $P1225
    iseq $I1227, $S1226, "open"
    unless $I1227, if_1224_end
    .const 'Sub' $P1229 = "262_1304282272.255" 
    capture_lex $P1229
    $P1229()
  if_1224_end:
.annotate 'line', 250
    find_lex $P1244, "$?PACKAGE"
    get_who $P1245, $P1244
    set $P1246, $P1245["@MODIFIERS"]
    unless_null $P1246, vivify_807
    $P1246 = root_new ['parrot';'ResizablePMCArray']
  vivify_807:
    $P1246."shift"()
    find_lex $P1247, "$past"
    unless_null $P1247, vivify_808
    new $P1247, "Undef"
  vivify_808:
.annotate 'line', 252
    find_lex $P1249, "$/"
    unless_null $P1249, vivify_809
    $P1249 = root_new ['parrot';'Hash']
  vivify_809:
    set $P1250, $P1249["termconj"]
    unless_null $P1250, vivify_810
    new $P1250, "Undef"
  vivify_810:
    set $N1251, $P1250
    isgt $I1252, $N1251, 1.0
    if $I1252, if_1248
.annotate 'line', 259
    find_lex $P1274, "$/"
    unless_null $P1274, vivify_811
    $P1274 = root_new ['parrot';'Hash']
  vivify_811:
    set $P1275, $P1274["termconj"]
    unless_null $P1275, vivify_812
    $P1275 = root_new ['parrot';'ResizablePMCArray']
  vivify_812:
    set $P1276, $P1275[0]
    unless_null $P1276, vivify_813
    new $P1276, "Undef"
  vivify_813:
    $P1277 = $P1276."ast"()
    store_lex "$past", $P1277
.annotate 'line', 258
    goto if_1248_end
  if_1248:
.annotate 'line', 253
    get_hll_global $P1253, "GLOBAL"
    nqp_get_package_through_who $P1254, $P1253, "PAST"
    get_who $P1255, $P1254
    set $P1256, $P1255["Regex"]
    find_lex $P1257, "$/"
    unless_null $P1257, vivify_814
    new $P1257, "Undef"
  vivify_814:
    $P1258 = $P1256."new"("alt" :named("pasttype"), $P1257 :named("node"))
    store_lex "$past", $P1258
.annotate 'line', 254
    find_lex $P1260, "$/"
    unless_null $P1260, vivify_815
    $P1260 = root_new ['parrot';'Hash']
  vivify_815:
    set $P1261, $P1260["termconj"]
    unless_null $P1261, vivify_816
    new $P1261, "Undef"
  vivify_816:
    defined $I1262, $P1261
    unless $I1262, for_undef_817
    iter $P1259, $P1261
    new $P1272, 'ExceptionHandler'
    set_label $P1272, loop1271_handler
    $P1272."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1272
  loop1271_test:
    unless $P1259, loop1271_done
    shift $P1263, $P1259
  loop1271_redo:
    .const 'Sub' $P1265 = "263_1304282272.255" 
    capture_lex $P1265
    $P1265($P1263)
  loop1271_next:
    goto loop1271_test
  loop1271_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1273, exception, 'type'
    eq $P1273, .CONTROL_LOOP_NEXT, loop1271_next
    eq $P1273, .CONTROL_LOOP_REDO, loop1271_redo
  loop1271_done:
    pop_eh 
  for_undef_817:
  if_1248_end:
.annotate 'line', 261
    find_lex $P1278, "$/"
    find_lex $P1279, "$past"
    unless_null $P1279, vivify_820
    new $P1279, "Undef"
  vivify_820:
    $P1280 = $P1278."!make"($P1279)
.annotate 'line', 242
    .return ($P1280)
  control_1217:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1281, exception, "payload"
    .return ($P1281)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block1228"  :anon :subid("262_1304282272.255") :outer("261_1304282272.255")
.annotate 'line', 244
    $P1230 = root_new ['parrot';'Hash']
    .lex "%old", $P1230
.annotate 'line', 245
    $P1231 = root_new ['parrot';'Hash']
    .lex "%new", $P1231
.annotate 'line', 244
    find_lex $P1232, "$?PACKAGE"
    get_who $P1233, $P1232
    set $P1234, $P1233["@MODIFIERS"]
    unless_null $P1234, vivify_802
    $P1234 = root_new ['parrot';'ResizablePMCArray']
  vivify_802:
    set $P1235, $P1234[0]
    unless_null $P1235, vivify_803
    new $P1235, "Undef"
  vivify_803:
    store_lex "%old", $P1235
.annotate 'line', 245
    find_lex $P1236, "%old"
    unless_null $P1236, vivify_804
    $P1236 = root_new ['parrot';'Hash']
  vivify_804:
    clone $P1237, $P1236
    store_lex "%new", $P1237
.annotate 'line', 246
    find_lex $P1238, "$?PACKAGE"
    get_who $P1239, $P1238
    set $P1240, $P1239["@MODIFIERS"]
    unless_null $P1240, vivify_805
    $P1240 = root_new ['parrot';'ResizablePMCArray']
  vivify_805:
    find_lex $P1241, "%new"
    unless_null $P1241, vivify_806
    $P1241 = root_new ['parrot';'Hash']
  vivify_806:
    $P1240."unshift"($P1241)
.annotate 'line', 247
    new $P1242, "Exception"
    set $P1242['type'], .CONTROL_RETURN
    new $P1243, "Integer"
    assign $P1243, 1
    setattribute $P1242, 'payload', $P1243
    throw $P1242
.annotate 'line', 243
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1264"  :anon :subid("263_1304282272.255") :outer("261_1304282272.255")
    .param pmc param_1266
.annotate 'line', 254
    .lex "$_", param_1266
.annotate 'line', 255
    find_lex $P1267, "$past"
    unless_null $P1267, vivify_818
    new $P1267, "Undef"
  vivify_818:
    find_lex $P1268, "$_"
    unless_null $P1268, vivify_819
    new $P1268, "Undef"
  vivify_819:
    $P1269 = $P1268."ast"()
    $P1270 = $P1267."push"($P1269)
.annotate 'line', 254
    .return ($P1270)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("264_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1283
    .param pmc param_1284
.annotate 'line', 264
    .const 'Sub' $P1304 = "265_1304282272.255" 
    capture_lex $P1304
    .lex "self", param_1283
    .lex "$/", param_1284
.annotate 'line', 265
    new $P1285, "Undef"
    .lex "$past", $P1285
.annotate 'line', 264
    find_lex $P1286, "$past"
    unless_null $P1286, vivify_821
    new $P1286, "Undef"
  vivify_821:
.annotate 'line', 266
    find_lex $P1288, "$/"
    unless_null $P1288, vivify_822
    $P1288 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1289, $P1288["termish"]
    unless_null $P1289, vivify_823
    new $P1289, "Undef"
  vivify_823:
    set $N1290, $P1289
    isgt $I1291, $N1290, 1.0
    if $I1291, if_1287
.annotate 'line', 273
    find_lex $P1313, "$/"
    unless_null $P1313, vivify_824
    $P1313 = root_new ['parrot';'Hash']
  vivify_824:
    set $P1314, $P1313["termish"]
    unless_null $P1314, vivify_825
    $P1314 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    set $P1315, $P1314[0]
    unless_null $P1315, vivify_826
    new $P1315, "Undef"
  vivify_826:
    $P1316 = $P1315."ast"()
    store_lex "$past", $P1316
.annotate 'line', 272
    goto if_1287_end
  if_1287:
.annotate 'line', 267
    get_hll_global $P1292, "GLOBAL"
    nqp_get_package_through_who $P1293, $P1292, "PAST"
    get_who $P1294, $P1293
    set $P1295, $P1294["Regex"]
    find_lex $P1296, "$/"
    unless_null $P1296, vivify_827
    new $P1296, "Undef"
  vivify_827:
    $P1297 = $P1295."new"("conj" :named("pasttype"), $P1296 :named("node"))
    store_lex "$past", $P1297
.annotate 'line', 268
    find_lex $P1299, "$/"
    unless_null $P1299, vivify_828
    $P1299 = root_new ['parrot';'Hash']
  vivify_828:
    set $P1300, $P1299["termish"]
    unless_null $P1300, vivify_829
    new $P1300, "Undef"
  vivify_829:
    defined $I1301, $P1300
    unless $I1301, for_undef_830
    iter $P1298, $P1300
    new $P1311, 'ExceptionHandler'
    set_label $P1311, loop1310_handler
    $P1311."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1311
  loop1310_test:
    unless $P1298, loop1310_done
    shift $P1302, $P1298
  loop1310_redo:
    .const 'Sub' $P1304 = "265_1304282272.255" 
    capture_lex $P1304
    $P1304($P1302)
  loop1310_next:
    goto loop1310_test
  loop1310_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1312, exception, 'type'
    eq $P1312, .CONTROL_LOOP_NEXT, loop1310_next
    eq $P1312, .CONTROL_LOOP_REDO, loop1310_redo
  loop1310_done:
    pop_eh 
  for_undef_830:
  if_1287_end:
.annotate 'line', 275
    find_lex $P1317, "$/"
    find_lex $P1318, "$past"
    unless_null $P1318, vivify_833
    new $P1318, "Undef"
  vivify_833:
    $P1319 = $P1317."!make"($P1318)
.annotate 'line', 264
    .return ($P1319)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1303"  :anon :subid("265_1304282272.255") :outer("264_1304282272.255")
    .param pmc param_1305
.annotate 'line', 268
    .lex "$_", param_1305
.annotate 'line', 269
    find_lex $P1306, "$past"
    unless_null $P1306, vivify_831
    new $P1306, "Undef"
  vivify_831:
    find_lex $P1307, "$_"
    unless_null $P1307, vivify_832
    new $P1307, "Undef"
  vivify_832:
    $P1308 = $P1307."ast"()
    $P1309 = $P1306."push"($P1308)
.annotate 'line', 268
    .return ($P1309)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("266_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'line', 278
    .const 'Sub' $P1338 = "267_1304282272.255" 
    capture_lex $P1338
    .lex "self", param_1321
    .lex "$/", param_1322
.annotate 'line', 279
    new $P1323, "Undef"
    .lex "$past", $P1323
.annotate 'line', 280
    new $P1324, "Undef"
    .lex "$lastlit", $P1324
.annotate 'line', 279
    get_hll_global $P1325, "GLOBAL"
    nqp_get_package_through_who $P1326, $P1325, "PAST"
    get_who $P1327, $P1326
    set $P1328, $P1327["Regex"]
    find_lex $P1329, "$/"
    unless_null $P1329, vivify_834
    new $P1329, "Undef"
  vivify_834:
    $P1330 = $P1328."new"("concat" :named("pasttype"), $P1329 :named("node"))
    store_lex "$past", $P1330
.annotate 'line', 280
    new $P1331, "Integer"
    assign $P1331, 0
    store_lex "$lastlit", $P1331
.annotate 'line', 281
    find_lex $P1333, "$/"
    unless_null $P1333, vivify_835
    $P1333 = root_new ['parrot';'Hash']
  vivify_835:
    set $P1334, $P1333["noun"]
    unless_null $P1334, vivify_836
    new $P1334, "Undef"
  vivify_836:
    defined $I1335, $P1334
    unless $I1335, for_undef_837
    iter $P1332, $P1334
    new $P1390, 'ExceptionHandler'
    set_label $P1390, loop1389_handler
    $P1390."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1390
  loop1389_test:
    unless $P1332, loop1389_done
    shift $P1336, $P1332
  loop1389_redo:
    .const 'Sub' $P1338 = "267_1304282272.255" 
    capture_lex $P1338
    $P1338($P1336)
  loop1389_next:
    goto loop1389_test
  loop1389_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1391, exception, 'type'
    eq $P1391, .CONTROL_LOOP_NEXT, loop1389_next
    eq $P1391, .CONTROL_LOOP_REDO, loop1389_redo
  loop1389_done:
    pop_eh 
  for_undef_837:
.annotate 'line', 296
    find_lex $P1392, "$/"
    find_lex $P1393, "$past"
    unless_null $P1393, vivify_855
    new $P1393, "Undef"
  vivify_855:
    $P1394 = $P1392."!make"($P1393)
.annotate 'line', 278
    .return ($P1394)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1337"  :anon :subid("267_1304282272.255") :outer("266_1304282272.255")
    .param pmc param_1340
.annotate 'line', 282
    new $P1339, "Undef"
    .lex "$ast", $P1339
    .lex "$_", param_1340
    find_lex $P1341, "$_"
    unless_null $P1341, vivify_838
    new $P1341, "Undef"
  vivify_838:
    $P1342 = $P1341."ast"()
    store_lex "$ast", $P1342
.annotate 'line', 283
    find_lex $P1345, "$ast"
    unless_null $P1345, vivify_839
    new $P1345, "Undef"
  vivify_839:
    if $P1345, if_1344
    set $P1343, $P1345
    goto if_1344_end
  if_1344:
.annotate 'line', 284
    find_lex $P1352, "$lastlit"
    unless_null $P1352, vivify_840
    new $P1352, "Undef"
  vivify_840:
    if $P1352, if_1351
    set $P1350, $P1352
    goto if_1351_end
  if_1351:
    find_lex $P1353, "$ast"
    unless_null $P1353, vivify_841
    new $P1353, "Undef"
  vivify_841:
    $S1354 = $P1353."pasttype"()
    iseq $I1355, $S1354, "literal"
    new $P1350, 'Integer'
    set $P1350, $I1355
  if_1351_end:
    if $P1350, if_1349
    set $P1348, $P1350
    goto if_1349_end
  if_1349:
.annotate 'line', 285
    get_hll_global $P1356, "GLOBAL"
    nqp_get_package_through_who $P1357, $P1356, "PAST"
    get_who $P1358, $P1357
    set $P1359, $P1358["Node"]
    find_lex $P1360, "$ast"
    unless_null $P1360, vivify_842
    $P1360 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $P1361, $P1360[0]
    unless_null $P1361, vivify_843
    new $P1361, "Undef"
  vivify_843:
    $P1362 = $P1359."ACCEPTS"($P1361)
    isfalse $I1363, $P1362
    new $P1348, 'Integer'
    set $P1348, $I1363
  if_1349_end:
    if $P1348, if_1347
.annotate 'line', 289
    find_lex $P1370, "$past"
    unless_null $P1370, vivify_844
    new $P1370, "Undef"
  vivify_844:
    find_lex $P1371, "$ast"
    unless_null $P1371, vivify_845
    new $P1371, "Undef"
  vivify_845:
    $P1370."push"($P1371)
.annotate 'line', 290
    find_lex $P1376, "$ast"
    unless_null $P1376, vivify_846
    new $P1376, "Undef"
  vivify_846:
    $S1377 = $P1376."pasttype"()
    iseq $I1378, $S1377, "literal"
    if $I1378, if_1375
    new $P1374, 'Integer'
    set $P1374, $I1378
    goto if_1375_end
  if_1375:
.annotate 'line', 291
    get_hll_global $P1379, "GLOBAL"
    nqp_get_package_through_who $P1380, $P1379, "PAST"
    get_who $P1381, $P1380
    set $P1382, $P1381["Node"]
    find_lex $P1383, "$ast"
    unless_null $P1383, vivify_847
    $P1383 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $P1384, $P1383[0]
    unless_null $P1384, vivify_848
    new $P1384, "Undef"
  vivify_848:
    $P1385 = $P1382."ACCEPTS"($P1384)
    isfalse $I1386, $P1385
    new $P1374, 'Integer'
    set $P1374, $I1386
  if_1375_end:
    if $P1374, if_1373
    new $P1388, "Integer"
    assign $P1388, 0
    set $P1372, $P1388
    goto if_1373_end
  if_1373:
    find_lex $P1387, "$ast"
    unless_null $P1387, vivify_849
    new $P1387, "Undef"
  vivify_849:
    set $P1372, $P1387
  if_1373_end:
.annotate 'line', 292
    store_lex "$lastlit", $P1372
.annotate 'line', 288
    set $P1346, $P1372
.annotate 'line', 285
    goto if_1347_end
  if_1347:
.annotate 'line', 286
    find_lex $P1364, "$lastlit"
    unless_null $P1364, vivify_850
    $P1364 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $P1365, $P1364[0]
    unless_null $P1365, vivify_851
    new $P1365, "Undef"
  vivify_851:
    find_lex $P1366, "$ast"
    unless_null $P1366, vivify_852
    $P1366 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $P1367, $P1366[0]
    unless_null $P1367, vivify_853
    new $P1367, "Undef"
  vivify_853:
    concat $P1368, $P1365, $P1367
    find_lex $P1369, "$lastlit"
    unless_null $P1369, vivify_854
    $P1369 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P1369
  vivify_854:
    set $P1369[0], $P1368
.annotate 'line', 285
    set $P1346, $P1368
  if_1347_end:
.annotate 'line', 283
    set $P1343, $P1346
  if_1344_end:
.annotate 'line', 281
    .return ($P1343)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("268_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1396
    .param pmc param_1397
.annotate 'line', 299
    .const 'Sub' $P1406 = "269_1304282272.255" 
    capture_lex $P1406
    .lex "self", param_1396
    .lex "$/", param_1397
.annotate 'line', 300
    new $P1398, "Undef"
    .lex "$past", $P1398
    find_lex $P1399, "$/"
    unless_null $P1399, vivify_856
    $P1399 = root_new ['parrot';'Hash']
  vivify_856:
    set $P1400, $P1399["atom"]
    unless_null $P1400, vivify_857
    new $P1400, "Undef"
  vivify_857:
    $P1401 = $P1400."ast"()
    store_lex "$past", $P1401
.annotate 'line', 301
    find_lex $P1403, "$/"
    unless_null $P1403, vivify_858
    $P1403 = root_new ['parrot';'Hash']
  vivify_858:
    set $P1404, $P1403["quantifier"]
    unless_null $P1404, vivify_859
    new $P1404, "Undef"
  vivify_859:
    if $P1404, if_1402
.annotate 'line', 307
    find_lex $P1421, "$/"
    unless_null $P1421, vivify_860
    $P1421 = root_new ['parrot';'Hash']
  vivify_860:
    set $P1422, $P1421["backmod"]
    unless_null $P1422, vivify_861
    $P1422 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    set $P1423, $P1422[0]
    unless_null $P1423, vivify_862
    new $P1423, "Undef"
  vivify_862:
    unless $P1423, if_1420_end
    find_lex $P1424, "$past"
    unless_null $P1424, vivify_863
    new $P1424, "Undef"
  vivify_863:
    find_lex $P1425, "$/"
    unless_null $P1425, vivify_864
    $P1425 = root_new ['parrot';'Hash']
  vivify_864:
    set $P1426, $P1425["backmod"]
    unless_null $P1426, vivify_865
    $P1426 = root_new ['parrot';'ResizablePMCArray']
  vivify_865:
    set $P1427, $P1426[0]
    unless_null $P1427, vivify_866
    new $P1427, "Undef"
  vivify_866:
    "backmod"($P1424, $P1427)
  if_1420_end:
    goto if_1402_end
  if_1402:
.annotate 'line', 301
    .const 'Sub' $P1406 = "269_1304282272.255" 
    capture_lex $P1406
    $P1406()
  if_1402_end:
.annotate 'line', 308
    find_lex $P1433, "$past"
    unless_null $P1433, vivify_875
    new $P1433, "Undef"
  vivify_875:
    if $P1433, if_1432
    set $P1431, $P1433
    goto if_1432_end
  if_1432:
    find_lex $P1434, "$past"
    unless_null $P1434, vivify_876
    new $P1434, "Undef"
  vivify_876:
    $P1435 = $P1434."backtrack"()
    isfalse $I1436, $P1435
    new $P1431, 'Integer'
    set $P1431, $I1436
  if_1432_end:
    if $P1431, if_1430
    set $P1429, $P1431
    goto if_1430_end
  if_1430:
    find_lex $P1437, "$?PACKAGE"
    get_who $P1438, $P1437
    set $P1439, $P1438["@MODIFIERS"]
    unless_null $P1439, vivify_877
    $P1439 = root_new ['parrot';'ResizablePMCArray']
  vivify_877:
    set $P1440, $P1439[0]
    unless_null $P1440, vivify_878
    $P1440 = root_new ['parrot';'Hash']
  vivify_878:
    set $P1441, $P1440["r"]
    unless_null $P1441, vivify_879
    new $P1441, "Undef"
  vivify_879:
    set $P1429, $P1441
  if_1430_end:
    unless $P1429, if_1428_end
.annotate 'line', 309
    find_lex $P1442, "$past"
    unless_null $P1442, vivify_880
    new $P1442, "Undef"
  vivify_880:
    $P1442."backtrack"("r")
  if_1428_end:
.annotate 'line', 311
    find_lex $P1443, "$/"
    find_lex $P1444, "$past"
    unless_null $P1444, vivify_881
    new $P1444, "Undef"
  vivify_881:
    $P1445 = $P1443."!make"($P1444)
.annotate 'line', 299
    .return ($P1445)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1405"  :anon :subid("269_1304282272.255") :outer("268_1304282272.255")
.annotate 'line', 303
    new $P1407, "Undef"
    .lex "$qast", $P1407
.annotate 'line', 302
    find_lex $P1409, "$past"
    unless_null $P1409, vivify_867
    new $P1409, "Undef"
  vivify_867:
    isfalse $I1410, $P1409
    unless $I1410, if_1408_end
    find_lex $P1411, "$/"
    unless_null $P1411, vivify_868
    new $P1411, "Undef"
  vivify_868:
    $P1412 = $P1411."CURSOR"()
    $P1412."panic"("Quantifier follows nothing")
  if_1408_end:
.annotate 'line', 303
    find_lex $P1413, "$/"
    unless_null $P1413, vivify_869
    $P1413 = root_new ['parrot';'Hash']
  vivify_869:
    set $P1414, $P1413["quantifier"]
    unless_null $P1414, vivify_870
    $P1414 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    set $P1415, $P1414[0]
    unless_null $P1415, vivify_871
    new $P1415, "Undef"
  vivify_871:
    $P1416 = $P1415."ast"()
    store_lex "$qast", $P1416
.annotate 'line', 304
    find_lex $P1417, "$qast"
    unless_null $P1417, vivify_872
    new $P1417, "Undef"
  vivify_872:
    find_lex $P1418, "$past"
    unless_null $P1418, vivify_873
    new $P1418, "Undef"
  vivify_873:
    $P1417."unshift"($P1418)
.annotate 'line', 305
    find_lex $P1419, "$qast"
    unless_null $P1419, vivify_874
    new $P1419, "Undef"
  vivify_874:
    store_lex "$past", $P1419
.annotate 'line', 301
    .return ($P1419)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("270_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1447
    .param pmc param_1448
.annotate 'line', 314
    .lex "self", param_1447
    .lex "$/", param_1448
.annotate 'line', 315
    new $P1449, "Undef"
    .lex "$past", $P1449
.annotate 'line', 314
    find_lex $P1450, "$past"
    unless_null $P1450, vivify_882
    new $P1450, "Undef"
  vivify_882:
.annotate 'line', 316
    find_lex $P1452, "$/"
    unless_null $P1452, vivify_883
    $P1452 = root_new ['parrot';'Hash']
  vivify_883:
    set $P1453, $P1452["metachar"]
    unless_null $P1453, vivify_884
    new $P1453, "Undef"
  vivify_884:
    if $P1453, if_1451
.annotate 'line', 318
    get_hll_global $P1457, "GLOBAL"
    nqp_get_package_through_who $P1458, $P1457, "PAST"
    get_who $P1459, $P1458
    set $P1460, $P1459["Regex"]
    find_lex $P1461, "$/"
    unless_null $P1461, vivify_885
    new $P1461, "Undef"
  vivify_885:
    set $S1462, $P1461
    find_lex $P1463, "$/"
    unless_null $P1463, vivify_886
    new $P1463, "Undef"
  vivify_886:
    $P1464 = $P1460."new"($S1462, "literal" :named("pasttype"), $P1463 :named("node"))
    store_lex "$past", $P1464
.annotate 'line', 319
    find_lex $P1466, "$?PACKAGE"
    get_who $P1467, $P1466
    set $P1468, $P1467["@MODIFIERS"]
    unless_null $P1468, vivify_887
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_887:
    set $P1469, $P1468[0]
    unless_null $P1469, vivify_888
    $P1469 = root_new ['parrot';'Hash']
  vivify_888:
    set $P1470, $P1469["i"]
    unless_null $P1470, vivify_889
    new $P1470, "Undef"
  vivify_889:
    unless $P1470, if_1465_end
    find_lex $P1471, "$past"
    unless_null $P1471, vivify_890
    new $P1471, "Undef"
  vivify_890:
    $P1471."subtype"("ignorecase")
  if_1465_end:
.annotate 'line', 317
    goto if_1451_end
  if_1451:
.annotate 'line', 316
    find_lex $P1454, "$/"
    unless_null $P1454, vivify_891
    $P1454 = root_new ['parrot';'Hash']
  vivify_891:
    set $P1455, $P1454["metachar"]
    unless_null $P1455, vivify_892
    new $P1455, "Undef"
  vivify_892:
    $P1456 = $P1455."ast"()
    store_lex "$past", $P1456
  if_1451_end:
.annotate 'line', 321
    find_lex $P1472, "$/"
    find_lex $P1473, "$past"
    unless_null $P1473, vivify_893
    new $P1473, "Undef"
  vivify_893:
    $P1474 = $P1472."!make"($P1473)
.annotate 'line', 314
    .return ($P1474)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("271_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1476
    .param pmc param_1477
.annotate 'line', 324
    .lex "self", param_1476
    .lex "$/", param_1477
.annotate 'line', 325
    new $P1478, "Undef"
    .lex "$past", $P1478
    get_hll_global $P1479, "GLOBAL"
    nqp_get_package_through_who $P1480, $P1479, "PAST"
    get_who $P1481, $P1480
    set $P1482, $P1481["Regex"]
    find_lex $P1483, "$/"
    unless_null $P1483, vivify_894
    new $P1483, "Undef"
  vivify_894:
    $P1484 = $P1482."new"("quant" :named("pasttype"), $P1483 :named("node"))
    store_lex "$past", $P1484
.annotate 'line', 326
    find_lex $P1485, "$/"
    find_lex $P1486, "$past"
    unless_null $P1486, vivify_895
    new $P1486, "Undef"
  vivify_895:
    find_lex $P1487, "$/"
    unless_null $P1487, vivify_896
    $P1487 = root_new ['parrot';'Hash']
  vivify_896:
    set $P1488, $P1487["backmod"]
    unless_null $P1488, vivify_897
    new $P1488, "Undef"
  vivify_897:
    $P1489 = "backmod"($P1486, $P1488)
    $P1490 = $P1485."!make"($P1489)
.annotate 'line', 324
    .return ($P1490)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("272_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1492
    .param pmc param_1493
.annotate 'line', 329
    .lex "self", param_1492
    .lex "$/", param_1493
.annotate 'line', 330
    new $P1494, "Undef"
    .lex "$past", $P1494
    get_hll_global $P1495, "GLOBAL"
    nqp_get_package_through_who $P1496, $P1495, "PAST"
    get_who $P1497, $P1496
    set $P1498, $P1497["Regex"]
    find_lex $P1499, "$/"
    unless_null $P1499, vivify_898
    new $P1499, "Undef"
  vivify_898:
    $P1500 = $P1498."new"("quant" :named("pasttype"), 1 :named("min"), $P1499 :named("node"))
    store_lex "$past", $P1500
.annotate 'line', 331
    find_lex $P1501, "$/"
    find_lex $P1502, "$past"
    unless_null $P1502, vivify_899
    new $P1502, "Undef"
  vivify_899:
    find_lex $P1503, "$/"
    unless_null $P1503, vivify_900
    $P1503 = root_new ['parrot';'Hash']
  vivify_900:
    set $P1504, $P1503["backmod"]
    unless_null $P1504, vivify_901
    new $P1504, "Undef"
  vivify_901:
    $P1505 = "backmod"($P1502, $P1504)
    $P1506 = $P1501."!make"($P1505)
.annotate 'line', 329
    .return ($P1506)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("273_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1508
    .param pmc param_1509
.annotate 'line', 334
    .lex "self", param_1508
    .lex "$/", param_1509
.annotate 'line', 335
    new $P1510, "Undef"
    .lex "$past", $P1510
    get_hll_global $P1511, "GLOBAL"
    nqp_get_package_through_who $P1512, $P1511, "PAST"
    get_who $P1513, $P1512
    set $P1514, $P1513["Regex"]
    find_lex $P1515, "$/"
    unless_null $P1515, vivify_902
    new $P1515, "Undef"
  vivify_902:
    $P1516 = $P1514."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P1515 :named("node"))
    store_lex "$past", $P1516
.annotate 'line', 336
    find_lex $P1517, "$/"
    find_lex $P1518, "$past"
    unless_null $P1518, vivify_903
    new $P1518, "Undef"
  vivify_903:
    find_lex $P1519, "$/"
    unless_null $P1519, vivify_904
    $P1519 = root_new ['parrot';'Hash']
  vivify_904:
    set $P1520, $P1519["backmod"]
    unless_null $P1520, vivify_905
    new $P1520, "Undef"
  vivify_905:
    $P1521 = "backmod"($P1518, $P1520)
    $P1517."!make"($P1521)
.annotate 'line', 337
    find_lex $P1522, "$/"
    find_lex $P1523, "$past"
    unless_null $P1523, vivify_906
    new $P1523, "Undef"
  vivify_906:
    $P1524 = $P1522."!make"($P1523)
.annotate 'line', 334
    .return ($P1524)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("274_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1526
    .param pmc param_1527
.annotate 'line', 340
    .const 'Sub' $P1544 = "275_1304282272.255" 
    capture_lex $P1544
    .lex "self", param_1526
    .lex "$/", param_1527
.annotate 'line', 341
    new $P1528, "Undef"
    .lex "$past", $P1528
.annotate 'line', 342
    new $P1529, "Undef"
    .lex "$ws", $P1529
.annotate 'line', 340
    find_lex $P1530, "$past"
    unless_null $P1530, vivify_907
    new $P1530, "Undef"
  vivify_907:
.annotate 'line', 342
    find_lex $P1533, "$/"
    unless_null $P1533, vivify_908
    $P1533 = root_new ['parrot';'Hash']
  vivify_908:
    set $P1534, $P1533["normspace"]
    unless_null $P1534, vivify_909
    new $P1534, "Undef"
  vivify_909:
    if $P1534, if_1532
    set $P1531, $P1534
    goto if_1532_end
  if_1532:
    find_lex $P1535, "$?PACKAGE"
    get_who $P1536, $P1535
    set $P1537, $P1536["@MODIFIERS"]
    unless_null $P1537, vivify_910
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_910:
    set $P1538, $P1537[0]
    unless_null $P1538, vivify_911
    $P1538 = root_new ['parrot';'Hash']
  vivify_911:
    set $P1539, $P1538["s"]
    unless_null $P1539, vivify_912
    new $P1539, "Undef"
  vivify_912:
    set $P1531, $P1539
  if_1532_end:
    store_lex "$ws", $P1531
.annotate 'line', 343
    find_lex $P1541, "$/"
    unless_null $P1541, vivify_913
    $P1541 = root_new ['parrot';'Hash']
  vivify_913:
    set $P1542, $P1541["quantified_atom"]
    unless_null $P1542, vivify_914
    new $P1542, "Undef"
  vivify_914:
    if $P1542, if_1540
.annotate 'line', 359
    get_hll_global $P1574, "GLOBAL"
    nqp_get_package_through_who $P1575, $P1574, "PAST"
    get_who $P1576, $P1575
    set $P1577, $P1576["Regex"]
    find_lex $P1578, "$/"
    unless_null $P1578, vivify_915
    $P1578 = root_new ['parrot';'Hash']
  vivify_915:
    set $P1579, $P1578["min"]
    unless_null $P1579, vivify_916
    new $P1579, "Undef"
  vivify_916:
    set $N1580, $P1579
    find_lex $P1581, "$/"
    unless_null $P1581, vivify_917
    new $P1581, "Undef"
  vivify_917:
    $P1582 = $P1577."new"("quant" :named("pasttype"), $N1580 :named("min"), $P1581 :named("node"))
    store_lex "$past", $P1582
.annotate 'line', 360
    find_lex $P1584, "$/"
    unless_null $P1584, vivify_918
    $P1584 = root_new ['parrot';'Hash']
  vivify_918:
    set $P1585, $P1584["max"]
    unless_null $P1585, vivify_919
    new $P1585, "Undef"
  vivify_919:
    isfalse $I1586, $P1585
    if $I1586, if_1583
.annotate 'line', 361
    find_lex $P1592, "$/"
    unless_null $P1592, vivify_920
    $P1592 = root_new ['parrot';'Hash']
  vivify_920:
    set $P1593, $P1592["max"]
    unless_null $P1593, vivify_921
    $P1593 = root_new ['parrot';'ResizablePMCArray']
  vivify_921:
    set $P1594, $P1593[0]
    unless_null $P1594, vivify_922
    new $P1594, "Undef"
  vivify_922:
    set $S1595, $P1594
    isne $I1596, $S1595, "*"
    unless $I1596, if_1591_end
    find_lex $P1597, "$past"
    unless_null $P1597, vivify_923
    new $P1597, "Undef"
  vivify_923:
    find_lex $P1598, "$/"
    unless_null $P1598, vivify_924
    $P1598 = root_new ['parrot';'Hash']
  vivify_924:
    set $P1599, $P1598["max"]
    unless_null $P1599, vivify_925
    $P1599 = root_new ['parrot';'ResizablePMCArray']
  vivify_925:
    set $P1600, $P1599[0]
    unless_null $P1600, vivify_926
    new $P1600, "Undef"
  vivify_926:
    set $N1601, $P1600
    $P1597."max"($N1601)
  if_1591_end:
    goto if_1583_end
  if_1583:
.annotate 'line', 360
    find_lex $P1587, "$past"
    unless_null $P1587, vivify_927
    new $P1587, "Undef"
  vivify_927:
    find_lex $P1588, "$/"
    unless_null $P1588, vivify_928
    $P1588 = root_new ['parrot';'Hash']
  vivify_928:
    set $P1589, $P1588["min"]
    unless_null $P1589, vivify_929
    new $P1589, "Undef"
  vivify_929:
    set $N1590, $P1589
    $P1587."max"($N1590)
  if_1583_end:
.annotate 'line', 362
    find_lex $P1603, "$ws"
    unless_null $P1603, vivify_930
    new $P1603, "Undef"
  vivify_930:
    unless $P1603, if_1602_end
    find_lex $P1604, "$past"
    unless_null $P1604, vivify_931
    new $P1604, "Undef"
  vivify_931:
    get_hll_global $P1605, "GLOBAL"
    nqp_get_package_through_who $P1606, $P1605, "PAST"
    get_who $P1607, $P1606
    set $P1608, $P1607["Regex"]
    $P1609 = $P1608."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1604."sep"($P1609)
  if_1602_end:
.annotate 'line', 358
    goto if_1540_end
  if_1540:
.annotate 'line', 343
    .const 'Sub' $P1544 = "275_1304282272.255" 
    capture_lex $P1544
    $P1544()
  if_1540_end:
.annotate 'line', 366
    find_lex $P1610, "$/"
    find_lex $P1611, "$past"
    unless_null $P1611, vivify_938
    new $P1611, "Undef"
  vivify_938:
    find_lex $P1612, "$/"
    unless_null $P1612, vivify_939
    $P1612 = root_new ['parrot';'Hash']
  vivify_939:
    set $P1613, $P1612["backmod"]
    unless_null $P1613, vivify_940
    new $P1613, "Undef"
  vivify_940:
    $P1614 = "backmod"($P1611, $P1613)
    $P1615 = $P1610."!make"($P1614)
.annotate 'line', 340
    .return ($P1615)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1543"  :anon :subid("275_1304282272.255") :outer("274_1304282272.255")
.annotate 'line', 344
    new $P1545, "Undef"
    .lex "$ast", $P1545
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_932
    $P1546 = root_new ['parrot';'Hash']
  vivify_932:
    set $P1547, $P1546["quantified_atom"]
    unless_null $P1547, vivify_933
    new $P1547, "Undef"
  vivify_933:
    $P1548 = $P1547."ast"()
    store_lex "$ast", $P1548
.annotate 'line', 345
    find_lex $P1550, "$ws"
    unless_null $P1550, vivify_934
    new $P1550, "Undef"
  vivify_934:
    unless $P1550, if_1549_end
.annotate 'line', 346
    get_hll_global $P1551, "GLOBAL"
    nqp_get_package_through_who $P1552, $P1551, "PAST"
    get_who $P1553, $P1552
    set $P1554, $P1553["Regex"]
.annotate 'line', 348
    get_hll_global $P1555, "GLOBAL"
    nqp_get_package_through_who $P1556, $P1555, "PAST"
    get_who $P1557, $P1556
    set $P1558, $P1557["Regex"]
    $P1559 = $P1558."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P1560, "$ast"
    unless_null $P1560, vivify_935
    new $P1560, "Undef"
  vivify_935:
.annotate 'line', 351
    get_hll_global $P1561, "GLOBAL"
    nqp_get_package_through_who $P1562, $P1561, "PAST"
    get_who $P1563, $P1562
    set $P1564, $P1563["Regex"]
    $P1565 = $P1564."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1566 = $P1554."new"($P1559, $P1560, $P1565, "concat" :named("pasttype"))
.annotate 'line', 346
    store_lex "$ast", $P1566
  if_1549_end:
.annotate 'line', 355
    get_hll_global $P1567, "GLOBAL"
    nqp_get_package_through_who $P1568, $P1567, "PAST"
    get_who $P1569, $P1568
    set $P1570, $P1569["Regex"]
    find_lex $P1571, "$ast"
    unless_null $P1571, vivify_936
    new $P1571, "Undef"
  vivify_936:
    find_lex $P1572, "$/"
    unless_null $P1572, vivify_937
    new $P1572, "Undef"
  vivify_937:
    $P1573 = $P1570."new"("quant" :named("pasttype"), 1 :named("min"), $P1571 :named("sep"), $P1572 :named("node"))
    store_lex "$past", $P1573
.annotate 'line', 343
    .return ($P1573)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("276_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1617
    .param pmc param_1618
.annotate 'line', 369
    .lex "self", param_1617
    .lex "$/", param_1618
.annotate 'line', 370
    new $P1619, "Undef"
    .lex "$past", $P1619
.annotate 'line', 371
    find_lex $P1622, "$?PACKAGE"
    get_who $P1623, $P1622
    set $P1624, $P1623["@MODIFIERS"]
    unless_null $P1624, vivify_941
    $P1624 = root_new ['parrot';'ResizablePMCArray']
  vivify_941:
    set $P1625, $P1624[0]
    unless_null $P1625, vivify_942
    $P1625 = root_new ['parrot';'Hash']
  vivify_942:
    set $P1626, $P1625["s"]
    unless_null $P1626, vivify_943
    new $P1626, "Undef"
  vivify_943:
    if $P1626, if_1621
    new $P1633, "Integer"
    assign $P1633, 0
    set $P1620, $P1633
    goto if_1621_end
  if_1621:
    get_hll_global $P1627, "GLOBAL"
    nqp_get_package_through_who $P1628, $P1627, "PAST"
    get_who $P1629, $P1628
    set $P1630, $P1629["Regex"]
    find_lex $P1631, "$/"
    unless_null $P1631, vivify_944
    new $P1631, "Undef"
  vivify_944:
    $P1632 = $P1630."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P1631 :named("node"))
    set $P1620, $P1632
  if_1621_end:
    store_lex "$past", $P1620
.annotate 'line', 374
    find_lex $P1634, "$/"
    find_lex $P1635, "$past"
    unless_null $P1635, vivify_945
    new $P1635, "Undef"
  vivify_945:
    $P1636 = $P1634."!make"($P1635)
.annotate 'line', 369
    .return ($P1636)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("277_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1638
    .param pmc param_1639
.annotate 'line', 378
    .lex "self", param_1638
    .lex "$/", param_1639
.annotate 'line', 379
    find_lex $P1640, "$/"
    find_lex $P1641, "$/"
    unless_null $P1641, vivify_946
    $P1641 = root_new ['parrot';'Hash']
  vivify_946:
    set $P1642, $P1641["nibbler"]
    unless_null $P1642, vivify_947
    new $P1642, "Undef"
  vivify_947:
    $P1643 = $P1642."ast"()
    $P1644 = $P1640."!make"($P1643)
.annotate 'line', 378
    .return ($P1644)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("278_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1646
    .param pmc param_1647
.annotate 'line', 382
    .lex "self", param_1646
    .lex "$/", param_1647
.annotate 'line', 383
    new $P1648, "Undef"
    .lex "$subpast", $P1648
.annotate 'line', 384
    new $P1649, "Undef"
    .lex "$past", $P1649
.annotate 'line', 383
    find_lex $P1650, "$/"
    unless_null $P1650, vivify_948
    $P1650 = root_new ['parrot';'Hash']
  vivify_948:
    set $P1651, $P1650["nibbler"]
    unless_null $P1651, vivify_949
    new $P1651, "Undef"
  vivify_949:
    $P1652 = $P1651."ast"()
    $P1653 = "buildsub"($P1652)
    store_lex "$subpast", $P1653
.annotate 'line', 384
    get_hll_global $P1654, "GLOBAL"
    nqp_get_package_through_who $P1655, $P1654, "PAST"
    get_who $P1656, $P1655
    set $P1657, $P1656["Regex"]
    find_lex $P1658, "$subpast"
    unless_null $P1658, vivify_950
    new $P1658, "Undef"
  vivify_950:
    find_lex $P1659, "$/"
    unless_null $P1659, vivify_951
    new $P1659, "Undef"
  vivify_951:
    $P1660 = $P1657."new"($P1658, "subrule" :named("pasttype"), "capture" :named("subtype"), $P1659 :named("node"))
    store_lex "$past", $P1660
.annotate 'line', 386
    find_lex $P1661, "$/"
    find_lex $P1662, "$past"
    unless_null $P1662, vivify_952
    new $P1662, "Undef"
  vivify_952:
    $P1663 = $P1661."!make"($P1662)
.annotate 'line', 382
    .return ($P1663)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("279_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1665
    .param pmc param_1666
.annotate 'line', 389
    .lex "self", param_1665
    .lex "$/", param_1666
.annotate 'line', 390
    new $P1667, "Undef"
    .lex "$quote", $P1667
.annotate 'line', 392
    new $P1668, "Undef"
    .lex "$past", $P1668
.annotate 'line', 390
    find_lex $P1669, "$/"
    unless_null $P1669, vivify_953
    $P1669 = root_new ['parrot';'Hash']
  vivify_953:
    set $P1670, $P1669["quote_EXPR"]
    unless_null $P1670, vivify_954
    new $P1670, "Undef"
  vivify_954:
    $P1671 = $P1670."ast"()
    store_lex "$quote", $P1671
.annotate 'line', 391
    get_hll_global $P1673, "GLOBAL"
    nqp_get_package_through_who $P1674, $P1673, "PAST"
    get_who $P1675, $P1674
    set $P1676, $P1675["Val"]
    find_lex $P1677, "$quote"
    unless_null $P1677, vivify_955
    new $P1677, "Undef"
  vivify_955:
    $P1678 = $P1676."ACCEPTS"($P1677)
    unless $P1678, if_1672_end
    find_lex $P1679, "$quote"
    unless_null $P1679, vivify_956
    new $P1679, "Undef"
  vivify_956:
    $P1680 = $P1679."value"()
    store_lex "$quote", $P1680
  if_1672_end:
.annotate 'line', 392
    get_hll_global $P1681, "GLOBAL"
    nqp_get_package_through_who $P1682, $P1681, "PAST"
    get_who $P1683, $P1682
    set $P1684, $P1683["Regex"]
    find_lex $P1685, "$quote"
    unless_null $P1685, vivify_957
    new $P1685, "Undef"
  vivify_957:
    find_lex $P1686, "$/"
    unless_null $P1686, vivify_958
    new $P1686, "Undef"
  vivify_958:
    $P1687 = $P1684."new"($P1685, "literal" :named("pasttype"), $P1686 :named("node"))
    store_lex "$past", $P1687
.annotate 'line', 393
    find_lex $P1689, "$?PACKAGE"
    get_who $P1690, $P1689
    set $P1691, $P1690["@MODIFIERS"]
    unless_null $P1691, vivify_959
    $P1691 = root_new ['parrot';'ResizablePMCArray']
  vivify_959:
    set $P1692, $P1691[0]
    unless_null $P1692, vivify_960
    $P1692 = root_new ['parrot';'Hash']
  vivify_960:
    set $P1693, $P1692["i"]
    unless_null $P1693, vivify_961
    new $P1693, "Undef"
  vivify_961:
    unless $P1693, if_1688_end
    find_lex $P1694, "$past"
    unless_null $P1694, vivify_962
    new $P1694, "Undef"
  vivify_962:
    $P1694."subtype"("ignorecase")
  if_1688_end:
.annotate 'line', 394
    find_lex $P1695, "$/"
    find_lex $P1696, "$past"
    unless_null $P1696, vivify_963
    new $P1696, "Undef"
  vivify_963:
    $P1697 = $P1695."!make"($P1696)
.annotate 'line', 389
    .return ($P1697)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<\">"  :subid("280_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1699
    .param pmc param_1700
.annotate 'line', 397
    .lex "self", param_1699
    .lex "$/", param_1700
.annotate 'line', 398
    new $P1701, "Undef"
    .lex "$quote", $P1701
.annotate 'line', 400
    new $P1702, "Undef"
    .lex "$past", $P1702
.annotate 'line', 398
    find_lex $P1703, "$/"
    unless_null $P1703, vivify_964
    $P1703 = root_new ['parrot';'Hash']
  vivify_964:
    set $P1704, $P1703["quote_EXPR"]
    unless_null $P1704, vivify_965
    new $P1704, "Undef"
  vivify_965:
    $P1705 = $P1704."ast"()
    store_lex "$quote", $P1705
.annotate 'line', 399
    get_hll_global $P1707, "GLOBAL"
    nqp_get_package_through_who $P1708, $P1707, "PAST"
    get_who $P1709, $P1708
    set $P1710, $P1709["Val"]
    find_lex $P1711, "$quote"
    unless_null $P1711, vivify_966
    new $P1711, "Undef"
  vivify_966:
    $P1712 = $P1710."ACCEPTS"($P1711)
    unless $P1712, if_1706_end
    find_lex $P1713, "$quote"
    unless_null $P1713, vivify_967
    new $P1713, "Undef"
  vivify_967:
    $P1714 = $P1713."value"()
    store_lex "$quote", $P1714
  if_1706_end:
.annotate 'line', 400
    get_hll_global $P1715, "GLOBAL"
    nqp_get_package_through_who $P1716, $P1715, "PAST"
    get_who $P1717, $P1716
    set $P1718, $P1717["Regex"]
    find_lex $P1719, "$quote"
    unless_null $P1719, vivify_968
    new $P1719, "Undef"
  vivify_968:
    find_lex $P1720, "$/"
    unless_null $P1720, vivify_969
    new $P1720, "Undef"
  vivify_969:
    $P1721 = $P1718."new"($P1719, "literal" :named("pasttype"), $P1720 :named("node"))
    store_lex "$past", $P1721
.annotate 'line', 401
    find_lex $P1723, "$?PACKAGE"
    get_who $P1724, $P1723
    set $P1725, $P1724["@MODIFIERS"]
    unless_null $P1725, vivify_970
    $P1725 = root_new ['parrot';'ResizablePMCArray']
  vivify_970:
    set $P1726, $P1725[0]
    unless_null $P1726, vivify_971
    $P1726 = root_new ['parrot';'Hash']
  vivify_971:
    set $P1727, $P1726["i"]
    unless_null $P1727, vivify_972
    new $P1727, "Undef"
  vivify_972:
    unless $P1727, if_1722_end
    find_lex $P1728, "$past"
    unless_null $P1728, vivify_973
    new $P1728, "Undef"
  vivify_973:
    $P1728."subtype"("ignorecase")
  if_1722_end:
.annotate 'line', 402
    find_lex $P1729, "$/"
    find_lex $P1730, "$past"
    unless_null $P1730, vivify_974
    new $P1730, "Undef"
  vivify_974:
    $P1731 = $P1729."!make"($P1730)
.annotate 'line', 397
    .return ($P1731)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("281_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1733
    .param pmc param_1734
.annotate 'line', 405
    .lex "self", param_1733
    .lex "$/", param_1734
.annotate 'line', 406
    new $P1735, "Undef"
    .lex "$past", $P1735
    get_hll_global $P1736, "GLOBAL"
    nqp_get_package_through_who $P1737, $P1736, "PAST"
    get_who $P1738, $P1737
    set $P1739, $P1738["Regex"]
    find_lex $P1740, "$/"
    unless_null $P1740, vivify_975
    new $P1740, "Undef"
  vivify_975:
    $P1741 = $P1739."new"("charclass" :named("pasttype"), "." :named("subtype"), $P1740 :named("node"))
    store_lex "$past", $P1741
.annotate 'line', 407
    find_lex $P1742, "$/"
    find_lex $P1743, "$past"
    unless_null $P1743, vivify_976
    new $P1743, "Undef"
  vivify_976:
    $P1744 = $P1742."!make"($P1743)
.annotate 'line', 405
    .return ($P1744)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("282_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1746
    .param pmc param_1747
.annotate 'line', 410
    .lex "self", param_1746
    .lex "$/", param_1747
.annotate 'line', 411
    new $P1748, "Undef"
    .lex "$past", $P1748
    get_hll_global $P1749, "GLOBAL"
    nqp_get_package_through_who $P1750, $P1749, "PAST"
    get_who $P1751, $P1750
    set $P1752, $P1751["Regex"]
    find_lex $P1753, "$/"
    unless_null $P1753, vivify_977
    new $P1753, "Undef"
  vivify_977:
    $P1754 = $P1752."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P1753 :named("node"))
    store_lex "$past", $P1754
.annotate 'line', 412
    find_lex $P1755, "$/"
    find_lex $P1756, "$past"
    unless_null $P1756, vivify_978
    new $P1756, "Undef"
  vivify_978:
    $P1757 = $P1755."!make"($P1756)
.annotate 'line', 410
    .return ($P1757)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("283_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1759
    .param pmc param_1760
.annotate 'line', 415
    .lex "self", param_1759
    .lex "$/", param_1760
.annotate 'line', 416
    new $P1761, "Undef"
    .lex "$past", $P1761
    get_hll_global $P1762, "GLOBAL"
    nqp_get_package_through_who $P1763, $P1762, "PAST"
    get_who $P1764, $P1763
    set $P1765, $P1764["Regex"]
    find_lex $P1766, "$/"
    unless_null $P1766, vivify_979
    new $P1766, "Undef"
  vivify_979:
    $P1767 = $P1765."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P1766 :named("node"))
    store_lex "$past", $P1767
.annotate 'line', 417
    find_lex $P1768, "$/"
    find_lex $P1769, "$past"
    unless_null $P1769, vivify_980
    new $P1769, "Undef"
  vivify_980:
    $P1770 = $P1768."!make"($P1769)
.annotate 'line', 415
    .return ($P1770)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("284_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1772
    .param pmc param_1773
.annotate 'line', 420
    .lex "self", param_1772
    .lex "$/", param_1773
.annotate 'line', 421
    new $P1774, "Undef"
    .lex "$past", $P1774
    get_hll_global $P1775, "GLOBAL"
    nqp_get_package_through_who $P1776, $P1775, "PAST"
    get_who $P1777, $P1776
    set $P1778, $P1777["Regex"]
    find_lex $P1779, "$/"
    unless_null $P1779, vivify_981
    new $P1779, "Undef"
  vivify_981:
    $P1780 = $P1778."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P1779 :named("node"))
    store_lex "$past", $P1780
.annotate 'line', 422
    find_lex $P1781, "$/"
    find_lex $P1782, "$past"
    unless_null $P1782, vivify_982
    new $P1782, "Undef"
  vivify_982:
    $P1783 = $P1781."!make"($P1782)
.annotate 'line', 420
    .return ($P1783)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("285_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1785
    .param pmc param_1786
.annotate 'line', 425
    .lex "self", param_1785
    .lex "$/", param_1786
.annotate 'line', 426
    new $P1787, "Undef"
    .lex "$past", $P1787
    get_hll_global $P1788, "GLOBAL"
    nqp_get_package_through_who $P1789, $P1788, "PAST"
    get_who $P1790, $P1789
    set $P1791, $P1790["Regex"]
    find_lex $P1792, "$/"
    unless_null $P1792, vivify_983
    new $P1792, "Undef"
  vivify_983:
    $P1793 = $P1791."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P1792 :named("node"))
    store_lex "$past", $P1793
.annotate 'line', 427
    find_lex $P1794, "$/"
    find_lex $P1795, "$past"
    unless_null $P1795, vivify_984
    new $P1795, "Undef"
  vivify_984:
    $P1796 = $P1794."!make"($P1795)
.annotate 'line', 425
    .return ($P1796)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("286_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1798
    .param pmc param_1799
.annotate 'line', 430
    .lex "self", param_1798
    .lex "$/", param_1799
.annotate 'line', 431
    new $P1800, "Undef"
    .lex "$past", $P1800
    get_hll_global $P1801, "GLOBAL"
    nqp_get_package_through_who $P1802, $P1801, "PAST"
    get_who $P1803, $P1802
    set $P1804, $P1803["Regex"]
    find_lex $P1805, "$/"
    unless_null $P1805, vivify_985
    new $P1805, "Undef"
  vivify_985:
    $P1806 = $P1804."new"("cut" :named("pasttype"), $P1805 :named("node"))
    store_lex "$past", $P1806
.annotate 'line', 432
    find_lex $P1807, "$/"
    find_lex $P1808, "$past"
    unless_null $P1808, vivify_986
    new $P1808, "Undef"
  vivify_986:
    $P1809 = $P1807."!make"($P1808)
.annotate 'line', 430
    .return ($P1809)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("287_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1811
    .param pmc param_1812
.annotate 'line', 435
    .lex "self", param_1811
    .lex "$/", param_1812
.annotate 'line', 436
    new $P1813, "Undef"
    .lex "$past", $P1813
    get_hll_global $P1814, "GLOBAL"
    nqp_get_package_through_who $P1815, $P1814, "PAST"
    get_who $P1816, $P1815
    set $P1817, $P1816["Regex"]
    find_lex $P1818, "$/"
    unless_null $P1818, vivify_987
    new $P1818, "Undef"
  vivify_987:
    $P1819 = $P1817."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P1818 :named("node"))
    store_lex "$past", $P1819
.annotate 'line', 437
    find_lex $P1820, "$/"
    find_lex $P1821, "$past"
    unless_null $P1821, vivify_988
    new $P1821, "Undef"
  vivify_988:
    $P1822 = $P1820."!make"($P1821)
.annotate 'line', 435
    .return ($P1822)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("288_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1824
    .param pmc param_1825
.annotate 'line', 440
    .lex "self", param_1824
    .lex "$/", param_1825
.annotate 'line', 441
    new $P1826, "Undef"
    .lex "$past", $P1826
    get_hll_global $P1827, "GLOBAL"
    nqp_get_package_through_who $P1828, $P1827, "PAST"
    get_who $P1829, $P1828
    set $P1830, $P1829["Regex"]
    find_lex $P1831, "$/"
    unless_null $P1831, vivify_989
    new $P1831, "Undef"
  vivify_989:
    $P1832 = $P1830."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P1831 :named("node"))
    store_lex "$past", $P1832
.annotate 'line', 442
    find_lex $P1833, "$/"
    find_lex $P1834, "$past"
    unless_null $P1834, vivify_990
    new $P1834, "Undef"
  vivify_990:
    $P1835 = $P1833."!make"($P1834)
.annotate 'line', 440
    .return ($P1835)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("289_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1837
    .param pmc param_1838
.annotate 'line', 445
    .lex "self", param_1837
    .lex "$/", param_1838
.annotate 'line', 446
    find_lex $P1839, "$/"
    find_lex $P1840, "$/"
    unless_null $P1840, vivify_991
    $P1840 = root_new ['parrot';'Hash']
  vivify_991:
    set $P1841, $P1840["backslash"]
    unless_null $P1841, vivify_992
    new $P1841, "Undef"
  vivify_992:
    $P1842 = $P1841."ast"()
    $P1843 = $P1839."!make"($P1842)
.annotate 'line', 445
    .return ($P1843)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("290_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1845
    .param pmc param_1846
.annotate 'line', 449
    .lex "self", param_1845
    .lex "$/", param_1846
.annotate 'line', 450
    find_lex $P1847, "$/"
    find_lex $P1848, "$/"
    unless_null $P1848, vivify_993
    $P1848 = root_new ['parrot';'Hash']
  vivify_993:
    set $P1849, $P1848["mod_internal"]
    unless_null $P1849, vivify_994
    new $P1849, "Undef"
  vivify_994:
    $P1850 = $P1849."ast"()
    $P1851 = $P1847."!make"($P1850)
.annotate 'line', 449
    .return ($P1851)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("291_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1853
    .param pmc param_1854
.annotate 'line', 453
    .lex "self", param_1853
    .lex "$/", param_1854
.annotate 'line', 454
    find_lex $P1855, "$/"
    find_lex $P1856, "$/"
    unless_null $P1856, vivify_995
    $P1856 = root_new ['parrot';'Hash']
  vivify_995:
    set $P1857, $P1856["assertion"]
    unless_null $P1857, vivify_996
    new $P1857, "Undef"
  vivify_996:
    $P1858 = $P1857."ast"()
    $P1859 = $P1855."!make"($P1858)
.annotate 'line', 453
    .return ($P1859)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("292_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1861
    .param pmc param_1862
.annotate 'line', 457
    .lex "self", param_1861
    .lex "$/", param_1862
.annotate 'line', 458
    find_lex $P1863, "$/"
    get_hll_global $P1864, "GLOBAL"
    nqp_get_package_through_who $P1865, $P1864, "PAST"
    get_who $P1866, $P1865
    set $P1867, $P1866["Regex"]
.annotate 'line', 459
    find_lex $P1868, "$/"
    unless_null $P1868, vivify_997
    $P1868 = root_new ['parrot';'Hash']
  vivify_997:
    set $P1869, $P1868["EXPR"]
    unless_null $P1869, vivify_998
    new $P1869, "Undef"
  vivify_998:
    $P1870 = $P1869."ast"()
.annotate 'line', 460
    get_hll_global $P1871, "GLOBAL"
    nqp_get_package_through_who $P1872, $P1871, "PAST"
    get_who $P1873, $P1872
    set $P1874, $P1873["Regex"]
.annotate 'line', 461
    find_lex $P1875, "$/"
    unless_null $P1875, vivify_999
    $P1875 = root_new ['parrot';'Hash']
  vivify_999:
    set $P1876, $P1875["GOAL"]
    unless_null $P1876, vivify_1000
    new $P1876, "Undef"
  vivify_1000:
    $P1877 = $P1876."ast"()
.annotate 'line', 462
    get_hll_global $P1878, "GLOBAL"
    nqp_get_package_through_who $P1879, $P1878, "PAST"
    get_who $P1880, $P1879
    set $P1881, $P1880["Regex"]
    find_lex $P1882, "$/"
    unless_null $P1882, vivify_1001
    $P1882 = root_new ['parrot';'Hash']
  vivify_1001:
    set $P1883, $P1882["GOAL"]
    unless_null $P1883, vivify_1002
    new $P1883, "Undef"
  vivify_1002:
    set $S1884, $P1883
    $P1885 = $P1881."new"("FAILGOAL", $S1884, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1886 = $P1874."new"($P1877, $P1885, "alt" :named("pasttype"))
.annotate 'line', 460
    $P1887 = $P1867."new"($P1870, $P1886, "concat" :named("pasttype"))
.annotate 'line', 458
    $P1888 = $P1863."!make"($P1887)
.annotate 'line', 457
    .return ($P1888)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("293_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1890
    .param pmc param_1891
.annotate 'line', 470
    .lex "self", param_1890
    .lex "$/", param_1891
.annotate 'line', 471
    new $P1892, "Undef"
    .lex "$past", $P1892
.annotate 'line', 472
    find_lex $P1895, "$/"
    unless_null $P1895, vivify_1003
    $P1895 = root_new ['parrot';'Hash']
  vivify_1003:
    set $P1896, $P1895["key"]
    unless_null $P1896, vivify_1004
    new $P1896, "Undef"
  vivify_1004:
    if $P1896, if_1894
    new $P1907, "Integer"
    assign $P1907, 0
    set $P1893, $P1907
    goto if_1894_end
  if_1894:
    get_hll_global $P1897, "GLOBAL"
    nqp_get_package_through_who $P1898, $P1897, "PAST"
    get_who $P1899, $P1898
    set $P1900, $P1899["Regex"]
    find_lex $P1901, "$/"
    unless_null $P1901, vivify_1005
    $P1901 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P1902, $P1901["key"]
    unless_null $P1902, vivify_1006
    $P1902 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    set $P1903, $P1902[0]
    unless_null $P1903, vivify_1007
    new $P1903, "Undef"
  vivify_1007:
    set $S1904, $P1903
    find_lex $P1905, "$/"
    unless_null $P1905, vivify_1008
    new $P1905, "Undef"
  vivify_1008:
    $P1906 = $P1900."new"($S1904, "reduce" :named("pasttype"), $P1905 :named("node"))
    set $P1893, $P1906
  if_1894_end:
    store_lex "$past", $P1893
.annotate 'line', 474
    find_lex $P1908, "$/"
    find_lex $P1909, "$past"
    unless_null $P1909, vivify_1009
    new $P1909, "Undef"
  vivify_1009:
    $P1910 = $P1908."!make"($P1909)
.annotate 'line', 470
    .return ($P1910)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("294_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1912
    .param pmc param_1913
.annotate 'line', 477
    .lex "self", param_1912
    .lex "$/", param_1913
.annotate 'line', 478
    new $P1914, "Undef"
    .lex "$past", $P1914
.annotate 'line', 479
    new $P1915, "Undef"
    .lex "$name", $P1915
.annotate 'line', 477
    find_lex $P1916, "$past"
    unless_null $P1916, vivify_1010
    new $P1916, "Undef"
  vivify_1010:
.annotate 'line', 479
    find_lex $P1919, "$/"
    unless_null $P1919, vivify_1011
    $P1919 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P1920, $P1919["pos"]
    unless_null $P1920, vivify_1012
    new $P1920, "Undef"
  vivify_1012:
    if $P1920, if_1918
    find_lex $P1924, "$/"
    unless_null $P1924, vivify_1013
    $P1924 = root_new ['parrot';'Hash']
  vivify_1013:
    set $P1925, $P1924["name"]
    unless_null $P1925, vivify_1014
    new $P1925, "Undef"
  vivify_1014:
    set $S1926, $P1925
    new $P1917, 'String'
    set $P1917, $S1926
    goto if_1918_end
  if_1918:
    find_lex $P1921, "$/"
    unless_null $P1921, vivify_1015
    $P1921 = root_new ['parrot';'Hash']
  vivify_1015:
    set $P1922, $P1921["pos"]
    unless_null $P1922, vivify_1016
    new $P1922, "Undef"
  vivify_1016:
    set $N1923, $P1922
    new $P1917, 'Float'
    set $P1917, $N1923
  if_1918_end:
    store_lex "$name", $P1917
.annotate 'line', 480
    find_lex $P1928, "$/"
    unless_null $P1928, vivify_1017
    $P1928 = root_new ['parrot';'Hash']
  vivify_1017:
    set $P1929, $P1928["quantified_atom"]
    unless_null $P1929, vivify_1018
    new $P1929, "Undef"
  vivify_1018:
    if $P1929, if_1927
.annotate 'line', 491
    get_hll_global $P1963, "GLOBAL"
    nqp_get_package_through_who $P1964, $P1963, "PAST"
    get_who $P1965, $P1964
    set $P1966, $P1965["Regex"]
    find_lex $P1967, "$name"
    unless_null $P1967, vivify_1019
    new $P1967, "Undef"
  vivify_1019:
    find_lex $P1968, "$/"
    unless_null $P1968, vivify_1020
    new $P1968, "Undef"
  vivify_1020:
    $P1969 = $P1966."new"("!BACKREF", $P1967, "subrule" :named("pasttype"), "method" :named("subtype"), $P1968 :named("node"))
    store_lex "$past", $P1969
.annotate 'line', 490
    goto if_1927_end
  if_1927:
.annotate 'line', 481
    find_lex $P1930, "$/"
    unless_null $P1930, vivify_1021
    $P1930 = root_new ['parrot';'Hash']
  vivify_1021:
    set $P1931, $P1930["quantified_atom"]
    unless_null $P1931, vivify_1022
    $P1931 = root_new ['parrot';'ResizablePMCArray']
  vivify_1022:
    set $P1932, $P1931[0]
    unless_null $P1932, vivify_1023
    new $P1932, "Undef"
  vivify_1023:
    $P1933 = $P1932."ast"()
    store_lex "$past", $P1933
.annotate 'line', 482
    find_lex $P1937, "$past"
    unless_null $P1937, vivify_1024
    new $P1937, "Undef"
  vivify_1024:
    $S1938 = $P1937."pasttype"()
    iseq $I1939, $S1938, "quant"
    if $I1939, if_1936
    new $P1935, 'Integer'
    set $P1935, $I1939
    goto if_1936_end
  if_1936:
    find_lex $P1940, "$past"
    unless_null $P1940, vivify_1025
    $P1940 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    set $P1941, $P1940[0]
    unless_null $P1941, vivify_1026
    new $P1941, "Undef"
  vivify_1026:
    $S1942 = $P1941."pasttype"()
    iseq $I1943, $S1942, "subrule"
    new $P1935, 'Integer'
    set $P1935, $I1943
  if_1936_end:
    if $P1935, if_1934
.annotate 'line', 485
    find_lex $P1949, "$past"
    unless_null $P1949, vivify_1027
    new $P1949, "Undef"
  vivify_1027:
    $S1950 = $P1949."pasttype"()
    iseq $I1951, $S1950, "subrule"
    if $I1951, if_1948
.annotate 'line', 487
    get_hll_global $P1955, "GLOBAL"
    nqp_get_package_through_who $P1956, $P1955, "PAST"
    get_who $P1957, $P1956
    set $P1958, $P1957["Regex"]
    find_lex $P1959, "$past"
    unless_null $P1959, vivify_1028
    new $P1959, "Undef"
  vivify_1028:
    find_lex $P1960, "$name"
    unless_null $P1960, vivify_1029
    new $P1960, "Undef"
  vivify_1029:
    find_lex $P1961, "$/"
    unless_null $P1961, vivify_1030
    new $P1961, "Undef"
  vivify_1030:
    $P1962 = $P1958."new"($P1959, $P1960 :named("name"), "subcapture" :named("pasttype"), $P1961 :named("node"))
    store_lex "$past", $P1962
.annotate 'line', 486
    goto if_1948_end
  if_1948:
.annotate 'line', 485
    find_lex $P1952, "self"
    find_lex $P1953, "$past"
    unless_null $P1953, vivify_1031
    new $P1953, "Undef"
  vivify_1031:
    find_lex $P1954, "$name"
    unless_null $P1954, vivify_1032
    new $P1954, "Undef"
  vivify_1032:
    $P1952."subrule_alias"($P1953, $P1954)
  if_1948_end:
    goto if_1934_end
  if_1934:
.annotate 'line', 483
    find_lex $P1944, "self"
    find_lex $P1945, "$past"
    unless_null $P1945, vivify_1033
    $P1945 = root_new ['parrot';'ResizablePMCArray']
  vivify_1033:
    set $P1946, $P1945[0]
    unless_null $P1946, vivify_1034
    new $P1946, "Undef"
  vivify_1034:
    find_lex $P1947, "$name"
    unless_null $P1947, vivify_1035
    new $P1947, "Undef"
  vivify_1035:
    $P1944."subrule_alias"($P1946, $P1947)
  if_1934_end:
  if_1927_end:
.annotate 'line', 494
    find_lex $P1970, "$/"
    find_lex $P1971, "$past"
    unless_null $P1971, vivify_1036
    new $P1971, "Undef"
  vivify_1036:
    $P1972 = $P1970."!make"($P1971)
.annotate 'line', 477
    .return ($P1972)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("295_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1974
    .param pmc param_1975
.annotate 'line', 497
    .lex "self", param_1974
    .lex "$/", param_1975
.annotate 'line', 498
    find_lex $P1976, "$/"
    get_hll_global $P1977, "GLOBAL"
    nqp_get_package_through_who $P1978, $P1977, "PAST"
    get_who $P1979, $P1978
    set $P1980, $P1979["Regex"]
.annotate 'line', 499
    get_hll_global $P1981, "GLOBAL"
    nqp_get_package_through_who $P1982, $P1981, "PAST"
    get_who $P1983, $P1982
    set $P1984, $P1983["Op"]
    find_lex $P1985, "$/"
    unless_null $P1985, vivify_1037
    $P1985 = root_new ['parrot';'Hash']
  vivify_1037:
    set $P1986, $P1985["pir"]
    unless_null $P1986, vivify_1038
    new $P1986, "Undef"
  vivify_1038:
    set $S1987, $P1986
    $P1988 = $P1984."new"($S1987 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1989, "$/"
    unless_null $P1989, vivify_1039
    new $P1989, "Undef"
  vivify_1039:
    $P1990 = $P1980."new"($P1988, "pastnode" :named("pasttype"), $P1989 :named("node"))
.annotate 'line', 498
    $P1991 = $P1976."!make"($P1990)
.annotate 'line', 497
    .return ($P1991)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("296_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_1993
    .param pmc param_1994
.annotate 'line', 505
    .lex "self", param_1993
    .lex "$/", param_1994
.annotate 'line', 506
    new $P1995, "Undef"
    .lex "$subtype", $P1995
.annotate 'line', 507
    new $P1996, "Undef"
    .lex "$past", $P1996
.annotate 'line', 506
    find_lex $P1999, "$/"
    unless_null $P1999, vivify_1040
    $P1999 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2000, $P1999["sym"]
    unless_null $P2000, vivify_1041
    new $P2000, "Undef"
  vivify_1041:
    set $S2001, $P2000
    iseq $I2002, $S2001, "n"
    if $I2002, if_1998
    find_lex $P2004, "$/"
    unless_null $P2004, vivify_1042
    $P2004 = root_new ['parrot';'Hash']
  vivify_1042:
    set $P2005, $P2004["sym"]
    unless_null $P2005, vivify_1043
    new $P2005, "Undef"
  vivify_1043:
    set $S2006, $P2005
    new $P1997, 'String'
    set $P1997, $S2006
    goto if_1998_end
  if_1998:
    new $P2003, "String"
    assign $P2003, "nl"
    set $P1997, $P2003
  if_1998_end:
    store_lex "$subtype", $P1997
.annotate 'line', 507
    get_hll_global $P2007, "GLOBAL"
    nqp_get_package_through_who $P2008, $P2007, "PAST"
    get_who $P2009, $P2008
    set $P2010, $P2009["Regex"]
    find_lex $P2011, "$subtype"
    unless_null $P2011, vivify_1044
    new $P2011, "Undef"
  vivify_1044:
    find_lex $P2012, "$/"
    unless_null $P2012, vivify_1045
    new $P2012, "Undef"
  vivify_1045:
    $P2013 = $P2010."new"("charclass" :named("pasttype"), $P2011 :named("subtype"), $P2012 :named("node"))
    store_lex "$past", $P2013
.annotate 'line', 508
    find_lex $P2014, "$/"
    find_lex $P2015, "$past"
    unless_null $P2015, vivify_1046
    new $P2015, "Undef"
  vivify_1046:
    $P2016 = $P2014."!make"($P2015)
.annotate 'line', 505
    .return ($P2016)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("297_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2018
    .param pmc param_2019
.annotate 'line', 511
    .lex "self", param_2018
    .lex "$/", param_2019
.annotate 'line', 512
    new $P2020, "Undef"
    .lex "$past", $P2020
    get_hll_global $P2021, "GLOBAL"
    nqp_get_package_through_who $P2022, $P2021, "PAST"
    get_who $P2023, $P2022
    set $P2024, $P2023["Regex"]
.annotate 'line', 513
    find_lex $P2025, "$/"
    unless_null $P2025, vivify_1047
    $P2025 = root_new ['parrot';'Hash']
  vivify_1047:
    set $P2026, $P2025["sym"]
    unless_null $P2026, vivify_1048
    new $P2026, "Undef"
  vivify_1048:
    set $S2027, $P2026
    iseq $I2028, $S2027, "B"
    find_lex $P2029, "$/"
    unless_null $P2029, vivify_1049
    new $P2029, "Undef"
  vivify_1049:
    $P2030 = $P2024."new"("\b", "enumcharlist" :named("pasttype"), $I2028 :named("negate"), $P2029 :named("node"))
.annotate 'line', 512
    store_lex "$past", $P2030
.annotate 'line', 514
    find_lex $P2031, "$/"
    find_lex $P2032, "$past"
    unless_null $P2032, vivify_1050
    new $P2032, "Undef"
  vivify_1050:
    $P2033 = $P2031."!make"($P2032)
.annotate 'line', 511
    .return ($P2033)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("298_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2035
    .param pmc param_2036
.annotate 'line', 517
    .lex "self", param_2035
    .lex "$/", param_2036
.annotate 'line', 518
    new $P2037, "Undef"
    .lex "$past", $P2037
    get_hll_global $P2038, "GLOBAL"
    nqp_get_package_through_who $P2039, $P2038, "PAST"
    get_who $P2040, $P2039
    set $P2041, $P2040["Regex"]
.annotate 'line', 519
    find_lex $P2042, "$/"
    unless_null $P2042, vivify_1051
    $P2042 = root_new ['parrot';'Hash']
  vivify_1051:
    set $P2043, $P2042["sym"]
    unless_null $P2043, vivify_1052
    new $P2043, "Undef"
  vivify_1052:
    set $S2044, $P2043
    iseq $I2045, $S2044, "E"
    find_lex $P2046, "$/"
    unless_null $P2046, vivify_1053
    new $P2046, "Undef"
  vivify_1053:
    $P2047 = $P2041."new"("\e", "enumcharlist" :named("pasttype"), $I2045 :named("negate"), $P2046 :named("node"))
.annotate 'line', 518
    store_lex "$past", $P2047
.annotate 'line', 520
    find_lex $P2048, "$/"
    find_lex $P2049, "$past"
    unless_null $P2049, vivify_1054
    new $P2049, "Undef"
  vivify_1054:
    $P2050 = $P2048."!make"($P2049)
.annotate 'line', 517
    .return ($P2050)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("299_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2052
    .param pmc param_2053
.annotate 'line', 523
    .lex "self", param_2052
    .lex "$/", param_2053
.annotate 'line', 524
    new $P2054, "Undef"
    .lex "$past", $P2054
    get_hll_global $P2055, "GLOBAL"
    nqp_get_package_through_who $P2056, $P2055, "PAST"
    get_who $P2057, $P2056
    set $P2058, $P2057["Regex"]
.annotate 'line', 525
    find_lex $P2059, "$/"
    unless_null $P2059, vivify_1055
    $P2059 = root_new ['parrot';'Hash']
  vivify_1055:
    set $P2060, $P2059["sym"]
    unless_null $P2060, vivify_1056
    new $P2060, "Undef"
  vivify_1056:
    set $S2061, $P2060
    iseq $I2062, $S2061, "F"
    find_lex $P2063, "$/"
    unless_null $P2063, vivify_1057
    new $P2063, "Undef"
  vivify_1057:
    $P2064 = $P2058."new"("\f", "enumcharlist" :named("pasttype"), $I2062 :named("negate"), $P2063 :named("node"))
.annotate 'line', 524
    store_lex "$past", $P2064
.annotate 'line', 526
    find_lex $P2065, "$/"
    find_lex $P2066, "$past"
    unless_null $P2066, vivify_1058
    new $P2066, "Undef"
  vivify_1058:
    $P2067 = $P2065."!make"($P2066)
.annotate 'line', 523
    .return ($P2067)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("300_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2069
    .param pmc param_2070
.annotate 'line', 529
    .lex "self", param_2069
    .lex "$/", param_2070
.annotate 'line', 530
    new $P2071, "Undef"
    .lex "$past", $P2071
    get_hll_global $P2072, "GLOBAL"
    nqp_get_package_through_who $P2073, $P2072, "PAST"
    get_who $P2074, $P2073
    set $P2075, $P2074["Regex"]
.annotate 'line', 531
    find_lex $P2076, "$/"
    unless_null $P2076, vivify_1059
    $P2076 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P2077, $P2076["sym"]
    unless_null $P2077, vivify_1060
    new $P2077, "Undef"
  vivify_1060:
    set $S2078, $P2077
    iseq $I2079, $S2078, "H"
    find_lex $P2080, "$/"
    unless_null $P2080, vivify_1061
    new $P2080, "Undef"
  vivify_1061:
    $P2081 = $P2075."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I2079 :named("negate"), $P2080 :named("node"))
.annotate 'line', 530
    store_lex "$past", $P2081
.annotate 'line', 532
    find_lex $P2082, "$/"
    find_lex $P2083, "$past"
    unless_null $P2083, vivify_1062
    new $P2083, "Undef"
  vivify_1062:
    $P2084 = $P2082."!make"($P2083)
.annotate 'line', 529
    .return ($P2084)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("301_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2086
    .param pmc param_2087
.annotate 'line', 535
    .lex "self", param_2086
    .lex "$/", param_2087
.annotate 'line', 536
    new $P2088, "Undef"
    .lex "$past", $P2088
    get_hll_global $P2089, "GLOBAL"
    nqp_get_package_through_who $P2090, $P2089, "PAST"
    get_who $P2091, $P2090
    set $P2092, $P2091["Regex"]
.annotate 'line', 537
    find_lex $P2093, "$/"
    unless_null $P2093, vivify_1063
    $P2093 = root_new ['parrot';'Hash']
  vivify_1063:
    set $P2094, $P2093["sym"]
    unless_null $P2094, vivify_1064
    new $P2094, "Undef"
  vivify_1064:
    set $S2095, $P2094
    iseq $I2096, $S2095, "R"
    find_lex $P2097, "$/"
    unless_null $P2097, vivify_1065
    new $P2097, "Undef"
  vivify_1065:
    $P2098 = $P2092."new"("\r", "enumcharlist" :named("pasttype"), $I2096 :named("negate"), $P2097 :named("node"))
.annotate 'line', 536
    store_lex "$past", $P2098
.annotate 'line', 538
    find_lex $P2099, "$/"
    find_lex $P2100, "$past"
    unless_null $P2100, vivify_1066
    new $P2100, "Undef"
  vivify_1066:
    $P2101 = $P2099."!make"($P2100)
.annotate 'line', 535
    .return ($P2101)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("302_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2103
    .param pmc param_2104
.annotate 'line', 541
    .lex "self", param_2103
    .lex "$/", param_2104
.annotate 'line', 542
    new $P2105, "Undef"
    .lex "$past", $P2105
    get_hll_global $P2106, "GLOBAL"
    nqp_get_package_through_who $P2107, $P2106, "PAST"
    get_who $P2108, $P2107
    set $P2109, $P2108["Regex"]
.annotate 'line', 543
    find_lex $P2110, "$/"
    unless_null $P2110, vivify_1067
    $P2110 = root_new ['parrot';'Hash']
  vivify_1067:
    set $P2111, $P2110["sym"]
    unless_null $P2111, vivify_1068
    new $P2111, "Undef"
  vivify_1068:
    set $S2112, $P2111
    iseq $I2113, $S2112, "T"
    find_lex $P2114, "$/"
    unless_null $P2114, vivify_1069
    new $P2114, "Undef"
  vivify_1069:
    $P2115 = $P2109."new"("\t", "enumcharlist" :named("pasttype"), $I2113 :named("negate"), $P2114 :named("node"))
.annotate 'line', 542
    store_lex "$past", $P2115
.annotate 'line', 544
    find_lex $P2116, "$/"
    find_lex $P2117, "$past"
    unless_null $P2117, vivify_1070
    new $P2117, "Undef"
  vivify_1070:
    $P2118 = $P2116."!make"($P2117)
.annotate 'line', 541
    .return ($P2118)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("303_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2120
    .param pmc param_2121
.annotate 'line', 547
    .lex "self", param_2120
    .lex "$/", param_2121
.annotate 'line', 548
    new $P2122, "Undef"
    .lex "$past", $P2122
    get_hll_global $P2123, "GLOBAL"
    nqp_get_package_through_who $P2124, $P2123, "PAST"
    get_who $P2125, $P2124
    set $P2126, $P2125["Regex"]
.annotate 'line', 550
    find_lex $P2127, "$/"
    unless_null $P2127, vivify_1071
    $P2127 = root_new ['parrot';'Hash']
  vivify_1071:
    set $P2128, $P2127["sym"]
    unless_null $P2128, vivify_1072
    new $P2128, "Undef"
  vivify_1072:
    set $S2129, $P2128
    iseq $I2130, $S2129, "V"
    find_lex $P2131, "$/"
    unless_null $P2131, vivify_1073
    new $P2131, "Undef"
  vivify_1073:
    $P2132 = $P2126."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I2130 :named("negate"), $P2131 :named("node"))
.annotate 'line', 548
    store_lex "$past", $P2132
.annotate 'line', 551
    find_lex $P2133, "$/"
    find_lex $P2134, "$past"
    unless_null $P2134, vivify_1074
    new $P2134, "Undef"
  vivify_1074:
    $P2135 = $P2133."!make"($P2134)
.annotate 'line', 547
    .return ($P2135)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("304_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2137
    .param pmc param_2138
.annotate 'line', 554
    .lex "self", param_2137
    .lex "$/", param_2138
.annotate 'line', 555
    new $P2139, "Undef"
    .lex "$octlit", $P2139
.annotate 'line', 556
    get_hll_global $P2140, "GLOBAL"
    nqp_get_package_through_who $P2141, $P2140, "HLL"
    nqp_get_package_through_who $P2142, $P2141, "Actions"
    get_who $P2143, $P2142
    set $P2144, $P2143["ints_to_string"]
    find_lex $P2147, "$/"
    unless_null $P2147, vivify_1075
    $P2147 = root_new ['parrot';'Hash']
  vivify_1075:
    set $P2148, $P2147["octint"]
    unless_null $P2148, vivify_1076
    new $P2148, "Undef"
  vivify_1076:
    unless $P2148, unless_2146
    set $P2145, $P2148
    goto unless_2146_end
  unless_2146:
    find_lex $P2149, "$/"
    unless_null $P2149, vivify_1077
    $P2149 = root_new ['parrot';'Hash']
  vivify_1077:
    set $P2150, $P2149["octints"]
    unless_null $P2150, vivify_1078
    $P2150 = root_new ['parrot';'Hash']
  vivify_1078:
    set $P2151, $P2150["octint"]
    unless_null $P2151, vivify_1079
    new $P2151, "Undef"
  vivify_1079:
    set $P2145, $P2151
  unless_2146_end:
    $P2152 = $P2144($P2145)
    store_lex "$octlit", $P2152
.annotate 'line', 557
    find_lex $P2153, "$/"
    find_lex $P2156, "$/"
    unless_null $P2156, vivify_1080
    $P2156 = root_new ['parrot';'Hash']
  vivify_1080:
    set $P2157, $P2156["sym"]
    unless_null $P2157, vivify_1081
    new $P2157, "Undef"
  vivify_1081:
    set $S2158, $P2157
    iseq $I2159, $S2158, "O"
    if $I2159, if_2155
.annotate 'line', 560
    get_hll_global $P2167, "GLOBAL"
    nqp_get_package_through_who $P2168, $P2167, "PAST"
    get_who $P2169, $P2168
    set $P2170, $P2169["Regex"]
    find_lex $P2171, "$octlit"
    unless_null $P2171, vivify_1082
    new $P2171, "Undef"
  vivify_1082:
    find_lex $P2172, "$/"
    unless_null $P2172, vivify_1083
    new $P2172, "Undef"
  vivify_1083:
    $P2173 = $P2170."new"($P2171, "literal" :named("pasttype"), $P2172 :named("node"))
    set $P2154, $P2173
.annotate 'line', 557
    goto if_2155_end
  if_2155:
.annotate 'line', 558
    get_hll_global $P2160, "GLOBAL"
    nqp_get_package_through_who $P2161, $P2160, "PAST"
    get_who $P2162, $P2161
    set $P2163, $P2162["Regex"]
    find_lex $P2164, "$octlit"
    unless_null $P2164, vivify_1084
    new $P2164, "Undef"
  vivify_1084:
    find_lex $P2165, "$/"
    unless_null $P2165, vivify_1085
    new $P2165, "Undef"
  vivify_1085:
    $P2166 = $P2163."new"($P2164, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2165 :named("node"))
    set $P2154, $P2166
  if_2155_end:
    $P2174 = $P2153."!make"($P2154)
.annotate 'line', 554
    .return ($P2174)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("305_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2176
    .param pmc param_2177
.annotate 'line', 563
    .lex "self", param_2176
    .lex "$/", param_2177
.annotate 'line', 564
    new $P2178, "Undef"
    .lex "$hexlit", $P2178
.annotate 'line', 565
    get_hll_global $P2179, "GLOBAL"
    nqp_get_package_through_who $P2180, $P2179, "HLL"
    nqp_get_package_through_who $P2181, $P2180, "Actions"
    get_who $P2182, $P2181
    set $P2183, $P2182["ints_to_string"]
    find_lex $P2186, "$/"
    unless_null $P2186, vivify_1086
    $P2186 = root_new ['parrot';'Hash']
  vivify_1086:
    set $P2187, $P2186["hexint"]
    unless_null $P2187, vivify_1087
    new $P2187, "Undef"
  vivify_1087:
    unless $P2187, unless_2185
    set $P2184, $P2187
    goto unless_2185_end
  unless_2185:
    find_lex $P2188, "$/"
    unless_null $P2188, vivify_1088
    $P2188 = root_new ['parrot';'Hash']
  vivify_1088:
    set $P2189, $P2188["hexints"]
    unless_null $P2189, vivify_1089
    $P2189 = root_new ['parrot';'Hash']
  vivify_1089:
    set $P2190, $P2189["hexint"]
    unless_null $P2190, vivify_1090
    new $P2190, "Undef"
  vivify_1090:
    set $P2184, $P2190
  unless_2185_end:
    $P2191 = $P2183($P2184)
    store_lex "$hexlit", $P2191
.annotate 'line', 566
    find_lex $P2192, "$/"
    find_lex $P2195, "$/"
    unless_null $P2195, vivify_1091
    $P2195 = root_new ['parrot';'Hash']
  vivify_1091:
    set $P2196, $P2195["sym"]
    unless_null $P2196, vivify_1092
    new $P2196, "Undef"
  vivify_1092:
    set $S2197, $P2196
    iseq $I2198, $S2197, "X"
    if $I2198, if_2194
.annotate 'line', 569
    get_hll_global $P2206, "GLOBAL"
    nqp_get_package_through_who $P2207, $P2206, "PAST"
    get_who $P2208, $P2207
    set $P2209, $P2208["Regex"]
    find_lex $P2210, "$hexlit"
    unless_null $P2210, vivify_1093
    new $P2210, "Undef"
  vivify_1093:
    find_lex $P2211, "$/"
    unless_null $P2211, vivify_1094
    new $P2211, "Undef"
  vivify_1094:
    $P2212 = $P2209."new"($P2210, "literal" :named("pasttype"), $P2211 :named("node"))
    set $P2193, $P2212
.annotate 'line', 566
    goto if_2194_end
  if_2194:
.annotate 'line', 567
    get_hll_global $P2199, "GLOBAL"
    nqp_get_package_through_who $P2200, $P2199, "PAST"
    get_who $P2201, $P2200
    set $P2202, $P2201["Regex"]
    find_lex $P2203, "$hexlit"
    unless_null $P2203, vivify_1095
    new $P2203, "Undef"
  vivify_1095:
    find_lex $P2204, "$/"
    unless_null $P2204, vivify_1096
    new $P2204, "Undef"
  vivify_1096:
    $P2205 = $P2202."new"($P2203, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P2204 :named("node"))
    set $P2193, $P2205
  if_2194_end:
    $P2213 = $P2192."!make"($P2193)
.annotate 'line', 563
    .return ($P2213)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<c>"  :subid("306_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2215
    .param pmc param_2216
.annotate 'line', 572
    .lex "self", param_2215
    .lex "$/", param_2216
.annotate 'line', 573
    find_lex $P2217, "$/"
    get_hll_global $P2218, "GLOBAL"
    nqp_get_package_through_who $P2219, $P2218, "PAST"
    get_who $P2220, $P2219
    set $P2221, $P2220["Regex"]
    find_lex $P2222, "$/"
    unless_null $P2222, vivify_1097
    $P2222 = root_new ['parrot';'Hash']
  vivify_1097:
    set $P2223, $P2222["charspec"]
    unless_null $P2223, vivify_1098
    new $P2223, "Undef"
  vivify_1098:
    $P2224 = $P2223."ast"()
    find_lex $P2225, "$/"
    unless_null $P2225, vivify_1099
    new $P2225, "Undef"
  vivify_1099:
    $P2226 = $P2221."new"($P2224, "literal" :named("pasttype"), $P2225 :named("node"))
    $P2227 = $P2217."!make"($P2226)
.annotate 'line', 572
    .return ($P2227)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("307_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2229
    .param pmc param_2230
.annotate 'line', 576
    .lex "self", param_2229
    .lex "$/", param_2230
.annotate 'line', 577
    new $P2231, "Undef"
    .lex "$past", $P2231
    get_hll_global $P2232, "GLOBAL"
    nqp_get_package_through_who $P2233, $P2232, "PAST"
    get_who $P2234, $P2233
    set $P2235, $P2234["Regex"]
    find_lex $P2236, "$/"
    unless_null $P2236, vivify_1100
    new $P2236, "Undef"
  vivify_1100:
    set $S2237, $P2236
    find_lex $P2238, "$/"
    unless_null $P2238, vivify_1101
    new $P2238, "Undef"
  vivify_1101:
    $P2239 = $P2235."new"($S2237, "literal" :named("pasttype"), $P2238 :named("node"))
    store_lex "$past", $P2239
.annotate 'line', 578
    find_lex $P2240, "$/"
    find_lex $P2241, "$past"
    unless_null $P2241, vivify_1102
    new $P2241, "Undef"
  vivify_1102:
    $P2242 = $P2240."!make"($P2241)
.annotate 'line', 576
    .return ($P2242)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("308_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2244
    .param pmc param_2245
.annotate 'line', 582
    .lex "self", param_2244
    .lex "$/", param_2245
.annotate 'line', 583
    new $P2246, "Undef"
    .lex "$past", $P2246
.annotate 'line', 582
    find_lex $P2247, "$past"
    unless_null $P2247, vivify_1103
    new $P2247, "Undef"
  vivify_1103:
.annotate 'line', 584
    find_lex $P2249, "$/"
    unless_null $P2249, vivify_1104
    $P2249 = root_new ['parrot';'Hash']
  vivify_1104:
    set $P2250, $P2249["assertion"]
    unless_null $P2250, vivify_1105
    new $P2250, "Undef"
  vivify_1105:
    if $P2250, if_2248
.annotate 'line', 588
    new $P2255, "Integer"
    assign $P2255, 0
    store_lex "$past", $P2255
    goto if_2248_end
  if_2248:
.annotate 'line', 585
    find_lex $P2251, "$/"
    unless_null $P2251, vivify_1106
    $P2251 = root_new ['parrot';'Hash']
  vivify_1106:
    set $P2252, $P2251["assertion"]
    unless_null $P2252, vivify_1107
    new $P2252, "Undef"
  vivify_1107:
    $P2253 = $P2252."ast"()
    store_lex "$past", $P2253
.annotate 'line', 586
    find_lex $P2254, "$past"
    unless_null $P2254, vivify_1108
    new $P2254, "Undef"
  vivify_1108:
    $P2254."subtype"("zerowidth")
  if_2248_end:
.annotate 'line', 589
    find_lex $P2256, "$/"
    find_lex $P2257, "$past"
    unless_null $P2257, vivify_1109
    new $P2257, "Undef"
  vivify_1109:
    $P2258 = $P2256."!make"($P2257)
.annotate 'line', 582
    .return ($P2258)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("309_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2260
    .param pmc param_2261
.annotate 'line', 592
    .lex "self", param_2260
    .lex "$/", param_2261
.annotate 'line', 593
    new $P2262, "Undef"
    .lex "$past", $P2262
.annotate 'line', 592
    find_lex $P2263, "$past"
    unless_null $P2263, vivify_1110
    new $P2263, "Undef"
  vivify_1110:
.annotate 'line', 594
    find_lex $P2265, "$/"
    unless_null $P2265, vivify_1111
    $P2265 = root_new ['parrot';'Hash']
  vivify_1111:
    set $P2266, $P2265["assertion"]
    unless_null $P2266, vivify_1112
    new $P2266, "Undef"
  vivify_1112:
    if $P2266, if_2264
.annotate 'line', 600
    get_hll_global $P2275, "GLOBAL"
    nqp_get_package_through_who $P2276, $P2275, "PAST"
    get_who $P2277, $P2276
    set $P2278, $P2277["Regex"]
    find_lex $P2279, "$/"
    unless_null $P2279, vivify_1113
    new $P2279, "Undef"
  vivify_1113:
    $P2280 = $P2278."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P2279 :named("node"))
    store_lex "$past", $P2280
.annotate 'line', 599
    goto if_2264_end
  if_2264:
.annotate 'line', 595
    find_lex $P2267, "$/"
    unless_null $P2267, vivify_1114
    $P2267 = root_new ['parrot';'Hash']
  vivify_1114:
    set $P2268, $P2267["assertion"]
    unless_null $P2268, vivify_1115
    new $P2268, "Undef"
  vivify_1115:
    $P2269 = $P2268."ast"()
    store_lex "$past", $P2269
.annotate 'line', 596
    find_lex $P2270, "$past"
    unless_null $P2270, vivify_1116
    new $P2270, "Undef"
  vivify_1116:
    find_lex $P2271, "$past"
    unless_null $P2271, vivify_1117
    new $P2271, "Undef"
  vivify_1117:
    $P2272 = $P2271."negate"()
    isfalse $I2273, $P2272
    $P2270."negate"($I2273)
.annotate 'line', 597
    find_lex $P2274, "$past"
    unless_null $P2274, vivify_1118
    new $P2274, "Undef"
  vivify_1118:
    $P2274."subtype"("zerowidth")
  if_2264_end:
.annotate 'line', 602
    find_lex $P2281, "$/"
    find_lex $P2282, "$past"
    unless_null $P2282, vivify_1119
    new $P2282, "Undef"
  vivify_1119:
    $P2283 = $P2281."!make"($P2282)
.annotate 'line', 592
    .return ($P2283)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("310_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2285
    .param pmc param_2286
.annotate 'line', 605
    .lex "self", param_2285
    .lex "$/", param_2286
.annotate 'line', 606
    new $P2287, "Undef"
    .lex "$past", $P2287
    find_lex $P2288, "$/"
    unless_null $P2288, vivify_1120
    $P2288 = root_new ['parrot';'Hash']
  vivify_1120:
    set $P2289, $P2288["assertion"]
    unless_null $P2289, vivify_1121
    new $P2289, "Undef"
  vivify_1121:
    $P2290 = $P2289."ast"()
    store_lex "$past", $P2290
.annotate 'line', 607
    find_lex $P2291, "$past"
    unless_null $P2291, vivify_1122
    new $P2291, "Undef"
  vivify_1122:
    $P2291."subtype"("method")
.annotate 'line', 608
    find_lex $P2292, "$past"
    unless_null $P2292, vivify_1123
    new $P2292, "Undef"
  vivify_1123:
    $P2292."name"("")
.annotate 'line', 609
    find_lex $P2293, "$/"
    find_lex $P2294, "$past"
    unless_null $P2294, vivify_1124
    new $P2294, "Undef"
  vivify_1124:
    $P2295 = $P2293."!make"($P2294)
.annotate 'line', 605
    .return ($P2295)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("311_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2297
    .param pmc param_2298
.annotate 'line', 612
    .const 'Sub' $P2365 = "313_1304282272.255" 
    capture_lex $P2365
    .const 'Sub' $P2321 = "312_1304282272.255" 
    capture_lex $P2321
    .lex "self", param_2297
    .lex "$/", param_2298
.annotate 'line', 613
    new $P2299, "Undef"
    .lex "$name", $P2299
.annotate 'line', 614
    new $P2300, "Undef"
    .lex "$past", $P2300
.annotate 'line', 613
    find_lex $P2301, "$/"
    unless_null $P2301, vivify_1125
    $P2301 = root_new ['parrot';'Hash']
  vivify_1125:
    set $P2302, $P2301["longname"]
    unless_null $P2302, vivify_1126
    new $P2302, "Undef"
  vivify_1126:
    set $S2303, $P2302
    new $P2304, 'String'
    set $P2304, $S2303
    store_lex "$name", $P2304
    find_lex $P2305, "$past"
    unless_null $P2305, vivify_1127
    new $P2305, "Undef"
  vivify_1127:
.annotate 'line', 615
    find_lex $P2307, "$/"
    unless_null $P2307, vivify_1128
    $P2307 = root_new ['parrot';'Hash']
  vivify_1128:
    set $P2308, $P2307["assertion"]
    unless_null $P2308, vivify_1129
    new $P2308, "Undef"
  vivify_1129:
    if $P2308, if_2306
.annotate 'line', 619
    find_lex $P2317, "$name"
    unless_null $P2317, vivify_1130
    new $P2317, "Undef"
  vivify_1130:
    set $S2318, $P2317
    iseq $I2319, $S2318, "sym"
    if $I2319, if_2316
.annotate 'line', 636
    find_lex $P2341, "self"
    find_lex $P2342, "$/"
    unless_null $P2342, vivify_1131
    new $P2342, "Undef"
  vivify_1131:
    $P2343 = $P2341."named_assertion"($P2342)
    store_lex "$past", $P2343
.annotate 'line', 637
    find_lex $P2345, "$/"
    unless_null $P2345, vivify_1132
    $P2345 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P2346, $P2345["nibbler"]
    unless_null $P2346, vivify_1133
    new $P2346, "Undef"
  vivify_1133:
    if $P2346, if_2344
.annotate 'line', 640
    find_lex $P2354, "$/"
    unless_null $P2354, vivify_1134
    $P2354 = root_new ['parrot';'Hash']
  vivify_1134:
    set $P2355, $P2354["arglist"]
    unless_null $P2355, vivify_1135
    new $P2355, "Undef"
  vivify_1135:
    unless $P2355, if_2353_end
.annotate 'line', 641
    find_lex $P2357, "$/"
    unless_null $P2357, vivify_1136
    $P2357 = root_new ['parrot';'Hash']
  vivify_1136:
    set $P2358, $P2357["arglist"]
    unless_null $P2358, vivify_1137
    $P2358 = root_new ['parrot';'ResizablePMCArray']
  vivify_1137:
    set $P2359, $P2358[0]
    unless_null $P2359, vivify_1138
    new $P2359, "Undef"
  vivify_1138:
    $P2360 = $P2359."ast"()
    $P2361 = $P2360."list"()
    defined $I2362, $P2361
    unless $I2362, for_undef_1139
    iter $P2356, $P2361
    new $P2371, 'ExceptionHandler'
    set_label $P2371, loop2370_handler
    $P2371."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2371
  loop2370_test:
    unless $P2356, loop2370_done
    shift $P2363, $P2356
  loop2370_redo:
    .const 'Sub' $P2365 = "313_1304282272.255" 
    capture_lex $P2365
    $P2365($P2363)
  loop2370_next:
    goto loop2370_test
  loop2370_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2372, exception, 'type'
    eq $P2372, .CONTROL_LOOP_NEXT, loop2370_next
    eq $P2372, .CONTROL_LOOP_REDO, loop2370_redo
  loop2370_done:
    pop_eh 
  for_undef_1139:
  if_2353_end:
.annotate 'line', 640
    goto if_2344_end
  if_2344:
.annotate 'line', 638
    find_lex $P2347, "$past"
    unless_null $P2347, vivify_1142
    new $P2347, "Undef"
  vivify_1142:
    find_lex $P2348, "$/"
    unless_null $P2348, vivify_1143
    $P2348 = root_new ['parrot';'Hash']
  vivify_1143:
    set $P2349, $P2348["nibbler"]
    unless_null $P2349, vivify_1144
    $P2349 = root_new ['parrot';'ResizablePMCArray']
  vivify_1144:
    set $P2350, $P2349[0]
    unless_null $P2350, vivify_1145
    new $P2350, "Undef"
  vivify_1145:
    $P2351 = $P2350."ast"()
    $P2352 = "buildsub"($P2351)
    $P2347."push"($P2352)
  if_2344_end:
.annotate 'line', 635
    goto if_2316_end
  if_2316:
.annotate 'line', 619
    .const 'Sub' $P2321 = "312_1304282272.255" 
    capture_lex $P2321
    $P2321()
  if_2316_end:
    goto if_2306_end
  if_2306:
.annotate 'line', 616
    find_lex $P2309, "$/"
    unless_null $P2309, vivify_1150
    $P2309 = root_new ['parrot';'Hash']
  vivify_1150:
    set $P2310, $P2309["assertion"]
    unless_null $P2310, vivify_1151
    $P2310 = root_new ['parrot';'ResizablePMCArray']
  vivify_1151:
    set $P2311, $P2310[0]
    unless_null $P2311, vivify_1152
    new $P2311, "Undef"
  vivify_1152:
    $P2312 = $P2311."ast"()
    store_lex "$past", $P2312
.annotate 'line', 617
    find_lex $P2313, "self"
    find_lex $P2314, "$past"
    unless_null $P2314, vivify_1153
    new $P2314, "Undef"
  vivify_1153:
    find_lex $P2315, "$name"
    unless_null $P2315, vivify_1154
    new $P2315, "Undef"
  vivify_1154:
    $P2313."subrule_alias"($P2314, $P2315)
  if_2306_end:
.annotate 'line', 644
    find_lex $P2373, "$/"
    find_lex $P2374, "$past"
    unless_null $P2374, vivify_1155
    new $P2374, "Undef"
  vivify_1155:
    $P2375 = $P2373."!make"($P2374)
.annotate 'line', 612
    .return ($P2375)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2364"  :anon :subid("313_1304282272.255") :outer("311_1304282272.255")
    .param pmc param_2366
.annotate 'line', 641
    .lex "$_", param_2366
    find_lex $P2367, "$past"
    unless_null $P2367, vivify_1140
    new $P2367, "Undef"
  vivify_1140:
    find_lex $P2368, "$_"
    unless_null $P2368, vivify_1141
    new $P2368, "Undef"
  vivify_1141:
    $P2369 = $P2367."push"($P2368)
    .return ($P2369)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2320"  :anon :subid("312_1304282272.255") :outer("311_1304282272.255")
.annotate 'line', 620
    new $P2322, "Undef"
    .lex "$rxname", $P2322
.annotate 'line', 621
    new $P2323, "Undef"
    .lex "$regexsym", $P2323
.annotate 'line', 620
    find_lex $P2324, "$?PACKAGE"
    get_who $P2325, $P2324
    set $P2326, $P2325["$REGEXNAME"]
    unless_null $P2326, vivify_1146
    new $P2326, "Undef"
  vivify_1146:
    store_lex "$rxname", $P2326
.annotate 'line', 621

                $P0 = find_lex '$rxname'
                $S0 = $P0
                $I0 = index $S0, ':sym<'
                add $I0, 5
                $S0 = substr $S0, $I0
                $S0 = chopn $S0, 1
                $P2327 = box $S0
            
    store_lex "$regexsym", $P2327
.annotate 'line', 630
    get_hll_global $P2328, "GLOBAL"
    nqp_get_package_through_who $P2329, $P2328, "PAST"
    get_who $P2330, $P2329
    set $P2331, $P2330["Regex"]
.annotate 'line', 631
    get_hll_global $P2332, "GLOBAL"
    nqp_get_package_through_who $P2333, $P2332, "PAST"
    get_who $P2334, $P2333
    set $P2335, $P2334["Regex"]
    find_lex $P2336, "$regexsym"
    unless_null $P2336, vivify_1147
    new $P2336, "Undef"
  vivify_1147:
    $P2337 = $P2335."new"($P2336, "literal" :named("pasttype"))
    find_lex $P2338, "$name"
    unless_null $P2338, vivify_1148
    new $P2338, "Undef"
  vivify_1148:
    find_lex $P2339, "$/"
    unless_null $P2339, vivify_1149
    new $P2339, "Undef"
  vivify_1149:
    $P2340 = $P2331."new"($P2337, $P2338 :named("name"), "subcapture" :named("pasttype"), $P2339 :named("node"))
.annotate 'line', 630
    store_lex "$past", $P2340
.annotate 'line', 619
    .return ($P2340)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("314_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2377
    .param pmc param_2378
.annotate 'line', 647
    .const 'Sub' $P2419 = "315_1304282272.255" 
    capture_lex $P2419
    .lex "self", param_2377
    .lex "$/", param_2378
.annotate 'line', 648
    new $P2379, "Undef"
    .lex "$clist", $P2379
.annotate 'line', 649
    new $P2380, "Undef"
    .lex "$past", $P2380
.annotate 'line', 658
    new $P2381, "Undef"
    .lex "$i", $P2381
.annotate 'line', 659
    new $P2382, "Undef"
    .lex "$n", $P2382
.annotate 'line', 648
    find_lex $P2383, "$/"
    unless_null $P2383, vivify_1156
    $P2383 = root_new ['parrot';'Hash']
  vivify_1156:
    set $P2384, $P2383["cclass_elem"]
    unless_null $P2384, vivify_1157
    new $P2384, "Undef"
  vivify_1157:
    store_lex "$clist", $P2384
.annotate 'line', 649
    find_lex $P2385, "$clist"
    unless_null $P2385, vivify_1158
    $P2385 = root_new ['parrot';'ResizablePMCArray']
  vivify_1158:
    set $P2386, $P2385[0]
    unless_null $P2386, vivify_1159
    new $P2386, "Undef"
  vivify_1159:
    $P2387 = $P2386."ast"()
    store_lex "$past", $P2387
.annotate 'line', 650
    find_lex $P2391, "$past"
    unless_null $P2391, vivify_1160
    new $P2391, "Undef"
  vivify_1160:
    $P2392 = $P2391."negate"()
    if $P2392, if_2390
    set $P2389, $P2392
    goto if_2390_end
  if_2390:
    find_lex $P2393, "$past"
    unless_null $P2393, vivify_1161
    new $P2393, "Undef"
  vivify_1161:
    $S2394 = $P2393."pasttype"()
    iseq $I2395, $S2394, "subrule"
    new $P2389, 'Integer'
    set $P2389, $I2395
  if_2390_end:
    unless $P2389, if_2388_end
.annotate 'line', 651
    find_lex $P2396, "$past"
    unless_null $P2396, vivify_1162
    new $P2396, "Undef"
  vivify_1162:
    $P2396."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P2397, "GLOBAL"
    nqp_get_package_through_who $P2398, $P2397, "PAST"
    get_who $P2399, $P2398
    set $P2400, $P2399["Regex"]
    find_lex $P2401, "$past"
    unless_null $P2401, vivify_1163
    new $P2401, "Undef"
  vivify_1163:
.annotate 'line', 654
    get_hll_global $P2402, "GLOBAL"
    nqp_get_package_through_who $P2403, $P2402, "PAST"
    get_who $P2404, $P2403
    set $P2405, $P2404["Regex"]
    $P2406 = $P2405."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P2407, "$/"
    unless_null $P2407, vivify_1164
    new $P2407, "Undef"
  vivify_1164:
    $P2408 = $P2400."new"($P2401, $P2406, $P2407 :named("node"))
.annotate 'line', 652
    store_lex "$past", $P2408
  if_2388_end:
.annotate 'line', 658
    new $P2409, "Integer"
    assign $P2409, 1
    store_lex "$i", $P2409
.annotate 'line', 659
    find_lex $P2410, "$clist"
    unless_null $P2410, vivify_1165
    new $P2410, "Undef"
  vivify_1165:
    set $N2411, $P2410
    new $P2412, 'Float'
    set $P2412, $N2411
    store_lex "$n", $P2412
.annotate 'line', 660
    new $P2449, 'ExceptionHandler'
    set_label $P2449, loop2448_handler
    $P2449."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2449
  loop2448_test:
    find_lex $P2413, "$i"
    unless_null $P2413, vivify_1166
    new $P2413, "Undef"
  vivify_1166:
    set $N2414, $P2413
    find_lex $P2415, "$n"
    unless_null $P2415, vivify_1167
    new $P2415, "Undef"
  vivify_1167:
    set $N2416, $P2415
    islt $I2417, $N2414, $N2416
    unless $I2417, loop2448_done
  loop2448_redo:
    .const 'Sub' $P2419 = "315_1304282272.255" 
    capture_lex $P2419
    $P2419()
  loop2448_next:
    goto loop2448_test
  loop2448_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2450, exception, 'type'
    eq $P2450, .CONTROL_LOOP_NEXT, loop2448_next
    eq $P2450, .CONTROL_LOOP_REDO, loop2448_redo
  loop2448_done:
    pop_eh 
.annotate 'line', 671
    find_lex $P2451, "$/"
    find_lex $P2452, "$past"
    unless_null $P2452, vivify_1180
    new $P2452, "Undef"
  vivify_1180:
    $P2453 = $P2451."!make"($P2452)
.annotate 'line', 647
    .return ($P2453)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2418"  :anon :subid("315_1304282272.255") :outer("314_1304282272.255")
.annotate 'line', 661
    new $P2420, "Undef"
    .lex "$ast", $P2420
    find_lex $P2421, "$i"
    unless_null $P2421, vivify_1168
    new $P2421, "Undef"
  vivify_1168:
    set $I2422, $P2421
    find_lex $P2423, "$clist"
    unless_null $P2423, vivify_1169
    $P2423 = root_new ['parrot';'ResizablePMCArray']
  vivify_1169:
    set $P2424, $P2423[$I2422]
    unless_null $P2424, vivify_1170
    new $P2424, "Undef"
  vivify_1170:
    $P2425 = $P2424."ast"()
    store_lex "$ast", $P2425
.annotate 'line', 662
    find_lex $P2427, "$ast"
    unless_null $P2427, vivify_1171
    new $P2427, "Undef"
  vivify_1171:
    $P2428 = $P2427."negate"()
    if $P2428, if_2426
.annotate 'line', 667
    get_hll_global $P2438, "GLOBAL"
    nqp_get_package_through_who $P2439, $P2438, "PAST"
    get_who $P2440, $P2439
    set $P2441, $P2440["Regex"]
    find_lex $P2442, "$past"
    unless_null $P2442, vivify_1172
    new $P2442, "Undef"
  vivify_1172:
    find_lex $P2443, "$ast"
    unless_null $P2443, vivify_1173
    new $P2443, "Undef"
  vivify_1173:
    find_lex $P2444, "$/"
    unless_null $P2444, vivify_1174
    new $P2444, "Undef"
  vivify_1174:
    $P2445 = $P2441."new"($P2442, $P2443, "alt" :named("pasttype"), $P2444 :named("node"))
    store_lex "$past", $P2445
.annotate 'line', 666
    goto if_2426_end
  if_2426:
.annotate 'line', 663
    find_lex $P2429, "$ast"
    unless_null $P2429, vivify_1175
    new $P2429, "Undef"
  vivify_1175:
    $P2429."subtype"("zerowidth")
.annotate 'line', 664
    get_hll_global $P2430, "GLOBAL"
    nqp_get_package_through_who $P2431, $P2430, "PAST"
    get_who $P2432, $P2431
    set $P2433, $P2432["Regex"]
    find_lex $P2434, "$ast"
    unless_null $P2434, vivify_1176
    new $P2434, "Undef"
  vivify_1176:
    find_lex $P2435, "$past"
    unless_null $P2435, vivify_1177
    new $P2435, "Undef"
  vivify_1177:
    find_lex $P2436, "$/"
    unless_null $P2436, vivify_1178
    new $P2436, "Undef"
  vivify_1178:
    $P2437 = $P2433."new"($P2434, $P2435, "concat" :named("pasttype"), $P2436 :named("node"))
    store_lex "$past", $P2437
  if_2426_end:
.annotate 'line', 669
    find_lex $P2446, "$i"
    unless_null $P2446, vivify_1179
    new $P2446, "Undef"
  vivify_1179:
    add $P2447, $P2446, 1
    store_lex "$i", $P2447
.annotate 'line', 660
    .return ($P2447)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("316_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2455
    .param pmc param_2456
.annotate 'line', 674
    .const 'Sub' $P2484 = "318_1304282272.255" 
    capture_lex $P2484
    .const 'Sub' $P2465 = "317_1304282272.255" 
    capture_lex $P2465
    .lex "self", param_2455
    .lex "$/", param_2456
.annotate 'line', 675
    new $P2457, "Undef"
    .lex "$str", $P2457
.annotate 'line', 676
    new $P2458, "Undef"
    .lex "$past", $P2458
.annotate 'line', 675
    new $P2459, "String"
    assign $P2459, ""
    store_lex "$str", $P2459
    find_lex $P2460, "$past"
    unless_null $P2460, vivify_1181
    new $P2460, "Undef"
  vivify_1181:
.annotate 'line', 677
    find_lex $P2462, "$/"
    unless_null $P2462, vivify_1182
    $P2462 = root_new ['parrot';'Hash']
  vivify_1182:
    set $P2463, $P2462["name"]
    unless_null $P2463, vivify_1183
    new $P2463, "Undef"
  vivify_1183:
    if $P2463, if_2461
.annotate 'line', 681
    find_lex $P2479, "$/"
    unless_null $P2479, vivify_1184
    $P2479 = root_new ['parrot';'Hash']
  vivify_1184:
    set $P2480, $P2479["charspec"]
    unless_null $P2480, vivify_1185
    new $P2480, "Undef"
  vivify_1185:
    defined $I2481, $P2480
    unless $I2481, for_undef_1186
    iter $P2478, $P2480
    new $P2510, 'ExceptionHandler'
    set_label $P2510, loop2509_handler
    $P2510."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2510
  loop2509_test:
    unless $P2478, loop2509_done
    shift $P2482, $P2478
  loop2509_redo:
    .const 'Sub' $P2484 = "318_1304282272.255" 
    capture_lex $P2484
    $P2484($P2482)
  loop2509_next:
    goto loop2509_test
  loop2509_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2511, exception, 'type'
    eq $P2511, .CONTROL_LOOP_NEXT, loop2509_next
    eq $P2511, .CONTROL_LOOP_REDO, loop2509_redo
  loop2509_done:
    pop_eh 
  for_undef_1186:
.annotate 'line', 706
    get_hll_global $P2512, "GLOBAL"
    nqp_get_package_through_who $P2513, $P2512, "PAST"
    get_who $P2514, $P2513
    set $P2515, $P2514["Regex"]
    find_lex $P2516, "$str"
    unless_null $P2516, vivify_1199
    new $P2516, "Undef"
  vivify_1199:
    find_lex $P2517, "$/"
    unless_null $P2517, vivify_1200
    new $P2517, "Undef"
  vivify_1200:
    $P2518 = $P2515."new"($P2516, "enumcharlist" :named("pasttype"), $P2517 :named("node"))
    store_lex "$past", $P2518
.annotate 'line', 680
    goto if_2461_end
  if_2461:
.annotate 'line', 677
    .const 'Sub' $P2465 = "317_1304282272.255" 
    capture_lex $P2465
    $P2465()
  if_2461_end:
.annotate 'line', 708
    find_lex $P2519, "$past"
    unless_null $P2519, vivify_1205
    new $P2519, "Undef"
  vivify_1205:
    find_lex $P2520, "$/"
    unless_null $P2520, vivify_1206
    $P2520 = root_new ['parrot';'Hash']
  vivify_1206:
    set $P2521, $P2520["sign"]
    unless_null $P2521, vivify_1207
    new $P2521, "Undef"
  vivify_1207:
    set $S2522, $P2521
    iseq $I2523, $S2522, "-"
    $P2519."negate"($I2523)
.annotate 'line', 709
    find_lex $P2524, "$/"
    find_lex $P2525, "$past"
    unless_null $P2525, vivify_1208
    new $P2525, "Undef"
  vivify_1208:
    $P2526 = $P2524."!make"($P2525)
.annotate 'line', 674
    .return ($P2526)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2483"  :anon :subid("318_1304282272.255") :outer("316_1304282272.255")
    .param pmc param_2485
.annotate 'line', 681
    .const 'Sub' $P2491 = "319_1304282272.255" 
    capture_lex $P2491
    .lex "$_", param_2485
.annotate 'line', 682
    find_lex $P2488, "$_"
    unless_null $P2488, vivify_1187
    $P2488 = root_new ['parrot';'ResizablePMCArray']
  vivify_1187:
    set $P2489, $P2488[1]
    unless_null $P2489, vivify_1188
    new $P2489, "Undef"
  vivify_1188:
    if $P2489, if_2487
.annotate 'line', 704
    find_lex $P2505, "$str"
    unless_null $P2505, vivify_1189
    new $P2505, "Undef"
  vivify_1189:
    find_lex $P2506, "$_"
    unless_null $P2506, vivify_1190
    $P2506 = root_new ['parrot';'ResizablePMCArray']
  vivify_1190:
    set $P2507, $P2506[0]
    unless_null $P2507, vivify_1191
    new $P2507, "Undef"
  vivify_1191:
    concat $P2508, $P2505, $P2507
    store_lex "$str", $P2508
    set $P2486, $P2508
.annotate 'line', 682
    goto if_2487_end
  if_2487:
    .const 'Sub' $P2491 = "319_1304282272.255" 
    capture_lex $P2491
    $P2504 = $P2491()
    set $P2486, $P2504
  if_2487_end:
.annotate 'line', 681
    .return ($P2486)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2490"  :anon :subid("319_1304282272.255") :outer("318_1304282272.255")
.annotate 'line', 683
    new $P2492, "Undef"
    .lex "$a", $P2492
.annotate 'line', 684
    new $P2493, "Undef"
    .lex "$b", $P2493
.annotate 'line', 685
    new $P2494, "Undef"
    .lex "$c", $P2494
.annotate 'line', 683
    find_lex $P2495, "$_"
    unless_null $P2495, vivify_1192
    $P2495 = root_new ['parrot';'ResizablePMCArray']
  vivify_1192:
    set $P2496, $P2495[0]
    unless_null $P2496, vivify_1193
    new $P2496, "Undef"
  vivify_1193:
    store_lex "$a", $P2496
.annotate 'line', 684
    find_lex $P2497, "$_"
    unless_null $P2497, vivify_1194
    $P2497 = root_new ['parrot';'ResizablePMCArray']
  vivify_1194:
    set $P2498, $P2497[1]
    unless_null $P2498, vivify_1195
    $P2498 = root_new ['parrot';'ResizablePMCArray']
  vivify_1195:
    set $P2499, $P2498[0]
    unless_null $P2499, vivify_1196
    new $P2499, "Undef"
  vivify_1196:
    store_lex "$b", $P2499
.annotate 'line', 685

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
                                 $P2500 = box $S2
                             
    store_lex "$c", $P2500
.annotate 'line', 702
    find_lex $P2501, "$str"
    unless_null $P2501, vivify_1197
    new $P2501, "Undef"
  vivify_1197:
    find_lex $P2502, "$c"
    unless_null $P2502, vivify_1198
    new $P2502, "Undef"
  vivify_1198:
    concat $P2503, $P2501, $P2502
    store_lex "$str", $P2503
.annotate 'line', 682
    .return ($P2503)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block2464"  :anon :subid("317_1304282272.255") :outer("316_1304282272.255")
.annotate 'line', 678
    new $P2466, "Undef"
    .lex "$name", $P2466
    find_lex $P2467, "$/"
    unless_null $P2467, vivify_1201
    $P2467 = root_new ['parrot';'Hash']
  vivify_1201:
    set $P2468, $P2467["name"]
    unless_null $P2468, vivify_1202
    new $P2468, "Undef"
  vivify_1202:
    set $S2469, $P2468
    new $P2470, 'String'
    set $P2470, $S2469
    store_lex "$name", $P2470
.annotate 'line', 679
    get_hll_global $P2471, "GLOBAL"
    nqp_get_package_through_who $P2472, $P2471, "PAST"
    get_who $P2473, $P2472
    set $P2474, $P2473["Regex"]
    find_lex $P2475, "$name"
    unless_null $P2475, vivify_1203
    new $P2475, "Undef"
  vivify_1203:
    find_lex $P2476, "$/"
    unless_null $P2476, vivify_1204
    new $P2476, "Undef"
  vivify_1204:
    $P2477 = $P2474."new"($P2475, "subrule" :named("pasttype"), "method" :named("subtype"), $P2476 :named("node"))
    store_lex "$past", $P2477
.annotate 'line', 677
    .return ($P2477)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("320_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2528
    .param pmc param_2529
.annotate 'line', 712
    .lex "self", param_2528
    .lex "$/", param_2529
.annotate 'line', 713
    $P2530 = root_new ['parrot';'Hash']
    .lex "%mods", $P2530
.annotate 'line', 714
    new $P2531, "Undef"
    .lex "$n", $P2531
.annotate 'line', 713
    find_lex $P2532, "$?PACKAGE"
    get_who $P2533, $P2532
    set $P2534, $P2533["@MODIFIERS"]
    unless_null $P2534, vivify_1209
    $P2534 = root_new ['parrot';'ResizablePMCArray']
  vivify_1209:
    set $P2535, $P2534[0]
    unless_null $P2535, vivify_1210
    new $P2535, "Undef"
  vivify_1210:
    store_lex "%mods", $P2535
.annotate 'line', 714
    find_lex $P2538, "$/"
    unless_null $P2538, vivify_1211
    $P2538 = root_new ['parrot';'Hash']
  vivify_1211:
    set $P2539, $P2538["n"]
    unless_null $P2539, vivify_1212
    $P2539 = root_new ['parrot';'ResizablePMCArray']
  vivify_1212:
    set $P2540, $P2539[0]
    unless_null $P2540, vivify_1213
    new $P2540, "Undef"
  vivify_1213:
    set $S2541, $P2540
    isgt $I2542, $S2541, ""
    if $I2542, if_2537
    new $P2547, "Integer"
    assign $P2547, 1
    set $P2536, $P2547
    goto if_2537_end
  if_2537:
    find_lex $P2543, "$/"
    unless_null $P2543, vivify_1214
    $P2543 = root_new ['parrot';'Hash']
  vivify_1214:
    set $P2544, $P2543["n"]
    unless_null $P2544, vivify_1215
    $P2544 = root_new ['parrot';'ResizablePMCArray']
  vivify_1215:
    set $P2545, $P2544[0]
    unless_null $P2545, vivify_1216
    new $P2545, "Undef"
  vivify_1216:
    set $N2546, $P2545
    new $P2536, 'Float'
    set $P2536, $N2546
  if_2537_end:
    store_lex "$n", $P2536
.annotate 'line', 715
    find_lex $P2548, "$n"
    unless_null $P2548, vivify_1217
    new $P2548, "Undef"
  vivify_1217:
    find_lex $P2549, "$/"
    unless_null $P2549, vivify_1218
    $P2549 = root_new ['parrot';'Hash']
  vivify_1218:
    set $P2550, $P2549["mod_ident"]
    unless_null $P2550, vivify_1219
    $P2550 = root_new ['parrot';'Hash']
  vivify_1219:
    set $P2551, $P2550["sym"]
    unless_null $P2551, vivify_1220
    new $P2551, "Undef"
  vivify_1220:
    set $S2552, $P2551
    find_lex $P2553, "%mods"
    unless_null $P2553, vivify_1221
    $P2553 = root_new ['parrot';'Hash']
    store_lex "%mods", $P2553
  vivify_1221:
    set $P2553[$S2552], $P2548
.annotate 'line', 716
    find_lex $P2554, "$/"
    $P2555 = $P2554."!make"(0)
.annotate 'line', 712
    .return ($P2555)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("321_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2560
    .param pmc param_2561
    .param pmc param_2562
.annotate 'line', 810
    .lex "self", param_2560
    .lex "$past", param_2561
    .lex "$name", param_2562
.annotate 'line', 811
    find_lex $P2564, "$past"
    unless_null $P2564, vivify_1222
    new $P2564, "Undef"
  vivify_1222:
    $S2565 = $P2564."name"()
    isgt $I2566, $S2565, ""
    if $I2566, if_2563
.annotate 'line', 812
    find_lex $P2573, "$past"
    unless_null $P2573, vivify_1223
    new $P2573, "Undef"
  vivify_1223:
    find_lex $P2574, "$name"
    unless_null $P2574, vivify_1224
    new $P2574, "Undef"
  vivify_1224:
    $P2573."name"($P2574)
    goto if_2563_end
  if_2563:
.annotate 'line', 811
    find_lex $P2567, "$past"
    unless_null $P2567, vivify_1225
    new $P2567, "Undef"
  vivify_1225:
    find_lex $P2568, "$name"
    unless_null $P2568, vivify_1226
    new $P2568, "Undef"
  vivify_1226:
    concat $P2569, $P2568, "="
    find_lex $P2570, "$past"
    unless_null $P2570, vivify_1227
    new $P2570, "Undef"
  vivify_1227:
    $S2571 = $P2570."name"()
    concat $P2572, $P2569, $S2571
    $P2567."name"($P2572)
  if_2563_end:
.annotate 'line', 813
    find_lex $P2575, "$past"
    unless_null $P2575, vivify_1228
    new $P2575, "Undef"
  vivify_1228:
    $P2576 = $P2575."subtype"("capture")
.annotate 'line', 810
    .return ($P2576)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "named_assertion"  :subid("322_1304282272.255") :outer("241_1304282272.255")
    .param pmc param_2578
    .param pmc param_2579
.annotate 'line', 816
    .lex "self", param_2578
    .lex "$/", param_2579
.annotate 'line', 817
    new $P2580, "Undef"
    .lex "$name", $P2580
.annotate 'line', 818
    new $P2581, "Undef"
    .lex "$past", $P2581
.annotate 'line', 817
    find_lex $P2582, "$/"
    unless_null $P2582, vivify_1229
    $P2582 = root_new ['parrot';'Hash']
  vivify_1229:
    set $P2583, $P2582["longname"]
    unless_null $P2583, vivify_1230
    new $P2583, "Undef"
  vivify_1230:
    set $S2584, $P2583
    new $P2585, 'String'
    set $P2585, $S2584
    store_lex "$name", $P2585
.annotate 'line', 818
    get_hll_global $P2586, "GLOBAL"
    nqp_get_package_through_who $P2587, $P2586, "PAST"
    get_who $P2588, $P2587
    set $P2589, $P2588["Regex"]
    find_lex $P2590, "$name"
    unless_null $P2590, vivify_1231
    new $P2590, "Undef"
  vivify_1231:
    find_lex $P2591, "$name"
    unless_null $P2591, vivify_1232
    new $P2591, "Undef"
  vivify_1232:
    find_lex $P2592, "$/"
    unless_null $P2592, vivify_1233
    new $P2592, "Undef"
  vivify_1233:
    $P2593 = $P2589."new"($P2590, $P2591 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P2592 :named("node"))
    store_lex "$past", $P2593
    find_lex $P2594, "$past"
    unless_null $P2594, vivify_1234
    new $P2594, "Undef"
  vivify_1234:
.annotate 'line', 816
    .return ($P2594)
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2601"  :subid("324_1304282272.255") :outer("10_1304282272.255")
.annotate 'line', 825
    .const 'Sub' $P2606 = "325_1304282272.255" 
    capture_lex $P2606
    .lex "$?PACKAGE", $P2603
    .lex "$?CLASS", $P2604
    .return ()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post1235") :outer("324_1304282272.255")
.annotate 'line', 825
    .const 'Sub' $P2602 = "324_1304282272.255" 
    .local pmc block
    set block, $P2602
    .const 'Sub' $P2606 = "325_1304282272.255" 
    capture_lex $P2606
    $P2606()
.end


.HLL "nqp"

.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block2605"  :anon :subid("325_1304282272.255") :outer("324_1304282272.255")
.annotate 'line', 825
    nqp_get_sc_object $P2607, "1304282267.413", 199
    .local pmc type_obj
    set type_obj, $P2607
    get_how $P2608, type_obj
    $P2609 = $P2608."compose"(type_obj)
    .return ($P2609)
.end


.HLL "nqp"

.namespace []
.sub "_block2636" :load :anon :subid("326_1304282272.255")
.annotate 'line', 1
    .const 'Sub' $P2638 = "10_1304282272.255" 
    $P2639 = $P2638()
    .return ($P2639)
.end

