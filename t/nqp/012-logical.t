#! nqp

# check '||', '&&', and '//'

plan(15);

my $or_no_branch := 1;
$or_no_branch || ( $or_no_branch := 0 );
ok($or_no_branch, "logical || shortcuts, branch not taken");

my $or_branch := 0;
0 || ( $or_branch := 1 );
ok($or_branch, "logical || shortcuts, branch taken");

my $and_no_branch := 0;
$and_no_branch && ( $and_no_branch := 1 );
ok(!$and_no_branch, "logical && shortcuts, branch not taken");

my $and_branch := 0;
1 && ( $and_branch := 1 );
ok($and_branch, "logicl && shortcuts, branch taken");

my $err_no_branch := 1;
$err_no_branch // ( $err_no_branch := -1 );
ok($err_no_branch == 1, "logical // shortcuts on true, branch not taken");

$err_no_branch := 0;
$err_no_branch // ( $err_no_branch := -1 );
ok($err_no_branch == 0, "logical // shortcuts on defined false, branch not taken");

my $err_branch;
$err_branch // ( $err_branch := 1 );
ok($err_branch == 1, "logical // takes branch on undef");

is(nqp::xor("100", ""), "100", "nqp::xor returns the true argument - first");
is(nqp::xor("", "100"), "100", "nqp::xor returns the true argument - second");
is(nqp::xor(0, 0.0, nqp::list(), "", "100", "", nqp::null()), "100", "nqp::xor returns the true argument - one of many");
ok(nqp::isnull(nqp::xor("100", "200")), "nqp::xor with 2 true arguments returns null");
ok(nqp::isnull(nqp::xor("100", "200", "300")), "nqp::xor with 3 true arguments returns null");

is(nqp::xor("100", "", "200", :false("300"), "300"), "300", ":false is used when there are multiple true ones");

ok(nqp::islist(nqp::xor(0, 0.0, :false("150"), nqp::list())), "when all the arguments to xor are false return the last one");

is(nqp::xor('', 'hi', :false("150")), 'hi', 'xor returns the only true argument even if there is a :false pased');
