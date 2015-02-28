package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

/* Integer native lexical reference. */
public class NativeRefInstanceIntLex extends SixModelObject {
    public long[] lexicals;
    public int idx;
    
    public long fetch_i(ThreadContext tc) {
        return lexicals[idx];
    }

    public double fetch_n(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native number");
    }

    public String fetch_s(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native string");
    }

    public void store_i(ThreadContext tc, long value) {
        lexicals[idx] = value;
    }

    public void store_n(ThreadContext tc, double value) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native number");
    }

    public void store_s(ThreadContext tc, String value) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native string");
    }
}