package org.perl6.nqp.truffle.nodes.variables;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.dsl.NodeField;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.dsl.Introspectable;
import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.frame.FrameUtil;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.frame.Frame;
import com.oracle.truffle.api.dsl.TypeSystemReference;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.NQPTypes;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.NQPArguments;
import org.perl6.nqp.truffle.runtime.NQPNull;

import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.FoundLexical;

public class NQPGetUnboundLexicalNode extends NQPNode {
    private final String name;

    @Deserializer("get-unbound-lexical")
    public NQPGetUnboundLexicalNode(String name) {
        this.name = name;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Frame searched = frame;
        while (true) {
            FrameSlot found = searched.getFrameDescriptor().findFrameSlot(name);
            if (found != null) {
                return FrameUtil.getObjectSafe(searched, found);
            }

            if (searched.getArguments().length == 1) {
                System.out.println("Can't find unbound lexical: " + name);
                return NQPNull.SINGLETON;
            }
            searched = NQPArguments.getOuterFrame(searched.getArguments());
        }
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
    }
}
