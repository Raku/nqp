package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "getcodename")
public final class NQPGetcodenameNode extends NQPStrNode {
    @Child private NQPNode codeNode;

    @Deserializer
    public NQPGetcodenameNode(NQPNode codeNode) {
        this.codeNode = codeNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return ((NQPCodeRef) codeNode.execute(frame)).name;
    }
}
