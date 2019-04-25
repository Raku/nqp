package org.perl6.nqp.truffle.nodes;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.sixmodel.STable;
import com.oracle.truffle.api.CompilerDirectives;

public abstract class NQPNodeWithSTableGetting extends NQPNode {
    @Child private NQPGetSTableNode getStableNode;

    protected STable getStable(Object value) {
        if (getStableNode == null) {
            CompilerDirectives.transferToInterpreterAndInvalidate();
            getStableNode = insert(NQPGetSTableNodeGen.create());
        }
        return getStableNode.executeStable(value);
    }
}
