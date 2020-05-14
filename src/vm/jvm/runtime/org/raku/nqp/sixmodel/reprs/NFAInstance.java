package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.sixmodel.SixModelObject;

public class NFAInstance extends SixModelObject {
    public SixModelObject fates;
    public int numStates;
    public NFAStateInfo[][] states;
}
