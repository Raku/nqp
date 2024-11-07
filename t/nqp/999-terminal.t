plan(2);

my $terminal;
lives-ok({ $terminal := NQPTerminal.new; }, "Can create an NQPTerminal object");
is(nqp::elems(NQPTerminal::Color::available-colors()), 17, "The correct number of named colors are exposed");
is(NQPTerminal::Input::parse-input("\t"), "Tab", "Input parsing works (\\t -> Tab)");
is(NQPTerminal::Color::color-name("\e[38;5;0m"), "black", "Color name lookups work as expected (black)");
is(NQPTerminal::Color::color-name("\e[38;5;13m"), "bright_magenta", "Color name lookups work as expected (bright_magenta)");

## NOTE: This is only for visual verification purposes. Proper testing requires more careful handling...
$terminal.save-screen();
$terminal.bold(); $terminal.print-at(5, 15, "humongous"); $terminal.text-reset(); $terminal.print-at(5, 27, "not bold!");
$terminal.set-color(fg => "cyan", bg => "bright_cyan");
$terminal.print-at(7, 15, "<excellent!>");
$terminal.set-color(fg => "magenta", bg => "off");
$terminal.print-at(9, 36, "lovely");
nqp::sleep(3);
$terminal.restore-screen();
#my $stdout := nqp::getstdout();

