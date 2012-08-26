class QRegex::P5Regex::Compiler is HLL::Compiler {
}

my $p5regex := QRegex::P5Regex::Compiler.new();
$p5regex.language('QRegex::P5Regex');
$p5regex.parsegrammar(QRegex::P5Regex::Grammar);
$p5regex.parseactions(QRegex::P5Regex::Actions);

sub MAIN(@ARGS) {
    $p5regex.command_line(@ARGS, :encoding('utf8'), :transcode('ucs4'));
}
