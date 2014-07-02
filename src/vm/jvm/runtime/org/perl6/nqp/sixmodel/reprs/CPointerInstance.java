package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Pointer;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class CPointerInstance extends SixModelObject {
    public Pointer pointer;

    public void set_int(ThreadContext tc, long value) {
        this.pointer = (value > 0)
            ? Pointer.createConstant(value)
            : null;
    }
    
    public long get_int(ThreadContext tc) {
        return this.pointer == null
            ? 0 
            : Pointer.nativeValue(this.pointer);
    }
}
