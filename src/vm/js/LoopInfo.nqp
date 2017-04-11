# Holds information about the javascript loop we are emitting code inside of.
# The currently emitted loop is stored in $*LOOP.
my class LoopInfo {
    has $!outer;
    has $!redo;

    has $!label;
    has str $!js_label;
    has str $!redo_label;

    has %!handled;

    method redo() {
        unless nqp::defined($!redo) {
            $!redo := $*BLOCK.add_tmp();
        }
        $!redo;
    }
    method has_redo() {
        nqp::existskey(%!handled, 'redo') || nqp::defined($!redo);
    }

    method new($outer, :$label) {
        my $obj := nqp::create(self);
        $obj.BUILD($outer, $label);
        $obj
    }

    method BUILD($outer, $label) {
        $!outer := $outer;
        $!label := $label;
        %!handled := nqp::hash();
        $!js_label := QAST::Node.unique('loop_label');
    }

    method outer() { $!outer }

    method js_label() { $!js_label }

    method redo_label($value = NO_VALUE) {
        $!redo_label := $value unless $value =:= NO_VALUE;
        $!redo_label;
    }

    # do we have to catch the control exception? 

    method handled() {
        my @handled;
        for %!handled {
            @handled.push($_.key);
        }
        @handled;
    }

    method handle($type) {
        %!handled{$type} := 1;
    }


    method label(*@value) { $!label := @value[0] if @value;$!label}
}
