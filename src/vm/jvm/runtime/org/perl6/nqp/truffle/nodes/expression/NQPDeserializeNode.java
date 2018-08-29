package org.perl6.nqp.truffle.nodes.expression;

import java.nio.ByteBuffer;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.runtime.NQPListStr;
import org.perl6.nqp.truffle.runtime.Base64;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

@NodeInfo(shortName = "deserialize")
public final class NQPDeserializeNode extends NQPStrNode {
    @Child private NQPNode blobNode;
    @Child private NQPNode scRefNode;
    @Child private NQPNode shNode;
    @Child private NQPNode crNode;
    @Child private NQPNode conflictNode;

    @Deserializer
    public NQPDeserializeNode(NQPNode blobNode, NQPNode scRefNode, NQPNode shNode, NQPNode crNode, NQPNode conflictNode) {
        this.blobNode = blobNode;
        this.scRefNode = scRefNode;
        this.shNode = shNode;
        this.crNode = crNode;
        this.conflictNode = conflictNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String blob = blobNode.executeStr(frame);
        SerializationContext sc = (SerializationContext) scRefNode.execute(frame);
        NQPListStr shList = (NQPListStr) shNode.execute(frame);
        Object cr = crNode.execute(frame);
        Object conflict = conflictNode.execute(frame);

        System.out.println("deserializing");
        ByteBuffer binaryBlob = Base64.decode(blob);


        String[] sh = new String[shList.elems()];

        SerializationReader sr = new SerializationReader(sc, sh, binaryBlob);
        //            tc, sc, shArray, crArray, crCount, binaryBlob);
        sr.deserialize();

        return blob; 
    }
}
