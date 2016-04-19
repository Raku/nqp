/**
 * A serialization context holds a list of objects and code references that live
 * within a serialization boundary.
 */

/**
 * @constructor
 * @public handle The handle of this SC.
 * @public description Description (probably the file name) if any.
 * @public rootObjects The root set of objects that live in this SC.
 * @public rootStables The root set of STables that live in this SC.
 * @public rootCodes The root set of code refs that live in this SC.
 * @public repIndexes Repossession info. The following lists have matching indexes, each
 * representing the integer of an object in our root set along with the SC
 * that the object was originally from.
 * @public repScs
*/

function SerializationContext(handle) {
  this.description = '???';
  this.handle = handle;
  SerializationContext.contexts[handle] = this;
  this.rootObjects = [];
  this.rootStables = [];
  this.rootCodes = [];
  this.repIndexes = [];
  this.repScs = [];
  /* Some things we deserialize are not directly in an SC, root set, but
   * rather are owned by others. This is mostly thanks to Parrot legacy,
   * where not everything was a 6model object. This maps such owned
   * objects to their owner. It is used to determine what object should
   * be repossessed in the case a write barrier is hit. */
  //  this.owned_objects = new HashMap<SixModelObject, SixModelObject>();
}

SerializationContext.prototype.setObj = function(idx, obj) {
  this.rootObjects[idx] = obj;
  if (!obj._STable._SC) {
    this.rootStables.push(obj._STable);
    obj._STable._SC = this;
  }
};

SerializationContext.prototype.getCodeIndex = function(codeRef) {
  return this.rootCodes.indexOf(codeRef);
};

SerializationContext.contexts = {};
module.exports = SerializationContext;
