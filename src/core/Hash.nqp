sub hash(*%new) {
    %new
}

# Usually only a small number of keys are seen,
# so a bubble sort would be fine. However, the
# number can get much larger (e.g., when profiling
# a build of the Rakudo settings), so use a heapsort
# instead.
sub sorted_keys($hash) {
    my @keys := nqp::list_s();

    if nqp::elems($hash) -> int $count {
        my $iter := nqp::iterator($hash);
        nqp::while(
          $iter,
          nqp::push_s(@keys,nqp::iterkey_s(nqp::shift($iter)))
        );

        if $count == 1 {
            # all ok already
        }
        elsif $count == 2 {
            # swap if necessary
            if nqp::atpos_s(@keys, 0) gt nqp::atpos_s(@keys, 1) {
                nqp::push_s(@keys, nqp::shift_s(@keys));
            }
        }
        else {
            # need to do actual sorting
            sub sift_down(@a, int $start, int $end) {
                my int $root := $start;
                my int $child;
                my int $swap;

                while 2*$root + 1 <= $end {
                    $child := 2*$root + 1;
                    $swap := $root;

                    if nqp::atpos_s(@a, $swap) gt nqp::atpos_s(@a, $child) {
                        $swap := $child;
                    }
                    if $child + 1 <= $end && nqp::atpos_s(@a, $swap) ge nqp::atpos_s(@a, $child + 1) {
                        $swap := $child + 1;
                    }
                    if $swap == $root {
                        return;
                    } else {
                        my str $tmp := nqp::atpos_s(@a, $root);
                        nqp::bindpos_s(@a, $root, nqp::atpos_s(@a, $swap));
                        nqp::bindpos_s(@a, $swap, $tmp);
                        $root := $swap;
                    }
                }
            }

            my int $start := $count / 2;
            my int $end := $count - 1;
            while --$start >= 0 {
                sift_down(@keys, $start, $end);
            }

            while $end > 0 {
                my str $swap := nqp::atpos_s(@keys, $end);
                nqp::bindpos_s(@keys, $end, nqp::atpos_s(@keys, 0));
                nqp::bindpos_s(@keys, 0, $swap);
                $end := $end - 1;
                sift_down(@keys, 0, $end);
            }
        }
    }

    @keys
}
