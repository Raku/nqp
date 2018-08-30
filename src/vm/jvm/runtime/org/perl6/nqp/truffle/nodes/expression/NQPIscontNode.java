package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "iscont")
public final class NQPIscontNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIscontNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        SixModelObject obj = (SixModelObject)argNode.execute(frame);
        return obj == null || obj.st.ContainerSpec == null ? 0 : 1;
    }
}
