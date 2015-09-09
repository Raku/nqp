package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

/* Base for instances of native references. */
public abstract class NativeRefInstance extends SixModelObject {
    public abstract long fetch_i(ThreadContext tc);
    public abstract double fetch_n(ThreadContext tc);
    public abstract String fetch_s(ThreadContext tc);
    public abstract void store_i(ThreadContext tc, long value);
    public abstract void store_n(ThreadContext tc, double value);
    public abstract void store_s(ThreadContext tc, String value);
}
