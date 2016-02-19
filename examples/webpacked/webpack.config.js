//var ReloadPlugin = require("webpack-reload-plugin");
module.exports = {
  entry: "./example.nqp",
  nqpRepo: "../..", // Edit this to specify where the nqp-js repo is
//  plugins: [new ReloadPlugin("localhost")],
  resolve: {
    alias: {
      "ffi": "empty-module",
      "fs-ext": "empty-module",
      "ffi": "empty-module",
      "ref": "empty-module",
      "nqp-js-io": "empty-module",
      "sleep": "empty-module",
      "bignum": "browserify-bignum"
    }
  },
  output: {
    path: __dirname,
    filename: "bundle.js",
    sourceMapFilename: "bundle.js.map"
  },
  module: {
    loaders: [
      {test: /\.nqp$/, loader: "nqp-loader"}
    ]
  }
}
