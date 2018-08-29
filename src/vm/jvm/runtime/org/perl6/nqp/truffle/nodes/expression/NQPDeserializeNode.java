package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.nio.ByteBuffer;
import java.util.HashMap;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.NQPScope;
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

    private final HashMap<String, SerializationContext> scs;

    public NQPDeserializeNode(NQPNode blobNode, NQPNode scRefNode, NQPNode shNode, NQPNode crNode, NQPNode conflictNode, HashMap<String, SerializationContext> scs) {
        this.blobNode = blobNode;
        this.scRefNode = scRefNode;
        this.shNode = shNode;
        this.crNode = crNode;
        this.conflictNode = conflictNode;
        this.scs = scs;
    }

    @Deserializer("deserialize")
    public static NQPDeserializeNode deserialize(NQPScope scope, NQPNode blobNode, NQPNode scRefNode, NQPNode shNode, NQPNode crNode, NQPNode conflictNode) {
        return new NQPDeserializeNode(blobNode, scRefNode, shNode, crNode, conflictNode, scope.getGlobalContext().scs);
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

        SerializationReader sr = new SerializationReader(sc, sh, binaryBlob, scs);
        //            tc, sc, shArray, crArray, crCount, binaryBlob);
        sr.deserialize();

        return blob; 
    }
}
