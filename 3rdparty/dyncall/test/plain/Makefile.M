#include "../../buildsys/dynmake/Makefile.base.M"

all: plain

plain: _O(test_main) _O(test_structs)
	_(CC) _(CFLAGS) _(PREREQS) _(LDFLAGS) _(LDFLAG_IN_PREFIX)dyncall_s _(LDFLAG_OUT_PREFIX)_(TARGET)

clean:
	_(RM) _O(*)
	_(RM) plain
