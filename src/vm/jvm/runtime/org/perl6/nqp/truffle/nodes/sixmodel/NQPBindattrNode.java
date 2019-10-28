package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.object.DynamicObject;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindattr")
public final class NQPBindattrNode extends NQPObjNode {
    @Child private NQPNode objNode;
    @Child private NQPNode classHandleNode;
    @Child private NQPNode nameNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindattrNode(NQPNode objNode, NQPNode classHandleNode, NQPNode nameNode, NQPNode valueNode) {
        this.objNode = objNode;
        this.classHandleNode = classHandleNode;
        this.nameNode = nameNode;
        this.valueNode = valueNode;
    }

    @TruffleBoundary
    public void setAttribute(DynamicObject obj, String name, Object value) {
        // TODO - take classHandle into account
        if (!(obj.set(name, value))) {
            throw new RuntimeException("Can't set attribute");
        }
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object obj = objNode.execute(frame);
        Object classHandle = classHandleNode.execute(frame);
        String name = nameNode.executeStr(frame);
        Object value = valueNode.execute(frame);

        setAttribute((DynamicObject) obj, name, value);

        return value;
    }
}
