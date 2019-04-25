package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.truffle.sixmodel.InvocationSpec;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "setinvokespec")
public final class NQPSetinvokespecNode extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode objNode;
    @Child private NQPNode classHandleNode;
    @Child private NQPNode attrNameNode;
    @Child private NQPNode invocationHandlerNode;

    @Deserializer
    public NQPSetinvokespecNode(NQPNode objNode, NQPNode classHandleNode, NQPNode attrNameNode, NQPNode invocationHandlerNode) {
        this.objNode = objNode;
        this.classHandleNode = classHandleNode;
        this.attrNameNode = attrNameNode;
        this.invocationHandlerNode = invocationHandlerNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object obj = objNode.execute(frame);

        InvocationSpec spec = new InvocationSpec();
        spec.classHandle = classHandleNode.execute(frame);
        spec.attrName = attrNameNode.executeStr(frame);
        spec.invocationHandler = invocationHandlerNode.execute(frame);

        getStable(obj).invocationSpec = spec;

        return obj;
    }
}
