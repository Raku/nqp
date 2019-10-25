#?if truffle
my class BackendStub {
    method name() {
      'truffle';
    }
}
my class CompilerStub {
  method backend() {
    BackendStub;
  }
}

nqp::bindcomp('nqp', CompilerStub.new);
#?endif

1;
{YOU_ARE_HERE}
