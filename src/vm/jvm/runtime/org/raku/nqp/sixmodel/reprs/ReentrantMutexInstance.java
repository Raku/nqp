package org.raku.nqp.sixmodel.reprs;

import java.util.concurrent.locks.ReentrantLock;

import org.raku.nqp.sixmodel.SixModelObject;

public class ReentrantMutexInstance extends SixModelObject {
	public ReentrantLock lock;
}
