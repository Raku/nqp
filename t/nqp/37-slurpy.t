#!./parrot nqp.pbc

# slurpy args

plan(6);

sub slurpy_pos(*@pos) {
    ok(@pos[0] == 1);
    ok(@pos[1] == 2);
    ok(@pos[2] == 3);
}

slurpy_pos(1, 2, 3);

sub slurpy_named(*%named) {
    ok(%named<pivo> eq "ok pivo");
    ok(%named<slanina> eq "ok slanina");
}

slurpy_named(:pivo("ok pivo"), :slanina("ok slanina"));

sub named_and_slurpy(:$x, *@foo) {
    ok($x eq "ok x");
};

named_and_slurpy(1, :x("ok x"));
