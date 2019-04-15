package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;

public class P6intInstance extends FixedSizeObject {
    public long value;
    public P6intInstance(STable stable) {
        super(stable);
    }
}
