const fs = require('fs');
const path = require('path');

[, , js, p6, mapping, jsFile, p6File, sourceMapFile] = process.argv;

const nqp = require('../nqp-runtime');


fs.writeFileSync(sourceMapFile, nqp.createSourceMap(
  fs.readFileSync(js, 'utf8'),
  fs.readFileSync(p6, 'utf8'),
  fs.readFileSync(mapping, 'utf8').split(','),
  jsFile,
  p6File,
  undefined));

process.stdout.write(path.relative(path.dirname(jsFile), sourceMapFile));
