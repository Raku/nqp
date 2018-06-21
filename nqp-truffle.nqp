class QAST::TruffleCompiler {

    method sexpr($thing) {
      if nqp::islist($thing) {
          my @ret;
          for $thing -> $element {
              nqp::push(@ret, self.sexpr($element));
          }
          '(' ~ nqp::join(' ', @ret) ~ ')';
      } elsif nqp::isstr($thing) {
          $thing;
      }
    }

    method run(QAST::CompUnit $cu) {
        my $compiled := self.as_truffle($cu, :want(0));

        nqp::runtruffle($compiled);
    }

    proto method as_truffle($node, :$want) {
        {*}
    }

    multi method as_truffle(QAST::CompUnit $cu, :$want) {
       self.as_truffle($cu[0][3]);
    }

    multi method as_truffle(QAST::Stmts $node, :$want) {
        my $ret := ['stmts'];
        for $node.list -> $child {
            nqp::push($ret, self.as_truffle($child));
        }
        $ret;
    }

    multi method as_truffle(QAST::Block $node, :$want) {
        my $ret := ['block'];
        for $node.list -> $child {
            nqp::push($ret, self.as_truffle($child));
        }
        $ret;
    }

    multi method as_truffle(QAST::SVal $node, :$want) {
        ['sval', $node.value];
    }

    multi method as_truffle(QAST::Op $node, :$want) {
        if $node.op eq 'say' {
            ['say', self.as_truffle($node[0])];
        } elsif $node.op eq 'print' {
            ['print', self.as_truffle($node[0])];
        } elsif $node.op eq 'call' {
            my $ret := ['call'];
            for $node.list -> $child {
                nqp::push($ret, self.as_truffle($child));
            }
            $ret;
        } elsif $node.op eq 'takeclosure' {
            return self.as_truffle($node[0], :$want);
        } else {
            nqp::die('NYI op: ' ~ $node.op);
        }
    }

    multi method as_truffle(QAST::Node $node, :$want) {
        nqp::die('NYI QAST node: ' ~ $node.HOW.name($node));
    }
}

class TruffleBackend {
    method stages() {
        'truffle'
    }

    method truffle($qast, *%adverbs) {
        sub (*@args) {
            QAST::TruffleCompiler.run($qast);
        }
    }

    method is_precomp_stage($stage) {
        0;
    }

    method is_textual_stage($stage) {
        0;
    }

    method apply_transcodings($s, $transcode) {
        $s
    }

    method compunit_mainline($cu) {
        nqp::isinvokable($cu) ?? $cu !! nqp::compunitmainline($cu);
    }

    method compunit_coderefs($cu) {
        nqp::compunitcodes($cu);
    }

    method is_compunit($cuish) {
        nqp::isinvokable($cuish) || nqp::iscompunit($cuish);
    }
}


sub MAIN(*@ARGS, *%ARGS) {
    my $nqpcomp-orig := nqp::getcomp('nqp');
    my $nqpcomp-cc   := nqp::clone($nqpcomp-orig);

    $nqpcomp-cc.backend(TruffleBackend);
    #$nqpcomp-cc.addstage('optimize', :after<ast>); # we need to re-add optimize after .backend removes it

    $nqpcomp-cc.language('nqp-cc');
    $nqpcomp-cc.command_line(@ARGS,:module-path('gen/js/stage2'),
        :encoding('utf8'), :transcode('ascii iso-8859-1'));
}
