package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.REPR;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.truffle.sixmodel.STable;

abstract class FixedSizeObjectREPR extends REPR {
    protected STable stable;

    public FixedSizeObjectREPR(STable stable) {
        stable = stable;
    }

    @Override
    public void setSc(Object obj, SerializationContext sc) {
        ((FixedSizeObject) obj).sc = sc;
    }

    @Override
    public void setSTable(Object obj, STable stable) {
        ((FixedSizeObject) obj).stable = stable;
    }
}
