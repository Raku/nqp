package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class P6numInstance extends SixModelObject {
    public double value;

    @Override
    public void set_num(ThreadContext tc, double value) {
        this.value = value;
    }

    @Override
    public double get_num(ThreadContext tc) {
        return value;
    }
}
