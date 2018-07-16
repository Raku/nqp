package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "atpos")
public final class NQPAtposNode extends NQPObjNode {
    @Child private NQPNode listNode;
    @Child private NQPNode indexNode;

    @Deserializer
    public NQPAtposNode(NQPNode listNode, NQPNode indexNode) {
        this.listNode = listNode;
        this.indexNode = indexNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return ((NQPList)listNode.execute(frame)).atpos(indexNode.executeInt(frame));
    }
}
