package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "decoderconfigure")
public final class NQPDecoderconfigureNode extends NQPObjNode {
    @Child private NQPNode decoderNode;
    @Child private NQPNode encodingNode;
    @Child private NQPNode configNode;

    @Deserializer
    public NQPDecoderconfigureNode(NQPNode decoderNode, NQPNode encodingNode, NQPNode configNode) {
        this.decoderNode = decoderNode;
        this.encodingNode = encodingNode;
        this.configNode = configNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object decoder = decoderNode.execute(frame);
        //return decoderconfigure(decoderNode.execute(frame), encodingNode.executeStr(frame), configNode.execute(frame));
        return decoder;
    }
}
