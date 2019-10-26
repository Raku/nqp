package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "setcodename")
public final class NQPSetcodenameNode extends NQPObjNode {
    @Child private NQPNode codeNode;
    @Child private NQPNode nameNode;

    @Deserializer
    public NQPSetcodenameNode(NQPNode codeNode, NQPNode nameNode) {
        this.codeNode = codeNode;
        this.nameNode = nameNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        NQPCodeRef code = (NQPCodeRef) codeNode.execute(frame);
        code.name = nameNode.executeStr(frame);
        return code;
    }
}
