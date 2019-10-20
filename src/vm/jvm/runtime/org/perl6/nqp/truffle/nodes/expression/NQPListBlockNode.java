package org.perl6.nqp.truffle.nodes.expression;

import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;
import com.oracle.truffle.api.nodes.NodeInfo;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.sixmodel.reprs.VMArrayInstance;
import org.perl6.nqp.truffle.NQPScope;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "list_b")
public final class NQPListBlockNode extends NQPObjNode {
    NQPScope scope;
    String[] cuids;
    private final HLL hll;

    @Deserializer("list_b")
    public NQPListBlockNode(HLL hll, NQPScope scope, String[] cuids) {
        this.hll = hll;
        this.scope = scope;
        this.cuids = cuids;
    }


    @Override
    public Object execute(VirtualFrame frame) {
        VMArrayInstance list = (VMArrayInstance) hll.listType.stable.repr.allocate();

        for (String cuid : cuids) {
            list.push(scope.getCuid(cuid));
        }

        return list;
    }
}
