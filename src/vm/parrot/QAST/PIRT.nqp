# PIRT is a very lightweight PIR tree representation. It does very little
# really, besides being much more pleasant than working with strings directly
# in QAST::Compiler. Since the mapping is pretty close, the nodes themselves
# know how to become PIR.

class PIRT::CallResult {
    has str $!result;
    
    method new(:$result!) {
        my $obj := nqp::create(self);
        nqp::bindattr_s($obj, PIRT::CallResult, '$!result',
            nqp::istype($result, PIRT::Node) ?? $result.result !! $result);
        $obj
    }
    
    method result() is parrot_vtable('get_string') {
        $!result
    }
}

class PIRT::Node {
    my %op_compilers := nqp::hash(
        'call', sub (@args) {
            "    " ~
                ($*HAS_RESULT ?? @args.shift() ~ " = " !! '') ~
                @args.shift() ~ "(" ~ nqp::join(", ", @args) ~ ")"
        },
        'callmethod', sub (@args) {
            my $pir := "    " ~ ($*HAS_RESULT ?? @args.shift() ~ " = " !! '');
            my $name := @args.shift;
            my $invocant := @args.shift;
            "$pir$invocant.$name(" ~ nqp::join(", ", @args) ~ ")"
        },
        'return', sub (@args) {
            "    .return (" ~ nqp::join(", ", @args) ~ ")"
        },
        'yield', sub (@args) {
            nqp::die("yield compilation NYI");
        },
        'tailcall', sub (@args) {
            nqp::die("tailcall compilation NYI");
        },
        'inline', sub (@args) {
            my $pir;
            if $*HAS_RESULT {
                my $result := @args.shift();
                $pir := subst(@args.shift(), /'%r'/, $result, :global);
            }
            else {
                $pir := @args.shift();
            }
            my $i := 0;
            for @args {
                $pir := subst($pir, /'%'$i/, $_, :global);
                $i := $i + 1;
            }
            $pir
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
                my $*HAS_RESULT := 0;
                my $result;
                while $i < $c {
                    $arg := $_[$i];
                    if nqp::istype($arg, PIRT::Node) {
                        nqp::push(@op_args, $arg.result);
                    }
                    elsif nqp::istype($arg, PIRT::CallResult) {
                        $result := $arg.result;
                        $*HAS_RESULT := 1;
                    }
                    else {
                        nqp::push(@op_args, $arg);
                    }
                    $i := $i + 1;
                }
                if $*HAS_RESULT {
                    nqp::unshift(@op_args, $result);
                }
                if nqp::existskey(%op_compilers, $op_name) {
                    nqp::push(@parts, %op_compilers{$op_name}(@op_args));
                }
                else {
                    nqp::push(@parts, '    ' ~ $op_name ~ ' ' ~ nqp::join(", ", @op_args));
                }
            }
            elsif nqp::istype($_, PIRT::Sub) {
                nqp::push(@*PIRT_BLOCKS, $_);
            }
            elsif nqp::istype($_, PIRT::Node) {
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
    has str $!subid;
    has str $!pirflags;
    has str $!name;
    has str $!hll;
    has @!namespace;
    has @!loadlibs;
    
    has @!nested_blocks;
    has str $!cached_pir;
    
    method escape($str) {
        my $esc := nqp::escape($str);
        nqp::index($esc, '\x', 0) >= 0 ??
            'utf8:"' ~ $esc ~ '"' !!
                (nqp::index($esc, '\u', 0) >= 0 ??
                 'unicode:"' ~ $esc ~ '"' !!
                 '"' ~ $esc ~ '"')
    }
    
    method new() {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, PIRT::Sub, '@!children', nqp::list());
        $obj
    }
    
    method push($node) {
        nqp::push(@!children, $node);
    }
    
    method push_pirop(*@opbits, :$result) {
        if $result {
            nqp::push(@opbits, PIRT::CallResult.new($result));
        }
        nqp::push(@!children, @opbits)
    }
    
    method subid(*@value) {
        @value ?? ($!subid := @value[0]) !! $!subid
    }
    
    method pirflags(*@value) {
        @value ?? ($!pirflags := @value[0]) !! $!pirflags
    }
    
    method name(*@value) {
        @value ?? ($!name := @value[0]) !! $!name
    }
    
    method loadlibs(@libs?) {
        @libs ?? (@!loadlibs := @libs) !! @!loadlibs
    }
    
    method hll(*@value) {
        @value ?? ($!hll := @value[0]) !! $!hll
    }
    
    method namespace(@namespace?) {
        @namespace ?? (@!namespace := @namespace) !! @!namespace
    }
    
    method result() is parrot_vtable('get_string') {
        ""
    }
    
    method close_sub() {
        my @parts;
        
        # Sub prelude.
        unless nqp::isnull(@!loadlibs) {
            for @!loadlibs {
                nqp::push(@parts, ".loadlib " ~ self.escape($_));
            }
        }
        if nqp::ifnull($!hll, '') {
            nqp::push(@parts, ".HLL " ~ self.escape($!hll));
        }
        if nqp::isnull(@!namespace) {
            nqp::push(@parts, ".namespace []");
        }
        else {
            my @ns;
            for @!namespace {
                nqp::push(@ns, self.escape($_));
            }
            nqp::push(@parts, '.namespace [' ~ nqp::join(';', @ns) ~ ']');
        }
        my $sub_decl := ".sub " ~ self.escape($!name || '');
        if nqp::ifnull($!subid, '') {
            $sub_decl := $sub_decl ~ " :subid(" ~ self.escape($!subid) ~ ")";
        }
        if nqp::ifnull($!pirflags, '') {
            $sub_decl := $sub_decl ~ ' ' ~ $!pirflags
        }
        nqp::push(@parts, $sub_decl);
        
        # File annotation, if there is one.
        my $file := nqp::getlexdyn('$?FILES');
        if nqp::ifnull($file, '') {
            nqp::push(@parts, ".annotate 'file', " ~ self.escape($file));
        }
        
        # Compile sub contents, collecting any nested blocks.
        my @*PIRT_BLOCKS;
        my $*SUB_LINE := -1;
        nqp::push(@parts, self.children_pir(@!children));
        
        # Sub postlude.
        nqp::push(@parts, ".end");
        
        # Store the compiled PIR and collected inner blocks. Also, null out
        # the children array, to free up memory.
        $!cached_pir := nqp::join("\n", @parts);
        @!nested_blocks := @*PIRT_BLOCKS;
        @!children := nqp::null();
    }

    method pir() {
        my @parts;
        self.collect_sub_pir_into(@parts);
        nqp::join("\n", @parts)
    }
    
    method collect_sub_pir_into(@result) {
        # If we don't already have the sub body, then close the sub now.
        unless $!cached_pir {
            self.close_sub();
        }
        
        # Add our PIR followed by that of any nested blocks.
        @result.push($!cached_pir);
        for @!nested_blocks {
            $_.collect_sub_pir_into(@result);
        }
    }
}

class PIRT::Ops is PIRT::Node {
    has @!children;
    has str $!result;
    has $!node;
    
    method new(:$result = '') {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, PIRT::Ops, '@!children', nqp::list());
        nqp::bindattr_s($obj, PIRT::Ops, '$!result',
            nqp::istype($result, PIRT::Node) ?? $result.result !! $result);
        $obj
    }
    
    method push($node) {
        nqp::push(@!children, $node)
    }

    method unshift($node) {
        nqp::unshift(@!children, $node)
    }

    method push_pirop(*@opbits, :$result) {
        if $result {
            nqp::push(@opbits, PIRT::CallResult.new($result));
        }
        nqp::push(@!children, @opbits)
    }
    
    method result(*@value) is parrot_vtable('get_string') {
        if @value {
            $!result := nqp::istype(@value[0], PIRT::Node) ?? @value[0].result !! @value[0];
        }
        else {
            $!result
        }
    }
    
    method node(*@value) {
        @value ?? ($!node := @value[0]) !! $!node
    }
    
    method pir() {
        my $ann := '';
        if $!node {
            my $line := HLL::Compiler.lineof($!node.orig(), $!node.from(), :cache(1));
            if $line != $*SUB_LINE {
                $ann := ".annotate 'line', $line\n";
                $*SUB_LINE := $line;
            }
        }
        $ann ~ self.children_pir(@!children);
    }
}

class PIRT::Label is PIRT::Node {
    has str $!name;
    
    my $serno := 10;
    sub unique($prefix) { $prefix ~ $serno++ }
    
    method new(:$name!) {
        my $obj := nqp::create(self);
        nqp::bindattr_s($obj, PIRT::Label, '$!name', unique($name));
        $obj
    }
    
    method name(*@value) {
        @value ?? ($!name := unique(@value[0])) !! $!name
    }
    
    method result() is parrot_vtable('get_string') {
        $!name
    }
    
    method pir() {
        '  ' ~ $!name ~ ':'
    }
}
