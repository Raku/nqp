package org.perl6.nqp.sixmodel.reprs;

import java.nio.file.DirectoryStream;
import java.nio.file.Path;
import java.util.Iterator;

import org.perl6.nqp.sixmodel.SixModelObject;

public class IOHandleInstance extends SixModelObject {
	/* Object that can perform I/O operations; will be checked for its
     * capabilities by interface by ops and then invoked. */
    public Object handle;

    /* This wraps directories that were opened for lazy file listings */
    public DirectoryStream<Path> dirstrm;
    
    /* This is the iterator from the dirstrm */
    public Iterator<Path> diri;
}
