package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNodeWithSTableGetting;

import org.perl6.nqp.truffle.sixmodel.TypeObject;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "can")
public final class NQPCanNode extends NQPNodeWithSTableGetting {
    @Child private NQPNode invocantNode;
    @Child private NQPNode nameNode;

    @Deserializer
    public NQPCanNode(NQPNode invocantNode, NQPNode nameNode) {
        this.invocantNode = invocantNode;
        this.nameNode = nameNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Object invocant = invocantNode.execute(frame);
        String name = nameNode.executeStr(frame);

        // TODO not authorative method caches
        return getStable(invocant).methodCache.containsKey(name) ? 1 : 0;
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
        executeInt(frame);
    }
}
