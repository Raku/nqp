sub hash(*%new) {
    %new
}

# Usually only a small number of keys are seen,
# so a bubble sort would be fine. However, the
# number can get much larger (e.g., when profiling
# a build of the Rakudo settings), so use a heapsort
# instead.  Note that this sorts in **reverse** order.
sub sorted_keys($hash) {
    my @keys := nqp::list_s();
    my $iter := nqp::iterator($hash);
    nqp::while(
      $iter,
      nqp::push_s(@keys,nqp::iterkey_s(nqp::shift($iter)))
    );

    sub sift_down(int $start, int $end) {
        my int $root := $start;
        my int $child;
        my int $swap;

        while 2*$root + 1 <= $end {
            $child := 2*$root + 1;
            $swap := nqp::atpos_s(@keys, $root) gt nqp::atpos_s(@keys, $child)
              ?? $child
              !! $root;

            $swap := $child + 1
              if $child + 1 <= $end
              && nqp::atpos_s(@keys, $swap) ge nqp::atpos_s(@keys, $child + 1);

            if $swap == $root { return }

            my str $tmp := nqp::atpos_s(@keys, $root);
            nqp::bindpos_s(@keys, $root, nqp::atpos_s(@keys, $swap));
            nqp::bindpos_s(@keys, $swap, $tmp);
            $root := $swap;
        }
    }

    my int $count := +@keys;
    if $count > 2 {
        my int $start := $count / 2;
        my int $end := $count - 1;
        while --$start >= 0 {
            sift_down($start, $end);
        }

        while $end {
            my str $swap := nqp::atpos_s(@keys, $end);
            nqp::bindpos_s(@keys, $end, nqp::atpos_s(@keys, 0));
            nqp::bindpos_s(@keys, 0, $swap);
            sift_down(0, --$end);
        }
    }
    elsif $count == 2 && nqp::atpos_s(@keys, 0) lt nqp::atpos_s(@keys, 1) {
        nqp::push_s(@keys, nqp::shift_s(@keys));
    }

    @keys
}
