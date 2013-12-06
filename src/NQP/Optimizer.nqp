class NQP::Optimizer {
    has @!block_stack;

    method optimize($ast, *%adverbs) {
        @!block_stack := [$ast[0]];
        self.visit_children($ast);
        $ast;
    }

    method visit_block($block) {
        @!block_stack.push($block);
        self.visit_children($block);
        @!block_stack.pop();
        $block;
    }

    method visit_op($op) {
        # Handle op needs special handling.
        my str $opname := $op.op;
        if $opname eq 'handle' {
            return self.visit_handle($op);
        }

        # Visit children first.
        self.visit_children($op);

        # Consider numeric ops we can simplify.
        my $typeinfo := nqp::chars($opname) > 2
            ?? nqp::substr($opname, nqp::chars($opname) - 2, 2)
            !! "";
        my $asm := nqp::substr($opname, 0, 3);
        if $typeinfo eq '_n' && ($asm eq 'add' || $asm eq 'sub' || $asm eq 'mul') {
            self.num_to_int($op, $asm);
        }
        
        # Calls to fixed names that are compile-time known can be simplified.
        elsif $opname eq 'call' && $op.name {
            my %sym := self.find_lex($op.name);
            if %sym {
                if %sym<declared> {
                    # It's known at compile time, and so fixed, so we can do a more
                    # optimal call.
                    $op.op('callstatic');
                }
            }
            else {
                # XXX Can detect missing subs at CHECK-time by doing some kind of
                # error reporting in this branch.
            }
        }
        
        # Enrich various ops with int/num/str annotations.
        elsif $typeinfo eq '_i' {
            $op.returns(int);
        } elsif $typeinfo eq '_s' {
            $op.returns(str);
        } elsif $opname eq 'numify' {
            # if we can establish that the argument is a list, we are good
            # to claim it returns an int.
            if nqp::istype($op[0], QAST::Var) {
                my $sigil := nqp::substr($op[0].name, 0, 1);
                if $sigil eq '@' || $sigil eq '%' {
                    $op.returns(int)
                }
            }
        }

        $op;
    }

    method num_to_int($op, $asm) {
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
                } elsif $node.op eq 'chars' || $node.op eq 'ord' || $node.op eq 'elems' {
                    return 1
                }
            } elsif nqp::istype($node, QAST::IVal) {
                return 1
            } elsif nqp::istype($node, QAST::Var) && $node.scope eq 'lexical' {
                my %sym := self.find_lex($node.name);
                if nqp::existskey(%sym, 'type') && nqp::objprimspec(%sym<type>) == 1 {
                    return 1
                }
            }
            return 0;
        }

        if returns_int($op[0]) && returns_int($op[1]) {
            my $newopn := $asm ~ "_i";
            $op.op($newopn);
            $op.returns(int);
        } else {
            $op.returns(num);
        }
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
}
