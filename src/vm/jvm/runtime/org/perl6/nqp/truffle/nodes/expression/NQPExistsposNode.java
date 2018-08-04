package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "existspos")
public final class NQPExistsposNode extends NQPIntNode {
    @Child private NQPNode listNode;
    @Child private NQPNode keyNode;

    @Deserializer
    public NQPExistsposNode(NQPNode listNode, NQPNode keyNode) {
        this.listNode = listNode;
        this.keyNode = keyNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        NQPList list = (NQPList) listNode.execute(frame);
        long key = keyNode.executeInt(frame);

        if (key < 0) {
            key += list.elems();
        }
        if (key >= 0 && key < list.elems()) {
            return (list.atpos(key) == NQPNull.SINGLETON ? 0 : 1);
        }

        return 0;
    }
}
