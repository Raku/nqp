package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

@NodeInfo(shortName = "scsetdesc")
public final class NQPScsetdescNode extends NQPStrNode {
    @Child private NQPNode scNode;
    @Child private NQPNode descriptionNode;

    @Deserializer
    public NQPScsetdescNode(NQPNode scNode, NQPNode descriptionNode) {
        this.scNode = scNode;
        this.descriptionNode = descriptionNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        SerializationContext sc = (SerializationContext) scNode.execute(frame);
        String description = descriptionNode.executeStr(frame); 
        sc.description = description;
        return description;
    }
}
