# This indicates a place in a QAST tree that has been stashed for later
# inlining where one of the arguments to the inlined routine was used.
class QAST::InlinePlaceholder is QAST::Node {
    has int $!position;
    
    method position(*@value) {
        @value ?? ($!position := @value[0]) !! $!position
    }

    method count_inline_placeholder_usages(@usages) {
        @usages[$!position]++;
    }

    method substitute_inline_placeholders(@fillers) {
        if $!position < +@fillers {
            my $result := @fillers[$!position];
            if self.named || self.flat {
                $result := $result.shallow_clone();
                if self.named -> $name {
                    $result.named($name);
                }
                if self.flat {
                    $result.flat(1);
                }
            }
            $result
        }
        else {
            nqp::die("Inline placeholder index out of range")
        }
    }
}
