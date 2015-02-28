package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

/* Integer native lexical reference. */
public class NativeRefInstanceStrLex extends SixModelObject {
    public String[] lexicals;
    public int idx;
    
    public long fetch_i(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native integer");
    }

    public double fetch_n(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native number");
    }

    public String fetch_s(ThreadContext tc) {
        return lexicals[idx];
    }

    public void store_i(ThreadContext tc, long value) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native integer");
    }

    public void store_n(ThreadContext tc, double value) {
        throw ExceptionHandling.dieInternal(tc,
            "This container does not reference a native number");
    }

    public void store_s(ThreadContext tc, String value) {
        lexicals[idx] = value;
    }
}