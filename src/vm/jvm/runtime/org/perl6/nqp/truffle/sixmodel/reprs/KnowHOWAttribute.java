package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;

public class KnowHOWAttribute extends FixedSizeObjectREPR {
    public KnowHOWAttribute(STable stable) {
        super(stable);
    }

    @Override
    public Object deserializeStub() {
        return new KnowHOWAttributeInstance(stable);
    }

    @Override
    public Object allocate() {
        return new KnowHOWAttributeInstance(stable);
    }
}
