var map = require('source-map');
var SourceNode = map.SourceNode;
var fs = require('fs');
var input = process.argv[2];
var p6source = process.argv[3]
var outputJs = process.argv[4];
var outputSourceMap = process.argv[5];

var data = JSON.parse(fs.readFileSync(input,'utf-8'));

var toNode = require('nqp-loader').toNode;
var node = new SourceNode(null, null, p6source, toNode(data));
var sourceAndMap = node.toStringWithSourceMap({file: outputJs});
fs.writeFileSync(outputJs,sourceAndMap.code);
fs.writeFileSync(outputSourceMap,sourceAndMap.map.toString());

