package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance_s extends MultiDimArrayInstanceBase {
    public String[] slots;

    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new String[numSlots()];
        else
            duplicateSetDimensions(tc);
    }

    public void at_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_STR;
        tc.native_s = slots[indicesToFlatIndex(tc, indices)];
    }

    public void bind_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_STR;
        slots[indicesToFlatIndex(tc, indices)] = tc.native_s;
    }

    public SixModelObject clone(ThreadContext tc) {
        try {
            MultiDimArrayInstance_s clone = (MultiDimArrayInstance_s)this.clone();
            clone.sc = null;
            clone.dimensions = this.dimensions.clone();
            if (this.slots != null)
                clone.slots = this.slots.clone();
            return clone;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public void serializeValues(ThreadContext tc, SerializationWriter writer) {
        for (int i = 0; i < slots.length; i++)
            writer.writeStr(slots[i]);
    }

    public void deserializeValues(ThreadContext tc, SerializationReader reader) {
        slots = new String[numSlots()];
        for (int i = 0; i < slots.length; i++)
            slots[i] = reader.readStr();
    }
}
