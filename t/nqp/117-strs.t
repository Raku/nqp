plan(4);

# Misc. str-related opcodes

# x 
is(nqp::x('hello',3), 'hellohellohello', "3 reps for x");
is(nqp::x('hello',1), 'hello', "1 rep of x");
is(nqp::x('hello',0), '', "0 reps of x");

try {
    CATCH { ok(1,"negative reps for x throws") }
    nqp::x('hello', -1);

    ok(0,"negative reps for x throws");
}
