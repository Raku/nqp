package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstanceBase extends SixModelObject {
    public long[] dimensions;

    public long[] dimensions(ThreadContext tc) {
        return dimensions;
    }

    public void set_dimensions(ThreadContext tc, long[] dims) {
        MultiDimArrayREPRData rd = (MultiDimArrayREPRData)this.st.REPRData;
        if (rd.numDimensions == dims.length) {
            System.arraycopy(dims, 0, this.dimensions, 0, dims.length);
        }
        else {
            throw ExceptionHandling.dieInternal(tc, String.format(
                "Array type of %d dimensions cannot be initialized with %d dimensions",
                rd.numDimensions, dims.length));
        }
    }
}
