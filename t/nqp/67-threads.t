plan(1);

say("# Task 1");
my $x := "ok 1";

my $a := sub foo() {
    say($x);
    say("# in Task");
}

my $b := pir::new__PSP('Task', $a);
pir::schedule__0P($b);
pir::wait__0P($b);
