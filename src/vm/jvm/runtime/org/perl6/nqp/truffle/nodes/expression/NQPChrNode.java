package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "chr")
public final class NQPChrNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPChrNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        long ord = argNode.executeInt(frame);

        if (ord < 0)
            throw new RuntimeException("chr codepoint cannot be negative");

        return (new StringBuffer()).append(Character.toChars((int)ord)).toString();
    }
}
