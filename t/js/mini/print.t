#! nqp

# check literals

nqp::say('1..9');

nqp::print("ok ");
nqp::print(1);
nqp::print("\n");

nqp::print('ok ');
nqp::say(2);

nqp::print("ok 3\n");
nqp::say('ok 4');
nqp::say("ok 5");
nqp::say(q<ok 6>);
nqp::say(q  <ok 7>);

nqp::say("\x6f\x6b 8");

nqp::print("ok ");
nqp::say(0_9);
