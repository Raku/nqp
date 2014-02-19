use QAST;

plan(5);

sub is_pirt_result($producer, $expected, $desc) {
    my $pirt := $producer();
    my $pir := $pirt.pir();
    #say($pir);
    my $pbc := QAST::Compiler.pbc($pir);
    my $sub := QAST::Compiler.init($pbc);
    ok($sub() eq $expected, $desc);
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

is_pirt_result({
        # Create a nested sub.
        my $n_ops := PIRT::Ops.new();
        $n_ops.push_pirop('return', '"nested sub"');
        my $n_sub := PIRT::Sub.new();
        $n_sub.push($n_ops);
        $n_sub.subid('n_sub');
        
        # Create the outer sub that looks it up and calls it.
        my $ops := PIRT::Ops.new();
        $ops.push($n_sub);
        $ops.push_pirop(".const 'Sub' \$P0 = 'n_sub'");
        $ops.push_pirop('call', '$P0', :result('$S0'));
        $ops.push_pirop('concat', '$S1', '$S0', '" outer sub"');
        $ops.push_pirop('return', '$S1');
        my $sub := PIRT::Sub.new();
        $sub.push($ops);
        
        $sub
    },
    "nested sub outer sub",
    "Calling subs");

is_pirt_result({
        # Create a nested sub that looks up a lexical.
        my $n_ops := PIRT::Ops.new();
        $n_ops.push_pirop('find_lex', '$P0', '"$foo"');
        $n_ops.push_pirop('return', '$P0');
        my $n_sub := PIRT::Sub.new();
        $n_sub.push($n_ops);
        $n_sub.subid('n_sub');
        $n_sub.pirflags(':outer("o_sub")');
        
        # Create the outer sub that looks it up and calls it.
        my $ops := PIRT::Ops.new();
        $ops.push($n_sub);
        $ops.push_pirop('box', '$P1', '"lexicals work!"');
        $ops.push_pirop('.lex', '"$foo"', '$P1');
        $ops.push_pirop(".const 'Sub' \$P0 = 'n_sub'");
        $ops.push_pirop('capture_lex', '$P0');
        $ops.push_pirop('call', '$P0', :result('$S0'));
        $ops.push_pirop('return', '$S0');
        my $sub := PIRT::Sub.new();
        $sub.push($ops);
        $sub.subid('o_sub');
        
        $sub
    },
    'lexicals work!',
    "pirflags emitted correctly");
