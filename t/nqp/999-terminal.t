plan(1);

my $terminal;
lives-ok({ $terminal := NQPTerminal.new; }, "Can create an NQPTerminal object");

$terminal.save-screen();
$terminal.bold(); $terminal.print-at(5, 15, "humong");
nqp::sleep(5);
$terminal.restore-screen();
