var core = require('nqp-runtime-core');
core.require_ops('nqp-runtime-node/ops/bigint.js');
core.require_ops('nqp-runtime-node/ops/coro.js');
core.require_ops('nqp-runtime-node/ops/fs.js');
core.require_ops('nqp-runtime-node/ops/codepointfromname.js');
var reprs = require('nqp-runtime-core/reprs.js');
reprs.P6bigint = require('./reprs/P6bigint.js');
module.exports = core;
