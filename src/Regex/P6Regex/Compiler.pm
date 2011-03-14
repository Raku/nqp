class Regex::P6Regex::Compiler is HLL::Compiler {
}

my $p6regex := Regex::P6Regex::Compiler.new();
$p6regex.language('Regex::P6Regex');
$p6regex.parsegrammar(Regex::P6Regex::Grammar);
$p6regex.parseactions(Regex::P6Regex::Actions);

sub MAIN(@ARGS?) {
    if @ARGS {
    $p6regex.command_line(@ARGS, :encoding('utf8'), :transcode('ascii iso-8859-1'));
    }
}
