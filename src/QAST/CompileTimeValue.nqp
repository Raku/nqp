# Composed or mixed in to any node that also has a compile-time known value.
role QAST::CompileTimeValue {
    has $!compile_time_value;
    
    method has_compile_time_value() {
        1
    }
    
    method compile_time_value() {
        $!compile_time_value
    }
    
    method set_compile_time_value($value) {
        $!compile_time_value := $value
    }
}
