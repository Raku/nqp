class QAST::BlockMemo is QAST::Node {
    has str $!name;
    has str $!cuid;
    
    method name(*@value)    { $!name := @value[0] if @value; $!name || "" }
    
    my $cur_cuid := 0;
    my $cuid_suffix := ~nqp::time_n();
    
    method cuid(*@value) {
        if @value {
            # Set ID if we are provided one.
            $!cuid := @value[0];
        }
        elsif $!cuid {
            # If we already have an ID, return it.
            $!cuid
        }
        else {
            # Otherwise, generate one.
            $cur_cuid := $cur_cuid + 1;
            $!cuid := 'cuid_memo_' ~ $cur_cuid ~ '_' ~ $cuid_suffix;
        }
    }
}
