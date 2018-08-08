package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindcurhllsym")
public final class NQPBindcurhllsymNode extends NQPObjNode {
    private final HLL currentHLL;
    @Child private NQPNode symbolNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindcurhllsymNode(HLL currentHLL, NQPNode symbolNode, NQPNode valueNode) {
        this.currentHLL = currentHLL;
        this.symbolNode = symbolNode;
        this.valueNode = valueNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        return currentHLL.bindSymbol(symbolNode.executeStr(frame), valueNode.execute(frame));
    }
}
