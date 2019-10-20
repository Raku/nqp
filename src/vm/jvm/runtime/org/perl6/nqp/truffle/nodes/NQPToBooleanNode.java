package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.dsl.Specialization;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.truffle.sixmodel.TypeObject;
import org.perl6.nqp.truffle.sixmodel.reprs.FixedSizeObject;
import org.perl6.nqp.truffle.sixmodel.reprs.VMIterInstance;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;

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
    protected boolean doVMArrayInstance(VMArrayInstance value) {
        return value.elems() != 0;
    }

    @Specialization
    protected boolean doVMIterInstance(VMIterInstance value) {
        return ((VMIterInstance) value).boolify();
    }

    @Specialization
    protected boolean doSerializationContext(SerializationContext value) {
        return true;
    }

    @Specialization(guards = "isNull(value)")
    protected boolean doNQPNull(Object value) {
        return false;
    }

    @Specialization
    protected boolean doTypeObject(TypeObject typeObject) {
        return false;
    }

    @Specialization
    protected boolean doFixedSizeObject(FixedSizeObject fixed) {
        return true;
    }

    protected final boolean isNull(Object value) {
        return value == NQPNull.SINGLETON;
    }
}
