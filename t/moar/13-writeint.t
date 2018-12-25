plan(30);

class Buffer is repr('VMArray') is array_type(uint8) {
}

sub buf_dump($buf) {
  my @parts;
  my $i := 0;
  while $i < nqp::elems($buf) {
    @parts.push(nqp::sprintf("0x%.2X", [nqp::atpos_i($buf, $i)]));
    $i := $i + 1;
  }
  nqp::join(" ", @parts);
};

my $buf := Buffer.new;

nqp::writeuint($buf, 0, 0x1234, nqp::const::BINARY_ENDIAN_LITTLE);
is(buf_dump($buf), '0x34', 'nqp::writeuint - 8bit little endian');

$buf := Buffer.new;
nqp::writeint($buf, 0, -128, nqp::const::BINARY_ENDIAN_LITTLE);
is(buf_dump($buf), '0x80', 'nqp::writeint - 8bit little endian');

$buf := Buffer.new;
nqp::writeuint($buf, 0, 0x1234, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_16_BIT);
is(buf_dump($buf), '0x34 0x12', 'nqp::writeuint - 16bit little endian');

$buf := Buffer.new;
nqp::writeint($buf, 0, -32768, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_16_BIT);
is(buf_dump($buf), '0x00 0x80', 'nqp::writeint - 16bit little endian');

$buf := Buffer.new;
nqp::writeuint($buf, 0, 0x1234, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_16_BIT);
is(buf_dump($buf), '0x12 0x34', 'nqp::writeuint - 16bit big endian');

$buf := Buffer.new;
nqp::writeint($buf, 0, -32768, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_16_BIT);
is(buf_dump($buf), '0x80 0x00', 'nqp::writeint - 16bit big endian');

$buf := Buffer.new;
nqp::writeuint($buf, 1, 0x12345678, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT);
is(buf_dump($buf), '0x00 0x78 0x56 0x34 0x12', 'nqp::writeuint - 32bit little endian');

$buf := Buffer.new;
nqp::writeuint($buf, 1, -2147483648, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT);

is(buf_dump($buf), '0x00 0x00 0x00 0x00 0x80', 'nqp::writeuint - 32bit little endian');

$buf := Buffer.new;
nqp::writeuint($buf, 1, 0x12345678, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT);
is(buf_dump($buf), '0x00 0x12 0x34 0x56 0x78', 'nqp::writeuint - 32bit big endian');

$buf := Buffer.new;
nqp::writeuint($buf, 1, -2147483648, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT);
is(buf_dump($buf), '0x00 0x80 0x00 0x00 0x00', 'nqp::writeuint - 32bit big endian');

# work around NQP's literals defaulting to num
my uint64 $val := nqp::bitor_i(nqp::bitshiftl_i(0x01234567, 32), 0x89ABCDEF);
$buf := Buffer.new;
nqp::writeuint($buf, 1, $val, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_64_BIT);

is(buf_dump($buf), '0x00 0xEF 0xCD 0xAB 0x89 0x67 0x45 0x23 0x01', 'nqp::writeuint with 64bit little endian');

is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE), 0xEF, 'read byte');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_16_BIT), 0xCDEF, 'read word');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT), 0x89ABCDEF, 'read dword');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_64_BIT), $val, 'read qword');

is(nqp::elems($buf), 9, 'nqp::readuint does not change the size of buffer');

$buf := Buffer.new;
nqp::writeuint($buf, 1, $val, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_64_BIT);

is(buf_dump($buf), '0x00 0x01 0x23 0x45 0x67 0x89 0xAB 0xCD 0xEF', 'nqp::writeuint with 64bit big endian');

is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG), 0x01, 'read big endian byte');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_16_BIT), 0x0123, 'read big endian word');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT), 0x01234567, 'read big endian dword');
is(nqp::readuint($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_64_BIT), $val, 'read big endian qword');
is(nqp::elems($buf), 9, 'nqp::readuint does not change the size of buffer');

$buf := Buffer.new;
my num64 $num := 1234567.89;
nqp::writenum($buf, 1, $num, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_64_BIT);
# https://baseconvert.com/ieee-754-floating-point 0x4132D687E3D70A3D

is(buf_dump($buf), '0x00 0x3D 0x0A 0xD7 0xE3 0x87 0xD6 0x32 0x41', 'nqp::writenum with 64bit little endian');

is(nqp::readnum($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_64_BIT), $num, 'nqp::readum with 64bit little endian');

$buf := Buffer.new;
$num := 1234567.89;
nqp::writenum($buf, 1, $num, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_64_BIT);
# https://baseconvert.com/ieee-754-floating-point 0x4132D687E3D70A3D

is(buf_dump($buf), '0x00 0x41 0x32 0xD6 0x87 0xE3 0xD7 0x0A 0x3D', 'nqp::writenum with 64bit big endian');
is(nqp::readnum($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_64_BIT), $num, 'nqp::readnum with 64bit big endian');

$buf := Buffer.new;
my num32 $num32 := 1234567.89;
nqp::writenum($buf, 1, $num32, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT);
# https://baseconvert.com/ieee-754-floating-point 0x4996B43F

is(buf_dump($buf), '0x00 0x3F 0xB4 0x96 0x49', 'nqp::writenum with 32bit little endian');


is(nqp::readnum($buf, 1, nqp::const::BINARY_ENDIAN_LITTLE +| nqp::const::BINARY_SIZE_32_BIT), $num32, 'nqp::readnum with 32bit little endian');

$buf := Buffer.new;
$num32 := 1234567.89;
nqp::writenum($buf, 1, $num32, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT);
# https://baseconvert.com/ieee-754-floating-point 0x4996B43F

is(buf_dump($buf), '0x00 0x49 0x96 0xB4 0x3F', 'nqp::writenum with 32bit big endian');

is(nqp::readnum($buf, 1, nqp::const::BINARY_ENDIAN_BIG +| nqp::const::BINARY_SIZE_32_BIT), $num32, 'nqp::readnum with 32bit big endian');
