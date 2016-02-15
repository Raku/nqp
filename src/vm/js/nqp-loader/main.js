var temp = require('temp');
var fs = require('fs');
var map = require('source-map');
var loaderUtils = require("loader-utils");
var child_process = require('child_process');

var SourceNode = map.SourceNode;
var p6source;

function toNode(chunk) {
  if (chunk.line) {
    return new SourceNode(chunk.line, chunk.column-1, p6source , chunk.parts.map(function(c) {return toNode(c)}));
  } else if (typeof chunk == 'string') {
    return chunk;
  } else if (chunk instanceof Array) {
    return chunk.map(function(c) {return toNode(c)});
  } else {
      console.error(chunk);
      throw "incorrect chunk";
  }
}

module.exports = function(source) {
  var path = this.options.nqpRepo;

  var nqpRequest = loaderUtils.getRemainingRequest(this);
  var jsRequest = loaderUtils.getCurrentRequest(this);
  var query = loaderUtils.parseQuery(this.query);

  // Write our source code to a file
  var tmp = temp.openSync();
  fs.writeFileSync(tmp.path, source);

  var command = "cd "+path+";.//nqp-js --setting=NULL --target=js --source-map '" + tmp.path + "'";


  var result = child_process.execSync(command, {encoding:"utf8"});

  var data = JSON.parse(result);

  p6source = nqpRequest;
  var node = new SourceNode(null, null, p6source, toNode(data));
  var sourceAndMap = node.toStringWithSourceMap({file: jsRequest});
  
  var map = JSON.parse(sourceAndMap.map.toString());
  map.sourcesContent = [source];
  this.callback(null, sourceAndMap.code, map);
};

module.exports.toNode = toNode;
