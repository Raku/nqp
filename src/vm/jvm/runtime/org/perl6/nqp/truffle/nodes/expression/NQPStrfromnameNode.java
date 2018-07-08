package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.runtime.StringOps;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "strfromname")
public final class NQPStrfromnameNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPStrfromnameNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        long cp = StringOps.codepointfromname(argNode.executeStr(frame).toUpperCase());
        /* nqp::chr has been inlined, since it needs a thread context */
        return cp < 0
            ? ""
            : ( new StringBuffer() ).append( Character.toChars( (int) cp) ).toString();
    }
}
