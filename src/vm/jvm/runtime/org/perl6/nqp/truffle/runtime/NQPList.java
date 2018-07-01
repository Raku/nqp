package org.perl6.nqp.truffle.runtime;

import java.util.ArrayList;

public final class NQPList {
    ArrayList<Object> contents;

    public NQPList() {
        this.contents = new ArrayList<Object>();
    }

    public void push(Object element) {
        this.contents.add(element);       
    }
}
