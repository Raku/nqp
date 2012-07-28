# PIRT is a very lightweight PIR tree representation. It does very little
# really, besides being much more pleasant than working with strings directly
# in QAST::Compiler. Since the mapping is pretty close, the nodes themselves
# know how to become PIR.

class PIRT::Node {
    my %op_compilers := nqp::hash(
        'call', sub (@args) {
            nqp::die("NYI");
        },
        'callmethod', sub (@args) {
            nqp::die("NYI");
        },
        'return', sub (@args) {
            "    .return (" ~ nqp::join(", ", @args) ~ ")"
        },
        'yield', sub (@args) {
            nqp::die("NYI");
        },
        'tailcall', sub (@args) {
            nqp::die("NYI");
        },
        'inline', sub (@args) {
            nqp::die("NYI");
        });
    
    method children_pir(@children) {
        my @parts;
        for @children {
            if nqp::islist($_) {
                my $op_name := $_[0];
                my @op_args;
                my $i := 1;
                my $c := nqp::elems($_);
                my $arg;
                while $i < $c {
                    $arg := $_[$i];
                    if $arg ~~ PIRT::Node {
                        nqp::push(@op_args, $arg.result);
                    }
                    else {
                        nqp::push(@op_args, $arg);
                    }
                    $i := $i + 1;
                }
                if nqp::existskey(%op_compilers, $op_name) {
                    nqp::push(@parts, %op_compilers{$op_name}(@op_args));
                }
                else {
                    nqp::push(@parts, '    ' ~ $op_name ~ ' ' ~ nqp::join(", ", @op_args));
                }
            }
            elsif $_ ~~ PIRT::Sub {
                nqp::push(@*PIRT_BLOCKS, $_);
            }
            elsif $_ ~~ PIRT::Node {
                my $pir := $_.pir;
                nqp::push(@parts, $pir) unless $pir eq '';
            }
            else {
                nqp::die("Unexpected object in PIRT tree");
            }
        }
        nqp::join("\n", @parts)
    }
}

class PIRT::Sub is PIRT::Node {
    has @!children;
    has @!nested_blocks;
    has str $!cached_pir;
    
    method new() {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, PIRT::Sub, '@!children', nqp::list());
        $obj
    }
    
    method push($node) {
        nqp::push(@!children, $node);
    }
    
    method push_pirop(*@opbits) {
        nqp::push(@!children, @opbits)
    }
    
    method result() {
        nqp::die("Cannot use a PIRT::Sub in a context expecting a result");
    }
    
    method close_sub() {
        my @parts;
        
        # Sub prelude.
        nqp::push(@parts, ".sub ''");
        
        # Compile sub contents, collecting any nested blocks.
        my @*PIRT_BLOCKS;
        nqp::push(@parts, self.children_pir(@!children));
        
        # Sub postlude.
        nqp::push(@parts, ".end");
        
        # Store the compiled PIR and collected inner blocks. Also, null out
        # the children array, to free up memory.
        $!cached_pir := nqp::join("\n", @parts);
        @!nested_blocks := @*PIRT_BLOCKS;
    }

    method pir() {
        # If we don't already have the sub body, then close the sub now.
        unless $!cached_pir {
            self.close_sub();
        }
        
        # Our PIR is ourselve plus the PIR of any nested blocks.
        my @parts := [$!cached_pir];
        for @!nested_blocks {
            nqp::push(@parts, $_.pir());
        }
        nqp::join("\n", @parts)
    }
}

class PIRT::Ops is PIRT::Node {
    has @!children;
    has str $!result;
    
    method new(:$result = '') {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, PIRT::Ops, '@!children', nqp::list());
        nqp::bindattr_s($obj, PIRT::Ops, '$!result',
            $result ~~ PIRT::Node ?? $result.result !! $result);
        $obj
    }
    
    method push($node) {
        nqp::push(@!children, $node)
    }
    
    method push_pirop(*@opbits) {
        nqp::push(@!children, @opbits)
    }
    
    method result(*@value) {
        if @value {
            $!result := @value[0] ~~ PIRT::Node ?? @value[0].result !! @value[0];
        }
        else {
            $!result
        }
    }
    
    method pir() {
        self.children_pir(@!children)
    }
}

class PIRT::Label is PIRT::Node {
    has str $!name;
    
    method new(:$name!) {
        my $obj := nqp::create(self);
        nqp::bindattr_s($obj, PIRT::Label, '$!name', $name);
        $obj
    }
    
    method name(*@value) {
        @value ?? ($!name := @value[0]) !! $!name
    }
    
    method result() {
        $!name
    }
    
    method pir() {
        '  ' ~ $!name ~ ':'
    }
}
