package org.perl6.nqp.truffle.sixmodel.reprs;


import org.perl6.nqp.truffle.sixmodel.STable;

public class P6strInstance extends FixedSizeObject {
    public String value;
    public P6strInstance(STable stable) {
        super(stable);
    }
}
