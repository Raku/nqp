TOM           = 3rdparty/libtommath/bn

LIBTOMMATH_H =  3rdparty/libtommath/tommath_class.h \
	3rdparty/libtommath/tommath.h \
	3rdparty/libtommath/tommath_superclass.h \

LIBTOMMATH_SOURCE =	3rdparty/libtommath/bncore.c \
	3rdparty/libtommath/bn_error.c \
	3rdparty/libtommath/bn_fast_mp_invmod.c \
	3rdparty/libtommath/bn_fast_mp_montgomery_reduce.c \
	3rdparty/libtommath/bn_fast_s_mp_mul_digs.c \
	3rdparty/libtommath/bn_fast_s_mp_mul_high_digs.c \
	3rdparty/libtommath/bn_fast_s_mp_sqr.c \
	3rdparty/libtommath/bn_mp_2expt.c \
	3rdparty/libtommath/bn_mp_abs.c \
	3rdparty/libtommath/bn_mp_add.c \
	3rdparty/libtommath/bn_mp_add_d.c \
	3rdparty/libtommath/bn_mp_addmod.c \
	3rdparty/libtommath/bn_mp_and.c \
	3rdparty/libtommath/bn_mp_clamp.c \
	3rdparty/libtommath/bn_mp_clear.c \
	3rdparty/libtommath/bn_mp_clear_multi.c \
	3rdparty/libtommath/bn_mp_cmp.c \
	3rdparty/libtommath/bn_mp_cmp_d.c \
	3rdparty/libtommath/bn_mp_cmp_mag.c \
	3rdparty/libtommath/bn_mp_cnt_lsb.c \
	3rdparty/libtommath/bn_mp_copy.c \
	3rdparty/libtommath/bn_mp_count_bits.c \
	3rdparty/libtommath/bn_mp_div_2.c \
	3rdparty/libtommath/bn_mp_div_2d.c \
	3rdparty/libtommath/bn_mp_div_3.c \
	3rdparty/libtommath/bn_mp_div.c \
	3rdparty/libtommath/bn_mp_div_d.c \
	3rdparty/libtommath/bn_mp_dr_is_modulus.c \
	3rdparty/libtommath/bn_mp_dr_reduce.c \
	3rdparty/libtommath/bn_mp_dr_setup.c \
	3rdparty/libtommath/bn_mp_exch.c \
	3rdparty/libtommath/bn_mp_expt_d.c \
	3rdparty/libtommath/bn_mp_exptmod.c \
	3rdparty/libtommath/bn_mp_exptmod_fast.c \
	3rdparty/libtommath/bn_mp_exteuclid.c \
	3rdparty/libtommath/bn_mp_fread.c \
	3rdparty/libtommath/bn_mp_fwrite.c \
	3rdparty/libtommath/bn_mp_gcd.c \
	3rdparty/libtommath/bn_mp_get_int.c \
	3rdparty/libtommath/bn_mp_get_long.c \
	3rdparty/libtommath/bn_mp_grow.c \
	3rdparty/libtommath/bn_mp_init.c \
	3rdparty/libtommath/bn_mp_init_copy.c \
	3rdparty/libtommath/bn_mp_init_multi.c \
	3rdparty/libtommath/bn_mp_init_set.c \
	3rdparty/libtommath/bn_mp_init_set_int.c \
	3rdparty/libtommath/bn_mp_init_size.c \
	3rdparty/libtommath/bn_mp_invmod.c \
	3rdparty/libtommath/bn_mp_invmod_slow.c \
	3rdparty/libtommath/bn_mp_is_square.c \
	3rdparty/libtommath/bn_mp_jacobi.c \
	3rdparty/libtommath/bn_mp_karatsuba_mul.c \
	3rdparty/libtommath/bn_mp_karatsuba_sqr.c \
	3rdparty/libtommath/bn_mp_lcm.c \
	3rdparty/libtommath/bn_mp_lshd.c \
	3rdparty/libtommath/bn_mp_mod_2d.c \
	3rdparty/libtommath/bn_mp_mod.c \
	3rdparty/libtommath/bn_mp_mod_d.c \
	3rdparty/libtommath/bn_mp_montgomery_calc_normalization.c \
	3rdparty/libtommath/bn_mp_montgomery_reduce.c \
	3rdparty/libtommath/bn_mp_montgomery_setup.c \
	3rdparty/libtommath/bn_mp_mul_2.c \
	3rdparty/libtommath/bn_mp_mul_2d.c \
	3rdparty/libtommath/bn_mp_mul.c \
	3rdparty/libtommath/bn_mp_mul_d.c \
	3rdparty/libtommath/bn_mp_mulmod.c \
	3rdparty/libtommath/bn_mp_neg.c \
	3rdparty/libtommath/bn_mp_n_root.c \
	3rdparty/libtommath/bn_mp_or.c \
	3rdparty/libtommath/bn_mp_prime_fermat.c \
	3rdparty/libtommath/bn_mp_prime_is_divisible.c \
	3rdparty/libtommath/bn_mp_prime_is_prime.c \
	3rdparty/libtommath/bn_mp_prime_miller_rabin.c \
	3rdparty/libtommath/bn_mp_prime_next_prime.c \
	3rdparty/libtommath/bn_mp_prime_rabin_miller_trials.c \
	3rdparty/libtommath/bn_mp_prime_random_ex.c \
	3rdparty/libtommath/bn_mp_radix_size.c \
	3rdparty/libtommath/bn_mp_radix_smap.c \
	3rdparty/libtommath/bn_mp_rand.c \
	3rdparty/libtommath/bn_mp_read_radix.c \
	3rdparty/libtommath/bn_mp_read_signed_bin.c \
	3rdparty/libtommath/bn_mp_read_unsigned_bin.c \
	3rdparty/libtommath/bn_mp_reduce_2k.c \
	3rdparty/libtommath/bn_mp_reduce_2k_l.c \
	3rdparty/libtommath/bn_mp_reduce_2k_setup.c \
	3rdparty/libtommath/bn_mp_reduce_2k_setup_l.c \
	3rdparty/libtommath/bn_mp_reduce.c \
	3rdparty/libtommath/bn_mp_reduce_is_2k.c \
	3rdparty/libtommath/bn_mp_reduce_is_2k_l.c \
	3rdparty/libtommath/bn_mp_reduce_setup.c \
	3rdparty/libtommath/bn_mp_rshd.c \
	3rdparty/libtommath/bn_mp_set.c \
	3rdparty/libtommath/bn_mp_set_int.c \
	3rdparty/libtommath/bn_mp_set_long.c \
	3rdparty/libtommath/bn_mp_shrink.c \
	3rdparty/libtommath/bn_mp_signed_bin_size.c \
	3rdparty/libtommath/bn_mp_sqr.c \
	3rdparty/libtommath/bn_mp_sqrmod.c \
	3rdparty/libtommath/bn_mp_sqrt.c \
	3rdparty/libtommath/bn_mp_sub.c \
	3rdparty/libtommath/bn_mp_sub_d.c \
	3rdparty/libtommath/bn_mp_submod.c \
	3rdparty/libtommath/bn_mp_toom_mul.c \
	3rdparty/libtommath/bn_mp_toom_sqr.c \
	3rdparty/libtommath/bn_mp_toradix.c \
	3rdparty/libtommath/bn_mp_toradix_n.c \
	3rdparty/libtommath/bn_mp_to_signed_bin.c \
	3rdparty/libtommath/bn_mp_to_signed_bin_n.c \
	3rdparty/libtommath/bn_mp_to_unsigned_bin.c \
	3rdparty/libtommath/bn_mp_to_unsigned_bin_n.c \
	3rdparty/libtommath/bn_mp_unsigned_bin_size.c \
	3rdparty/libtommath/bn_mp_xor.c \
	3rdparty/libtommath/bn_mp_zero.c \
	3rdparty/libtommath/bn_prime_tab.c \
	3rdparty/libtommath/bn_reverse.c \
	3rdparty/libtommath/bn_s_mp_add.c \
	3rdparty/libtommath/bn_s_mp_exptmod.c \
	3rdparty/libtommath/bn_s_mp_mul_digs.c \
	3rdparty/libtommath/bn_s_mp_mul_high_digs.c \
	3rdparty/libtommath/bn_s_mp_sqr.c \
	3rdparty/libtommath/bn_s_mp_sub.c \

LIBTOMMATH_BIN = $(TOM)core$(O) \
        $(TOM)_error$(O) \
        $(TOM)_fast_mp_invmod$(O) \
        $(TOM)_fast_mp_montgomery_reduce$(O) \
        $(TOM)_fast_s_mp_mul_digs$(O) \
        $(TOM)_fast_s_mp_mul_high_digs$(O) \
        $(TOM)_fast_s_mp_sqr$(O) \
        $(TOM)_mp_2expt$(O) \
        $(TOM)_mp_abs$(O) \
        $(TOM)_mp_add_d$(O) \
        $(TOM)_mp_addmod$(O) \
        $(TOM)_mp_add$(O) \
        $(TOM)_mp_and$(O) \
        $(TOM)_mp_clamp$(O) \
        $(TOM)_mp_clear_multi$(O) \
        $(TOM)_mp_clear$(O) \
        $(TOM)_mp_cmp_d$(O) \
        $(TOM)_mp_cmp_mag$(O) \
        $(TOM)_mp_cmp$(O) \
        $(TOM)_mp_cnt_lsb$(O) \
        $(TOM)_mp_copy$(O) \
        $(TOM)_mp_count_bits$(O) \
        $(TOM)_mp_div_2d$(O) \
        $(TOM)_mp_div_2$(O) \
        $(TOM)_mp_div_3$(O) \
        $(TOM)_mp_div_d$(O) \
        $(TOM)_mp_div$(O) \
        $(TOM)_mp_dr_is_modulus$(O) \
        $(TOM)_mp_dr_reduce$(O) \
        $(TOM)_mp_dr_setup$(O) \
        $(TOM)_mp_exch$(O) \
        $(TOM)_mp_expt_d$(O) \
        $(TOM)_mp_exptmod_fast$(O) \
        $(TOM)_mp_exptmod$(O) \
        $(TOM)_mp_exteuclid$(O) \
        $(TOM)_mp_fread$(O) \
        $(TOM)_mp_fwrite$(O) \
        $(TOM)_mp_gcd$(O) \
        $(TOM)_mp_get_int$(O) \
        $(TOM)_mp_get_long$(O) \
        $(TOM)_mp_grow$(O) \
        $(TOM)_mp_init_copy$(O) \
        $(TOM)_mp_init_multi$(O) \
        $(TOM)_mp_init$(O) \
        $(TOM)_mp_init_set_int$(O) \
        $(TOM)_mp_init_set$(O) \
        $(TOM)_mp_init_size$(O) \
        $(TOM)_mp_invmod$(O) \
        $(TOM)_mp_invmod_slow$(O) \
        $(TOM)_mp_is_square$(O) \
        $(TOM)_mp_jacobi$(O) \
        $(TOM)_mp_karatsuba_mul$(O) \
        $(TOM)_mp_karatsuba_sqr$(O) \
        $(TOM)_mp_lcm$(O) \
        $(TOM)_mp_lshd$(O) \
        $(TOM)_mp_mod_2d$(O) \
        $(TOM)_mp_mod_d$(O) \
        $(TOM)_mp_mod$(O) \
        $(TOM)_mp_montgomery_calc_normalization$(O) \
        $(TOM)_mp_montgomery_reduce$(O) \
        $(TOM)_mp_montgomery_setup$(O) \
        $(TOM)_mp_mul_2d$(O) \
        $(TOM)_mp_mul_2$(O) \
        $(TOM)_mp_mul_d$(O) \
        $(TOM)_mp_mulmod$(O) \
        $(TOM)_mp_mul$(O) \
        $(TOM)_mp_neg$(O) \
        $(TOM)_mp_n_root$(O) \
        $(TOM)_mp_or$(O) \
        $(TOM)_mp_prime_fermat$(O) \
        $(TOM)_mp_prime_is_divisible$(O) \
        $(TOM)_mp_prime_is_prime$(O) \
        $(TOM)_mp_prime_miller_rabin$(O) \
        $(TOM)_mp_prime_next_prime$(O) \
        $(TOM)_mp_prime_rabin_miller_trials$(O) \
        $(TOM)_mp_prime_random_ex$(O) \
        $(TOM)_mp_radix_size$(O) \
        $(TOM)_mp_radix_smap$(O) \
        $(TOM)_mp_rand$(O) \
        $(TOM)_mp_read_radix$(O) \
        $(TOM)_mp_read_signed_bin$(O) \
        $(TOM)_mp_read_unsigned_bin$(O) \
        $(TOM)_mp_reduce_2k_l$(O) \
        $(TOM)_mp_reduce_2k$(O) \
        $(TOM)_mp_reduce_2k_setup_l$(O) \
        $(TOM)_mp_reduce_2k_setup$(O) \
        $(TOM)_mp_reduce_is_2k_l$(O) \
        $(TOM)_mp_reduce_is_2k$(O) \
        $(TOM)_mp_reduce$(O) \
        $(TOM)_mp_reduce_setup$(O) \
        $(TOM)_mp_rshd$(O) \
        $(TOM)_mp_set_int$(O) \
        $(TOM)_mp_set_long$(O) \
        $(TOM)_mp_set$(O) \
        $(TOM)_mp_shrink$(O) \
        $(TOM)_mp_signed_bin_size$(O) \
        $(TOM)_mp_sqrmod$(O) \
        $(TOM)_mp_sqr$(O) \
        $(TOM)_mp_sqrt$(O) \
        $(TOM)_mp_sub_d$(O) \
        $(TOM)_mp_submod$(O) \
        $(TOM)_mp_sub$(O) \
        $(TOM)_mp_toom_mul$(O) \
        $(TOM)_mp_toom_sqr$(O) \
        $(TOM)_mp_toradix_n$(O) \
        $(TOM)_mp_toradix$(O) \
        $(TOM)_mp_to_signed_bin_n$(O) \
        $(TOM)_mp_to_signed_bin$(O) \
        $(TOM)_mp_to_unsigned_bin_n$(O) \
        $(TOM)_mp_to_unsigned_bin$(O) \
        $(TOM)_mp_unsigned_bin_size$(O) \
        $(TOM)_mp_xor$(O) \
        $(TOM)_mp_zero$(O) \
        $(TOM)_prime_tab$(O) \
        $(TOM)_reverse$(O) \
        $(TOM)_s_mp_add$(O) \
        $(TOM)_s_mp_exptmod$(O) \
        $(TOM)_s_mp_mul_digs$(O) \
        $(TOM)_s_mp_mul_high_digs$(O) \
        $(TOM)_s_mp_sqr$(O) \
        $(TOM)_s_mp_sub$(O)

3rdparty/libtommath/bncore$(O): 3rdparty/libtommath/bncore.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_error$(O): 3rdparty/libtommath/bn_error.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_fast_mp_invmod$(O): 3rdparty/libtommath/bn_fast_mp_invmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_fast_mp_montgomery_reduce$(O): 3rdparty/libtommath/bn_fast_mp_montgomery_reduce.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_fast_s_mp_mul_digs$(O): 3rdparty/libtommath/bn_fast_s_mp_mul_digs.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_fast_s_mp_mul_high_digs$(O): 3rdparty/libtommath/bn_fast_s_mp_mul_high_digs.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_fast_s_mp_sqr$(O): 3rdparty/libtommath/bn_fast_s_mp_sqr.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_2expt$(O): 3rdparty/libtommath/bn_mp_2expt.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_abs$(O): 3rdparty/libtommath/bn_mp_abs.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_add$(O): 3rdparty/libtommath/bn_mp_add.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_add_d$(O): 3rdparty/libtommath/bn_mp_add_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_addmod$(O): 3rdparty/libtommath/bn_mp_addmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_and$(O): 3rdparty/libtommath/bn_mp_and.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_clamp$(O): 3rdparty/libtommath/bn_mp_clamp.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_clear$(O): 3rdparty/libtommath/bn_mp_clear.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_clear_multi$(O): 3rdparty/libtommath/bn_mp_clear_multi.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_cmp$(O): 3rdparty/libtommath/bn_mp_cmp.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_cmp_d$(O): 3rdparty/libtommath/bn_mp_cmp_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_cmp_mag$(O): 3rdparty/libtommath/bn_mp_cmp_mag.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_cnt_lsb$(O): 3rdparty/libtommath/bn_mp_cnt_lsb.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_copy$(O): 3rdparty/libtommath/bn_mp_copy.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_count_bits$(O): 3rdparty/libtommath/bn_mp_count_bits.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_div_2$(O): 3rdparty/libtommath/bn_mp_div_2.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_div_2d$(O): 3rdparty/libtommath/bn_mp_div_2d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_div_3$(O): 3rdparty/libtommath/bn_mp_div_3.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_div$(O): 3rdparty/libtommath/bn_mp_div.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_div_d$(O): 3rdparty/libtommath/bn_mp_div_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_dr_is_modulus$(O): 3rdparty/libtommath/bn_mp_dr_is_modulus.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_dr_reduce$(O): 3rdparty/libtommath/bn_mp_dr_reduce.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_dr_setup$(O): 3rdparty/libtommath/bn_mp_dr_setup.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_exch$(O): 3rdparty/libtommath/bn_mp_exch.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_expt_d$(O): 3rdparty/libtommath/bn_mp_expt_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_exptmod$(O): 3rdparty/libtommath/bn_mp_exptmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_exptmod_fast$(O): 3rdparty/libtommath/bn_mp_exptmod_fast.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_exteuclid$(O): 3rdparty/libtommath/bn_mp_exteuclid.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_fread$(O): 3rdparty/libtommath/bn_mp_fread.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_fwrite$(O): 3rdparty/libtommath/bn_mp_fwrite.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_gcd$(O): 3rdparty/libtommath/bn_mp_gcd.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_get_int$(O): 3rdparty/libtommath/bn_mp_get_int.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_get_long$(O): 3rdparty/libtommath/bn_mp_get_long.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_grow$(O): 3rdparty/libtommath/bn_mp_grow.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_init$(O): 3rdparty/libtommath/bn_mp_init.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_init_copy$(O): 3rdparty/libtommath/bn_mp_init_copy.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_init_multi$(O): 3rdparty/libtommath/bn_mp_init_multi.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_init_set$(O): 3rdparty/libtommath/bn_mp_init_set.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_init_set_int$(O): 3rdparty/libtommath/bn_mp_init_set_int.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_init_size$(O): 3rdparty/libtommath/bn_mp_init_size.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_invmod$(O): 3rdparty/libtommath/bn_mp_invmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_invmod_slow$(O): 3rdparty/libtommath/bn_mp_invmod_slow.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_is_square$(O): 3rdparty/libtommath/bn_mp_is_square.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_jacobi$(O): 3rdparty/libtommath/bn_mp_jacobi.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_karatsuba_mul$(O): 3rdparty/libtommath/bn_mp_karatsuba_mul.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_karatsuba_sqr$(O): 3rdparty/libtommath/bn_mp_karatsuba_sqr.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_lcm$(O): 3rdparty/libtommath/bn_mp_lcm.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_lshd$(O): 3rdparty/libtommath/bn_mp_lshd.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mod_2d$(O): 3rdparty/libtommath/bn_mp_mod_2d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mod$(O): 3rdparty/libtommath/bn_mp_mod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mod_d$(O): 3rdparty/libtommath/bn_mp_mod_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_montgomery_calc_normalization$(O): 3rdparty/libtommath/bn_mp_montgomery_calc_normalization.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_montgomery_reduce$(O): 3rdparty/libtommath/bn_mp_montgomery_reduce.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_montgomery_setup$(O): 3rdparty/libtommath/bn_mp_montgomery_setup.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mul_2$(O): 3rdparty/libtommath/bn_mp_mul_2.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mul_2d$(O): 3rdparty/libtommath/bn_mp_mul_2d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mul$(O): 3rdparty/libtommath/bn_mp_mul.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mul_d$(O): 3rdparty/libtommath/bn_mp_mul_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_mulmod$(O): 3rdparty/libtommath/bn_mp_mulmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_neg$(O): 3rdparty/libtommath/bn_mp_neg.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_n_root$(O): 3rdparty/libtommath/bn_mp_n_root.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_or$(O): 3rdparty/libtommath/bn_mp_or.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_fermat$(O): 3rdparty/libtommath/bn_mp_prime_fermat.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_is_divisible$(O): 3rdparty/libtommath/bn_mp_prime_is_divisible.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_is_prime$(O): 3rdparty/libtommath/bn_mp_prime_is_prime.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_miller_rabin$(O): 3rdparty/libtommath/bn_mp_prime_miller_rabin.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_next_prime$(O): 3rdparty/libtommath/bn_mp_prime_next_prime.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_rabin_miller_trials$(O): 3rdparty/libtommath/bn_mp_prime_rabin_miller_trials.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_prime_random_ex$(O): 3rdparty/libtommath/bn_mp_prime_random_ex.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_radix_size$(O): 3rdparty/libtommath/bn_mp_radix_size.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_radix_smap$(O): 3rdparty/libtommath/bn_mp_radix_smap.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_rand$(O): 3rdparty/libtommath/bn_mp_rand.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_read_radix$(O): 3rdparty/libtommath/bn_mp_read_radix.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_read_signed_bin$(O): 3rdparty/libtommath/bn_mp_read_signed_bin.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_read_unsigned_bin$(O): 3rdparty/libtommath/bn_mp_read_unsigned_bin.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_2k$(O): 3rdparty/libtommath/bn_mp_reduce_2k.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_2k_l$(O): 3rdparty/libtommath/bn_mp_reduce_2k_l.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_2k_setup$(O): 3rdparty/libtommath/bn_mp_reduce_2k_setup.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_2k_setup_l$(O): 3rdparty/libtommath/bn_mp_reduce_2k_setup_l.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce$(O): 3rdparty/libtommath/bn_mp_reduce.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_is_2k$(O): 3rdparty/libtommath/bn_mp_reduce_is_2k.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_is_2k_l$(O): 3rdparty/libtommath/bn_mp_reduce_is_2k_l.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_reduce_setup$(O): 3rdparty/libtommath/bn_mp_reduce_setup.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_rshd$(O): 3rdparty/libtommath/bn_mp_rshd.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_set$(O): 3rdparty/libtommath/bn_mp_set.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_set_int$(O): 3rdparty/libtommath/bn_mp_set_int.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_set_long$(O): 3rdparty/libtommath/bn_mp_set_long.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_shrink$(O): 3rdparty/libtommath/bn_mp_shrink.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_signed_bin_size$(O): 3rdparty/libtommath/bn_mp_signed_bin_size.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_sqr$(O): 3rdparty/libtommath/bn_mp_sqr.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_sqrmod$(O): 3rdparty/libtommath/bn_mp_sqrmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_sqrt$(O): 3rdparty/libtommath/bn_mp_sqrt.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_sub$(O): 3rdparty/libtommath/bn_mp_sub.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_sub_d$(O): 3rdparty/libtommath/bn_mp_sub_d.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_submod$(O): 3rdparty/libtommath/bn_mp_submod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_toom_mul$(O): 3rdparty/libtommath/bn_mp_toom_mul.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_toom_sqr$(O): 3rdparty/libtommath/bn_mp_toom_sqr.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_toradix$(O): 3rdparty/libtommath/bn_mp_toradix.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_toradix_n$(O): 3rdparty/libtommath/bn_mp_toradix_n.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_to_signed_bin$(O): 3rdparty/libtommath/bn_mp_to_signed_bin.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_to_signed_bin_n$(O): 3rdparty/libtommath/bn_mp_to_signed_bin_n.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_to_unsigned_bin$(O): 3rdparty/libtommath/bn_mp_to_unsigned_bin.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_to_unsigned_bin_n$(O): 3rdparty/libtommath/bn_mp_to_unsigned_bin_n.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_unsigned_bin_size$(O): 3rdparty/libtommath/bn_mp_unsigned_bin_size.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_xor$(O): 3rdparty/libtommath/bn_mp_xor.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_mp_zero$(O): 3rdparty/libtommath/bn_mp_zero.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_prime_tab$(O): 3rdparty/libtommath/bn_prime_tab.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_reverse$(O): 3rdparty/libtommath/bn_reverse.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_s_mp_add$(O): 3rdparty/libtommath/bn_s_mp_add.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_s_mp_exptmod$(O): 3rdparty/libtommath/bn_s_mp_exptmod.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_s_mp_mul_digs$(O): 3rdparty/libtommath/bn_s_mp_mul_digs.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_s_mp_mul_high_digs$(O): 3rdparty/libtommath/bn_s_mp_mul_high_digs.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_s_mp_sqr$(O): 3rdparty/libtommath/bn_s_mp_sqr.c $(LIBTOMMATH_H)

3rdparty/libtommath/bn_s_mp_sub$(O): 3rdparty/libtommath/bn_s_mp_sub.c $(LIBTOMMATH_H)


