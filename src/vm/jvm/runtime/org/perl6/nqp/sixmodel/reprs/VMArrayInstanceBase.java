package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class VMArrayInstanceBase extends SixModelObject {
    public long[] dimensions(ThreadContext tc) {
        return new long[] { this.elems(tc) };
    }

    public void set_dimensions(ThreadContext tc, long[] dims) {
        if (dims.length != 1)
            throw ExceptionHandling.dieInternal(tc, "A dynamic array can only have a single dimension");
        this.set_elems(tc, dims[0]);
    }
}
