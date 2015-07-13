package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance extends MultiDimArrayInstanceBase {
    public SixModelObject[] slots;

    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new SixModelObject[numSlots()];
        else
            duplicateSetDimensions(tc);
    }

    public SixModelObject at_pos_multidim_boxed(ThreadContext tc, long[] indices) {
        return slots[indicesToFlatIndex(tc, indices)];
    }

    public void bind_pos_multidim_boxed(ThreadContext tc, long[] indices, SixModelObject value) {
        slots[indicesToFlatIndex(tc, indices)] = value;
    }
}
