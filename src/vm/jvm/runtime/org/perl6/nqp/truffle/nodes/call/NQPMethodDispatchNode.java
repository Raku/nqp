package org.perl6.nqp.truffle.nodes.call;

import com.oracle.truffle.api.dsl.ReportPolymorphism;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.dsl.TypeSystemReference;
import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.nodes.IndirectCallNode;

import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.nodes.NQPGetSTableNode;
import org.perl6.nqp.truffle.NQPTypes;
import org.perl6.nqp.truffle.runtime.NQPArguments;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;

@ReportPolymorphism
@TypeSystemReference(NQPTypes.class)
public abstract class NQPMethodDispatchNode extends Node {
    public static final int INLINE_CACHE_SIZE = 2;

    public abstract Object executeDispatch(Object invocant, String method, Object[] arguments);

    @TruffleBoundary
    static NQPCodeRef getCodeRef(NQPGetSTableNode getStableNode, STable stable, String method) {
        Object foundMethod = stable.methodCache.get(method);

        if (foundMethod != null) {
        } else {
            throw new RuntimeException("Can't find method" + method);
        }

        if (foundMethod instanceof NQPCodeRef) {
            return (NQPCodeRef) foundMethod;
        } else {
            STable methodStable = getStableNode.executeStable(foundMethod);

            if (methodStable.invocationSpec != null) {
                /* TODO - full invocationSpec support */
                Object extracted = ((DynamicObject) foundMethod).get(methodStable.invocationSpec.attrName);
                return (NQPCodeRef) extracted;
            }

            throw new RuntimeException("NYI");
        }
    }

    @Specialization
    protected static Object doSlowPath(Object invocant, String method, Object[] arguments,
        @Cached("create()") NQPGetSTableNode getStableNode,
        @Cached("create()") IndirectCallNode callNode
    ) {
        STable stable = getStableNode.executeStable(invocant);
        NQPCodeRef function = getCodeRef(getStableNode, stable, method);
        NQPArguments.setOuterFrame(arguments, function.getOuterFrame());
        return callNode.call(function.getCallTarget(), arguments);
    }
}
