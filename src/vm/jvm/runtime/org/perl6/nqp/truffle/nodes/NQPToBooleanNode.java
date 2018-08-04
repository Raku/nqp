package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.dsl.Specialization;
import org.perl6.nqp.truffle.runtime.NQPListIterator;
import org.perl6.nqp.truffle.runtime.NQPNull;

public abstract class NQPToBooleanNode extends NQPBaseNode {
    public abstract boolean executeBoolean(Object value);

    @Specialization
    protected boolean doString(String value) {
        return ((String) value != "") ? true : false;
    }

    @Specialization
    protected boolean doLong(Long value) {
        return ((long) value) != 0 ? true : false;
    }

    @Specialization
    protected boolean doDouble(Double value) {
        return ((double) value) != 0 ? true : false;
    }

    @Specialization
    protected boolean doNQPListIterator(NQPListIterator value) {
        return ((NQPListIterator) value).boolify();
    }

    @Specialization(guards = "isNull(value)")
    protected boolean doNQPNull(Object value) {
        return false;
    }

    protected final boolean isNull(Object value) {
        return value == NQPNull.SINGLETON;
    }
}
