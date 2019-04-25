package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "how")
public final class NQPHowNode extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode objNode;

    @Deserializer
    public NQPHowNode(NQPNode objNode) {
        this.objNode = objNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return getStable(objNode.execute(frame)).how;
    }
}
