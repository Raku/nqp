class QAST::Block is QAST::Node {
    has str $!name;
    has str $!blocktype;
    has int $!custom_args;
    has str $!cuid;
    has %!symbol;
    
    method name(*@value)        { $!name := @value[0] if @value; $!name || "" }
    method blocktype(*@value)   { $!blocktype := @value[0] if @value; $!blocktype }
    method custom_args(*@value) { $!custom_args := @value[0] if @value; $!custom_args }
    
    my $cur_cuid := 0;
    my $cuid_suffix := ~nqp::time_n();
    
    method cuid(*@value) {
        if @value {
            # Set ID if we are provided one.
            $!cuid := @value[0];
        }
        elsif $!cuid {
            # If we already have an ID, return it.
            $!cuid
        }
        else {
            # Otherwise, generate one.
            $cur_cuid := $cur_cuid + 1;
            $!cuid := 'cuid_' ~ $cur_cuid ~ '_' ~ $cuid_suffix;
        }
    }

    method symbol($name, *%attrs) {
        %!symbol := nqp::hash() if nqp::isnull(%!symbol);
        if %attrs {
            %!symbol{$name} := %!symbol{$name} // {};
            for %attrs {
                %!symbol{$name}{$_.key} := $_.value;
            }
        }
        %!symbol{$name}
    }
    
    method symtable() {
        %!symbol := nqp::hash() if nqp::isnull(%!symbol);
        %!symbol
    }

    method evaluate_unquotes(@unquotes) {
        my $result := pir::repr_clone__PP(self);
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes);
            $i := $i + 1;
        }
        $result
    }
}
