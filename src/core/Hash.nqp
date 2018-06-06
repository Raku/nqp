sub hash(*%new) {
    %new
}

# Usually only a small number of keys are seen,
# so a bubble sort would be fine. However, the
# number can get much larger (e.g., when profiling
# a build of the Rakudo settings), so use a heapsort
# instead.
sub sorted_keys($hash) {
    my @keys;
    for $hash {
        nqp::push(@keys, $_.key);
    }

    sub sift_down(@a, int $start, int $end) {
        my int $root := $start;

        while 2*$root + 1 <= $end {
            my $child := 2*$root + 1;
            my $swap := $root;

            if @a[$swap] gt @a[$child] {
                $swap := $child;
            }
            if $child + 1 <= $end && @a[$swap] ge @a[$child + 1] {
                $swap := $child + 1;
            }
            if $swap == $root {
                return;
            } else {
                my str $tmp := @a[$root];
                @a[$root] := @a[$swap];
                @a[$swap] := $tmp;
                $root := $swap;
            }
        }
    }

    my int $count := nqp::elems(@keys);
    my int $start := $count / 2 - 1;
    while $start >= 0 {
        sift_down(@keys, $start, $count - 1);
        $start := $start - 1;
    }

    my int $end := nqp::elems(@keys) - 1;
    while $end > 0 {
        my str $swap := @keys[$end];
        @keys[$end] := @keys[0];
        @keys[0] := $swap;
        $end := $end - 1;
        sift_down(@keys, 0, $end);
    }

    return @keys;
}
