#! nqp

# continuations.

plan(22);

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

    ok( nqp::continuationreset($A, {
        nqp::continuationcontrol(0, $A, -> $c { 42 });
        10;
    }) == 42, 'control may have a matching argument' );

    ok( nqp::continuationreset($A, {
        nqp::continuationreset($B, {
            nqp::continuationcontrol(0, $A, -> $c { 42 });
            10;
        });
        11;
    }) == 42, 'control may match two levels up' );

    ok( nqp::continuationreset($A, {
        nqp::continuationreset($B, {
            nqp::continuationcontrol(0, $B, -> $c { 42 });
            10;
        }) * 3;
    }) == 126, 'control may match one level up' );

    ok( nqp::continuationreset($A, {
        nqp::continuationreset($B, {
            nqp::continuationcontrol(0, nqp::null(), -> $c { 42 });
            10;
        }) * 3;
    }) == 126, 'null shift matches innermost level');

    my $cont := nqp::continuationreset($A, {
        nqp::continuationreset($B, {
            my $v := nqp::continuationcontrol(0, $A, -> $c { $c });
            nqp::continuationcontrol(0, $B, -> $c { $v * 2 });
            14;
        }) * 3;
    });
    ok(nqp::continuationinvoke($cont, {10}) == 60, 'continuations can capture reset frames');

    my $*A := 10;
    my int $A_in_reset;
    my int $A_in_control;
    my int $A_in_invoke;
    my int $B_in_invoke;
    $cont := nqp::continuationreset($A, {
        $A_in_reset := $*A;
        {
            my $*A := 30;
            nqp::continuationcontrol(0, $A, -> $c {
                $A_in_control := $*A;
                $c
            });
        }
    });
    {
        my $*B := 20;
        my $*A := 40;
        nqp::continuationinvoke($cont, { $A_in_invoke := $*A; $B_in_invoke := $*B; });
    }

    ok($A_in_reset == 10, 'reset sees calling scope');
    ok($A_in_control == 10, 'control does not see intervening scopes');
    ok($A_in_invoke == 30, 'invoke sees the continuation body');
    ok($B_in_invoke == 20, 'invoke also sees the invocation context');
}

{
    # should be 3 * 3 * 10 = 90
    # will infinite loop if the clones are removed
    my $cont := nqp::continuationreset(nqp::null(), {
        3 * nqp::continuationcontrol(0, nqp::null(), -> $k { $k });
    });
    my $val := nqp::continuationinvoke(nqp::continuationclone($cont),
        { nqp::continuationinvoke(nqp::continuationclone($cont), { 10 }) });

    todo('unknown bug with clone', 1);
    ok($val == 90, "restacking cont twice with clones works");
}

# scheme call/cc example: amby thing, needs to use control, not control0
{
    # for proper R5RS semantics, run this once wrapping your main function
    sub run_main($f) {
        nqp::continuationreset(nqp::null(), $f);
    }

    sub callcc($f) {
        # first get the current continuation
        nqp::continuationcontrol(1, nqp::null(), -> $dcont {
            my $scheme_cont := -> $val {
                # when the scheme continuation is invoked, we need to *replace*
                # the current continuation with this one
                nqp::continuationcontrol(1, nqp::null(), -> $c {
                    nqp::continuationinvoke($dcont, { $val })
                });
            };
            nqp::continuationinvoke($dcont, { $f($scheme_cont) });
        });
    }

    my $backtrack_cont := sub ($ig) { nqp::die("Out of options!"); };

    sub amb(*@options) {
        my $old_back := $backtrack_cont;
        my $here;
        callcc(-> $c { $here := $c });
        while @options {
            my $next := nqp::shift(@options);
            $backtrack_cont := $here;
            return $next;
        }
        $old_back(0);
    }

    # 4-queens
    my $queens := run_main({
        sub check($a, $b, $dist) { amb() if $a-$b == $dist || $a-$b == -$dist || $a == $b }
        my $q1 := amb(1,2,3,4);
        my $q2 := amb(1,2,3,4);
        check($q1,$q2,1);
        my $q3 := amb(1,2,3,4);
        check($q1,$q3,2);
        check($q2,$q3,1);
        my $q4 := amb(1,2,3,4);
        check($q1,$q4,3);
        check($q2,$q4,2);
        check($q3,$q4,1);
        "$q1$q2$q3$q4";
    });

    todo('probably bug with protect', 1);
    ok($queens eq '2413', 'n-queens callcc example');
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

    sub exntest() {
        nqp::die("foo");
        nqp::die("bar");
        nqp::die("baz");
        CATCH { yield(nqp::getmessage($!)); nqp::resume($!); }
    }
    ok(uniter(&exntest) eq 'foo~bar~baz', 'take from handler works');
}
