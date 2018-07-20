package org.perl6.nqp.truffle.nodes;


import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.runtime.NQPListIterator;
import org.perl6.nqp.truffle.runtime.NQPNull;

public abstract class NQPNodeWithBoolification extends NQPNode {
    /* TODO - proper checking */
    protected boolean toBoolean(Object arg) {
        if (arg instanceof String) {
            return ((String) arg != "") ? true : false;
        } else if (arg instanceof Long) {
            return ((long) arg) != 0 ? true : false;
        } else if (arg instanceof Double) {
            return ((double) arg) != 0 ? true : false;
        } else if (arg instanceof NQPListIterator) {
            return ((NQPListIterator) arg).boolify();
        } else if (arg == NQPNull.SINGLETON) {
            return false;
        } else {
            throw new RuntimeException("Can't boolify");
        }
    }
}
