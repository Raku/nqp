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
import com.oracle.truffle.api.frame.FrameUtil;
import com.oracle.truffle.api.frame.FrameSlot;

@NodeInfo(shortName = "loadbytecode")
public final class NQPLoadbytecodeNode extends NQPStrNode {
    @Child private NQPNode argNode;
    private final GlobalContext globalContext;
    private final FrameSlot contextSlot;

    public NQPLoadbytecodeNode(GlobalContext globalContext, FrameSlot contextSlot, NQPNode argNode) {
        this.globalContext = globalContext;
        this.contextSlot = contextSlot;
        this.argNode = argNode;
    }

    @Deserializer("loadbytecode")
    public static NQPLoadbytecodeNode deserialize(NQPScope scope, NQPNode argNode) {
        return new NQPLoadbytecodeNode(scope.getGlobalContext(), scope.getContextSlot(), argNode);
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

        (new ByteCodeRunnerGen()).runByteCode(globalContext, context, fileName);

        return fileName;
    }
}
