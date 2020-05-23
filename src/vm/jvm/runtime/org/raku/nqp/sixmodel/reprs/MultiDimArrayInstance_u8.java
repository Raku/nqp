package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance_u8 extends MultiDimArrayInstanceBase {
    public byte[] slots;

    private static long widen(byte b) {
        return b < 0 ? b + (1 << 8) : b;
    }

    @Override
    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new byte[numSlots()];
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
        slots[indicesToFlatIndex(tc, indices)] = (byte)tc.native_i;
    }

    @Override
    public SixModelObject clone(ThreadContext tc) {
        try {
            MultiDimArrayInstance_u8 clone = (MultiDimArrayInstance_u8)this.clone();
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
        slots = new byte[numSlots()];
        for (int i = 0; i < slots.length; i++)
            slots[i] = (byte)reader.readLong();
    }
}
