package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstanceUInt8;

@NodeInfo(shortName = "writefh")
public final class NQPWritefhNode extends NQPIntNode {
    @Child private NQPNode handleNode;
    @Child private NQPNode bufNode;

    @Deserializer
    public NQPWritefhNode(NQPNode handleNode, NQPNode bufNode) {
        this.handleNode = handleNode;
        this.bufNode = bufNode;
    }

    @Override
    public long executeInt(VirtualFrame frame) {
        Object handle = handleNode.execute(frame);
        Object buf = bufNode.execute(frame);

        System.out.print(((VMArrayInstanceUInt8) buf).hack);

        return 0;
    }
}
