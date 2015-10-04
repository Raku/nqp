var tap = require('tap');
var BinaryWriteCursor = require('nqp-runtime/serialization').BinaryWriteCursor;
var BinaryCursor = require('nqp-runtime/deserialization').BinaryCursor;


function check(n, expected) {
  expected = new Buffer(expected);
  var cursor = new BinaryWriteCursor(null);
  cursor.varint(n);
  var got = cursor.buffer.slice(0, cursor.offset);

  var correct = got.equals(expected);
  tap.ok(correct, "writing " + n);

  if (!correct) {
    tap.comment("got", got);
    tap.comment("expected", expected);
  }


  var reader = new BinaryCursor(expected, 0, null, null);

  var got_n = reader.varint();

  tap.equal(got_n, n, "reading "+n);
}

check(-1, [128]);
check(0, [129]);
check(1, [130]);
check(30, [159]);
check(126, [255]);
check(200, [16,200]);
check(-200, [31,56]);
check(10000, [32,16,39]);
check(-10000, [47,240,216]);
check(1000000, [48,64,66,15]);
