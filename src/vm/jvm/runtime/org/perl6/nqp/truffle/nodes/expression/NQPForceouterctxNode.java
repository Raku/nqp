package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "forceouterctx")
public final class NQPForceouterctxNode extends NQPObjNode {
    @Child private NQPNode codeNode;
    @Child private NQPNode ctxNode;

    @Deserializer
    public NQPForceouterctxNode(NQPNode codeNode, NQPNode ctxNode) {
        this.codeNode = codeNode;
        this.ctxNode = ctxNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object code = codeNode.execute(frame);
        Object ctx = ctxNode.execute(frame);
        System.out.println("forceouterctx NYI");
        return code;
    }
}
