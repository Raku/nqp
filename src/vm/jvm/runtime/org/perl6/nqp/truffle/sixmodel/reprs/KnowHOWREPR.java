package org.perl6.nqp.truffle.sixmodel.reprs;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.REPR;

public class KnowHOWREPR extends FixedSizeObjectREPR {
    public KnowHOWREPR(STable stable) {
        super(stable);
    }

    @Override
    public Object deserializeStub() {
        return new KnowHOWREPRInstance(stable);
    }

    @Override
    public Object allocate() {
        KnowHOWREPRInstance object = new KnowHOWREPRInstance(stable);
        object.name = "<anon>";
        object.attributes = new ArrayList<Object>();
        object.methods = new HashMap<String, Object>();
        return object;
    }
}
