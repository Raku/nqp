package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "composetype")
public final class NQPComposetypeNode extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode objNode;
    @Child private NQPNode reprInfoNode;

    @Deserializer
    public NQPComposetypeNode(NQPNode objNode, NQPNode reprInfoNode) {
        this.objNode = objNode;
        this.reprInfoNode = reprInfoNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object obj = objNode.execute(frame);
        Object reprInfo = reprInfoNode.execute(frame);
        getStable(obj).repr.compose(reprInfo);
        return obj;
    }
}
