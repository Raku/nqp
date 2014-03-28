package org.perl6.nqp.sixmodel.reprs;

import java.util.concurrent.locks.Condition;

import org.perl6.nqp.sixmodel.SixModelObject;

public class ConditionVariableInstance extends SixModelObject {
	public Condition condvar;
}
