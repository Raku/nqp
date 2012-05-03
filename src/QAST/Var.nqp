class QAST::Var is QAST::Node {
    has str $!scope;
    has str $!decl;
    has int $!slurpy;
    
    method scope(*@value)  { $!scope := @value[0] if @value; $!scope }
    method decl(*@value)   { $!decl := @value[0] if @value; $!decl }
    method slurpy(*@value) { $!slurpy := @value[0] if @value; $!slurpy }
}
