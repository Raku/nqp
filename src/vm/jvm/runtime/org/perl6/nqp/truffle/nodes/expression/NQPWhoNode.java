package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.TypeObject;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "who")
public final class NQPWhoNode extends NQPObjNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPWhoNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object object = argNode.execute(frame);
        System.out.println("who: " + object);
        return ((TypeObject) object).stable;
        //return who(argNode.execute(frame));
    }
}
