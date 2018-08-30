package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "getlex_o")
public final class NQPGetlexNode extends NQPObjNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;

    @Deserializer
    public NQPGetlexNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public SixModelObject execute(VirtualFrame frame) {
        return ((CallFrame)leftNode.execute(frame)).oLex[(int)rightNode.executeInt(frame)];
    }
}
