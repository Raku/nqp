package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance_u32 extends MultiDimArrayInstanceBase {
    public int[] slots;

    private static long widen(int i) {
        return i < 0 ? i + (1 << 32) : i;
    }

    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new int[numSlots()];
        else
            duplicateSetDimensions(tc);
    }

    public void at_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_INT;
        tc.native_i = widen(slots[indicesToFlatIndex(tc, indices)]);
    }

    public void bind_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_INT;
        slots[indicesToFlatIndex(tc, indices)] = (int)tc.native_i;
    }

    public SixModelObject clone(ThreadContext tc) {
        try {
            MultiDimArrayInstance_u32 clone = (MultiDimArrayInstance_u32)this.clone();
            clone.sc = null;
            clone.dimensions = this.dimensions.clone();
            if (this.slots != null)
                clone.slots = this.slots.clone();
            return clone;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
