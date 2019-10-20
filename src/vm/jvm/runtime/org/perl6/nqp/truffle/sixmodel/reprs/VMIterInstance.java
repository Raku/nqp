package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;

public class VMIterInstance extends FixedSizeObject {
    private VMArrayInstance array;
    private int target;
    private int idx;

    public VMIterInstance(STable stable) {
        super(stable);
        this.idx = 0;
    }

    public void setArray(Object array) {
        this.array = (VMArrayInstance) array;
        this.target = this.array.elems();
    }

    public Object shift() {
        return array.atpos(idx++);
    }

    public boolean boolify() {
        return idx < target;
    }
}
