class QAST::Node is NQPCapture {
    has $!node;
    has str $!name;
    has str $!named;
    has $!returns;
    has int $!arity;
    has int $!flat;
    has str $!childorder;

    method new(*@children, *%options) {
        my $new := self.CREATE();
        $new.BUILD();
        nqp::splice($new.list, @children, 0, 0);
        for %options {
            pir::find_method__PPs($new, $_.key)($new, $_.value);
        }
        $new;
    }

    method node(*@value)       { $!node := @value[0] if @value; $!node }
    method name(*@value)       { $!name := @value[0] if @value; $!name }
    method named(*@value)      { $!named := @value[0] if @value; $!named }
    method returns(*@value)    { $!returns := @value[0] if @value; $!returns }
    method arity(*@value)      { $!arity := @value[0] if @value; $!arity }
    method flat(*@value)       { $!flat := @value[0] if @value; $!flat }
    method childorder(*@value) { $!childorder := @value[0] if @value; $!childorder }
    
    method pop()           { nqp::pop(self.list) }
    method push($value)    { nqp::push(self.list, $value) }
    method shift()         { nqp::shift(self.list) }
    method unshift($value) { nqp::unshift(self.list, $value) }
}
