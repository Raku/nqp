package org.perl6.nqp.sixmodel.reprs;

import java.util.concurrent.locks.ReentrantLock;

import org.perl6.nqp.sixmodel.SixModelObject;

public class ReentrantMutexInstance extends SixModelObject {
	public ReentrantLock lock;
}
