class QRegex::P6Regex::Compiler is HLL::Compiler {
}

my $p6regex := QRegex::P6Regex::Compiler.new();
$p6regex.language('QRegex::P6Regex');
$p6regex.parsegrammar(QRegex::P6Regex::Grammar);
$p6regex.parseactions(QRegex::P6Regex::Actions);

sub MAIN(@ARGS) {
    $p6regex.command_line(@ARGS, :encoding('utf8'), :transcode('ucs4'));
}
