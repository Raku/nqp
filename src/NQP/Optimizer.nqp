class NQP::Optimizer {
    has @!block_stack;

    method optimize($ast, *%adverbs) {
        @!block_stack := [$ast[0]];
        self.visit_children($ast[0]);
        $ast;
    }

    method visit_block($block) {
        @!block_stack.push($block);

        self.visit_children($block);

        @!block_stack.pop();

        $block;
    }

    method find_lex($name) {
        my int $i := +@!block_stack;
        while $i > 0 {
            $i := $i - 1;
            my %sym := @!block_stack[$i].symbol($name);
            if +%sym {
                return %sym;
            }
        }
        NQPMu;
    }

    method find_sym($name) {
        my %sym := self.find_lex($name);
        if !(%sym =:= NQPMu) && nqp::existskey(%sym, 'value') {
            return %sym<value>;
        }
        else {
            nqp::die("No compile-time value for $name");
        }
    }

    method visit_op($op) {
        sub returns_int($node) {
            if nqp::objprimspec($node.returns) == 1 {
                return 1
            }
            if nqp::istype($node, QAST::Op) {
                my $typeinfo := nqp::chars($node.op) >= 2
                                ?? nqp::substr($node.op, nqp::chars($node.op) - 2, 2)
                                !! "";
                if $typeinfo eq "_i" {
                    return 1
                } elsif $node.op eq 'chars' || $node.op eq 'ord' {
                    return 1
                }
            } elsif nqp::istype($node, QAST::IVal) {
                return 1
            } elsif nqp::istype($node, QAST::Var) && $node.scope eq 'lexical' {
                my %sym := self.find_lex($node.name);
                if nqp::existskey(%sym, 'type') && nqp::objprimspec(%sym<type>) == 1 {
                    say("var " ~ $node.name ~ " is native int.");
                    return 1
                }
            }
            return 0;
        }
        self.visit_children($op);

        my $typeinfo := nqp::chars($op.op) >= 2
                        ?? nqp::substr($op.op, nqp::chars($op.op) - 2, 2)
                        !! "";
        my $asm := nqp::substr($op.op, 0, 3);

        try {
            if $typeinfo eq '_n' && ($asm eq 'add' || $asm eq 'sub' || $asm eq 'mul') {
                my $newopn := $asm ~ "_i";
                if returns_int($op[0]) && returns_int($op[1]) {
                    my $newopn := nqp::substr($op.op, 0, 3) ~ "_i";
                    $op.name($newopn);
                    $op.returns(self.find_sym("int"));
                    say($op.op ~ " " ~ $newopn ~ " " ~ $op.dump);
                    say("transformed!");
                    say("");
                } else {
                    $op.returns(self.find_sym("num"));
                    say(returns_int($op[0]) ~ " / " ~ returns_int($op[1]));
                    say($op.op ~ " " ~ $newopn ~ " " ~ $op.dump);
                    say("not transformed!");
                    say("");
                }
            } elsif $typeinfo eq '_i' {
                $op.returns(self.find_sym("num"));
            } elsif $typeinfo eq '_s' {
                $op.returns(self.find_sym("str"));
            } elsif $op.op eq 'handle' {
                return self.visit_handle($op);
            } elsif $op.op eq 'numify' {
                # if we can establish that the argument is a list, we are good
                # to claim it returns an int.
                if nqp::istype($op[0], QAST::Var) {
                    my $sigil := nqp::substr($op[0].name, 0, 1);
                    if $sigil eq '@' || $sigil eq '%' {
                        $op.returns(self.find_sym("int"))
                    }
                }
            }
            CATCH {
                say("too bad, could not do the optimisation");
                say($op.dump);
            }
        }

        $op;
    }

    method visit_handle($handle) {
        self.visit_children($handle, :skip_selectors);
        $handle;
    }

    method visit_children($node, :$skip_selectors) {
        my int $i := 0;
        unless nqp::isstr($node) {
            while $i < +@($node) {
                unless $skip_selectors && $i % 2 {
                    my $visit := $node[$i];
                    if nqp::istype($visit, QAST::Op) {
                        $node[$i] := self.visit_op($visit)
                    } elsif nqp::istype($visit, QAST::Block) {
                        $node[$i] := self.visit_block($visit)
                    } elsif nqp::istype($visit, QAST::Want) {
                        self.visit_children($visit, :skip_selectors)
                    } else {
                        self.visit_children($visit);
                    }
                }
                $i := $i + 1;
            }
        }
    }
}
