const SourceMapIndexGenerator = require('source-map-index-generator');

const fs = require('fs');
const input = process.argv[2];
const p6source = process.argv[3]
const outputJs = process.argv[4];
const outputSourceMap = process.argv[5];

const data = JSON.parse(fs.readFileSync(input,'utf-8'));

const generator = new SourceMapIndexGenerator({file: outputJs});

const header = '//# sourceMappingURL=' + outputSourceMap + '\n';

let js = header + data.js;

const map = {};
for (let i=0; i < data.mapping.length; i += 2) {
  map[data.mapping[i]] = data.mapping[i+1]+header.length;
}

generator.addIndexMapping({
  src: p6source,
  input: fs.readFileSync(p6source,'utf-8'),
  output: js,
  map: map
});

fs.writeFileSync(outputJs, js);
fs.writeFileSync(outputSourceMap, generator.toString());

