package org.perl6.nqp.runtime;

import java.io.FileNotFoundException;
import java.nio.file.AccessDeniedException;
import java.nio.file.DirectoryNotEmptyException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.NoSuchFileException;
import java.nio.file.NotDirectoryException;
import java.nio.file.NotLinkException;

public class IOExceptionMessages {
    
    public static String message(Exception e) {
        if (e instanceof FileNotFoundException
            || e instanceof NoSuchFileException) {
            return "File " + e.getMessage() + " not found";
        } else if (e instanceof AccessDeniedException) {
            return "Access to " + e.getMessage() + " is denied";
        } else if (e instanceof DirectoryNotEmptyException) {
            return "Directory " + e.getMessage() + " not empty";
        } else if (e instanceof FileAlreadyExistsException) {
            return "File " + e.getMessage() + " already exists";
        } else if (e instanceof NotDirectoryException) {
            return "File " + e.getMessage() + " is not a directory";
        } else if (e instanceof NotLinkException) {
            return "File " + e.getMessage() + " is not a link";
        } else {
            return e.getClass().getSimpleName() + ": " + e.getMessage();
        }
    }
}
