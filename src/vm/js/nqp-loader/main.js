var sh = require('execSync');
var temp = require('temp');
var fs = require('fs');
module.exports = function(source) {
  var path = this.options.nqpRepo;

  var tmp = temp.openSync();

  var command = "cd "+path+";.//nqp-p " + "src/vm/js/bin/nqp-js.nqp '" + tmp.path + "'";

  fs.writeFileSync(tmp.path, source);

  var result = sh.exec(command);
  return result.stdout;
};
