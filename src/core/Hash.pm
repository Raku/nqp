sub hash(*%new) {
    my %h;
    for %new {
        %h{$_} := %new{$_};
    }
    %h;
}
