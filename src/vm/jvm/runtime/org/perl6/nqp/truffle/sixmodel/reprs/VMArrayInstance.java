package org.perl6.nqp.truffle.sixmodel.reprs;

import java.util.ArrayList;

import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.truffle.sixmodel.STable;

public class VMArrayInstance extends FixedSizeObject {
    private ArrayList<Object> contents;

    public VMArrayInstance(STable stable) {
        super(stable);
        this.contents = new ArrayList<>();
    }

    public Object push(Object element) {
        contents.add(element);       
        return element;
    }

    public Object pop() {
        return contents.remove(contents.size() - 1);
    }

    public Object unshift(Object element) {
        contents.add(0, element);
        return element;
    }

    public Object shift() {
        return contents.remove(0);
    }

    public Object atpos(long pos) {
        if (pos < 0) {
            pos = pos + contents.size();
        }
        return pos >= contents.size() ? NQPNull.SINGLETON : contents.get((int)pos);
    }

    public Object bindpos(long pos, Object value) {
        if (pos < 0) {
            pos = pos + contents.size();
        }

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
