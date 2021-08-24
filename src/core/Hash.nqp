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
    for $hash {
        nqp::push_s(@keys, $_.key);
    }

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

    my int $count := +@keys;
    if $count < 3 {
        if $count == 2 && nqp::atpos_s(@keys, 0) gt nqp::atpos_s(@keys, 1) {
            nqp::push_s(@keys, nqp::shift_s(@keys));
        }
        return @keys;
    }
    my int $start := $count / 2 - 1;
    my int $end := $count - 1;
    while $start >= 0 {
        sift_down(@keys, $start, $end);
        $start := $start - 1;
    }

    while $end > 0 {
        my str $swap := nqp::atpos_s(@keys, $end);
        nqp::bindpos_s(@keys, $end, nqp::atpos_s(@keys, 0));
        nqp::bindpos_s(@keys, 0, $swap);
        $end := $end - 1;
        sift_down(@keys, 0, $end);
    }

    return @keys;
}
