package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "getcurhllsym")
public final class NQPGetcurhllsymNode extends NQPObjNode {
    private final HLL currentHLL;
    @Child private NQPNode symNode;

    @Deserializer
    public NQPGetcurhllsymNode(HLL currentHLL, NQPNode symNode) {
        this.currentHLL = currentHLL;
        this.symNode = symNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return currentHLL.getSymbol(symNode.executeStr(frame));
    }
}
