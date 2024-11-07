plan(2);

my $terminal;
lives-ok({ $terminal := NQPTerminal.new; }, "Can create an NQPTerminal object");
is(nqp::elems(NQPTerminal::Color::available-colors()), 17, "The correct number of named colors are exposed");

## NOTE: This is only for visual verification purposes. Proper testing requires more careful handling...
$terminal.save-screen();
$terminal.bold(); $terminal.print-at(5, 15, "humongous"); $terminal.text-reset(); $terminal.print-at(5, 27, "not bold!");
$terminal.set-color(fg => "cyan", bg => "bright_cyan");
$terminal.print-at(7, 15, "<excellent!>");
nqp::sleep(3);
$terminal.restore-screen();
#my $stdout := nqp::getstdout();

