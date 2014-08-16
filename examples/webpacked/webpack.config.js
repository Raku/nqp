module.exports = {
  entry: "./example.nqp",
  nqpRepo: "../..", // Edit this to specify where the nqp-js repo is
  output: {
    path: __dirname,
    filename: "bundle.js"
  },
  module: {
    loaders: [
      {test: /\.nqp$/, loader: "nqp-loader"}
    ]
  }
}
