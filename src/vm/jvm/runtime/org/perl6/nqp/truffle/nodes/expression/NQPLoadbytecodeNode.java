package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.io.File;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.ByteCodeRunnerGen;

@NodeInfo(shortName = "loadbytecode")
public final class NQPLoadbytecodeNode extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPLoadbytecodeNode(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {

        String fileName = argNode.executeStr(frame);

        System.out.println("loadbytecode " + fileName);

        File file = new File(fileName);
        if (!file.exists() && fileName.equals("ModuleLoader.truffle6")) {
            /* We special case the initial ModuleLoader loading. */
            System.out.println("We have the initial ModuleLoader");
            fileName = "gen/truffle/stage1/" + fileName;
        }

        (new ByteCodeRunnerGen()).runByteCode(fileName);

        return fileName;
    }
}
