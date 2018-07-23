package org.perl6.nqp.truffle.nodes;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.expression.NQPSmartNumifyNodeGen;
import org.perl6.nqp.dsl.Deserializer;

public class DeserializeNodes {
    @Deserializer("smart-numify")
    public static NQPNode smartNumify(NQPNode valueNode) {
        return NQPSmartNumifyNodeGen.create(valueNode);
    }
}

