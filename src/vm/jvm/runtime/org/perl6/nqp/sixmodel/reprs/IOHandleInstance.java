package org.perl6.nqp.sixmodel.reprs;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

import org.perl6.nqp.sixmodel.SixModelObject;

public class IOHandleInstance extends SixModelObject {
	/* The input stream; if null, we can't read from this. */
	public InputStream is;
	
	/* The output stream; if null, we can't write to this. */
	public OutputStream os;
	
	/* These wrap the above streams and knows about encodings. If they
	 * are still null, the encoding can still be set.
	 */
	public InputStreamReader isr;
	public OutputStreamWriter osw;
	
	/*
	 * This further wraps the input stream reader for the case of doing
	 * line-based I/O.
	 */
	public BufferedReader br;
}
