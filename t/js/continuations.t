#! nqp

# continuations.

plan(14);

{
    # unique objects
    my $A := "A";
    my $B := "B";

    my int $run;
    my $res := nqp::continuationreset(nqp::null(), {
        $run++;
        42;
    });

    ok($run == 1, 'reset runs argument once');
    ok($res == 42, 'reset passes return value');

    my $ex := '';
    $run := 0;

    my str $log := '';
    $log := $log ~ 1;
    my $savecont;
    my $shift_returned;

    my $reset_returned := nqp::continuationreset(nqp::null(), {
        $log := $log ~ 2;
        $shift_returned := nqp::continuationcontrol(0, nqp::null(), -> $cont {
            $log := $log ~ 3;
            $savecont := $cont;
            10;
        });
        $log := $log ~ 4;
        $shift_returned * 2;
    });
    ok( $log eq '123', 'control returns from reset' );
    ok( $savecont, 'got a continuation' );

    ok( $reset_returned == 10, 'shift argument return value is reset return value' );

    $log := '';
    $reset_returned := nqp::continuationinvoke($savecont, { $log := $log ~ '5'; 15 });
    ok( $log eq '54', 'continuation invoke "returns" from control');
    ok( $shift_returned == 15, 'continuation invoke argument is shift return value' );
    ok( $reset_returned == 30, 'reset block return value is continuation invoke return value' );

}

{
    my $log := '';

    my $next;
    nqp::continuationreset(nqp::null(), {
        $log := $log ~ 1;
        nqp::continuationcontrol(0, nqp::null(), -> $cont { $next := $cont });
        $log := $log ~ 2;
        nqp::continuationcontrol(0, nqp::null(), -> $cont { $next := $cont });
        $log := $log ~ 3;
        nqp::continuationcontrol(0, nqp::null(), -> $cont { $next := $cont });
        $log := $log ~ 4;
        777;
    });

    is($log, '1', 'passing a continuation to nqp::continuationreset 1/4');
    nqp::continuationreset(nqp::null(), $next);
    is($log, '12', 'passing a continuation to nqp::continuationreset 2/4');
    nqp::continuationreset(nqp::null(), $next);
    is($log, '123', 'passing a continuation to nqp::continuationreset 3/4');
    my $ret := nqp::continuationreset(nqp::null(), $next);
    is($log, '1234', 'passing a continuation to nqp::continuationreset 4/4');
    is($ret, 777, 'passing a continuation to nqp::continuationreset - correct return value');
}



# gather/take example
{
    my $SENTINEL := [];
    sub yield($value) {
        nqp::continuationcontrol(0, nqp::null(), -> $dcont {
            [$value, { nqp::continuationinvoke($dcont, {0}) }]
        });
    }

    sub start_iter($body) {
        my $state := { $body(); yield($SENTINEL) };
        -> {
            my $pkt := nqp::continuationreset(nqp::null(), $state);
            $state := $pkt[1];
            $pkt[0];
        }
    }

    sub mktree($l,$base) {
        $l ?? [ mktree($l-1,$base~0), mktree($l-1,$base~1) ] !! $base;
    }

    sub walktree($tree) {
        if nqp::istype($tree, NQPArray) {
            for $tree { walktree($_) }
        } else {
            yield($tree);
        }
    }

    sub uniter($block) {
        my $iter := start_iter($block);
        my $rv;
        my @list;
        until ($rv := $iter()) =:= $SENTINEL { nqp::push(@list, $rv); }
        nqp::join('~',@list);
    }


    ok(uniter({ walktree(mktree(3,'')) }) eq '000~001~010~011~100~101~110~111', 'gather example works');
}
