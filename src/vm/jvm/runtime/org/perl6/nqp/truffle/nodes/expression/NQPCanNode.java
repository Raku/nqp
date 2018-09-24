package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;

import org.perl6.nqp.truffle.sixmodel.TypeObject;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "can")
public final class NQPCanNode extends NQPIntNode {
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

        if (invocant instanceof TypeObject) {
            System.out.println("can on typeobject: " + name);
            TypeObject typeObject = (TypeObject) invocant;
            return typeObject.stable.methodCache.containsKey(name) ? 1 : 0;
        } else {
            System.out.println("nqp::can on " + invocant);
            return 0;
        }
    }
}
