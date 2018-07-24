package org.perl6.nqp.truffle.nodes;

import org.perl6.nqp.truffle.nodes.NQPNode;
import com.oracle.truffle.api.CompilerDirectives;

public abstract class NQPNodeWithBoolification extends NQPNode {
    @Child private NQPToBooleanNode toBooleanCast;

    protected boolean toBoolean(Object value) {
        if (toBooleanCast == null) {
            CompilerDirectives.transferToInterpreterAndInvalidate();
            toBooleanCast = insert(NQPToBooleanNodeGen.create());
        }
        return toBooleanCast.executeBoolean(value);
    }
}
