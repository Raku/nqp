package org.perl6.nqp.truffle.sixmodel.reprs;

import java.util.concurrent.locks.Condition;
import org.perl6.nqp.truffle.sixmodel.STable;

public class ConditionVariableInstance extends FixedSizeObject {
    public Condition condvar;

    public ConditionVariableInstance(STable stable) {
        super(stable);
    }
}
