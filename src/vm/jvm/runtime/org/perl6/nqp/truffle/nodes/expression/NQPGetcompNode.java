package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.dsl.Global;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "getcomp")
public final class NQPGetcompNode extends NQPObjNode {
    @Child private NQPNode nameNode;
    HashMap<String, Object> compilerRegistry;

    @Deserializer
    public NQPGetcompNode(@Global HashMap<String, Object> compilerRegistry, NQPNode nameNode) {
        this.compilerRegistry = compilerRegistry;
        this.nameNode = nameNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object comp = compilerRegistry.get(nameNode.executeStr(frame));
        return comp == null ? NQPNull.SINGLETON : comp;
    }
}
