package org.perl6.nqp.truffle.nodes.sixmodel;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.REPRRegistry;

@NodeInfo(shortName = "newtype")
public final class NQPNewtypeNode extends NQPObjNode {
    @Child private NQPNode howNode;
    @Child private NQPNode reprNameNode;

    @Deserializer
    public NQPNewtypeNode(NQPNode howNode, NQPNode reprNameNode) {
        this.howNode = howNode;
        this.reprNameNode = reprNameNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object how = howNode.execute(frame);
        String reprName = reprNameNode.executeStr(frame);
        return REPRRegistry.typeObjectFor(reprName, how);
    }
}
