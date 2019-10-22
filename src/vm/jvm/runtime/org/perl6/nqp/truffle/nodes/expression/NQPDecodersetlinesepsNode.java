package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "decodersetlineseps")
public final class NQPDecodersetlinesepsNode extends NQPObjNode {
    @Child private NQPNode decoderNode;
    @Child private NQPNode sepsNode;

    @Deserializer
    public NQPDecodersetlinesepsNode(NQPNode decoderNode, NQPNode sepsNode) {
        this.decoderNode = decoderNode;
        this.sepsNode = sepsNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object decoder = decoderNode.execute(frame);
        return decoder;
    }
}
