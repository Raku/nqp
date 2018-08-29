package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

@NodeInfo(shortName = "scsetdesc")
public final class NQPScsetdescNode extends NQPStrNode {
    @Child private NQPNode scRefNode;
    @Child private NQPNode descriptionNode;

    @Deserializer
    public NQPScsetdescNode(NQPNode scRefNode, NQPNode descriptionNode) {
        this.scRefNode = scRefNode;
        this.descriptionNode = descriptionNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        SerializationContext scRef = (SerializationContext) scRefNode.execute(frame);
        String description = descriptionNode.executeStr(frame); 
        scRef.description = description;
        return description;
    }
}
