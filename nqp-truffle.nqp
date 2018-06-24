my $T_OBJ  := 0;
my $T_INT  := 1;
my $T_NUM  := 2;
my $T_STR  := 3;
my $T_VOID := -1; # Value of this type shouldn't exist
my $T_CALL_ARG := 5; # Something that will be passed to a sub/method call
my $T_RETVAL := 8; # Something that will be returned from a sub/method call


class TAST {
    has int $!type;
    has $!tree;

    method tree() { $!tree }
    method type() { $!type }

    method new($type, $tree) {
        my $obj := nqp::create(self);
        $obj.BUILD($type, $tree);
        $obj;
    }

    method BUILD($type, $tree) {
        $!type := $type;
        $!tree := $tree;
    }

    method run() {
        nqp::runtruffle($!tree);
    }

    sub sexpr(int $unquoted, $thing) {
      if nqp::islist($thing) {
          my @ret;
          my int $first := 1;
          for $thing -> $element {
              nqp::push(@ret, sexpr($first, $element));
              $first := 0;
          }
          '(' ~ nqp::join(' ', @ret) ~ ')';
      } elsif nqp::isstr($thing) {
          $unquoted ?? $thing !! '"' ~ nqp::escape($thing) ~ '"';
      }
    }

    method dump() {
        sexpr(0, $!tree) ~ "\n";
    }
}

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
                my $tast := $comp.as_truffle($arg, :want(@argument_types[$i]));
                nqp::push(@ret, @decont[$i] ?? ['decont', $tast.tree] !! $tast.tree);
                $i := $i + 1;
            }

            TAST.new($return_type, @ret);
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

        if $node.name {
            nqp::push($ret, ['get-lexical', $node.name]);
        }
        for $node.list -> $child {
            nqp::push($ret, $comp.as_truffle($child, :want($T_CALL_ARG)).tree);
        }
        TAST.new($T_VOID, $ret);
    });

    add_op('bind', sub ($comp, $node, :$want) {
        my @children := $node.list;
        if +@children != 2 {
            nqp::die("A 'bind' op must have exactly two children");
        }
        unless nqp::istype(@children[0], QAST::Var) {
            nqp::die("First child of a 'bind' op must be a QAST::Var");
        }

        my $*BINDVAL := @children[1];
        $comp.as_truffle(@children[0], :want($want));
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
    method compile(QAST::CompUnit $cu) {
        self.as_truffle($cu, :want($T_VOID));
    }

    my %want_char := nqp::hash($T_INT, 'I', $T_NUM, 'N', $T_STR, 'S', $T_VOID, 'v');
    sub want($node, $type) {
        my @possibles := nqp::clone($node.list);
        my $best := @possibles.shift;
        return $best unless %want_char{$type};
        my $char := %want_char{$type};
        for @possibles -> $sel, $ast {
            if nqp::index($sel, $char) >= 0 {
                $best := $ast;
            }
        }
        $best
    }

    method coerce(TAST $tast, $desired) {
        my int $got := $tast.type;
        if $got != $desired {
            if $desired == $T_VOID {
                return TAST.new($T_VOID, $tast.tree);
            }

            say("Can't coerce $got to $desired");
            $tast;
        } else {
            $tast;
        }
    }

    proto method as_truffle($node, :$want) {
        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                self.coerce(self.as_truffle(want($node, $want), :$want), $want)
            }
            else {
                self.coerce({*}, $want)
            }
        }
        else {
            nqp::die("Unknown want");
        }
    }

    multi method as_truffle(QAST::CompUnit $node, :$want) {
        my $*HLL := '';
        if $node.hll {
            $*HLL := $node.hll;
        }

        TAST.new($T_VOID, ['stmts', self.as_truffle($node[0][1], :want($T_VOID)).tree, self.as_truffle($node[0][3], :want($T_VOID)).tree]);
    }

    multi method as_truffle(QAST::Stmts $node, :$want) {
        my $ret := ['stmts'];
        for $node.list -> $child {
            nqp::push($ret, self.as_truffle($child, :want($T_VOID)).tree);
        }
        TAST.new($T_VOID, $ret);
    }

    multi method as_truffle(QAST::Block $node, :$want) {
        my $*BINDVAL := 0;
        my $ret := ['block'];
        for $node.list -> $child {
            nqp::push($ret, self.as_truffle($child, :want($T_VOID)).tree);
        }
        TAST.new($T_OBJ, $ret);
    }

    multi method as_truffle(QAST::SVal $node, :$want) {
        TAST.new($T_STR, ['sval', $node.value]);
    }

    multi method as_truffle(QAST::IVal $node, :$want) {
        TAST.new($T_INT, ['ival', $node.value]);
    }

    multi method as_truffle(QAST::NVal $node, :$want) {
        TAST.new($T_NUM, ['nval', $node.value]);
    }

    # TODO native types for variables
    multi method as_truffle(QAST::Var $node, :$want) {
        my $action;

        if $node.scope eq 'lexical' {
            if $*BINDVAL {
                my $value := self.as_truffle_clear_bindval($*BINDVAL, :want($T_OBJ));
                $action := ['bind-lexical', $node.name, $value.tree];
            } else {
                $action := ['get-lexical', $node.name];
            }

            if $node.decl eq '' {
                return TAST.new($T_OBJ, $action);
            }
            # TODO static should do deserialization
            elsif $node.decl eq 'var' || $node.decl eq 'static' {
                return TAST.new($T_OBJ, ['declare-lexical', $node.name, $action]);
            }
            else {
                nqp::die("Unimplemented var declaration type {$node.decl}");
            }
        }
        else {
            nqp::die("Unimplemented var scope {$node.scope}");
        }
    }

    multi method as_truffle(QAST::Op $node, :$want) {
        QAST::OperationsTruffle.compile_op(self, $node, $*HLL, :$want);
    }

    method as_truffle_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        self.as_truffle($node, :$want);
    }

    multi method as_truffle(QAST::Node $node, :$want) {
        self.NYI('QAST node: ' ~ $node.HOW.name($node));
    }

    method NYI($msg) {
        nqp::die("NYI: $msg");
    }
}

class TruffleBackend {
    method stages() {
        'tast truffle'
    }

    method tast($qast, *%adverbs) {
        QAST::TruffleCompiler.compile($qast);
    }

    method truffle($tast, *%adverbs) {
        sub (*@args) {
            $tast.run();
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
