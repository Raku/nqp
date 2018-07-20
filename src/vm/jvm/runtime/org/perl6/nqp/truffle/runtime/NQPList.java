package org.perl6.nqp.truffle.runtime;

import java.util.ArrayList;

public final class NQPList {
    ArrayList<Object> contents;

    public NQPList() {
        this.contents = new ArrayList<Object>();
    }

    public void push(Object element) {
        contents.add(element);       
    }

    public Object pop() {
        return contents.remove(contents.size() - 1);
    }

    public Object atpos(long pos) {
        Object value = contents.get((int)pos);
        if (value == null) {
            return NQPNull.SINGLETON;
        } else {
            return value;
        }
    }

    public Object bindpos(long pos, Object value) {
        if (pos >= contents.size()) {
            for (int i = contents.size(); i < pos; i++) {
                contents.add(NQPNull.SINGLETON);
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
