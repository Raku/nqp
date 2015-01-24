plan(1);
my $foo := 0;
1 if $foo++;
ok($foo == 1, "the if condition is evaluated once");
