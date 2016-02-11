sub js($code) {
    nqp::getcomp("JavaScript").eval($code);
}

my &set-draw := js('(function(cb) {window.draw = cb})');
my &set-setup := js('(function(cb) {window.setup = cb})');
my &mouseX := js('(function() {return mouseX})');
my &mouseY := js('(function() {return mouseY})');
my &mouseIsPressed := js('(function() {return mouseIsPressed ? 1 : 0})');

sub setup() {
    my &fill := js('fill');
    my &ellipse := js('ellipse');
    my &createCanvas := js('createCanvas');

    createCanvas(640, 480);
    set-draw(-> {
        if mouseIsPressed() {
          fill(0);
        } else {
          fill(255);
        }
        ellipse(mouseX(), mouseY(), 80, 80);
    });
}

set-setup(&setup);

nqp::say("Hello Fancy Browser World");
