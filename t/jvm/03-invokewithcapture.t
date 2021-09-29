plan(2);

sub savecapture($arg, *%named) {
    my $capture := nqp::savecapture();
    $capture;
}

sub invokee($arg, :$named_arg_1) {
  ok($arg == 100,"nqp::invokewithcapture");
  ok($named_arg_1 == 200, "nqp::invokewithcapture takes a named argument");
}

my $saved := savecapture(100, :named_arg_1(200));
nqp::invokewithcapture(&invokee,$saved);
