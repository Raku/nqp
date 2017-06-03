var tap = require('tap');
require('nqp-runtime/bootstrap');
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
check(653, [18,141]);
check(668, [18,156]);
check(-4096, [47,0,240]);
check(10000, [32,16,39]);
check(-10000, [47,240,216]);
check(1000000, [48,64,66,15]);
check(-33554432, [62,0,0,0]);
check(134217724, [55,252,255,255]);
check(-134217724, [56,4,0,0]);
check(134217725, [55,253,255,255]);
check(-134217725, [56,3,0,0]);
check(134217726, [55,254,255,255]);
check(-134217726, [56,2,0,0]);
check(134217727, [55,255,255,255]);
check(-134217727, [56,1,0,0]);
check(134217728, [64,0,0,0,8]);
check(2147483647, [64,255,255,255,127]);
