package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.NQPList;
import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "split")
public final class NQPSplitNode extends NQPObjNode {
    @Child private NQPNode delimiterNode;
    @Child private NQPNode stringNode;

    @Deserializer
    public NQPSplitNode(NQPNode delimiterNode, NQPNode stringNode) {
        this.delimiterNode = delimiterNode;
        this.stringNode = stringNode;
    }

    @Override
    public Object execute(VirtualFrame frame) {
        String delimiter = delimiterNode.executeStr(frame);
        String string = stringNode.executeStr(frame);

        // TODO: use slurpy_array from HLL
        NQPList array = new NQPList();

        int slen = string.length();
        if (slen == 0) {
            return array;
        }

        int dlen = delimiter.length();
        if (dlen == 0) {
            for (int i = 0; i < slen; i++) {
                String item = string.substring(i, i+1);
                // TODO: box with str_box from HLL
                array.push(item);
            }
        } else {
            int curpos = 0;
            int matchpos = string.indexOf(delimiter);
            while (matchpos > -1) {
                String item = string.substring(curpos, matchpos);

                // TODO: box with str_box from HLL
                array.push(item);

                curpos = matchpos + dlen;
                matchpos = string.indexOf(delimiter,  curpos);
            }

            String tail = string.substring(curpos);

            // TODO: box with str_box from HLL
            array.push(tail);
        }
        return array;
    }
}
