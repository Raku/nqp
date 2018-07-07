package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "x")
public final class NQPXNode extends NQPStrNode {
    @Child private NQPNode leftNode;
    @Child private NQPNode rightNode;
    
    private static final int MAX_GRAPHEMES = 2147483647;

    @Deserializer
    public NQPXNode(NQPNode leftNode, NQPNode rightNode) {
        this.leftNode = leftNode;
        this.rightNode = rightNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        String val = leftNode.executeStr(frame);
        long count = rightNode.executeInt(frame);

        /* Validate count; handle common cases. */
        if (count == 0)
            return "";
        if (count == 1)
            return val;
        if (count < 0)
            throw new RuntimeException("repeat count (" + count + ") cannot be negative");
        if (count > MAX_GRAPHEMES)
            throw new RuntimeException("repeat count (" + count + ") cannot be greater than max allowed number of graphemes " + MAX_GRAPHEMES);

        /* If input string is empty, repeating it is empty. */
        if (val.length() == 0)
            return "";

        /* Total size of the resulting string can't be bigger than a String is allowed to be. */
        long total_count = val.length() * count;
        if (total_count > MAX_GRAPHEMES)
            throw new RuntimeException("Can't repeat string, required number of graphemes " + total_count + " > max allowed of " + MAX_GRAPHEMES);

        StringBuilder retval = new StringBuilder((int)total_count);
        for (long ii = 1; ii <= count; ii++) {
            retval.append(val);
        }
        return retval.toString();
    }
}
