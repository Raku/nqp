package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.FrameSlotTypeException;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.truffle.runtime.NQPNull;

@NodeInfo(shortName = "atkey")
public final class NQPAtkeyNode extends NQPObjNode {
    @Child private NQPNode containerNode;
    @Child private NQPNode keyNode;

    @Deserializer
    public NQPAtkeyNode(NQPNode containerNode, NQPNode keyNode) {
        this.containerNode = containerNode;
        this.keyNode = keyNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object container = containerNode.execute(frame);
        String key = keyNode.executeStr(frame);

        if (container instanceof NQPHash) {
          return ((NQPHash)container).atkey(key);
        } else if (container instanceof MaterializedFrame) {
          FrameSlot slot = ((MaterializedFrame) container).getFrameDescriptor().findFrameSlot(key);
          if (slot == null) {
            return NQPNull.SINGLETON;
          } else {
            try {
              return frame.getObject(slot);
            } catch (FrameSlotTypeException e) {
              throw new RuntimeException("got a FrameSlotTypeException");
            }
          }
        } else {
          throw new RuntimeException("wrong thing passed to atkey");
        }
    }
}
