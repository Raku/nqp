package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.io.FileHandle;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.sixmodel.reprs.IOHandleInstance;
import org.perl6.nqp.truffle.runtime.HLL;

@NodeInfo(shortName = "open")
public final class NQPOpenNode extends NQPObjNode {
    HLL hll;
    @Child private NQPNode pathNode;
    @Child private NQPNode modeNode;

    @Deserializer
    public NQPOpenNode(HLL hll, NQPNode pathNode, NQPNode modeNode) {
        this.hll = hll;
        this.pathNode = pathNode;
        this.modeNode = modeNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        IOHandleInstance handle = (IOHandleInstance) hll.ioType.stable.repr.allocate();
        handle.handle = new FileHandle(pathNode.executeStr(frame), modeNode.executeStr(frame));
        return handle;
    }
}
