package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstanceUInt8;
import org.perl6.nqp.dsl.Deserializer;
        
@NodeInfo(shortName = "encode")
public final class NQPEncodeNode extends NQPObjNode {
    @Child private NQPNode strNode;
    @Child private NQPNode encodingNode;
    @Child private NQPNode resultNode;

    @Deserializer
    public NQPEncodeNode(NQPNode strNode, NQPNode encodingNode, NQPNode resultNode) {
        this.strNode = strNode;
        this.encodingNode = encodingNode;
        this.resultNode = resultNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String str = strNode.executeStr(frame);
        String encoding = encodingNode.executeStr(frame);
        Object result = resultNode.execute(frame);

        ((VMArrayInstanceUInt8) result).hack = str;

        return result;
    }
}
