package org.perl6.nqp.truffle.runtime;

public final class NQPListIterator {
    private final NQPList list;
    private final int target;
    private int idx;

    public NQPListIterator(NQPList list) {
        this.list = list;
        this.idx = 0;
        this.target = list.elems();
    }

    public Object shift() {
        return list.atpos(idx++);
    }

    public boolean boolify() {
        return idx < target;
    }
}
