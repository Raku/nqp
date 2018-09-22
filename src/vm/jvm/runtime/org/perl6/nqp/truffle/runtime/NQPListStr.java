package org.perl6.nqp.truffle.runtime;

import java.util.ArrayList;

public final class NQPListStr {
    private ArrayList<String> contents;

    public NQPListStr() {
        this.contents = new ArrayList<>();
    }

    public String pushStr(String element) {
        contents.add(element);       
        return element;
    }

    public String popStr() {
        return contents.remove(contents.size() - 1);
    }

    public String unshiftStr(String element) {
        contents.add(0, element);
        return element;
    }

    public String shiftStr() {
        return contents.remove(0);
    }

    public String atposStr(long pos) {
        if (pos < 0) {
            pos = pos + contents.size();
        }
        return pos >= contents.size() ? null : contents.get((int)pos);
    }

    public String bindposStr(long pos, String value) {
        if (pos < 0) {
            pos = pos + contents.size();
        }
        if (pos >= contents.size()) {
            for (int i = contents.size(); i < pos; i++) {
                contents.add(null);
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
