package org.perl6.nqp.io;

import java.io.IOException;
import org.perl6.nqp.runtime.ThreadContext;

public interface IIOOptions {
	public long getOption(ThreadContext tc, int option) throws IOException;
	public long setOption(ThreadContext tc, int option, int value) throws IOException;
}