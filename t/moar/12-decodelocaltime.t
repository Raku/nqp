plan(2);

my @a := nqp::decodelocaltime(nqp::time_i());
ok(9 == nqp::elems(@a));
my @b := nqp::decodelocaltime(0);
my $year := nqp::atpos_i(@b, 5);

ok($year == 1970 || $year == 1969); # timezone offset

#dies-ok({ nqp::decodelocaltime(nqp::bitshiftl_i(1,63)); },
#        "decode localtime overflow");
