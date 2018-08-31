package org.perl6.nqp.truffle.sixmodel;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

public class TypeObject {
    public STable stable;
    public SerializationContext sc;

    public TypeObject(STable stable) {
        this.stable = stable;
    }
}
