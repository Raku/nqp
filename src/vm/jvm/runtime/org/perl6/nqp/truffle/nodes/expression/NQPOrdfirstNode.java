package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "ordfirst")
public final class NQPOrdfirstNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPOrdfirstNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        String str = argNode.executeStr(frame);
        if (str.isEmpty()) {
            return -1;
	}
	else {
            return str.codePointAt(0);
	}
    }
}
