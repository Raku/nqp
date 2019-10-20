package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.truffle.sixmodel.BoolificationSpec;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "setboolspec")
public final class NQPSetboolspecNode extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode objNode;
    @Child private NQPNode modeNode;
    @Child private NQPNode methodNode;

    @Deserializer
    public NQPSetboolspecNode(NQPNode objNode, NQPNode modeNode, NQPNode methodNode) {
        this.objNode = objNode;
        this.modeNode = modeNode;
        this.methodNode = methodNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object obj = objNode.execute(frame);

        BoolificationSpec boolificationSpec = new BoolificationSpec();
        boolificationSpec.mode = (int)modeNode.executeInt(frame);
        boolificationSpec.method = methodNode.execute(frame);
        getStable(obj).boolificationSpec = boolificationSpec;

        return obj;
    }
}
