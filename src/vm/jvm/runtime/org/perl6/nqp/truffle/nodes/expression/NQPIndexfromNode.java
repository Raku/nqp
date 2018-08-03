package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "indexfrom")
public final class NQPIndexfromNode extends NQPIntNode {
    @Child private NQPNode strNode;
    @Child private NQPNode patternNode;
    @Child private NQPNode fromIndexNode;

    @Deserializer
    public NQPIndexfromNode(NQPNode strNode, NQPNode patternNode, NQPNode fromIndexNode) {
        this.strNode = strNode;
        this.patternNode = patternNode;
        this.fromIndexNode = fromIndexNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String str = strNode.executeStr(frame);
        String pattern = patternNode.executeStr(frame);
        long fromIndex = fromIndexNode.executeInt(frame);

        if (fromIndex > str.length()) { return -1; }
        return str.indexOf(pattern, (int)fromIndex);
    }
}
