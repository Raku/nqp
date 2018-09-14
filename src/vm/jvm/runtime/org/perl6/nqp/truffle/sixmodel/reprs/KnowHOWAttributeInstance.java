package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;

public class KnowHOWAttributeInstance extends FixedSizeObject {
    public String name;
    public Object type;
    public int box_target;

    public KnowHOWAttributeInstance(STable stable) {
        super(stable);
    }
}
