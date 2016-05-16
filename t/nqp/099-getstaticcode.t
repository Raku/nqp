plan(5);
my sub foo() { 
};
my $orig := nqp::getstaticcode(&foo);
ok(nqp::eqaddr(nqp::getstaticcode(nqp::clone(&foo)), $orig), "clone shares static code");

my $fresh := nqp::freshcoderef(&foo);

ok(nqp::eqaddr(nqp::getstaticcode($fresh), $fresh), "a fresh code ref is it's own static code");
ok(!nqp::eqaddr(nqp::getstaticcode($fresh), $orig), "a fresh code ref has a different static code the orginal");
ok(nqp::eqaddr(nqp::getstaticcode(nqp::clone($fresh)), nqp::getstaticcode($fresh)), "a clone of a fresh code has the same static code");

my $fresh2 := nqp::freshcoderef(&foo);

ok(!nqp::eqaddr(nqp::getstaticcode($fresh2), nqp::getstaticcode($fresh)), "different fresh codes have different static codes");
