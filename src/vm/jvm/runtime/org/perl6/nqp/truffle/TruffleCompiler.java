package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import org.perl6.nqp.truffle.NQPSayNode;

public class TruffleCompiler {
    public static void run() {
        RootNode rootNode = new NQPRootNode(null, new FrameDescriptor(), new NQPSayNode());

        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }
}

