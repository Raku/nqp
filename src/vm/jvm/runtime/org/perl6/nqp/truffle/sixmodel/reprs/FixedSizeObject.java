package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

public class FixedSizeObject {
    public STable stable;
    public SerializationContext sc;

    public FixedSizeObject(STable stable) {
        this.stable = stable;
    }
}
