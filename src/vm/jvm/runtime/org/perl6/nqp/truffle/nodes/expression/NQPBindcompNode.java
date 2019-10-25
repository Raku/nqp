package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.dsl.Global;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import java.util.HashMap;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "bindcomp")
public final class NQPBindcompNode extends NQPObjNode {
    @Child private NQPNode nameNode;
    @Child private NQPNode compNode;
    HashMap<String, Object> compilerRegistry;

    @Deserializer
    public NQPBindcompNode(@Global HashMap<String, Object> compilerRegistry, NQPNode nameNode, NQPNode compNode) {
        this.compilerRegistry = compilerRegistry;
        this.nameNode = nameNode;
        this.compNode = compNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String name = nameNode.executeStr(frame);
        Object comp = compNode.execute(frame);
        compilerRegistry.put(name, comp);
        return comp;
    }
}
