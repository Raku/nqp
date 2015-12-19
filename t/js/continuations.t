#! nqp

# continuations.

plan(10);

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

    # These tests are problematic.  Currently the continuation bubbles up to the nearest
    # continuation barrier in invokeMain and dies there, with no chance to catch the
    # resulting exception

    # try {
    #     nqp::continuationcontrol(0, nqp::null(), { $run++ });
    #     CATCH { $ex := $! }
    # }
    # ok( $ex ~~ /'no matching'/, 'shift dies with no reset' );
    # ok( $run == 0, '...without running argument' );

    # $ex := '';
    # try {
    #     nqp::continuationreset($A, {
    #         nqp::continuationcontrol(0, $B, { $run++ });
    #     });
    #     CATCH { $ex := $! }
    # }
    # ok( $ex ~~ /'no matching'/, 'control dies with mismatched reset' );

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

    ok( nqp::continuationinvoke($savecont, {25}) == 50, 'continuation can be used more than once' );

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
