package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance_n extends MultiDimArrayInstanceBase {
    public double[] slots;

    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new double[numSlots()];
        else
            duplicateSetDimensions(tc);
    }

    public void at_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_NUM;
        tc.native_n = slots[indicesToFlatIndex(tc, indices)];
    }

    public void bind_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_NUM;
        slots[indicesToFlatIndex(tc, indices)] = tc.native_n;
    }
}
