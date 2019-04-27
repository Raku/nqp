package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.truffle.runtime.NQPListStr;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "join")
public final class NQPJoinNode extends NQPStrNode {
    @Child private NQPNode delimNode;
    @Child private NQPNode listNode;

    @Deserializer
    public NQPJoinNode(NQPNode delimNode, NQPNode listNode) {
        this.delimNode = delimNode;
        this.listNode = listNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String delim = delimNode.executeStr(frame);
        Object uncast = listNode.execute(frame);
        if (uncast instanceof NQPList) {
            NQPList list = (NQPList) uncast;
            long elems = list.elems();
            if (elems == 0) {
                return "";
            }
            StringBuilder result = new StringBuilder((int)(2 * elems * delim.length()));
            for (long i = 0; i < elems - 1; i++) {
                result.append(list.atpos(i)).append(delim);
            }
            return result.append(list.atpos(elems - 1)).toString();
        } else if (uncast instanceof NQPListStr) {
            NQPListStr list = (NQPListStr) uncast;
            long elems = list.elems();
            if (elems == 0) {
                return "";
            }
            StringBuilder result = new StringBuilder((int)(2 * elems * delim.length()));
            for (long i = 0; i < elems - 1; i++) {
                result.append(list.atposStr(i)).append(delim);
            }
            return result.append(list.atposStr(elems - 1)).toString();
        } else {
            throw new RuntimeException("Can't join this");
        }
    }
}
