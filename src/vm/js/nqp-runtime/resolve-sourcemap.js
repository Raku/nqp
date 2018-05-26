const fs = require('fs');
const sourceMapResolve = require('source-map-resolve');

const SourceMapConsumer = require('source-map').SourceMapConsumer;

const cache = new Map();
module.exports = function(filename) {
  if (cache.has(filename)) return cache.get(filename);
  const got = sourceMapResolve.resolveSourceMapSync(fs.readFileSync(filename).toString('utf8'), filename,  fs.readFileSync);
  const ret = got !== null ? new SourceMapConsumer(got.map) : got;
  cache.set(filename, ret);
  return ret;
};
