package org.perl6.nqp.truffle.nodes.sixmodel;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.nio.ByteBuffer;
import java.util.HashMap;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.dsl.Global;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.truffle.runtime.NQPListStr;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.runtime.Base64;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

@NodeInfo(shortName = "deserialize")
public final class NQPDeserializeNode extends NQPStrNode {
    @Child private NQPNode blobNode;
    @Child private NQPNode scNode;
    @Child private NQPNode shNode;
    @Child private NQPNode crNode;
    @Child private NQPNode conflictNode;

    private final HashMap<String, SerializationContext> scs;
    private final HashMap<String, HLL> hlls;

    @Deserializer
    public NQPDeserializeNode(NQPNode blobNode, NQPNode scNode, NQPNode shNode, NQPNode crNode, NQPNode conflictNode, @Global HashMap<String, SerializationContext> scs, @Global HashMap<String, HLL> hlls) {
        this.blobNode = blobNode;
        this.scNode = scNode;
        this.shNode = shNode;
        this.crNode = crNode;
        this.conflictNode = conflictNode;
        this.scs = scs;
        this.hlls = hlls;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String blob = blobNode.executeStr(frame);
        SerializationContext sc = (SerializationContext) scNode.execute(frame);
        NQPListStr shList = (NQPListStr) shNode.execute(frame);
        NQPList crList = (NQPList) crNode.execute(frame);
        Object conflict = conflictNode.execute(frame);

        ByteBuffer binaryBlob = Base64.decode(blob);

        String[] sh = new String[shList.elems()];
        for (int i = 0; i < shList.elems(); i++) {
            sh[i] = shList.atposStr(i);
        }

        NQPCodeRef[] cr = new NQPCodeRef[crList.elems()];
        for (int i = 0; i < crList.elems(); i++) {
            cr[i] = (NQPCodeRef) crList.atpos(i);
        }

        SerializationReader sr = new SerializationReader(sc, sh, cr, binaryBlob, scs, hlls);
        sr.deserialize();

        return blob; 
    }
}
