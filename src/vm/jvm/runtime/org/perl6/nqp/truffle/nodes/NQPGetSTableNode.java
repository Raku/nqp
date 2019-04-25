package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.object.DynamicObject;
import org.perl6.nqp.truffle.sixmodel.reprs.FixedSizeObject;
import org.perl6.nqp.truffle.sixmodel.reprs.P6opaqueObjectLayoutImpl;
import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.TypeObject;

public abstract class NQPGetSTableNode extends NQPBaseNode {
    public abstract STable executeStable(Object value);

    @Specialization
    protected STable doFixedSizeObject(FixedSizeObject obj) {
        return obj.stable;
    }

    @Specialization
    protected STable doTypeObject(TypeObject obj) {
        return obj.stable;
    }

    @Specialization(guards="isP6opaqueObject(obj)")
    protected STable doP6opaqueObject(Object obj) {
        return P6opaqueObjectLayoutImpl.INSTANCE.getStable((DynamicObject) obj);
    }

    protected final boolean isP6opaqueObject(Object obj) {
        return P6opaqueObjectLayoutImpl.INSTANCE.isP6opaqueObject(obj);
    }
}
