package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "BVal")
public final class NQPBValNode extends NQPObjNode {
    final String cuid;

    @Deserializer
    public NQPBValNode(String cuid) {
        this.cuid = cuid;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        //return bval(argNode.executeStr(frame));
        System.out.println("BVal NYI");
        return org.perl6.nqp.truffle.runtime.NQPNull.SINGLETON;
    }
}
