package org.perl6.nqp.truffle.nodes.sixmodel;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNodeWithSTableGetting;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "setmethcache")
public final class NQPSetmethcacheNode extends NQPObjNodeWithSTableGetting {
    @Child private NQPNode objNode;
    @Child private NQPNode methodsNode;

    @Deserializer
    public NQPSetmethcacheNode(NQPNode objNode, NQPNode methodsNode) {
        this.objNode = objNode;
        this.methodsNode = methodsNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object obj = objNode.execute(frame);
        NQPHash methodCache = ((NQPHash) methodsNode.execute(frame));
        getStable(obj).methodCache = methodCache.getContents();
        return obj;
    }
}
