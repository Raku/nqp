package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.truffle.runtime.ContainerOps;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "iscont_i")
public final class NQPIscontIntNode extends NQPIntNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPIscontIntNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        return ContainerOps.getContainerPrimitive((SixModelObject)argNode.execute(frame)) == StorageSpec.BP_INT ? 1 : 0;
    }
}
