package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "ordat")
public final class NQPOrdatNode extends NQPIntNode {
    @Child private NQPNode strNode;
    @Child private NQPNode offsetNode;

    @Deserializer
    public NQPOrdatNode(NQPNode strNode, NQPNode offsetNode) {
        this.strNode = strNode;
        this.offsetNode = offsetNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String str = strNode.executeStr(frame);
        long offset = offsetNode.executeInt(frame);

        if (offset < 0 || offset >= str.length()) {
            return -1;
        }
	else {
            return str.codePointAt((int)offset);
        }
    }
}
