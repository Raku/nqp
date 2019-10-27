package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.dsl.Global;

@NodeInfo(shortName = "bindhllsym")
public final class NQPBindhllsymNode extends NQPObjNode {
    private final GlobalContext globalContext;
    private final HashMap<String, HLL> hlls;
    @Child private NQPNode hllNameNode;
    @Child private NQPNode symbolNode;
    @Child private NQPNode valueNode;

    @Deserializer
    public NQPBindhllsymNode(GlobalContext globalContext, @Global HashMap<String, HLL> hlls, NQPNode hllNameNode, NQPNode symbolNode, NQPNode valueNode) {
        this.hlls = hlls;
        this.hllNameNode = hllNameNode;
        this.symbolNode = symbolNode;
        this.valueNode = valueNode;
        this.globalContext = globalContext;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String hllName = hllNameNode.executeStr(frame);
        String symbol = symbolNode.executeStr(frame);
        Object value = valueNode.execute(frame);
          
        if (!hlls.containsKey(hllName)) {
            hlls.put(hllName, new HLL(globalContext));
        }

        return hlls.get(hllName).bindSymbol(symbol, value);
    }
}
