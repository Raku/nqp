package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "loadbytecode")
public final class NQPLoadbytecodeNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPLoadbytecodeNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String file = argNode.executeStr(frame);
        System.out.println("loadbytecode NYI");
        return file;
    }
}
