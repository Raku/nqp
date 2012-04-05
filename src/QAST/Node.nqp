class QAST::Node is NQPCapture {
    has str $!name;
    has $!node;
    has $!type;

    method new(*@children, *%options) {
        my $new := self.CREATE();
        $new.BUILD();
        nqp::splice($new.list, @children, 0, 0);
        for %options {
            pir::find_method__PPs($new, $_.key)($new, $_.value);
        }
        $new;
    }

    method name(*@value)   { $!name := @value[0] if @value; $!name }
    method node(*@value)   { $!node := @value[0] if @value; $!node }
    method push($value)    { nqp::push(self.list, $value) }
    method unshift($value) { nqp::unshift(self.list, $value) }
    method type(*@value)   { $!type := @value[0] if @value; $!type }
}
