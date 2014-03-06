var db;
exports.codepointfromname = function(ctx,name) {
  if (!db) {
    db = require('../gen/codepointfromnamedb.js');
  }
  return db[name];
};
