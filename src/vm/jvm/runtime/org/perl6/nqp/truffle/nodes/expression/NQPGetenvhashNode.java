package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.Map;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "getenvhash")
public final class NQPGetenvhashNode extends NQPObjNode {

    @Deserializer
    public NQPGetenvhashNode() {
    }

    @Override
    public Object execute(VirtualFrame frame) {
        // TODO: use hash from HLL
        NQPHash envHash = new NQPHash();

        Map<String, String> env = System.getenv();
        for (String envName : env.keySet()) {
          // TODO: box with str_box from HLL
            envHash.bindkey(envName, env.get(envName));
        }
    
        return envHash;
    }
}
