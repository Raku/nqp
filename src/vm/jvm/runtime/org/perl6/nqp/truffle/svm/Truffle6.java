package org.perl6.nqp.truffle.svm;

import java.io.PrintStream;
import org.perl6.nqp.truffle.ByteCodeRunnerGen;

public class Truffle6 {
    public static void help(PrintStream stream) {
        stream.println("USAGE: truffle6 input.truffle6 [program args]");
        stream.println("       truffle6 --help");
        stream.println("    --help display this message");
    }

    public static void main(String[] args) {
        if (args.length < 1) {
            System.err.println("ERROR: Missing input file.");
            help(System.err);
        } else if (args[0] == "--help") {
            help(System.out);
        } else {
            (new ByteCodeRunnerGen()).runByteCode(args[0]);
        }
    }
}
