sub js($code) {
    nqp::getcomp("JavaScript").eval($code);
}
js('window.wrap = function(func) {return {"$call": func}}');
js('window.unwrap = function(code_ref) {return function() {code_ref.$call(null, {})}}');

my &set-draw := js('wrap(function($CTX, $NAMED, cb) {window.draw = unwrap(cb)})');
my &set-setup := js('wrap(function($CTX, $NAMED, cb) {window.setup = unwrap(cb)})');
my &fill := js('wrap(function($CTX, $NAMED, color) {fill(color.value)})');
my &ellipse := js('wrap(function($CTX, $NAMED, a, b, c, d) {ellipse(a, b, c.value, d.value)})');
my &createCanvas := js('wrap(function($CTX, $NAMED, width, height) {createCanvas(width.value, height.value)})');
my &mouseX := js('wrap(function($CTX, $NAMED) {return mouseX})');
my &mouseY := js('wrap(function($CTX, $NAMED) {return mouseY})');
my &mouseIsPressed := js('wrap(function($CTX, $NAMED) {return mouseIsPressed ? 1 : 0})');

sub setup() {
    createCanvas(640, 480);
}
sub draw() {
    if mouseIsPressed() {
      fill(0);
    } else {
      fill(255);
    }
    ellipse(mouseX(), mouseY(), 80, 80);
}

set-setup(&setup);
set-draw(&draw);

nqp::say("Hello Fancy Browser World");
