# slurpy args

plan(9);

sub slurpy_pos(*@pos) {
    ok(@pos[0] == 1);
    ok(@pos[1] == 2);
    ok(@pos[2] == 3);
}

slurpy_pos(1, 2, 3);

sub slurpy_named(:$uhorka, *%named) {
    ok(%named<pivo> eq "ok pivo");
    ok(%named<slanina> eq "ok slanina");
    ok(!nqp::existskey(%named, "uhorka"), "declared named argument shouldn't be part of slurpy");
    ok($uhorka eq "ok uhorka");
}

slurpy_named(:pivo("ok pivo"), :slanina("ok slanina"), :uhorka("ok uhorka") );

sub named_and_slurpy(:$x, *@foo) {
    ok($x eq "ok x");
};

sub empty_slurpy(*@pos, *%named) {
    ok(nqp::elems(@pos) == 0 && nqp::elems(%named) == 0, "empty slurpies");
}

empty_slurpy();

named_and_slurpy(1, :x("ok x"));
