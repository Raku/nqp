class QAST::Var is QAST::Node {
    has str $!name;
    has str $!scope;
    has str $!decl;
    has int $!slurpy;
    has $!default;
    
    method name(*@value)    { $!name := @value[0] if @value; $!name || "" }
    method scope(*@value)   { $!scope := @value[0] if @value; $!scope }
    method decl(*@value)    { $!decl := @value[0] if @value; $!decl }
    method slurpy(*@value)  { $!slurpy := @value[0] if @value; $!slurpy }
    method default(*@value) { $!default := @value[0] if @value; $!default }
}
