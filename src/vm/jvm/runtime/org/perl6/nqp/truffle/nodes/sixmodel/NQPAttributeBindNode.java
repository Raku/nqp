package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "attribute-bind")
public final class NQPAttributeBindNode extends NQPObjNode {
    @Child private NQPNode objNode;
    @Child private NQPNode classHandleNode;
    private final String name;
    @Child private NQPNode valueNode;

    @Deserializer("attribute-bind")
    public NQPAttributeBindNode(NQPNode objNode, NQPNode classHandleNode, String name, NQPNode valueNode) {
        this.objNode = objNode;
        this.classHandleNode = classHandleNode;
        this.name = name;
        this.valueNode = valueNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object obj = objNode.execute(frame);
        Object classHandle = classHandleNode.execute(frame);
        Object value = valueNode.execute(frame);

        // TODO - take classHandle into account
        if (!((DynamicObject) obj).set(name, value)) {
            throw new RuntimeException("Can't set attribute");
        }

        return value; 
    }
}
