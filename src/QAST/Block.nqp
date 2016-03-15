class QAST::Block is QAST::Node does QAST::Children {
    has str $!name;
    has str $!blocktype;
    has int $!custom_args;
    has int $!has_exit_handler;
    has int $!is_thunk;
    has str $!cuid;
    has int $!arity;
    has $!code_object;
    has %!symbol;

    method new(str :$name, str :$blocktype, *@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr($node, QAST::Block, '@!children', @children);
        nqp::bindattr_s($node, QAST::Block, '$!name', $name);
        nqp::bindattr_s($node, QAST::Block, '$!blocktype', $blocktype);
        $node.set(%options) if %options;
        $node
    }
    
    method name($value = NO_VALUE) {
        $!name := $value unless $value =:= NO_VALUE;
        nqp::isnull_s($!name) ?? "" !! $!name
    }
    method blocktype($value = NO_VALUE) {
        $!blocktype := $value unless $value =:= NO_VALUE;
        nqp::isnull_s($!blocktype) ?? "" !! $!blocktype
    }
    method custom_args($value = NO_VALUE)      { $!custom_args := $value unless $value =:= NO_VALUE; $!custom_args }
    method has_exit_handler($value = NO_VALUE) { $!has_exit_handler := $value unless $value =:= NO_VALUE; $!has_exit_handler }
    method is_thunk($value = NO_VALUE)         { $!is_thunk := $value unless $value =:= NO_VALUE; $!is_thunk }
    method arity($value = NO_VALUE)            { $!arity := $value unless $value =:= NO_VALUE; $!arity }

    method code_object($value = NO_VALUE) {
        $!code_object := $value unless $value =:= NO_VALUE;
        $!code_object
    }

    my $cur_cuid := 0;
    method cuid($value = NO_VALUE) {
        if !($value =:= NO_VALUE) {
            # Set ID if we are provided one.
            $!cuid := $value;
        }
        elsif $!cuid {
            # If we already have an ID, return it.
            $!cuid
        }
        else {
            # Otherwise, generate one.
            $cur_cuid := $cur_cuid + 1;
            $!cuid := ~$cur_cuid;
        }
    }

    my %NOSYMS := nqp::hash();
    method symbol(str $name, *%attrs) {
        %!symbol := nqp::hash() if nqp::isnull(%!symbol);
        if %attrs {
            my %syms := %!symbol{$name};
            if nqp::ishash(%syms) && nqp::elems(%syms) {
                for %attrs {
                    %syms{$_.key} := $_.value;
                }
            }
            else {
                %!symbol{$name} := %syms := %attrs;
            }
            %syms
        }
        else {
            nqp::ifnull(nqp::atkey(%!symbol, $name), %NOSYMS)
        }
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

    method dump_extra_node_info() {
        nqp::chars(self.blocktype) ?? ":decl($!blocktype)" !! "";
    }
}
