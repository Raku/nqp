#! nqp

plan(3);

my @a := nqp::decodelocaltime(nqp::time_i());
ok(9 == nqp::elems(@a));
my @b := nqp::decodelocaltime(0);
ok(1970 == nqp::atpos_i(@b, 5));

dies-ok({ nqp::decodelocaltime(nqp::bitshiftl_i(1,63)); },
        "decode localtime overflow");
