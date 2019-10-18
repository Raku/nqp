package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;
import java.util.HashMap;
import java.util.List;

public class KnowHOWREPRInstance extends FixedSizeObject {
    public String name;
    public List<Object> attributes;
    public HashMap<String, Object> methods;

    public KnowHOWREPRInstance(STable stable) {
        super(stable);
    }
}
