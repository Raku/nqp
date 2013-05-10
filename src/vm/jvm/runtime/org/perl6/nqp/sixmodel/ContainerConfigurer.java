package org.perl6.nqp.sixmodel;
import org.perl6.nqp.runtime.ThreadContext;

/**
 * A container configurer knows how to attach a certain type of container
 * to an STable and configure it.
 */
public abstract class ContainerConfigurer {
    /* Sets this container spec in place for the specified STable. */ 
    public abstract void setContainerSpec(ThreadContext tc, STable st);
    
    /* Configures the container spec with the specified info. */
    public abstract void configureContainerSpec(ThreadContext tc, STable st, SixModelObject config);
}
