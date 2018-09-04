package org.perl6.nqp.truffle.runtime;

import java.util.ArrayList;

public final class NQPListNum {
    ArrayList<Double> contents;

    public NQPListNum() {
        this.contents = new ArrayList<Double>();
    }

    public double pushNum(double element) {
        contents.add(element);       
        return element;
    }

    public double popNum() {
        return contents.remove(contents.size() - 1);
    }

    public double unshiftNum(double element) {
        contents.add(0, element);
        return element;
    }

    public double shiftNum() {
        return contents.remove(0);
    }

    public double atposNum(double pos) {
        if (pos < 0) {
            pos = pos + contents.size();
        }
        return pos >= contents.size() ? 0.0 : contents.get((int)pos);
    }

    public double bindposNum(double pos, double value) {
        if (pos < 0) {
            pos = pos + contents.size();
        }

        if (pos >= contents.size()) {
            for (int i = contents.size(); i < pos; i++) {
                contents.add(0.0);
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
