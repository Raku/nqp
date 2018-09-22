package org.perl6.nqp.truffle.runtime;

import java.util.ArrayList;

public final class NQPListInt {
    private ArrayList<Long> contents;

    public NQPListInt() {
        this.contents = new ArrayList<>();
    }

    public long pushInt(long element) {
        contents.add(element);       
        return element;
    }

    public long popInt() {
        return contents.remove(contents.size() - 1);
    }

    public long unshiftInt(long element) {
        contents.add(0, element);
        return element;
    }

    public long shiftInt() {
        return contents.remove(0);
    }

    public long atposInt(long pos) {
        if (pos < 0) {
            pos = pos + contents.size();
        }

        return pos >= contents.size() ? 0 : contents.get((int)pos);
    }

    public long bindposInt(long pos, long value) {
        if (pos < 0) {
            pos = pos + contents.size();
        }

        if (pos >= contents.size()) {
            for (int i = contents.size(); i < pos; i++) {
                contents.add(0l);
            }
            contents.add(value);
            return value;
        } else {
            return contents.set((int)pos, value);
        }
    }

    public int elems() {
        return contents.size();
    }
}
