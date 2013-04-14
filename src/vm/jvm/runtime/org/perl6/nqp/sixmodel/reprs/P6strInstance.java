package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class P6strInstance extends SixModelObject {
    public String value;
    
    public void set_str(ThreadContext tc, String value) {
        this.value = value;
    }
    
    public String get_str(ThreadContext tc) {
        return value;
    }
}
