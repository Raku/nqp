# It only makes sense to serialize a serialization context once, so when cross compiling we cache the result
role SerializeOnce {
    method serialize_sc_without_caching($sc) {
        # Serialize it.

        # HACK - we are avoiding an  MoarVM specific optimalization
        # On MoarVM if an sc is on top of the compiling_scs stackthread the serialized data is stored on the thread context
        # We have no way of accessing it, so we try to avoid that
        # If we put a fake sc on top of the stack it won't be cached
        # we avoid anything that creates a write barrier while it's on top
        my $fake_stack_top_sc := nqp::createsc('JS_HACK');
        nqp::pushcompsc($fake_stack_top_sc);

        my $sh := nqp::list_s();
        my $serialized := nqp::serialize($sc, $sh);

        # HACK - now we pop our fake sc
        nqp::popcompsc();

        [$serialized,$sh];
    }

    method serialize_sc($sc) {
        if %*SC_CACHE<enabled> {
            my $handle := nqp::scgethandle($sc);
            if nqp::existskey(%*SC_CACHE,$handle) {
              %*SC_CACHE{$handle};
            }
            else {
              %*SC_CACHE{$handle}  := self.serialize_sc_without_caching($sc);
            }
        }
        else {
          self.serialize_sc_without_caching($sc);
        }
    }
}
