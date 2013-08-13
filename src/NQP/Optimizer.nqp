class NQP::Optimizer {
    has @!block_stack;

    method optimize($ast, *%adverbs) {
        #@!block_stack := [$ast[0]];
        #self.visit_children($ast);
        $ast;
    }

    method visit_block($block) {
        @!block_stack.push($block);

        self.visit_children($block);

        @!block_stack.pop();

        $block;
    }

    method find_sym(@name) {
        if +@name == 1 {
            my $final_name := @name[0];
            my $i := +@!block_stack;
            while $i > 0 {
                $i := $i - 1;
                my %sym := @!block_stack[$i].symbol($final_name);
                if +%sym {
                    if nqp::existskey(%sym, 'value') {
                        say("found your $final_name");
                        return %sym<value>;
                    }
                    else {
                        nqp::die("No compile-time value for $final_name");
                    }
                }
            }
        }
    }

    method visit_op($op) {
        sub returns_int($node) {
            if nqp::objprimspec($node.returns) == 1 {
                return 1
            }
            if nqp::istype($node, QAST::Op) && $node.op ~~ /_i$/ {
                return 1
            } elsif nqp::istype($node, QAST::IVal) {
                return 1
            }
            return 0;
        }
        self.visit_children($op);

        if $op.op ~~ /^$<opt>=(add|sub|mul)_n$/ {
            my $newopn := nqp::substr($op.op, 0, 3) ~ "_i";
            say($op.op ~ " " ~ $newopn ~ " " ~ $op.dump);
            say("returns int? " ~ returns_int($op[0]) ~ " \ " ~ returns_int($op[1]));
            if returns_int($op[0]) && returns_int($op[1]) {
                $op.name($newopn);
                $op.returns(self.find_sym(["int"]));
                say("transformed!");
            } else {
                $op.returns(self.find_sym(["num"]));
            }
        } elsif $op.op ~~ /_i$/ {
            $op.returns(self.find_sym(["num"]));
        } elsif $op.op ~~ /_s$/ {
            $op.returns(self.find_sym(["str"]));
        } elsif $op.op eq 'handle' {
            return self.visit_handle($op);
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
