package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindhllsym")
public final class NQPBindhllsymNode extends NQPObjNode {
    public final HashMap<String, HLL> hlls;
    @Child private NQPNode hllNameNode;
    @Child private NQPNode symbolNode;
    @Child private NQPNode valueNode;

    public NQPBindhllsymNode(HashMap<String, HLL> hlls, NQPNode hllNameNode, NQPNode symbolNode, NQPNode valueNode) {
        this.hlls = hlls;
        this.hllNameNode = hllNameNode;
        this.symbolNode = symbolNode;
        this.valueNode = valueNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String hllName = hllNameNode.executeStr(frame);
        String symbol = symbolNode.executeStr(frame);
        Object value = valueNode.execute(frame);
          
        if (!hlls.containsKey(hllName)) {
            hlls.put(hllName, new HLL());
        }

        return hlls.get(hllName).bindSymbol(symbol, value);
    }

    @Deserializer("bindhllsym")
    public static NQPBindhllsymNode deserialize(NQPScope scope, NQPNode hllNameNode, NQPNode symbolNode, NQPNode valueNode) {
        return new NQPBindhllsymNode(scope.getGlobalContext().hlls, hllNameNode, symbolNode, valueNode);
    }
}
