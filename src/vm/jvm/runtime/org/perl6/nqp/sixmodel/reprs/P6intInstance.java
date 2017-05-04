package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class P6intInstance extends SixModelObject {
    public long value;
    
    public void set_int(ThreadContext tc, long value) {
        this.value = value;
    }
    
    public long get_int(ThreadContext tc) {
        return value;
    }

    public SixModelObject clone(ThreadContext tc) {
        try {
            P6intInstance clone = (P6intInstance) this.clone();
            clone.sc = null;
            return clone;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
