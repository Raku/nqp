class QAST::Stmt is QAST::Node does QAST::Children {
    has $!resultchild;

    method new(*@children, *%options) {
        my $new := nqp::create(self);
        $new.set_children(@children);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        $new.set_options(%options) if %options;
        $new;
    }

    method resultchild($value = NO_VALUE) { $!resultchild := $value unless $value =:= NO_VALUE; $!resultchild }

    method count_inline_placeholder_usages(@usages) {
        my int $i := 0;
        my int $elems := +@(self);
        while $i < $elems {
            self[$i].count_inline_placeholder_usages(@usages);
            $i++;
        }
    }

    method substitute_inline_placeholders(@fillers) {
        my $result := self.shallow_clone();
        my int $i := 0;
        my int $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].substitute_inline_placeholders(@fillers);
            $i++;
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
