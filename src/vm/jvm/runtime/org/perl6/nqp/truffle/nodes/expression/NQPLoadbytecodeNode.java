package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.io.File;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.ByteCodeRunnerGen;
import org.perl6.nqp.truffle.runtime.DynamicContext;
import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.ThreadContext;
import com.oracle.truffle.api.frame.FrameUtil;
import com.oracle.truffle.api.frame.FrameSlot;

@NodeInfo(shortName = "loadbytecode")
public final class NQPLoadbytecodeNode extends NQPStrNode {
    @Child private NQPNode argNode;
    private final GlobalContext globalContext;
    private final ThreadContext threadContext;
    private final FrameSlot contextSlot;

    @Deserializer
    public NQPLoadbytecodeNode(GlobalContext globalContext, ThreadContext threadContext, FrameSlot contextSlot, NQPNode argNode) {
        this.globalContext = globalContext;
        this.threadContext = threadContext;
        this.contextSlot = contextSlot;
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String fileName = argNode.executeStr(frame);

        File file = new File(fileName);
        if (!file.exists() && fileName.equals("ModuleLoader.truffle6")) {
            /* We special case the initial ModuleLoader loading. */
            fileName = "gen/truffle/stage1/" + fileName;
        }

        DynamicContext context = (DynamicContext) FrameUtil.getObjectSafe(frame, contextSlot);

        (new ByteCodeRunnerGen()).runByteCode(globalContext, threadContext, context, fileName);

        return fileName;
    }
}
