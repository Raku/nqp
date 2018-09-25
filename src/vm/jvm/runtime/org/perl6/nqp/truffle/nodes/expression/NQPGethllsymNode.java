package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.dsl.Global;

@NodeInfo(shortName = "gethllsym")
public final class NQPGethllsymNode extends NQPObjNode {
    public final HashMap<String, HLL> hlls;
    @Child private NQPNode hllNameNode;
    @Child private NQPNode symbolNode;

    @Deserializer
    public NQPGethllsymNode(@Global HashMap<String, HLL> hlls, NQPNode hllNameNode, NQPNode symbolNode) {
        this.hlls = hlls;
        this.hllNameNode = hllNameNode;
        this.symbolNode = symbolNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String hllName = hllNameNode.executeStr(frame);
        String symbolName = symbolNode.executeStr(frame);

        if (!hlls.containsKey(hllName)) {
            return NQPNull.SINGLETON;
        }

        return hlls.get(hllName).getSymbol(symbolName);
    }
}
