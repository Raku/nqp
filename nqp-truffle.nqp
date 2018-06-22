my $T_OBJ  := 0;
my $T_INT  := 1;
my $T_NUM  := 2;
my $T_STR  := 3;

class QAST::OperationsTruffle {
    my %ops;
    my %hll_ops;

    my %inlinable;

    sub add_op($op, $cb, :$inlinable = 1, :$hll) {
        if $hll {
            %hll_ops{$hll} := nqp::hash() unless nqp::existskey(%hll_ops, $hll);
            %hll_ops{$hll}{$op} := $cb;
        } else {
            %ops{$op} := $cb;
        }
        %inlinable{$op} := $inlinable;
    }

    sub add_simple_op($op, $return_type, @argument_types, :$side_effects, :$inlinable = 1, :$decont, :$hll) {
        my @decont;
        if nqp::islist($decont) {
            for $decont -> $index {
                @decont[$index] := 1;
            }
        }
        elsif nqp::defined($decont) {
            @decont[$decont] := 1;
        }


        add_op($op, sub ($comp, $node, :$want) {
            if $node.list > @argument_types {
                nqp::die("{+$node.list} arguments for {$node.op}, the maximum is {+@argument_types}");
            }

            my @ret := [$op];

            my int $i := 0;
            for $node.list -> $arg {
                my $tree := $comp.as_truffle($arg, :want(@argument_types[$i]));
                nqp::push(@ret, @decont[$i] ?? ['decont', $tree] !! $tree);
                $i := $i + 1;
            }

            @ret;
        }, :$inlinable, :$hll);
    }

    add_simple_op('say', $T_STR, [$T_STR], :side_effects);
    add_simple_op('print', $T_STR, [$T_STR], :side_effects);

    # explicit takeclosure is used by the JVM backend we no-op it.
    add_op('takeclosure', sub ($comp, $node, :$want) {
        $comp.as_truffle($node[0], :want($want));
    });

    # TODO :$want
    add_op('call', :!inlinable, sub ($comp, $node, :$want) {
        my $ret := ['call'];
        for $node.list -> $child {
            nqp::push($ret, $comp.as_truffle($child));
        }
        $ret;
    });

    method compile_op($comp, $op, $hll, :$want) {
        my str $name := $op.op;
        if nqp::existskey(%hll_ops, $hll) && nqp::existskey(%hll_ops{$hll}, $name) {
            %hll_ops{$hll}{$name}($comp, $op, :$want);
        }
        elsif nqp::existskey(%ops, $name) {
            %ops{$name}($comp, $op, :$want);
        }
        else {
            $comp.NYI("unimplemented QAST::Op {$op.op}");
        }
    }
}

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
        my $compiled := self.as_truffle($cu, :want($T_OBJ));

        say(self.sexpr($compiled));
        nqp::runtruffle($compiled);
    }

    proto method as_truffle($node, :$want) {
        {*}
    }

    multi method as_truffle(QAST::CompUnit $node, :$want) {
        my $*HLL := '';
        if $node.hll {
            $*HLL := $node.hll;
        }

       self.as_truffle($node[0][3]);
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
        QAST::OperationsTruffle.compile_op(self, $node, $*HLL, :$want);
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
