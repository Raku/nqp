package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;

public class P6numInstance extends FixedSizeObject {
    public double value;
    public P6numInstance(STable stable) {
        super(stable);
    }
}
