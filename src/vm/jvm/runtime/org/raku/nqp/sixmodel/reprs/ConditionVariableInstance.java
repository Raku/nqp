package org.raku.nqp.sixmodel.reprs;

import java.util.concurrent.locks.Condition;

import org.raku.nqp.sixmodel.SixModelObject;

public class ConditionVariableInstance extends SixModelObject {
	public Condition condvar;
}
