package org.perl6.nqp.runtime;

@SuppressWarnings("serial")
public class SaveStackException extends Exception {
    public ResumeStatus rs;
}
