class QAST::Block is QAST::Node {
    has str $!name;
    has str $!blocktype;
    has int $!custom_args;
    has int $!has_exit_handler;
    has str $!cuid;
    has int $!arity;
    has %!symbol;
    
    method name(*@value) {
        $!name := @value[0] if @value;
        nqp::isnull_s($!name) ?? "" !! $!name
    }
    method blocktype(*@value) {
        $!blocktype := @value[0] if @value;
        nqp::isnull_s($!blocktype) ?? "" !! $!blocktype
    }
    method custom_args(*@value) { $!custom_args := @value[0] if @value; $!custom_args }
    method has_exit_handler(*@value) { $!has_exit_handler := @value[0] if @value; $!has_exit_handler }
    method arity(*@value)      { $!arity := @value[0] if @value; $!arity }
    
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
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes);
            $i := $i + 1;
        }
        $result
    }
}
