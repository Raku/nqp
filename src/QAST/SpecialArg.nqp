role QAST::SpecialArg {
    has str $!named;
    has int $!flat;
    
    method named(*@value) { $!named := @value[0] if @value; $!named || "" }
    method flat(*@value)  { $!flat := @value[0] if @value; $!flat }
}
