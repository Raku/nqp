plan(38);
my $buf := MAST::Bytecode.new;

nqp::writeuint($buf, 0, 0x1234, 1);
is(nqp::atpos_i($buf, 0), 0x34);
is(nqp::elems($buf), 1);

nqp::writeuint($buf, 0, 0x1234, 5);
is(nqp::atpos_i($buf, 0), 0x34);
is(nqp::atpos_i($buf, 1), 0x12);

nqp::writeuint($buf, 0, 0x1234, 6);
is(nqp::atpos_i($buf, 0), 0x12);
is(nqp::atpos_i($buf, 1), 0x34);

nqp::writeuint($buf, 1, 0x12345678, 9);
is(nqp::atpos_i($buf, 1), 0x78);
is(nqp::atpos_i($buf, 2), 0x56);
is(nqp::atpos_i($buf, 3), 0x34);
is(nqp::atpos_i($buf, 4), 0x12);

nqp::writeuint($buf, 1, 0x12345678, 10);
is(nqp::atpos_i($buf, 1), 0x12);
is(nqp::atpos_i($buf, 2), 0x34);
is(nqp::atpos_i($buf, 3), 0x56);
is(nqp::atpos_i($buf, 4), 0x78);

# work around NQP's literals defaulting to num
my uint64 $val := nqp::bitor_i(nqp::bitshiftl_i(0x01234567, 32), 0x89ABCDEF);
nqp::writeuint($buf, 1, $val, 13);
is(nqp::atpos_i($buf, 1), 0xEF);
is(nqp::atpos_i($buf, 2), 0xCD);
is(nqp::atpos_i($buf, 3), 0xAB);
is(nqp::atpos_i($buf, 4), 0x89);
is(nqp::atpos_i($buf, 5), 0x67);
is(nqp::atpos_i($buf, 6), 0x45);
is(nqp::atpos_i($buf, 7), 0x23);
is(nqp::atpos_i($buf, 8), 0x01);
is(nqp::readuint($buf, 1, 1), 0xEF, 'read byte');
is(nqp::readuint($buf, 1, 5), 0xCDEF, 'read word');
is(nqp::readuint($buf, 1, 9), 0x89ABCDEF, 'read dword');
is(nqp::readuint($buf, 1, 13), $val, 'read qword');

nqp::writeuint($buf, 1, $val, 14);
is(nqp::atpos_i($buf, 1), 0x01);
is(nqp::atpos_i($buf, 2), 0x23);
is(nqp::atpos_i($buf, 3), 0x45);
is(nqp::atpos_i($buf, 4), 0x67);
is(nqp::atpos_i($buf, 5), 0x89);
is(nqp::atpos_i($buf, 6), 0xAB);
is(nqp::atpos_i($buf, 7), 0xCD);
is(nqp::atpos_i($buf, 8), 0xEF);
is(nqp::readuint($buf, 1, 2), 0x01, 'read big endian byte');
is(nqp::readuint($buf, 1, 6), 0x0123, 'read big endian word');
is(nqp::readuint($buf, 1, 10), 0x01234567, 'read big endian dword');
is(nqp::readuint($buf, 1, 14), $val, 'read big endian qword');
