use Truffle;
sub MAIN(*@ARGS, *%ARGS) {
    my $nqpcomp-orig := nqp::getcomp('nqp');
    my $nqpcomp-cc   := nqp::clone($nqpcomp-orig);

    $nqpcomp-cc.backend(TruffleBackend);
    $nqpcomp-cc.addstage('optimize', :after<ast>); # we need to re-add optimize after .backend removes it

    $nqpcomp-cc.language('nqp-cc');
    $nqpcomp-cc.command_line(@ARGS,
        :setting-path('gen/truffle/stage1'),
        :module-path('gen/truffle/stage1'),
        :encoding('utf8'), :transcode('ascii iso-8859-1'), :no-regex-lib(1));
}
