var map = require('source-map');
var SourceNode = map.SourceNode;
var fs = require('fs');
var input = process.argv[2];
var p6source = process.argv[3]
var outputJs = process.argv[4];
var outputSourceMap = process.argv[5];

var SourceNode = map.SourceNode;

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

var data = JSON.parse(fs.readFileSync(input,'utf-8'));

var node = new SourceNode(null, null, p6source, ['//# sourceMappingURL=' + outputSourceMap + '\n', toNode(data)]);
var sourceAndMap = node.toStringWithSourceMap({file: outputJs});
fs.writeFileSync(outputJs,sourceAndMap.code);
fs.writeFileSync(outputSourceMap,sourceAndMap.map.toString());

