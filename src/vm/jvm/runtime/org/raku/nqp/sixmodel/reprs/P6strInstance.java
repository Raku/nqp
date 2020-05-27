package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class P6strInstance extends SixModelObject {
    public String value;

    @Override
    public void set_str(ThreadContext tc, String value) {
        this.value = value;
    }

    @Override
    public String get_str(ThreadContext tc) {
        return value;
    }
}
