package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPIntNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstanceUInt8;
import org.perl6.nqp.truffle.sixmodel.reprs.IOHandleInstance;
import org.perl6.nqp.truffle.io.IIOSyncWritable;

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

        if (handle instanceof IOHandleInstance) {
            IOHandleInstance h = (IOHandleInstance)handle;
            if (h.handle instanceof IIOSyncWritable)
                return ((IIOSyncWritable)h.handle).print(((VMArrayInstanceUInt8) buf).hack);
            else
                throw new RuntimeException("This handle does not support write");
        }
        else {
            throw new RuntimeException("writefh requires an object with the IOHandle REPR");
        }
    }
}
