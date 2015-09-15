var Fiber = require('fibers');
var Null = require('nqp-runtime-core/null.js');
var op = exports;
function runTaged(tag,fiber,val) {
  var control = fiber.run(val);
  while (1) {
    if (control.tag == tag || control.tag === Null) {
      return control.value;
    } else {
      Fiber.yield(control);
    }
  }
}
op.continuationreset = function(ctx,tag,block) {
  var fiber = Fiber(function() {
    return {value:block.apply(undefined,[ctx]),tag:tag};
  });
  return runTaged(tag,fiber);
}
op.continuationcontrol = function(ctx,protect,tag,closure) {
  var cont = {tag:tag};
  cont.Bool = function() {return true};
  cont.fiber = Fiber.current;
  var value = closure.apply(undefined,[ctx,{},cont]);
  return Fiber.yield({tag:tag,value:value});
}
op.continuationinvoke = function(ctx,cont,inject) {
  var val = inject.apply(undefined,[ctx]);
  return runTaged(cont.tag,cont.fiber,val);
}
