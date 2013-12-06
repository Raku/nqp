class QAST::Stmts is QAST::Node {
    has $!resultchild;

    method resultchild($value = NO_VALUE) { $!resultchild := $value unless $value =:= NO_VALUE; $!resultchild }
    
    method substitute_inline_placeholders(@fillers) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].substitute_inline_placeholders(@fillers);
            $i := $i + 1;
        }
        $result
    }

    method evaluate_unquotes(@unquotes) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes);
            $i := $i + 1;
        }
        $result
    }

    method dump_extra_node_info() {
        nqp::defined($!resultchild) ?? ":resultchild($!resultchild))" !! ''
    }
}
