plan(62);

class Buffer is repr('VMArray') is array_type(uint8) {
}

my $buf := Buffer.new;

nqp::writeuint($buf, 0, 0x1234, nqp::const::BINARY_ENDIAN_LITTLE);
is(nqp::atpos_i($buf, 0), 0x34);
is(nqp::elems($buf), 1);

$buf := Buffer.new;
nqp::writeint($buf, 0, -128, nqp::const::BINARY_ENDIAN_LITTLE);
is(nqp::atpos_i($buf, 0), 128);
is(nqp::elems($buf), 1);

$buf := Buffer.new;
nqp::writeuint($buf, 0, 0x1234, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_16_BIT);
is(nqp::atpos_i($buf, 0), 0x34);
is(nqp::atpos_i($buf, 1), 0x12);
is(nqp::elems($buf), 2);

$buf := Buffer.new;
nqp::writeint($buf, 0, -32768, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_16_BIT);
is(nqp::atpos_i($buf, 0), 0);
is(nqp::atpos_i($buf, 1), 128);
is(nqp::elems($buf), 2);

$buf := Buffer.new;
nqp::writeuint($buf, 0, 0x1234, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_16_BIT);
is(nqp::atpos_i($buf, 0), 0x12);
is(nqp::atpos_i($buf, 1), 0x34);
is(nqp::elems($buf), 2);

$buf := Buffer.new;
nqp::writeint($buf, 0, -32768, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_16_BIT);
is(nqp::atpos_i($buf, 0), 128);
is(nqp::atpos_i($buf, 1), 0);
is(nqp::elems($buf), 2);

$buf := Buffer.new;
nqp::writeuint($buf, 1, 0x12345678, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT);
is(nqp::atpos_i($buf, 1), 0x78);
is(nqp::atpos_i($buf, 2), 0x56);
is(nqp::atpos_i($buf, 3), 0x34);
is(nqp::atpos_i($buf, 4), 0x12);
is(nqp::elems($buf), 5);

$buf := Buffer.new;
nqp::writeuint($buf, 1, -2147483648, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT);
is(nqp::atpos_i($buf, 1), 0);
is(nqp::atpos_i($buf, 2), 0);
is(nqp::atpos_i($buf, 3), 0);
is(nqp::atpos_i($buf, 4), 128);
is(nqp::elems($buf), 5);

$buf := Buffer.new;
nqp::writeuint($buf, 1, 0x12345678, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT);
is(nqp::atpos_i($buf, 1), 0x12);
is(nqp::atpos_i($buf, 2), 0x34);
is(nqp::atpos_i($buf, 3), 0x56);
is(nqp::atpos_i($buf, 4), 0x78);
is(nqp::elems($buf), 5);

$buf := Buffer.new;
nqp::writeuint($buf, 1, -2147483648, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT);
is(nqp::atpos_i($buf, 1), 128);
is(nqp::atpos_i($buf, 2), 0);
is(nqp::atpos_i($buf, 3), 0);
is(nqp::atpos_i($buf, 4), 0);
is(nqp::elems($buf), 5);

# work around NQP's literals defaulting to num
my uint64 $val := nqp::bitor_i(nqp::bitshiftl_i(0x01234567, 32), 0x89ABCDEF);
$buf := Buffer.new;
nqp::writeuint($buf, 1, $val, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_64_BIT);
is(nqp::atpos_i($buf, 1), 0xEF);
is(nqp::atpos_i($buf, 2), 0xCD);
is(nqp::atpos_i($buf, 3), 0xAB);
is(nqp::atpos_i($buf, 4), 0x89);
is(nqp::atpos_i($buf, 5), 0x67);
is(nqp::atpos_i($buf, 6), 0x45);
is(nqp::atpos_i($buf, 7), 0x23);
is(nqp::atpos_i($buf, 8), 0x01);
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE), 0xEF, 'read byte');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_16_BIT), 0xCDEF, 'read word');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT), 0x89ABCDEF, 'read dword');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_64_BIT), $val, 'read qword');
is(nqp::elems($buf), 9);

$buf := Buffer.new;
nqp::writeuint($buf, 1, $val, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_64_BIT);
is(nqp::atpos_i($buf, 1), 0x01);
is(nqp::atpos_i($buf, 2), 0x23);
is(nqp::atpos_i($buf, 3), 0x45);
is(nqp::atpos_i($buf, 4), 0x67);
is(nqp::atpos_i($buf, 5), 0x89);
is(nqp::atpos_i($buf, 6), 0xAB);
is(nqp::atpos_i($buf, 7), 0xCD);
is(nqp::atpos_i($buf, 8), 0xEF);
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG), 0x01, 'read big endian byte');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_16_BIT), 0x0123, 'read big endian word');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT), 0x01234567, 'read big endian dword');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_64_BIT), $val, 'read big endian qword');
is(nqp::elems($buf), 9);
