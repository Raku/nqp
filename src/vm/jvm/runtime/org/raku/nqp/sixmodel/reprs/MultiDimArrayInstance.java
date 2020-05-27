package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;

public class MultiDimArrayInstance extends MultiDimArrayInstanceBase {
    public SixModelObject[] slots;

    @Override
    public void set_dimensions(ThreadContext tc, long[] dims) {
        super.set_dimensions(tc, dims);
        if (slots == null)
            slots = new SixModelObject[numSlots()];
        else
            duplicateSetDimensions(tc);
    }

    @Override
    public SixModelObject at_pos_multidim_boxed(ThreadContext tc, long[] indices) {
        return slots[indicesToFlatIndex(tc, indices)];
    }

    @Override
    public void bind_pos_multidim_boxed(ThreadContext tc, long[] indices, SixModelObject value) {
        slots[indicesToFlatIndex(tc, indices)] = value;
    }

    public SixModelObject clone(ThreadContext tc) {
        try {
            MultiDimArrayInstance clone = (MultiDimArrayInstance)this.clone();
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
            writer.writeRef(slots[i]);
    }

    @Override
    public void deserializeValues(ThreadContext tc, SerializationReader reader) {
        slots = new SixModelObject[numSlots()];
        for (int i = 0; i < slots.length; i++)
            slots[i] = reader.readRef();
    }
}
