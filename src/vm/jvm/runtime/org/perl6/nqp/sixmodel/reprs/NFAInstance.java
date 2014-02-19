package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.SixModelObject;

public class NFAInstance extends SixModelObject {
    public SixModelObject fates;
    public int numStates;
    public NFAStateInfo[][] states;
}
