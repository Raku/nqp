# slurpy args

plan(9);

sub slurpy_pos(*@pos) {
    ok(@pos[0] == 1);
    ok(@pos[1] == 2);
    ok(@pos[2] == 3);
}

slurpy_pos(1, 2, 3);

sub slurpy_named(:$uhorka, *%named) {
    is(%named<pivo>, "ok pivo");
    is(%named<slanina>, "ok slanina");
    ok(!nqp::existskey(%named, "uhorka"), "declared named argument shouldn't be part of slurpy");
    is($uhorka, "ok uhorka");
}

slurpy_named(:pivo("ok pivo"), :slanina("ok slanina"), :uhorka("ok uhorka") );

sub named_and_slurpy(:$x, *@foo) {
    is($x, "ok x");
};

sub empty_slurpy(*@pos, *%named) {
    ok(nqp::elems(@pos) == 0 && nqp::elems(%named) == 0, "empty slurpies");
}

empty_slurpy();

named_and_slurpy(1, :x("ok x"));
