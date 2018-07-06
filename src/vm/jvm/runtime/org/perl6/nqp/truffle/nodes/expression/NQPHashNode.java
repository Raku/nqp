package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.NQPHash;

@NodeInfo(shortName = "hash")
public final class NQPHashNode extends NQPObjNode {
    @Children private final NQPNode[] keyValueNodes;

    @Deserializer
    public NQPHashNode(NQPNode[] keyValueNodes) {
        this.keyValueNodes = keyValueNodes;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        NQPHash hash = new NQPHash();
        for (int i = 0; i < keyValueNodes.length; i += 2) {
            hash.bindkey(keyValueNodes[i].executeStr(frame), keyValueNodes[i+1].execute(frame));
        }
        return hash;
    }
}
