package org.raku.nqp.sixmodel.reprs;

import com.sun.jna.Pointer;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class CPointerInstance extends SixModelObject {
    public Pointer pointer;

    @Override
    public void set_int(ThreadContext tc, long value) {
        this.pointer = (value > 0)
            ? Pointer.createConstant(value)
            : null;
    }

    @Override
    public long get_int(ThreadContext tc) {
        return this.pointer == null
            ? 0
            : Pointer.nativeValue(this.pointer);
    }
}
