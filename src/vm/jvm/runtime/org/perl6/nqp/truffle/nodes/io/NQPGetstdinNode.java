package org.perl6.nqp.truffle.nodes.io;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.io.StandardReadHandle;
import org.perl6.nqp.truffle.sixmodel.reprs.IOHandleInstance;

@NodeInfo(shortName = "getstdin")
public final class NQPGetstdinNode extends NQPObjNode {
    HLL hll;
    GlobalContext globalContext;

    @Deserializer
    public NQPGetstdinNode(HLL hll, GlobalContext globalContext) {
        this.hll = hll;
        this.globalContext = globalContext;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        IOHandleInstance handle = (IOHandleInstance) hll.ioType.stable.repr.allocate();
        handle.handle = new StandardReadHandle(globalContext.in);
        return handle;
    }
}
