package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance_u16 extends MultiDimArrayInstanceBase {
    public short[] slots;

    private static long widen(short s) {
        return s < 0 ? s + (1 << 16) : s;
    }

    @Override
    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new short[numSlots()];
        else
            duplicateSetDimensions(tc);
    }

    @Override
    public void at_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_INT;
        tc.native_i = widen(slots[indicesToFlatIndex(tc, indices)]);
    }

    @Override
    public void bind_pos_multidim_native(ThreadContext tc, long[] indices) {
        tc.native_type = ThreadContext.NATIVE_INT;
        slots[indicesToFlatIndex(tc, indices)] = (short)tc.native_i;
    }

    @Override
    public SixModelObject clone(ThreadContext tc) {
        try {
            MultiDimArrayInstance_u16 clone = (MultiDimArrayInstance_u16)this.clone();
            clone.sc = null;
            clone.dimensions = this.dimensions.clone();
            if (this.slots != null)
                clone.slots = this.slots.clone();
            return clone;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void serializeValues(ThreadContext tc, SerializationWriter writer) {
        for (int i = 0; i < slots.length; i++)
            writer.writeInt(widen(slots[i]));
    }

    @Override
    public void deserializeValues(ThreadContext tc, SerializationReader reader) {
        slots = new short[numSlots()];
        for (int i = 0; i < slots.length; i++)
            slots[i] = (short)reader.readLong();
    }
}
