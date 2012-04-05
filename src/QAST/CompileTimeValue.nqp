# Composed or mixed in to any node that also has a compile-time known value.
role QAST::CompileTimeValue {
    has $!value;
    method value(*@value) { $!value := @value[0] if @value; $!value }
}
