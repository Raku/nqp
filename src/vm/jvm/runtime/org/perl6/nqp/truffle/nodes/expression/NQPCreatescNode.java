package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;

import org.perl6.nqp.truffle.sixmodel.SerializationContext;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "createsc")
public final class NQPCreatescNode extends NQPObjNode {
    @Child private NQPNode handleNode;

    @Deserializer
    public NQPCreatescNode(NQPNode handleNode) {
        this.handleNode = handleNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return new SerializationContext(handleNode.executeStr(frame));
    }
}
