package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "settypehllrole")
public final class NQPSettypehllroleNode  extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode typeNode;
    @Child private NQPNode roleNode;

    @Deserializer
    public NQPSettypehllroleNode(NQPNode typeNode, NQPNode roleNode) {
        this.typeNode = typeNode;
        this.roleNode = roleNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object type = typeNode.execute(frame);
        getStable(type).hllRole = roleNode.executeInt(frame);
        return type;
    }
}
