package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "join")
public final class NQPJoinNode extends NQPStrNode {
    @Child private NQPNode aNode;
    @Child private NQPNode bNode;

    @Deserializer
    public NQPJoinNode(NQPNode aNode, NQPNode bNode) {
        this.aNode = aNode;
        this.bNode = bNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String delim = aNode.executeStr(frame);
        NQPList list = (NQPList)bNode.execute(frame);
        long elems = list.elems();
        if (elems == 0) {
            return "";
        }
        StringBuilder result = new StringBuilder((int)(2 * elems * delim.length()));
        for (long i = 0; i < elems - 1; i++) {
            result.append(list.atpos(i)).append(delim);
        }
        return result.append(list.atpos(elems - 1)).toString();
    }
}
