package org.perl6.nqp.truffle;
class MalformedAstException extends RuntimeException {
  MalformedAstException(String msg) {
    super(msg);
  }
}
