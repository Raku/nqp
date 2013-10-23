#!/bin/sh
@@bindir@@/parrot@@exe@@ -L. -X. --library=gen/parrot gen/parrot/nqp.pbc \
  --module-path=gen/parrot --setting-path=gen/parrot "$@"

