class NQP::RegexOptimizer {
    has @!outer;

    method optimize($node, $outer, *%adverbs) {
        my @!outer := [$outer];
        self.visit_children($node);
    }

    method all_subtypes($node, $type) {
        my $res := 0;
        for $node {
            if $node.rxtype eq $type {
                $res++
            } else {
                return -1;
            }
        }
        return $res;
    }

    method visit_concat($node) {
        # a single-child concat can become the child itself
        self.visit_children($node);
        if +@($node) == 1 {
            return $node[0];
        } else {
            $node;
        }
    }

    method stub_out_block($block) {
        # remove both the stmts and the contents.
        $block.shift();
        $block.shift();
        # put in an explosive die statement.
        $block[0] := QAST::Op.new( :op('die_s'),
            QAST::SVal.new( :value('INTERNAL ERROR: Execution of block eliminated by optimizer') ) );
        # rescue the block into the first stmts of our current outer block
        @!outer[+@!outer - 1][0].push($block);
    }

    method simplify_assertion($qast) {
        if $qast.rxtype eq 'subrule' && $qast.subtype eq 'zerowidth'
                && nqp::istype($qast[0], QAST::Node) && nqp::istype($qast[0][0], QAST::SVal)
                && $qast[0][0].value eq 'before' {
            if nqp::istype($qast[0], QAST::Node) && nqp::istype($qast[0][1], QAST::Block)
                    && nqp::istype((my $regex := $qast[0][1][2]), QAST::Regex)
                    && $regex.rxtype eq 'concat' && $regex[0].rxtype eq 'scan' && $regex[2].rxtype eq 'pass' {
                my $simple := $regex[1];
                # a concat with a single child becomes the child itself
                if nqp::istype($simple, QAST::Regex) && $simple.rxtype eq 'concat' && +@($simple) == 1 {
                    $simple := $simple[0];
                    # even though it's not worth terribly much, we can do this optimization
                    # in any case, even if we're not going to do the optimization below:
                    $qast[0][1][2][1] := $simple;
                }
                my $result := 0;
                if $simple.rxtype eq 'literal' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<literal>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)),
                        $simple[0]);
                } elsif $simple.rxtype eq 'enumcharlist' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<enumcharlist>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)),
                        $simple[0]);
                } elsif $simple.rxtype eq 'charrange' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<charrange>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)),
                        $simple[0],
                        $simple[1],
                        $simple[2]);
                } elsif $simple.rxtype eq 'cclass' && $simple.rxtype ne 'ignorecase' {
                    $result := QAST::Regex.new(:rxtype<cclass>, :subtype<zerowidth>, :node($simple.node),
                        :negate(nqp::bitxor_i($qast.negate, $simple.negate)), :name($simple.name));
                }
                if $result {
                    self.stub_out_block($qast[0][1]);
                    $qast := $result;
                }
            }
        }
        $qast;
    }

    method visit_children($node) {
        my int $i := 0;
        unless nqp::isstr($node) {
            while $i < +@($node) {
                my $visit := $node[$i];
                my $type;
                if nqp::istype($visit, QAST::Regex) {
                    $type := $visit.rxtype;
                } elsif nqp::istype($visit, QAST::Block) {
                    $type := "block";
                    @!outer.push($visit);
                }
                if $type eq 'scan' {
                } elsif $type eq 'literal' {
                } elsif $type eq 'quant' {
                    self.visit_children($visit);
                } elsif $type eq 'subrule' {
                    $node[$i] := self.simplify_assertion($visit);
                } elsif $type eq 'anchor' {
                } elsif $type eq 'subcapture' {
                } elsif $type eq 'enumcharlist' {
                } elsif $type eq 'cclass' {
                } elsif $type eq 'charrange' {
                } elsif $type eq 'concat' {
                    $node[$i] := self.visit_concat($visit);
                } elsif $type eq 'pass' || $type eq 'fail' {
                } else {
                    # alt, altseq, conjseq, conj, quant
                    self.visit_children($visit);
                }
                $i := $i + 1;
                if $type eq 'block' {
                    @!outer.pop();
                }
            }
        }
    }
}

class NQP::Optimizer {
    has @!block_stack;
    has %!adverbs;

    method optimize($ast, *%adverbs) {
        %!adverbs := %adverbs;
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
        self.visit_children($op);

        my $typeinfo := nqp::chars($op.op) >= 2
                        ?? nqp::substr($op.op, nqp::chars($op.op) - 2, 2)
                        !! "";
        my $asm := nqp::substr($op.op, 0, 3);

        try {
            if $typeinfo eq '_n' && ($asm eq 'add' || $asm eq 'sub' || $asm eq 'mul') {
                my $newopn := $asm ~ "_i";
                if returns_int($op[0]) && returns_int($op[1]) {
                    my $newopn := $asm ~ "_i";
                    $op.op($newopn);
                    $op.returns(self.find_sym("int"));
                } else {
                    $op.returns(self.find_sym("num"));
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
                    } elsif nqp::istype($visit, QAST::Regex) {
                        NQP::RegexOptimizer.new().optimize($visit, @!block_stack[+@!block_stack - 1], |%!adverbs);
                    } else {
                        self.visit_children($visit);
                    }
                }
                $i := $i + 1;
            }
        }
    }
}
