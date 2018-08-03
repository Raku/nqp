package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "rindexfromend")
public final class NQPRindexfromendNode extends NQPIntNode {
    @Child private NQPNode strNode;
    @Child private NQPNode patternNode;

    @Deserializer
    public NQPRindexfromendNode(NQPNode strNode, NQPNode patternNode) {
        this.strNode = strNode;
        this.patternNode = patternNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return strNode.executeStr(frame).lastIndexOf(patternNode.executeStr(frame));
    }
}
