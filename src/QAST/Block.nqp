class QAST::Block is QAST::Node does QAST::Children {
    has str $!name;
    has str $!blocktype;
    has int $!custom_args;
    has int $!has_exit_handler;
    has int $!is_thunk;
    has int $!no_inline;
    has str $!cuid;
    has int $!arity;
    has $!code_object;
    has %!symbol;
    has %!local_debug_map;

    method new(str :$name, str :$blocktype, *@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr($node, QAST::Block, '@!children', @children);
        nqp::bindattr_s($node, QAST::Block, '$!name', $name);
        nqp::bindattr_s($node, QAST::Block, '$!blocktype', $blocktype);
        $node.set(%options) if nqp::isconcrete(%options) && nqp::elems(%options);
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
    method no_inline($value = NO_VALUE)         { $!no_inline := $value unless $value =:= NO_VALUE; $!no_inline }
    method arity($value = NO_VALUE)            { $!arity := $value unless $value =:= NO_VALUE; $!arity }

    method code_object($value = NO_VALUE) {
        $!code_object := $value unless $value =:= NO_VALUE;
        $!code_object
    }

    my int $cur_cuid := 0;
    my $cur_cuid_lock := NQPLock.new;
    method next-cuid() {
        nqp::lock($cur_cuid_lock);
        $cur_cuid := $cur_cuid + 1;
        nqp::unlock($cur_cuid_lock);
        ~$cur_cuid
    }
    method set-cuid($cuid) {
        $!cuid := $cuid;
    }
    method cuid() {
        if $!cuid {
            # If we already have an ID, return it.
            $!cuid
        }
        else {
            # Otherwise, generate one.
            self.set-cuid(self.next-cuid)
        }
    }

    my %NOSYMS := nqp::hash();
    method symbol(str $name, *%attrs) {
        my %symbol := %!symbol;
        %symbol := %!symbol := nqp::hash() if nqp::isnull(%symbol);
        if nqp::isconcrete(%attrs) && nqp::elems(%attrs) {
            my %syms := %symbol{$name};
            if nqp::ishash(%syms) && nqp::elems(%syms) {
                for %attrs {
                    %syms{$_.key} := $_.value;
                }
            }
            else {
                %symbol{$name} := %syms := %attrs;
            }
            %syms
        }
        else {
            nqp::ifnull(nqp::atkey(%symbol, $name), %NOSYMS)
        }
    }

    method symtable() {
        nqp::ifnull(%!symbol, %!symbol := nqp::hash)
    }

    method evaluate_unquotes(@unquotes) {
        my $result := self.shallow_clone();
        my $elems := nqp::elems(@(self));
        my int $i;
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes);
            ++$i;
        }
        $result
    }

    method add_local_debug_mapping(str $local_name, $debug_name) {
        %!local_debug_map := nqp::hash() unless nqp::ishash(%!local_debug_map);
        %!local_debug_map{$local_name} := $debug_name;
    }

    method local_debug_map() {
        %!local_debug_map || nqp::hash()
    }

    method dump_extra_node_info() {
        my @extra;
        @extra.push(":name($!name)") unless nqp::isnull_s($!name);
        @extra.push(":cuid($!cuid)") unless nqp::isnull_s($!cuid);
        @extra.push(":blocktype($!blocktype)") if nqp::chars(self.blocktype);
        nqp::join(' ', @extra);
    }
}
