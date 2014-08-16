my &js := nqp::getcomp("JavaScript");
my &set-draw := js('(function($CTX, $NAMED, cb) {draw = cb})');
my &set-setup := js('(function($CTX, $NAMED, cb) {setup = cb})');
my &fill := js('(function($CTX, $NAMED, color) {fill(color)})');
my &ellipse := js('(function($CTX, $NAMED, a, b, c, d) {ellipse(a, b, c, d)})');
my &createCanvas := js('(function($CTX, $NAMED, width, height) {createCanvas(width, height)})');
my &mouseX := js('(function($CTX, $NAMED) {return mouseX})');
my &mouseY := js('(function($CTX, $NAMED) {return mouseY})');
my &mouseIsPressed := js('(function($CTX, $NAMED) {return mouseIsPressed ? 1 : 0})');

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
