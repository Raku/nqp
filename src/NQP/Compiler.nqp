use QRegex;

class NQP::Compiler is HLL::Compiler {
    method optimize($past, *%adverbs) {
        %adverbs<optimize> eq 'off'
            ?? $past
            !! NQP::Optimizer.new.optimize($past, |%adverbs)
    }
}

# Create and configure compiler object.
my $nqpcomp := NQP::Compiler.new();
$nqpcomp.language('nqp');
$nqpcomp.parsegrammar(NQP::Grammar);
$nqpcomp.parseactions(NQP::Actions);
hll-config($nqpcomp.config);

$nqpcomp.addstage('optimize', :after<ast>);

# Add extra command line options.
my @clo := $nqpcomp.commandline_options();
@clo.push('parsetrace');
@clo.push('setting=s');
@clo.push('setting-path=s');
@clo.push('module-path=s');
@clo.push('no-regex-lib');
@clo.push('stable-sc');
@clo.push('optimize=s');
#?if parrot
@clo.push('vmlibs=s');
@clo.push('dynext=s');
#?endif
#?if jvm
@clo.push('javaclass=s');
@clo.push('bootstrap');
$nqpcomp.addstage('classname', :after<start>);
#?endif
#?if moar
@clo.push('bootstrap');
#?endif

#?if parrot
# XXX FIX ME
sub MAIN(@ARGS) {
#?endif
#?if !parrot
sub MAIN(*@ARGS) {
#?endif
    # Enter the compiler.
    $nqpcomp.command_line(@ARGS, :encoding('utf8'), :transcode('ascii iso-8859-1'));

    # Uncomment below to dump cursor usage logging (also need to uncomment two lines
    # in src/QRegex/Cursor.nqp, in !cursor_start_cur and !cursor_start_all).
    #ParseShared.log_dump();

    # Close event logging
    $nqpcomp.nqpevent();
}
