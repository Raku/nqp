package org.perl6.nqp.truffle.runtime;

import java.util.ArrayList;

public final class NQPListStr {
    ArrayList<String> contents;

    public NQPListStr() {
        this.contents = new ArrayList<String>();
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
        String value = contents.get((int)pos);
        if (value == null) {
            return null;
        } else {
            return value;
        }
    }

    public String bindposStr(long pos, String value) {
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
