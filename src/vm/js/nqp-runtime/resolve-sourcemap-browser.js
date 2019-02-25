const SourceMapConsumer = require('source-map').SourceMapConsumer;


const cache = new Map();

const sourceMapInfo = [/*sourceMapInfo*/];

if ('/*async*/' === '/*asy' + 'nc*/' || typeof fetch == 'undefined') {
  module.exports = null;
} else {
  SourceMapConsumer.initialize({
    'lib/mappings.wasm': require('./mappings-wasm-base64.js')
  });

  module.exports = async function(filename) {
    if (cache.has(filename)) return cache.get(filename);

    if (sourceMapInfo.length == 1) {
      const response = await fetch(sourceMapInfo[0].mapUrl);

      const json = await response.json();

      const ret = new SourceMapConsumer(json);

      cache.set(filename, ret);
      return ret;
    }
  };
}
