package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.NQPListInt;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "atpos_i")
public final class NQPAtposIntNode extends NQPIntNode {
    @Child private NQPNode listNode;
    @Child private NQPNode indexNode;

    @Deserializer
    public NQPAtposIntNode(NQPNode listNode, NQPNode indexNode) {
        this.listNode = listNode;
        this.indexNode = indexNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return ((NQPListInt)listNode.execute(frame)).atposInt(indexNode.executeInt(frame));
    }
}
