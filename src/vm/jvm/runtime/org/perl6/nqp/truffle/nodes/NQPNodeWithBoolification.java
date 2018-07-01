package org.perl6.nqp.truffle.nodes;


import org.perl6.nqp.truffle.nodes.NQPNode;

public abstract class NQPNodeWithBoolification extends NQPNode {
    /* TODO - proper checking */
    protected boolean toBoolean(Object operand) {
        return ((long) operand) != 0 ? true : false;
    }
}
