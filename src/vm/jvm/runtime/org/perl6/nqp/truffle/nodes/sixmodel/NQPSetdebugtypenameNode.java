package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "setdebugtypename")
public final class NQPSetdebugtypenameNode extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode typeNode;
    @Child private NQPNode debugNameNode;

    @Deserializer
    public NQPSetdebugtypenameNode(NQPNode typeNode, NQPNode debugNameNode) {
        this.typeNode = typeNode;
        this.debugNameNode = debugNameNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object type = typeNode.execute(frame);
        getStable(type).debugName = debugNameNode.executeStr(frame);
        return type;
    }
}
