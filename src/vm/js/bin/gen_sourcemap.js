var map = require('source-map');
var SourceNode = map.SourceNode;
var fs = require('fs');
var input = process.argv[2];
var p6source = process.argv[3]
var outputJs = process.argv[4];
var outputSourceMap = process.argv[5];

var data = JSON.parse(fs.readFileSync(input,'utf-8'));
function toNode(chunk) {
  if (chunk.line) {
    return new SourceNode(chunk.line, 0, p6source , chunk.parts.map(function(c) {return toNode(c)}));
  } else if (typeof chunk == 'string') {
    return chunk;
  } else if (chunk instanceof Array) {
    return chunk.map(function(c) {return toNode(c)});
  } else {
      console.error(chunk);
      throw "incorrect chunk";
  }
}

var node = new SourceNode(1,0, p6source, toNode(data));
var sourceAndMap = node.toStringWithSourceMap({file: outputJs});
fs.writeFileSync(outputJs,sourceAndMap.code);
fs.writeFileSync(outputSourceMap,sourceAndMap.map.toString());

