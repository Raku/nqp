class QAST::Want is QAST::Node {
    method has_compile_time_value() {
        nqp::istype(self[0], QAST::Node)
            ?? self[0].has_compile_time_value()
            !! 0
    }
    
    method compile_time_value() {
        self[0].compile_time_value()
    }

    method count_inline_placeholder_usages(@usages) {
        my int $i := 0;
        my int $elems := +@(self);
        while $i < $elems {
            self[$i].count_inline_placeholder_usages(@usages);
            $i := $i + 2;
        }
    }

    method substitute_inline_placeholders(@fillers) {
        my $result := self.shallow_clone();
        my int $i := 0;
        my int $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].substitute_inline_placeholders(@fillers);
            $i := $i + 2;
        }
        $result
    }

    method evaluate_unquotes(@unquotes) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes);
            $i := $i + 2;
        }
        $result
    }
}
