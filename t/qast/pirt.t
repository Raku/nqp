use QAST;

plan(3);

sub is_pirt_result($producer, $expected, $desc) {
    my $pirt := $producer();
    my $pir := $pirt.pir();
    #say($pir);
    my $pbc := QAST::Compiler.evalpmc($pir);
    ok($pbc() eq $expected, $desc);
}

is_pirt_result({
        my $ops := PIRT::Ops.new();
        $ops.push_pirop('return', '"lol"');
        
        my $sub := PIRT::Sub.new();
        $sub.push($ops);
        
        $sub
    },
    "lol",
    "simple sub that returns a literal string");

is_pirt_result({
        my $ops1 := PIRT::Ops.new(:result('"omg"'));
        
        my $ops2 := PIRT::Ops.new();
        $ops2.push($ops1);
        $ops2.push_pirop('set', '$S0', $ops1);
        $ops2.push_pirop('return', '$S0');
        
        my $sub := PIRT::Sub.new();
        $sub.push($ops2);
        
        $sub
    },
    "omg",
    "using Ops nodes inside Ops nodes");

is_pirt_result({
        my $label := PIRT::Label.new(:name('lbl'));

        my $ops := PIRT::Ops.new();
        $ops.push_pirop('goto', $label);
        $ops.push_pirop('return', '"OOPS"');
        $ops.push($label);
        $ops.push_pirop('return', '"c\'est l\'awesome"');
        
        my $sub := PIRT::Sub.new();
        $sub.push($ops);
        
        $sub
    },
    "c'est l'awesome",
    "Basic use of labels");
