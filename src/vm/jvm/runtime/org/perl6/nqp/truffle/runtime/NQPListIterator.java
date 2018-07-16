package org.perl6.nqp.truffle.runtime;

public final class NQPListIterator {
    final NQPList list;
    final int target;
    int idx;

    public NQPListIterator(NQPList list) {
        this.list = list;
        idx = 0;
        target = list.elems();
    }

    public Object shift() {
        return list.atpos(idx++);
    }

    public boolean boolify() {
        return idx < target;
    }
}
