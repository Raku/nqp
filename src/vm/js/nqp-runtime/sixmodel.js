function STable(REPR, HOW) {
  this.REPR = REPR;
  this.HOW = HOW;
  this.obj_constructor = function() {};
  this.obj_constructor.prototype._STable = this;
//  this.obj_constructor.prototype.repr_clone = repr_clone;
  if (this.REPR.setup_STable) {
    this.REPR.setup_STable(this);
  }
}
module.exports.STable = STable;
