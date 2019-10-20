package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.util.HashMap;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.TypeObject;
import org.perl6.nqp.dsl.Global;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "sethllconfig")
public final class NQPSethllconfigNode extends NQPObjNode {
    private final HashMap<String, HLL> hlls;
    @Child private NQPNode languageNode;
    @Child private NQPNode configHashNode;

    @Deserializer
    public NQPSethllconfigNode(@Global HashMap<String, HLL> hlls, NQPNode languageNode, NQPNode configHashNode) {
        this.hlls = hlls;
        this.languageNode = languageNode;
        this.configHashNode = configHashNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String language = languageNode.executeStr(frame);
        NQPHash configHash = (NQPHash) configHashNode.execute(frame);

        HLL hll = hlls.get(language);
        if (configHash.existskey("list") == 1) {
            hll.listType = (TypeObject) configHash.atkey("list");
        }

        if (configHash.existskey("slurpy_array") == 1) {
            hll.slurpyArrayType = (TypeObject) configHash.atkey("slurpy_array");
        }

        if (configHash.existskey("array_iter") == 1) {
            hll.arrayIteratorType = (TypeObject) configHash.atkey("array_iter");
        }

        if (configHash.existskey("hash_iter") == 1) {
            hll.hashIteratorType = (TypeObject) configHash.atkey("hash_iter");
        }

        return configHash;
    }
}
