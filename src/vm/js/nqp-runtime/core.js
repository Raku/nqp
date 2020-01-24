'use strict';

const op = {};
exports.op = op;

const os = process.browser ? null : require('os');

const Hash = require('./hash.js');
const CodeRef = require('./code-ref.js');

const Ctx = require('./ctx.js');

const NQPInt = require('./nqp-int.js');
const NQPNum = require('./nqp-num.js');
const NQPStr = require('./nqp-str.js');

const NQPException = require('./nqp-exception.js');

const reprs = require('./reprs.js');

const hll = require('./hll.js');

const NQPObject = require('./nqp-object.js');

const constants = require('./constants.js');

const containerSpecs = require('./container-specs.js');

const Null = require('./null.js');
const null_s = require('./null_s.js');

const BOOT = require('./BOOT.js');

const sixmodel = require('./sixmodel.js');

const Capture = require('./capture.js');

const shortid = require('shortid');

const stripMarks = require('./strip-marks.js');

const codecs = require('./codecs.js');

const graphemeRegexp = require('./graphemes.js').regexp;

const foldCase = require('fold-case');

const xregexp = require('xregexp');

const graphemes = require('./graphemes.js');

const unicodeCollationAlgorithm = require('unicode-collation-algorithm');

const unicodeData = require('nqp-unicode-data');

const resolveSourceMap = process.browser ? require('./resolve-sourcemap-browser.js') : require('./resolve-sourcemap.js');

const path = process.browser ? null : require('path');

const globalContext = require('./global-context.js');

const nullStr = require('./null_s.js');

exports.CodeRef = CodeRef;

op.isinvokable = function(obj) {
  return (obj instanceof CodeRef || (obj.$$STable && obj.$$STable.invocationSpec) ? 1 : 0);
};

op.escape = function(str) {
  return str
      .replace(/\\/g, '\\\\')
      .replace(/\x1B/g, '\\e')
      .replace(/\n/g, '\\n')
      .replace(/\r/g, '\\r')
      .replace(/\t/g, '\\t')
      .replace(/\f/g, '\\f')
      .replace(/[\b]/g, '\\b')
      .replace(/"/g, '\\"');
};

const uniData = require('./unicode-data.js');
op.unipropcode = function(name) {
  const mangled = name.toLowerCase().replace(/_/g, '');
  return uniData.propcodes[mangled];
};

op.getuniprop_str = function(codePoint, propCode) {
  /* TODO - load and use real data */
  if (propCode === 84) {
    return codePoint == 780 ? '230' : '0';
  }
  const got = uniData.props[propCode][codePoint];
  return got === undefined ? 'NaN' : got;
};

const numericValueProp = op.unipropcode('Numeric_Value');

const numericTypeData = unicodeData.propTrie('NumericType');
const numericTypePropId = unicodeData.propId('Numeric_Type');

function radixHelper(radix, str, zpos, flags) {
  const lowercase = 'a-' + String.fromCharCode('a'.charCodeAt(0) + radix - 11);
  const uppercase = 'A-' + String.fromCharCode('A'.charCodeAt(0) + radix - 11);

  const uppercaseTitle = '\uFF21-' + String.fromCodePoint(0xFF21 + radix - 11);
  const lowercaseTitle = '\uFF41-' + String.fromCodePoint(0xFF41 + radix - 11);

  const letters = radix >= 11 ? lowercase + uppercase + uppercaseTitle + lowercaseTitle : '';

  const digitClass = '[\\pN' + letters + ']';
  const minus = flags & 0x02 ? '(?:-|\\+|−)?' : '';
  const regex = xregexp(
      '^' + minus + digitClass + '(?:_' + digitClass + '|' + digitClass + ')*');


  const search = str.slice(zpos).match(regex);
  if (search == null) {
    return null;
  }
  let number = search[0].replace(/_/g, '').replace(/^\+/, '');


  const notSimpleDigit = new RegExp('[^0-' + Math.min(radix - 1, 9) + letters + '+-]', 'g');

  let error;
  number = number.replace(notSimpleDigit, function(match, offset, string) {
    if (match == '−') return '-';
    const code = match.codePointAt(0);
    const propValueId = numericTypeData.get(code);

    // TODO: avoid this lookup
    const valueName = unicodeData.propValues(numericTypePropId)[propValueId-1][1];

    if (valueName !== 'Decimal') error = offset;

    const value = op.getuniprop_str(match.codePointAt(0), numericValueProp);
    const digit = parseInt(value);
    if (digit >= radix) {
      if (error === undefined) error = offset;
    }
    return digit.toString();
  });

  if (radix >= 11) {
    number = number.replace(new RegExp('['+uppercaseTitle+']', 'g'), function(match, offset, string) {
      return String.fromCharCode('A'.charCodeAt(0) + match.codePointAt(0) - 0xFF21);
    });

    number = number.replace(new RegExp('['+lowercaseTitle+']', 'g'), function(match, offset, string) {
      return String.fromCharCode('A'.charCodeAt(0) + match.codePointAt(0) - 0xFF41);
    });
  }


  if (error === 0) return null;
  if (error !== undefined) {
    number = number.substr(0, error);
  }


  if (flags & 0x04) number = number.replace(/0+$/, '');
  if (flags & 0x01 && number != '') number = '-' + number;

  const power = number[0] == '-' ? number.length - 1 : number.length;
  return {power: power, offset: zpos + (error == undefined ? search[0].length : error), number: number};
}

exports.radixHelper = radixHelper;

op.radix = function(currentHLL, radix, str, zpos, flags) {
  const extracted = radixHelper(radix, str, zpos, flags);
  if (extracted == null) {
    return hll.slurpyArray(currentHLL, [new NQPInt(0), new NQPInt(1), new NQPInt(-1)]);
  }
  const pow = Math.pow(radix, extracted.power);
  // TODO: use hll int type
  return hll.slurpyArray(currentHLL, [new NQPInt(parseInt(extracted.number, radix)), new NQPInt(pow), new NQPInt(extracted.offset)]);
};

op.setdebugtypename = function(type, debugName) {
  type.$$STable.debugName = debugName;
  return type;
};

exports.hash = function() {
  return new Hash();
};

const nativeArgs = require('./native-args.js');
const NativeIntArg = nativeArgs.NativeIntArg;
const NativeUIntArg = nativeArgs.NativeUIntArg;
const NativeNumArg = nativeArgs.NativeNumArg;
const NativeStrArg = nativeArgs.NativeStrArg;

const NativeNumRet = nativeArgs.NativeNumRet;

const intToObj = exports.intToObj = function(currentHLL, i) {
  const type = currentHLL.get('int_box');
  if (!type) {
    return new NQPInt(i);
  } else {
    const repr = type.$$STable.REPR;
    const obj = repr.allocate(type.$$STable);
    obj.$$setInt(i);
    return obj;
  }
};

exports.int64ToObj = function(currentHLL, i) {
  const type = currentHLL.get('int_box');
  if (!type) {
    throw new NQPException(`Can't box 64 bit integer: HLL doesn't have int_box`);
  } else {
    const repr = type.$$STable.REPR;
    const obj = repr.allocate(type.$$STable);
    obj.$$setInt64(i);
    return obj;
  }
};

const numToObj = exports.numToObj = function(currentHLL, n) {
  const type = currentHLL.get('num_box');
  if (!type) {
    return new NQPNum(n);
  } else {
    const repr = type.$$STable.REPR;
    const obj = repr.allocate(type.$$STable);
    obj.$$setNum(n);
    return obj;
  }
};

const strToObj = exports.strToObj = function(currentHLL, s) {
  const type = currentHLL.get('str_box');
  if (!type) {
    return new NQPStr(s);
  } else {
    const repr = type.$$STable.REPR;
    const obj = repr.allocate(type.$$STable);
    obj.$$setStr(s);
    return obj;
  }
};

const arg = exports.arg = function(currentHLL, arg) {
  if (arg instanceof NativeIntArg) {
    return intToObj(currentHLL, arg.value);
  } else if (arg instanceof NativeUIntArg) { // TODO: should work only for bignums
    return intToObj(currentHLL, arg.value);
  } else if (arg instanceof NativeNumArg) {
    return numToObj(currentHLL, arg.value);
  } else if (arg instanceof NativeStrArg) {
    return strToObj(currentHLL, arg.value);
  } else {
    return arg;
  }
};

exports.slurpyPos = function(currentHLL, args, from) {
  const count = args.length - from;
  const unpacked = new Array(count >= 0 ? count : 0);
  for (let i=from; i < args.length; i++) {
    unpacked[i-from] = arg(currentHLL, args[i]);
  }
  return hll.slurpyArray(currentHLL, unpacked);
};

exports.slurpyNamed = function(currentHLL, named, skip) {
  const hash = new Hash();
  for (const key in named) {
    if (!skip[key]) {
      hash.content.set(key, arg(currentHLL, named[key]));
    }
  }
  return hash;
};

exports.unwrapNamed = function(named) {
  if (!named instanceof Hash) console.log('expecting a hash here');
  return named.$$toObject();
};

exports.named = function(parts) {
  const all = {};
  for (let i = 0; i < parts.length; i++) {
    const part = parts[i];
    for (const key in part) {
      all[key] = part[key];
    }
  }
  return all;
};

exports.op.ishash = function(obj) {
  return obj instanceof Hash || (obj.$$STable && obj.$$STable.REPR instanceof reprs.VMHash) ? 1 : 0;
};

op.create = function(obj) {
  return obj.$$STable.REPR.allocate(obj.$$STable);
};

op.bootarray = function() {
  return BOOT.Array;
};

op.defined = function(obj) {
  // TODO - handle more things that aren't defined
  if (obj === Null || obj.$$typeObject) {
    return 0;
  }
  return 1;
};


op.setinvokespec = function(obj, classHandle, attrName, invocationHandler) {
  obj.$$STable.setinvokespec(classHandle, attrName, invocationHandler);
  return obj;
};

// Stub
op.setboolspec = function(obj, mode, method) {
  obj.$$STable.setboolspec(mode, method);
  return obj;
};


op.savecapture = function(args) {
  return new Capture(args[1], Array.prototype.slice.call(args, 2));
};

op.captureposelems = function(capture) {
  return capture.pos.length;
};

op.captureposarg = function(currentHLL, capture, i) {
  return arg(currentHLL, capture.pos[i]);
};

op.captureposarg_i = function(capture, i) {
  return op.unbox_i(capture.pos[i]);
};

op.captureposarg_s = function(capture, i) {
  return op.unbox_s(capture.pos[i]);
};

op.captureposarg_n = function(capture, i) {
  return op.unbox_n(capture.pos[i]);
};

op.capturehasnameds = function(capture) {
  return (!capture.named || Object.keys(capture.named).length == 0) ? 0 : 1;
};

op.captureexistsnamed = function(capture, arg) {
  return (capture.named && capture.named.hasOwnProperty(arg)) ? 1 : 0;
};

op.capturenamedshash = function(currentHLL, capture) {
  const hash = new Hash();
  for (const key in capture.named) {
    hash.content.set(key, arg(currentHLL, capture.named[key]));
  }
  return hash;
};

op.setcodeobj = function(codeRef, codeObj) {
  codeRef.codeObj = codeObj;
  return codeRef;
};
op.getcodeobj = function(codeRef) {
  const codeObj = codeRef.codeObj;
  return (codeObj === undefined ? Null : codeObj);
};

op.settypecache = function(obj, cache) {
  obj.$$STable.typeCheckCache = cache.array;
  if (obj.$$STable.$$SC !== undefined) obj.$$STable.scwb();
  return obj;
};

op.settypecheckmode = function(obj, mode) {
  const TYPE_CHECK_CACHE_FLAG_MASK = 3;
  obj.$$STable.modeFlags = mode | (obj.$$STable.modeFlags & TYPE_CHECK_CACHE_FLAG_MASK);
  return obj;
};

op.setmethcache = function(obj, cache) {
  if (!cache instanceof Hash) {
    console.log('we expect a hash here');
  }
  obj.$$STable.setMethodCache(cache.content);
  if (obj.$$STable.$$SC !== undefined) obj.$$STable.scwb();
  return obj;
};

op.setmethcacheauth = function(obj, isAuth) {
  if (isAuth) {
    obj.$$STable.modeFlags |= constants.METHOD_CACHE_AUTHORITATIVE;
  } else {
    obj.$$STable.modeFlags &= ~constants.METHOD_CACHE_AUTHORITATIVE;
  }
  if (obj.$$STable.$$SC !== undefined) obj.$$STable.scwb();
  return obj;
};

op.reprname = function(obj) {
  if (obj.$$STable) {
    return obj.$$STable.REPR.name;
  } else if (obj instanceof Capture) {
    return 'MVMCallCapture';
  } else if (obj instanceof NQPInt) {
    return 'P6int';
  } else if (obj instanceof NQPStr) {
    return 'P6str';
  } else if (obj instanceof NQPNum) {
    return 'P6num';
  } else {
    console.log(obj);
    throw new Error('unsupported thing passed to reprname');
  }
};

op.newtype = op.newmixintype = function(how, repr) {
  if (!reprs[repr]) {
    throw 'Unknown REPR: ' + repr;
  }
  const REPR = new reprs[repr]();
  REPR.name = repr;
  return REPR.typeObjectFor(how);
};

op.findmethod = /*async*/ function(ctx, obj, name) {
  const method = /*await*/ sixmodel.findMethod(ctx, obj, name);
  if (method === Null) {
    throw new NQPException(`Cannot find method '${name}' on object of type '${obj.$$STable.debugName}'`);
  }
  return method;
};

op.tryfindmethod = function(ctx, obj, name) {
  return sixmodel.findMethod(ctx, obj, name);
};

op.getcodename = function(code) {
  return code.name;
};

op.setcodename = function(code, name) {
  code.name = name;
  return code;
};

op.rebless = function(obj, newType) {
  obj.$$STable.REPR.changeType(obj, newType);
  if (obj.$$SC !== undefined) obj.$$scwb();
  return obj;
};

op.composetype = function(obj, reprinfo) {
  obj.$$STable.REPR.compose(obj.$$STable, reprinfo);
};

let whereCounter = 0;
op.where = function(obj) {
  if (obj.$$STable || obj instanceof CodeRef || obj === Null || obj instanceof NQPInt) { // HACK
    if (!obj._WHERE) {
      obj._WHERE = ++whereCounter;
    }
    return obj._WHERE;
  } else {
    throw 'WHERE/objectid on this type of thing unimplemented';
  }
};

op.objectid = op.where;

/* HACK - take the current HLL settings into regard */


const sha1 = require('sha1');

op.sha1 = function(text) {
  return sha1(text).toUpperCase();
};

op.curlexpad = function(get, set) {
  return new CurLexpad(get, set);
};

op.setcontspec = function(type, specType, conf) {
  if (containerSpecs[specType]) {
    type.$$STable.containerSpec = new containerSpecs[specType](type.$$STable);
    type.$$STable.containerSpec.configure(conf);
  } else {
    throw 'NYI cont spec: ' + specType;
  }
};

op.iscont = function(cont) {
  return cont.$$iscont ? cont.$$iscont() : 0;
};

op.iscont_i = function(cont) {
  if (cont.$$typeObject) return 0;
  if (cont.$$iscont_i) return cont.$$iscont_i();
  return 0;
};

op.iscont_n = function(cont) {
  if (cont.$$typeObject) return 0;
  if (cont.$$iscont_n) return cont.$$iscont_n();
  return 0;
};

op.iscont_s = function(cont) {
  if (cont.$$typeObject) return 0;
  if (cont.$$iscont_s) {
    return cont.$$iscont_s();
  }
  return 0;
};

op.isrwcont = function(cont) {
  return cont.$$isrwcont ? cont.$$isrwcont() : 0;
};

op.box_n = function(n, type) {
  const repr = type.$$STable.REPR;
  const obj = repr.allocate(type.$$STable);
  obj.$$setNum(n);
  return obj;
};

op.unbox_n = function(obj) {
  return obj.$$getNum();
};

op.box_s = function(value, type) {
  const repr = type.$$STable.REPR;
  const obj = repr.allocate(type.$$STable);
  obj.$$setStr(value);
  return obj;
};

op.unbox_s = function(obj) {
  return obj.$$getStr();
};


op.box_i = function(i, type) {
  const repr = type.$$STable.REPR;
  const obj = repr.allocate(type.$$STable);
  obj.$$setInt(i);
  return obj;
};

op.unbox_i = function(obj) {
  return obj.$$getInt();
};

op.setelems = function(obj, elems) {
  obj.$$setelems(elems);
  return obj;
};

op.markcodestatic = function(code) {
  code.isStatic = true;
  return code;
};

op.markcodestub = function(code) {
  code.isCompilerStub = true;
  return code;
};

op.freshcoderef = function(code) {
  const fresh = code.$$clone();
  fresh.staticCode = fresh;
  return fresh;
};

op.pushcompsc = function(sc) {
  globalContext.context.compilingSCs.push(sc);
  return sc;
};

op.popcompsc = function(sc) {
  return globalContext.context.compilingSCs.pop();
};

op.scwbenable = function() {
  return --globalContext.context.scwbDisableDepth;
};

op.scwbdisable = function() {
  return ++globalContext.context.scwbDisableDepth;
};

op.bindcomp = function(language, compiler) {
  globalContext.context.compilerRegistry.set(language, compiler);
  return compiler;
};

class WrappedFunction extends NQPObject {
  constructor(func) {
    super();
    this.func = func;
  }

  /*async*/ $$apply(args) {
    const converted = [];
    for (let i = 2; i < args.length; i++) {
      converted.push(/*await*/ argToJSWithCtx(args[0], args[i]));
    }
    return fromJSToReturnValue(args[0], this.func.apply(null, converted));
  }

  $$call(args) {
    return this.$$apply(arguments);
  }
};

function fromJSToReturnValue(ctx, obj) {
  return fromJS(ctx.$$getHLL(), obj, true, false);
}

exports.fromJSToReturnValue = fromJSToReturnValue;

function fromJSToArgument(obj) {
  return fromJS(hll.getHLL('Raku'), obj, false, true);
}

function fromJSToObject(ctx, obj) {
  return fromJS(hll.getHLL('Raku'), obj, false, false);
}

function fromJS(HLL, obj, isReturnValue, isArgument) {
  if (obj === undefined || obj === null) {
    return HLL.get('null_value');
  } else if (obj === true) {
    return HLL.get('true_value');
  } else if (obj === false) {
    return HLL.get('false_value');
  } else if (typeof obj === 'number') {
    if (isReturnValue) {
      return new NativeNumRet(obj);
    } else if (isArgument) {
      return new NativeNumArg(obj);
    } else {
      const type = HLL.get('int_box');
      const boxed = type.$$STable.REPR.allocate(type.$$STable);
      boxed.$$setInt(obj);
      return boxed;
    }
  } else if (typeof obj === 'string') {
    if (isReturnValue) {
      return obj;
    } else if (isArgument) {
      return new NativeStrArg(obj);
    } else {
      const type = HLL.get('str_box');
      const boxed = type.$$STable.REPR.allocate(type.$$STable);
      boxed.$$setStr(obj);
      return boxed;
    }
  } else if (obj.$$decont) {
    return obj;
  } else if (obj instanceof EvalResult) {
    return obj;
  } else {
    const type = HLL.get('js_box');

    if (!type && typeof obj === 'function') {
      return new WrappedFunction(obj);
    }

    const wrapped = type.$$STable.REPR.allocate(type.$$STable);
    wrapped.$$jsObject = obj;
    return wrapped;
  }
}

/*async*/ function argToJSWithCtx(ctx, obj) {
  if (obj instanceof NativeIntArg || obj instanceof NativeUIntArg) {
    return obj.value;
  } else if (obj instanceof NativeNumArg) {
    return obj.value;
  } else if (obj instanceof NativeStrArg) {
    return obj.value;
  } else {
    return /*await*/ toJSWithCtx(ctx, /*await*/ obj.$$decont(ctx));
  }
}

/*async*/ function returnValueToJSWithCtx(ctx, obj) {
  if (obj instanceof NativeNumRet) {
    return obj.value;
  } else if (obj instanceof NativeNumArg) {
    return obj.value;
  } else if (typeof obj === 'string') {
    return obj;
  } else {
    return /*await*/ toJSWithCtx(ctx, /*await*/ obj.$$decont(obj));
  }
}

/*async*/ function toJSWithCtx(ctx, obj) {
  const HLL = ctx.$$getHLL();
  if (HLL.get('str_box') && /*await*/ obj.$$istype(ctx, HLL.get('str_box'))) {
    return obj.$$getStr();
  } else if (HLL.get('num_box') && /*await*/ obj.$$istype(ctx, HLL.get('num_box'))) {
    return obj.$$getNum();
  } else if (HLL.get('js_box') && /*await*/ obj.$$istype(ctx, HLL.get('js_box'))) {
    return obj.$$jsObject;
  } else if (obj === HLL.get('true_value')) {
    return true;
  } else if (obj === HLL.get('false_value')) {
    return false;
  } else if (obj === HLL.get('null_value')) {
    return null;
  } else if (obj.$$getBignum) {
    return BigInt(obj.$$getBignum().toString());
  } else if (op.isinvokable(obj)) {
    return /*async*/ function() {
      const converted = [null, {}];
      for (let i = 0; i < arguments.length; i++) {
        converted.push(fromJSToArgument(arguments[i]));
      }
      return /*await*/ returnValueToJSWithCtx(ctx, /*await*/ obj.$$apply(converted));
    };
  } else if (obj.$$STable === BOOT.StrArray.$$STable) {
    return obj.array;
  } else {
    throw new NQPException(`Can't pass object to js`);
  }
}

exports.toJSWithCtx = toJSWithCtx;

const nqp = require('./runtime.js');

const vm = process.browser ? null : require('vm');

const sourceMaps = {};
const evaledP6Sources = {};
const evaledP6Filenames = {};

const SourceMapGenerator = require('source-map').SourceMapGenerator;
const SourceMapConsumer = require('source-map').SourceMapConsumer;
const SourceNode = require('source-map').SourceNode;

const charProps = require('char-props');

function applyLineDirectives(file, line, directives) {
  if (directives) {
    for (let i = directives.length - 1; i >= 0; i--) {
      if (line > directives[i].originalLine) {
        return {
          line: line - directives[i].originalLine + directives[i].line - 1,
          file: directives[i].file,
        };
      }
    }
  }
  return {file: file, line: line};
}

function processCompLineDirectives(ctx, compLineDirectives) {
  if (compLineDirectives === undefined) return undefined;
  return compLineDirectives.array.map(directive => ({
    originalLine: nqp.toInt(directive.array[0], ctx),
    file: nqp.toStr(directive.array[2], ctx),
    line: nqp.toInt(directive.array[1], ctx),
  }));
}

function createSourceMap(js, p6, mapping, jsFile, p6File, lineDirectives) {
  const generator = new SourceMapGenerator({file: jsFile});

  const jsProps = charProps(js);
  const p6Props = charProps(p6);


  const stack = [];
  let lastGenerated = -1;

  for (let i = 0; i < mapping.length; i += 2) {
    const originalOffset = mapping[i];
    const generatedOffset = mapping[i+1];

    function addRange() {
        const {file: originalFile, line: originalLine} = applyLineDirectives(p6File, p6Props.lineAt(stack[stack.length - 1])+1, lineDirectives);

        const originalColumn = p6Props.columnAt(stack[stack.length - 1]);

        const lineFrom = jsProps.lineAt(lastGenerated)+1;
        const columnFrom = jsProps.columnAt(lastGenerated);

        const lineTo = jsProps.lineAt(generatedOffset)+1;

        generator.addMapping({
          generated: {
            line: lineFrom,
            column: columnFrom,
          },
          original: {
            line: originalLine,
            column: originalColumn,
          },
          source: originalFile,
        });

        for (let between = lineFrom + 1; between <= lineTo; between++) {
          generator.addMapping({
            generated: {
              line: between,
              column: 0,
            },
            original: {
              line: originalLine,
              column: originalColumn,
            },
            source: originalFile,
          });
        }
    }

    if (originalOffset === -1) {
      if (lastGenerated !== generatedOffset) {
        addRange();
      }
      stack.pop();
    } else {
      if (lastGenerated !== generatedOffset) {
        if (stack.length) {
          addRange();
        }
      }
      stack.push(originalOffset);
    }
    lastGenerated = generatedOffset;
  }

  return generator.toString();
}


class BuildSourceMap extends NQPObject {
  /*async*/ $$call(ctx, NAMED, js, p6, mapping, jsFile, p6File, compLineDirectives, sourcemapFile) {
    js = /*await*/ nqp.arg_s(ctx, js);
    p6 = /*await*/ nqp.arg_s(ctx, p6);
    jsFile = /*await*/ nqp.arg_s(ctx, jsFile);
    mapping = mapping.array;
    p6File = /*await*/ nqp.arg_s(ctx, p6File);
    compLineDirectives = processCompLineDirectives(ctx, compLineDirectives);
    sourcemapFile = /*await*/ nqp.arg_s(ctx, sourcemapFile);

    const ret = new Hash();
    ret.content.set('content', new NQPStr(createSourceMap(js, p6, mapping, path.relative(path.dirname(sourcemapFile), jsFile), p6File, compLineDirectives)));
    ret.content.set('url', new NQPStr(path.relative(path.dirname(jsFile), sourcemapFile)));
    return ret;
  }
}

exports.createSourceMap = createSourceMap;
exports.buildSourceMap = new BuildSourceMap();

class JavaScriptCompiler extends NQPObject {
  $$mangleCode(code) {
    if ('/*async*/' !== '/*asy' + 'nc*/') {
      return code.replace(/\/\*async\*\//g, '/*async*/').replace(/\/\*await\*\//g, '/*await*/');
    } else {
      return code;
    }
  }

  /*async*/ p6$eval(ctx, _NAMED, self, code) {
    if (!(_NAMED !== null && _NAMED.hasOwnProperty('mapping'))) {
      const codeStr = this.$$mangleCode(/*await*/ nqp.arg_s(ctx, code));
      return fromJSToReturnValue(ctx, /*await*/ eval('(function() {' + codeStr + '})()'));
    }

    const fakeFilename = 'nqpEval' + shortid.generate();

    const codeStr = this.$$mangleCode(/*await*/ nqp.toStr(code, ctx));

    // TODO - get rid of the node.js specific way
    // TODO - think about the LOAD_BYTECODE_FROM_MODULE HACK
    const preamble = 'var nqp = global.nqp; var module = global.nqpModule;var require = global.nqpRequire;';

    if (!process.browser) {
      global.nqp = nqp;
    }

    if (_NAMED !== null && _NAMED.hasOwnProperty('mapping')) {
      sourceMaps[fakeFilename] = /*await*/ new SourceMapConsumer(
        createSourceMap(
          codeStr,
          /*await*/ nqp.toStr(_NAMED['p6-source'], ctx),
          _NAMED.mapping.array,
          fakeFilename,
          /*await*/ nqp.toStr(_NAMED.file, ctx),
          processCompLineDirectives(ctx, _NAMED.comp_line_directives)));

      const node = SourceNode.fromStringWithSourceMap(codeStr, sourceMaps[fakeFilename]);

      // HACK
      sourceMaps[fakeFilename] = /*await*/ new SourceMapConsumer(node.toStringWithSourceMap({file: fakeFilename}).map.toString());
    }

    if ('p6-source' in _NAMED) {
      evaledP6Sources[fakeFilename] = nqp.toStr(_NAMED['p6-source'], ctx);
      evaledP6Filenames[fakeFilename] = nqp.toStr(_NAMED.file, ctx);
    }

    if (process.browser) {
      const sourceURL = '\n//@ sourceURL=' + fakeFilename;
      return fromJSToReturnValue(ctx, /*await*/ eval('(function() {' + codeStr + '})()' + sourceURL));
    }

    const compiled = vm.compileFunction(preamble + codeStr, [], {filename: fakeFilename});

    global.nqpModule = module;

    global.__filename = fakeFilename;

    const oldNqpRequire = global.nqpRequire;
    global.nqpRequire = function(path) {
      return require(path);
    };

    const ret = fromJSToReturnValue(ctx, compiled());
    global.nqpRequire = oldNqpRequire;

    return ret;
  }

  p6$compile(ctx, _NAMED, self, code) {
    const codeStr = nqp.arg_s(ctx, code);
    const compiled = process.browser
      ? eval('(function() {' + codeStr + '})')
      : vm.compileFunction(codeStr);

    const codeRef = new CodeRef();
    codeRef.$$call = function(ctx, _NAMED) {
      return fromJSToReturnValue(ctx, compiled());
    };
    return codeRef;
  }
};

op.jsruntimerequire = function(ctx, name, prefix) {
  return fromJSToReturnValue(ctx, require(require.resolve(name, {paths: [prefix]})));
};

op.jscompiletimerequire = function(ctx, name, prefix) {
  const required = op.jsruntimerequire(ctx, name, prefix);

  if (required.$$requireStub) {
    required.$$requireStub(name, prefix);
  }

  return required;
};

globalContext.initialize(context => context.compilerRegistry.set('JavaScript', new JavaScriptCompiler()));

class JSBackendStub extends NQPObject {
  p6$name(ctx, named) {
    return new NQPStr('js');
  }
};

class NQPStub extends NQPObject {
  constructor() {
    super();
    this.$$backend = new JSBackendStub();
  }

  p6$backend(ctx, named) {
    return this.$$backend;
  }
};

globalContext.initialize(context => context.compilerRegistry.set('nqp', new NQPStub()));

// Needed for standalone compiled Perl 6 script to work

class FakePerl6 extends NQPObject {
    config() {
        return new Hash();
    }

    language_version() {
        return 'v6.d';
    }
}

FakePerl6.prototype['p6$cli-options'] = function() {
    return new Hash();
};

class FakePerl6HOW extends NQPObject {
    add_method() {
        return Null;
    }
}

FakePerl6.prototype.$$STable = {};
FakePerl6.prototype.$$STable.HOW = new FakePerl6HOW;

const fakePerl6 = new FakePerl6();

op.getcomp = function(language) {
  const compilerRegistry = globalContext.context.compilerRegistry;

  if (language === 'Raku' && !compilerRegistry.has(language)) {
    return fakePerl6;
  }

  return compilerRegistry.has(language) ? compilerRegistry.get(language) : Null;
};

const child_process = process.browser ? null : require('child_process');

function getConfigFromPerl() {
  const perlScript = `
  use Config;

  my $ccdlflags = "$Config{cccdlflags} $Config{ccdlflags}";
  my $ldout = $^O eq 'MSWin32'? '-out:' : '-o';

  my %nativecall = (
    o => $Config{_o},
    so => $Config{so},
    cc => $Config{cc},
    ccflags => $Config{ccflags},
    ccdlflags => $ccdlflags,
    ld => $Config{ld},
    ldout => $ldout,
    ldflags => $Config{ldflags},
    lddlflags => $Config{lddlflags},
    libs => $Config{libs},
    perllibs => $Config{perllibs},
  );

  my $jquot = sub { my $s = shift; $s =~ s/(["\\\\])/\\\\$1/g; $s };

  # using a JSON module would be much better but we don't want a dependency
  print "{" . (join ',', map {'"nativecall.' . $_ . '": "' . $jquot->($nativecall{$_}) . '"'} keys %nativecall) . "}\n";
  `;


  return JSON.parse(child_process.spawnSync('perl', ['-e', perlScript], {stdio: ['inherit', 'pipe', 'inherit']}).output[1].toString());
}

op.backendconfig = function() {
  const config = new Hash();
  config.content.set('intvalsize', new NQPInt(4));
  if (process.browser) {
    config.content.set('osname', new NQPStr('browser'));
  } else {
    config.content.set('osname', new NQPStr(os.platform()));
    const nativecallConfig = getConfigFromPerl();
    for (const key of Object.keys(nativecallConfig)) {
      config.content.set(key, new NQPStr(nativecallConfig[key]));
    }
  }
  return config;
};

// FIXME - we take a index in code units not in codepoints
op.ordbaseat = function(str, index) {
  if (index < 0 || index > str.length) return -1;
  return str.substr(index, 1).normalize('NFD').codePointAt(0);
};

op.getmessage = function(exception) {
  return (exception.$$message === undefined ? null_s : exception.$$message);
};

op.setmessage = function(exception, message) {
  return (exception.$$message = message);
};

op.getpayload = function(exception) {
  return Object.prototype.hasOwnProperty.call(exception, '$$payload') ? exception.$$payload : Null;
};

op.setpayload = function(exception, payload) {
  return (exception.$$payload = payload);
};

op.isnum = function(value) {
  return (value instanceof NQPNum || (value.$$STable && value.$$STable.REPR instanceof reprs.P6int)) ? 1 : 0;
};

op.isint = function(value) {
  return (value instanceof NQPInt || (value.$$STable && value.$$STable.REPR instanceof reprs.P6int)) ? 1 : 0;
};

op.isstr = function(value) {
  return (value instanceof NQPStr || (value.$$STable && value.$$STable.REPR instanceof reprs.P6int)) ? 1 : 0;
};

function renameEncoding(encoding) {
  return {'utf16': 'utf16le', 'iso-8859-1': 'latin1'}[encoding] || encoding;
}
exports.renameEncoding = renameEncoding;

const encodings = ['ascii', 'utf16le', 'ucs2', 'base64', 'latin1', 'binary', 'hex'];
function isKnownEncoding(encoding) {
  return (encodings.indexOf(encoding) == -1 ? false : true) || (encoding in codecs);
}
exports.isKnownEncoding = isKnownEncoding;


function byteSize(buf) {
  const bits = buf.$$STable.REPR.type.$$STable.REPR.bits;

  if (bits % 8) {
    throw 'only buffer sizes that are a multiple of 8 are supported';
  }

  return bits / 8;
}

exports.byteSize = byteSize;

function writeBuffer(highLevel, highLevelOffset, lowLevel) {
  const elementSize = byteSize(highLevel);
  const isUnsigned = highLevel.$$STable.REPR.type.$$STable.REPR.isUnsigned;

  let offset = 0;
  for (let i = 0; i < lowLevel.length / elementSize; i++) {
    highLevel.array[highLevelOffset + i] = isUnsigned ? lowLevel.readUIntLE(offset, elementSize) : lowLevel.readIntLE(offset, elementSize);
    offset += elementSize;
  }
}

exports.writeBuffer = writeBuffer;

const BINARY_ENDIAN_LITTLE = 1;
const BINARY_ENDIAN_BIG = 2;

const BINARY_ENDIAN_MASK = BINARY_ENDIAN_LITTLE | BINARY_ENDIAN_BIG;

const BINARY_SIZE_8_BIT = 0;
const BINARY_SIZE_16_BIT = 4;
const BINARY_SIZE_32_BIT = 8;
const BINARY_SIZE_64_BIT = 12;

const isNativelyBigEndian = new Uint8Array(new Uint32Array([0x12345678]).buffer)[0] === 0x12;

function isBigEndianFromFlags(flags) {
  const endianFlags = flags & BINARY_ENDIAN_MASK;
  return (endianFlags === BINARY_ENDIAN_BIG || (endianFlags == 0 && isBigEndian));
}

function sizeFromFlags(flags) {
  const sizeFlags = flags & ~BINARY_ENDIAN_MASK;
  if (sizeFlags == BINARY_SIZE_8_BIT) {
    return 1;
  } else if (sizeFlags == BINARY_SIZE_16_BIT) {
    return 2;
  } else if (sizeFlags == BINARY_SIZE_32_BIT) {
    return 4;
  } else if (sizeFlags == BINARY_SIZE_64_BIT) {
    return 8;
  } else {
    throw new NQPException('unsupported flags: ' + flags);
  }
}

function intSizeFromFlags(flags) {
  const size = sizeFromFlags(flags);
  if (size === 8) {
    throw new NQPException('BINARY_SIZE_64_BIT for (u)ints is not supported');
  }
  return size;
}

function writeIntToBuffer(isSigned, buffer, offset, value, flags) {

  const sizeInBytes = intSizeFromFlags(flags);
  const lowlevelBuffer = Buffer.alloc(sizeInBytes);

  const isBigEndian = isBigEndianFromFlags(flags);

  const shift = 32 - sizeInBytes * 8;

  if (isSigned) {
    const wrapped = value << shift >> shift;
    if (isBigEndian) {
      lowlevelBuffer.writeIntBE(wrapped, 0, sizeInBytes);
    } else {
      lowlevelBuffer.writeIntLE(wrapped, 0, sizeInBytes);
    }
  } else {
    const wrapped = value << shift >>> shift;
    if (isBigEndian) {
      lowlevelBuffer.writeUIntBE(wrapped, 0, sizeInBytes);
    } else {
      lowlevelBuffer.writeUIntLE(wrapped, 0, sizeInBytes);
    }
  }

  writeBuffer(buffer, offset, lowlevelBuffer);
};

op.writeint = function(buffer, offset, value, flags) {
  writeIntToBuffer(true, buffer, offset, value, flags);
};

op.writeuint = function(buffer, offset, value, flags) {
  writeIntToBuffer(false, buffer, offset, value, flags);
};

op.readuint = function(buffer, offset, flags) {
  const sizeInBytes = intSizeFromFlags(flags);
  const rawData = rawSlice(buffer, offset, offset + sizeInBytes / byteSize(buffer));
  return isBigEndianFromFlags(flags) ? rawData.readUIntBE(0, sizeInBytes) : rawData.readUIntLE(0, sizeInBytes);
};

op.writenum = function(buffer, offset, value, flags) {
  const isBigEndian = isBigEndianFromFlags(flags);

  const sizeInBytes = sizeFromFlags(flags);
  const lowlevelBuffer = Buffer.alloc(sizeInBytes);

  if (sizeInBytes == 4) {
    if (isBigEndian) {
      lowlevelBuffer.writeFloatBE(value, 0);
    } else {
      lowlevelBuffer.writeFloatLE(value, 0);
    }
  } else if (sizeInBytes == 8) {
    if (isBigEndian) {
      lowlevelBuffer.writeDoubleBE(value, 0);
    } else {
      lowlevelBuffer.writeDoubleLE(value, 0);
    }
  } else {
    throw new NQPException('unsupported size: ' + sizeInBytes*8 + 'bits');
  }

  writeBuffer(buffer, offset, lowlevelBuffer);

};

op.readnum = function(buffer, offset, flags) {
  const sizeInBytes = sizeFromFlags(flags);
  const rawData = rawSlice(buffer, offset, offset + sizeInBytes / byteSize(buffer));
  const isBigEndian = isBigEndianFromFlags(flags);

  if (sizeInBytes == 4) {
    if (isBigEndian) {
      return rawData.readFloatBE(0);
    } else {
      return rawData.readFloatLE(0);
    }
  } else if (sizeInBytes == 8) {
    if (isBigEndian) {
      return rawData.readDoubleBE(0);
    } else {
      return rawData.readDoubleLE(0);
    }
  } else {
    throw new NQPException('unsupported size: ' + sizeInBytes*8 + 'bits');
  }
};


op.encodeconf = function(str, encoding_, output, permissive) {
  if (output.array.length) {
    throw new NQPException('encode requires an empty array');
  }

  const encoding = renameEncoding(encoding_);

  let buffer;

  if (encoding in codecs) {
    buffer = codecs[encoding].encode(str, permissive);
  } else {
    buffer = Buffer.from(str, encoding);
  }

  writeBuffer(output, 0, buffer);


  return output;
};

op.encode = function(str, encoding, output) {
  return op.encodeconf(str, encoding, output, 1);
};

op.encoderepconf = function(str, encoding_, replacement, output, permissive) {
  if (replacement === nullStr) {
    return op.encodeconf(str, encoding_, output, permissive);
  }

  const encoding = renameEncoding(encoding_);

  let buffer;

  if (encoding in codecs) {
    buffer = codecs[encoding].encodeWithReplacement(str, replacement, permissive);
  } else {
    throw new NQPException('encoding unsupported in encoderep');
  }

  writeBuffer(output, 0, buffer);

  return output;
};

op.encoderep = function(str, encoding, replacement, output) {
  return op.encoderepconf(str, encoding, replacement, output, 1);
};

function toRawBuffer(buf) {
  return rawSlice(buf, 0, buf.array.length);
}

function rawSlice(buf, start, end) {
  const elementSize = byteSize(buf);
  const isUnsigned = buf.$$STable.REPR.type.$$STable.REPR.isUnsigned;
  const array = buf.array;

  const buffer = Buffer.allocUnsafe(array.length * elementSize);

  let offset = 0;
  for (let i = start; i < end; i++) {
    if (isUnsigned) {
      buffer.writeUIntLE(array[i], offset, elementSize);
    } else {
      buffer.writeIntLE(array[i], offset, elementSize);
    }
    offset += elementSize;
  }

  return buffer;
}

exports.toRawBuffer = toRawBuffer;

op.decodeconf = function(buf, encoding, permissive) {
  let rawBuffer = toRawBuffer(buf);
  if (encoding in codecs) {
    return codecs[encoding].decode(rawBuffer, permissive);
  } else {
    return rawBuffer.toString(renameEncoding(encoding));
  }
};

op.decode = function(buf, encoding) {
  return op.decodeconf(buf, encoding, 1);
};

op.decoderepconf = function(buf, encoding, replacement, permissive) {
  // XXX remove the if and do it properly
  if (encoding === 'windows-1252' || encoding === 'windows-1251' || encoding === 'windows-932') {
    const rawBuffer = toRawBuffer(buf);
    return codecs[encoding].decodeWithReplacement(rawBuffer, replacement, permissive);
  } else {
    return op.decodeconf(buf, encoding, permissive);
  }
};

op.objprimspec = function(obj) {
  if (obj === Null) return 0;
  if (typeof obj === 'object') {
    if (obj instanceof NQPInt) {
      return 1;
    } else if (obj instanceof NQPNum) {
      return 2;
    } else if (obj instanceof NQPStr) {
      return 3;
    } else {
      return (obj.$$STable && obj.$$STable.REPR.boxedPrimitive ? obj.$$STable.REPR.boxedPrimitive() : 0);
    }
  } else {
    throw new NQPException(`objprimspec can't handle things of type: ${typeof obj}`);
  }
};

op.objprimbits = function(type) {
  return type.$$STable.REPR.bits;
};

op.objprimunsigned = function(type) {
  return type.$$STable.REPR.isUnsigned ? 1 : 0;
};

/* Parametricity operations. */
op.setparameterizer = function(ctx, type, parameterizer) {
  const st = type.$$STable;
  /* Ensure that the type is not already parametric or parameterized. */
  if (st.parameterizer) {
    throw new NQPException('This type is already parametric');
    return Null;
  } else if (st.parametricType) {
    throw new NQPException('Cannot make a parameterized type also be parametric');
    return Null;
  }

  /* Set up the type as parameterized. */
  st.parameterizer = parameterizer;
  st.parameterizerCache = [];

  st.modeFlags |= constants.PARAMETRIC_TYPE;

  return type;
};

op.parameterizetype = /*async*/ function(ctx, type, params) {
  /* Ensure we have a parametric type. */
  const st = type.$$STable;
  if (!st.parameterizer) {
    throw new NQPException('This type is not parametric');
  }

  const unpackedParams = params.array;

  const found = st.lookupParametric(unpackedParams);
  if (found !== undefined) {
    return found;
  }

  const result = /*await*/ st.parameterizer.$$call(ctx, {}, st.WHAT, params);

  const newSTable = result.$$STable;
  newSTable.parametricType = type;
  newSTable.parameters = params;
  newSTable.modeFlags |= constants.PARAMETERIZED_TYPE;

  st.parameterizerCache.push({type: result, params: unpackedParams});

  return result;
};

op.gcd_i = function(a, b) {
  let c;
  while (a != 0) {
    c = a;
    a = b % a;
    b = c;
  }
  return b;
};

// TODO think about overflow
op.lcm_i = function(a, b) {
  return (a * b) / op.gcd_i(a, b);
};

op.div_i = function(a, b) {
  if (b == 0) {
    throw new NQPException('Division by zero');
  } else {
    return Math.floor(a/b);
  }
};

op.mod_n = function(a, b) {
  return a - Math.floor(a / b) * b;
};

op.sec_n = function(x) {
  return 1 / Math.cos(x);
};

op.asec_n = function(x) {
  return Math.acos(1 / x);
};

op.sech_n = function(x) {
  if (x == Infinity || x == -Infinity) return 0;
  return (2 * Math.cosh(x)) / (Math.cosh(2 * x) + 1);
};

op.isnanorinf = function(n) {
  return (isNaN(n) || n == Infinity || n == -Infinity) ? 1 : 0;
};

function typeparameters(ctx, type) {
  const st = type.$$STable;
  if (!st.parametricType) {
    throw new NQPException('This type is not parameterized');
  }

  return st.parameters;
}

op.typeparameters = typeparameters;

op.typeparameterat = function(ctx, type, idx) {
  return typeparameters(ctx, type).$$atpos(idx);
};

op.typeparameterized = function(type) {
  const st = type.$$STable;
  return st.parametricType ? st.parametricType : Null;
};

let generator = Math;
let isXorShiftGenerator = false;

exports.randomInt = function() {
  if (!isXorShiftGenerator) {
    generator = require('xorshift');
    isXorShiftGenerator = true;
  }
  return generator.randomint();
};

op.rand_n = function(limit) {
  return generator.random() * limit;
};

op.srand = function(seed) {
  const XorShift = require('xorshift').constructor;
  generator = new XorShift([seed, 0, 0, 0]);
  isXorShiftGenerator = true;
  return seed;
};

op.getlexrel = function(pad, name) {
  return pad.lookup(name);
};


op.bitand_s = function(a, b) {
  const codePointsA = [];
  const codePointsB = [];

  for (const c of a.normalize('NFC')) {
    codePointsA.push(c.codePointAt(0));
  }
  for (const c of b.normalize('NFC')) {
    codePointsB.push(c.codePointAt(0));
  }

  const ret = [];

  for (let i = 0; i < codePointsA.length && i < codePointsB.length; i++) {
    ret.push(codePointsA[i] & codePointsB[i]);
  }

  return String.fromCodePoint.apply(undefined, ret).normalize('NFC');
};

op.bitor_s = function(a, b) {
  const codePointsA = [];
  const codePointsB = [];

  for (const c of a.normalize('NFC')) {
    codePointsA.push(c.codePointAt(0));
  }
  for (const c of b.normalize('NFC')) {
    codePointsB.push(c.codePointAt(0));
  }

  const ret = [];

  for (let i = 0; i < codePointsA.length || i < codePointsB.length; i++) {
    ret.push((codePointsA[i] || 0) | (codePointsB[i] || 0));
  }

  return String.fromCodePoint.apply(undefined, ret).normalize('NFC');
};

op.bitxor_s = function(a, b) {
  const codePointsA = [];
  const codePointsB = [];

  for (const c of a.normalize('NFC')) {
    codePointsA.push(c.codePointAt(0));
  }
  for (const c of b.normalize('NFC')) {
    codePointsB.push(c.codePointAt(0));
  }

  const ret = [];

  for (let i = 0; i < codePointsA.length || i < codePointsB.length; i++) {
    ret.push((codePointsA[i] || 0) ^ (codePointsB[i] || 0));
  }


  return String.fromCodePoint.apply(undefined, ret).normalize('NFC');
};

op.replace = function(str, offset, count, repl) {
  return str.substr(0, offset) + repl + str.substr(offset + count);
};

const fs = process.browser ? null : require('fs');
const sourceMapResolve = process.browser ? null : require('source-map-resolve');

function pathToFilename(path) {
  return path.substr(path.lastIndexOf('/') + 1);
}

op.getcodelocation = /*async*/ function(code) {
  let sourcePath;
  let source;

  if (code.staticCode.filename in evaledP6Sources) {
    sourcePath = evaledP6Filenames[code.staticCode.filename];
    source = evaledP6Sources[code.staticCode.filename];
  } else if (process.browser) {
    const sourceMap = /*await*/ resolveSourceMap(code.staticCode.filename);
    const originalFilename = code.staticCode.originalFilename;
    for (let i = 0; i < sourceMap.sources.length; i++) {
      const sourceFile = sourceMap.sources[i];
      if (pathToFilename(sourceFile) === pathToFilename(originalFilename)) {
        sourcePath = originalFilename;
        source = sourceMap.sourcesContent[i];
      }
    }
  } else {
    const result = sourceMapResolve.resolveSourceMapSync(fs.readFileSync(code.staticCode.filename).toString('utf8'), code.staticCode.filename, fs.readFileSync);
    sourcePath = path.resolve(path.dirname(result.sourcesRelativeTo), result.map.sources[0]);

    source = fs.readFileSync(sourcePath, 'utf8');
  }

  const props = charProps(source);

  const hash = new Hash();
  hash.content.set('file', new NQPStr(sourcePath));
  hash.content.set('line', new NQPInt(props.lineAt(code.staticCode.sourceOffset)+1));

  return hash;
};

op.getcodecuid = function(codeRef) {
  return codeRef.cuid;
};

op.numdimensions = function(array) {
  return array.$$numdimensions();
};

op.dimensions = function(array) {
  return array.$$dimensions();
};

op.setdimensions = function(array, dimensions) {
  array.$$setdimensions(dimensions);
  return array;
};

// TODO optimize

['_n', '_s', '_i', ''].forEach(function(type) {
  op['atposnd' + type] = function(array, idx) {
    return array['$$atposnd' + type](idx);
  };

  op['bindposnd' + type] = function(array, idx, value) {
    return array['$$bindposnd' + type](idx, value);
  };

  op['atpos2d' + type] = function(array, x, y) {
    return op['atposnd' + type](array, BOOT.createArray([x, y]));
  };

  op['atpos3d' + type] = function(array, x, y, z) {
    return op['atposnd' + type](array, BOOT.createArray([x, y, z]));
  };

  op['bindpos2d' + type] = function(array, x, y, value) {
    return op['bindposnd' + type](array, BOOT.createArray([x, y]), value);
  };

  op['bindpos3d' + type] = function(array, x, y, z, value) {
    return op['bindposnd' + type](array, BOOT.createArray([x, y, z]), value);
  };
});

/* TODO HLL support */
op.newexception = function() {
  const exType = BOOT.Exception;
  return exType.$$STable.REPR.allocate(exType.$$STable);
};

op.throwextype = function(ctx, category) {
  const exType = BOOT.Exception;
  const ex = exType.$$STable.REPR.allocate(exType.$$STable);
  ex.$$category = category;
  return ctx.throw(ex);
};

function EvalResult(mainline, codeRefs) {
  this.mainline = mainline;
  this.codeRefs = codeRefs;
}

exports.EvalResult = EvalResult;

op.iscompunit = function(obj) {
  return obj instanceof EvalResult ? 1 : 0;
};

op.compunitmainline = function(cu) {
  return cu.mainline;
};

op.compunitcodes = function(cu) {
  return cu.codeRefs;
};

op.getstaticcode = function(codeRef) {
  return codeRef.staticCode;
};

/*async*/ function backtrace(exception) {
  if (exception.$$ctx) {
    let ctx = exception.$$ctx.$$skipHandlers();

    const stack = exception.$$stack;

    const rows = [];


    let stackIndex = 0;

    while (ctx) {
      const row = new Hash();
      const annotations = new Hash();
      row.content.set('annotations', annotations);

      let file = '<unknown file>';
      let line = 1;

      if (ctx instanceof Ctx) {
        ctx = ctx.$$skipHandlers();
        const codeRef = ctx.codeRef();

        if (codeRef && codeRef.staticCode.isThunk) {
          ctx = ctx.$$caller;
          continue;
        }

        if (codeRef !== null) {
          const wanted = codeRef.$$call.name;
          while (stackIndex < stack.length) {
            if (stack[stackIndex].getFunctionName() == wanted) {
              file = stack[stackIndex].getFileName() || stack[stackIndex].getEvalOrigin();
              line = stack[stackIndex].getLineNumber();
              let column = stack[stackIndex].getColumnNumber();

              if (sourceMaps.hasOwnProperty(file)) {
                const original = sourceMaps[file].originalPositionFor({line: line, column: column});
                if (original.source) {
                  file = original.source;
                  line = original.line;
                  column = original.column;
                }
              } else {
                if (file && resolveSourceMap) {
                  let resolved = null

                  try {
                    resolved = /*await*/ resolveSourceMap(file);
                  } catch (e) {
                  }

                  if (resolved !== null) {
                    const original = resolved.originalPositionFor({line: line, column: column});
                    if (original.source) {
                      file = original.source;


                      /* HACK - avoid parcel adding a ../ prefix */
                      file = file.replace(/^\.\.\/SETTING::/, 'SETTING::');
                      /* HACK - hack for SETTING:: getting turned into setting:: due to URL mangling */
                      file = file.replace(/^setting::/, 'SETTING::');

                      line = original.line;
                      column = original.column;
                    }
                  }
                }
              }
              if (file === undefined) file = '?';
              break;
            }
            stackIndex++;
          }
          row.content.set('sub', codeRef);
        }
      }

      annotations.content.set('file', new NQPStr(file));
      annotations.content.set('line', new NQPInt(line));

      rows.push(row);

      ctx = ctx.$$caller;
    }
    return rows;
  } else {
    return [];
  }
};

op.backtrace = /*async*/ function(currentHLL, exception) {
  return hll.list(currentHLL, /*await*/ backtrace(exception));
};

op.backtracestrings = /*async*/ function(currentHLL, exception) {
  const lines = [];
  let first = true;
  for (const row of /*await*/ backtrace(exception)) {
    const annotations = row.$$atkey('annotations');
    const sub = row.$$atkey('sub');
    lines.push((first ? '  at ' : ' from ') + annotations.$$atkey('file').value + ':'+ annotations.$$atkey('line').value + ' (cuid ' + sub.cuid + ')');
    first = false;
  }
  return hll.list(currentHLL, lines);
};

op.hintfor = function(classHandle, attrName) {
  if (!classHandle.$$STable.REPR.hintfor) return -1;
  return classHandle.$$STable.REPR.hintfor(classHandle, attrName);
};

op.ctxcaller = function(ctx) {
  if (ctx.$$caller === null) {
    return Null;
  } else {
    const caller = ctx.$$caller.$$skipHandlers();
    return caller === null ? Null : caller;
  }
};

op.ctxcallerskipthunks = function(ctx) {
  let caller = ctx.$$skipHandlers().$$caller;
  if (caller) caller = caller.$$skipHandlers();

  // FIXME - ctxs that don't have a codeRef
  while (caller && caller.codeRef().staticCode.isThunk) {
    caller = caller.$$caller;
    if (caller) caller = caller.$$skipHandlers();
  }
  return caller || Null;
};

op.ctxouterskipthunks = function(ctx) {
  let outer = ctx.$$skipHandlers().$$outer;

  // FIXME - ctxs that don't have a codeRef
  while (outer && (outer.codeRef() && outer.codeRef().staticCode.isThunk)) {
    outer = outer.$$outer;
    if (outer) outer = outer.$$skipHandlers();
  }
  return outer || Null;
};

op.captureposprimspec = function(capture, idx) {
  if (capture.pos[idx] instanceof NativeIntArg || capture.pos[idx] instanceof NativeUIntArg) {
    return 1;
  } else if (capture.pos[idx] instanceof NativeNumArg) {
    return 2;
  } else if (capture.pos[idx] instanceof NativeStrArg) {
    return 3;
  } else if (capture.pos[idx].$$typeObject) {
    return 0;
  } else {
    return op.objprimspec(capture.pos[idx]);
  }
};

op.forceouterctx = function(code, ctx) {
  if (!(code instanceof CodeRef)) {
    throw 'forceouterctx first operand must be a CodeRef';
  }
  if (!(ctx instanceof Ctx)) {
    throw 'forceouterctx second operand must be a Ctx';
  }

  code.outerCtx = ctx;

  return code;
};

op.fc = foldCase;

function tcChar(c) {
  if (c === 'ß') return 'Ss';
  const unicharadata = require('unicharadata');
  /* HACK - unichardata needs to be fixed to work in browsers correctly or replaced */
  const titled = unicharadata.title ? unicharadata.title(c) : window.unicharadata.title(c);
  return titled === '' ? c : titled;
}

op.tc = function(string) {
  let ret = '';
  for (const c of string) {
    ret += tcChar(c);
  }
  return ret;
};

op.tclc = function(string) {
  let isFirst = true;
  let lower = '';
  let first = '';
  for (const c of string) {
    if (isFirst) {
      isFirst = false;
      first = tcChar(c);
    } else {
      lower += c;
    }
  }
  return first + lower.toLowerCase();
};

const ucd = require('nqp-js-ucd');

op.strfromname = function(name) {
  const uppercased = name.toUpperCase();

  let codePoint;
  let codePoints;

  if ((codePoint = ucd.nameToCodePoint(uppercased)) !== undefined) {
    return String.fromCodePoint(codePoint);
  } else if ((codePoint = ucd.aliasToCodePoint(uppercased)) !== undefined) {
    return String.fromCodePoint(codePoint);
  } else if (codePoints = ucd.sequenceToCodePoints(uppercased)) {
    return codePoints.map(codePoint => String.fromCodePoint(codePoint)).join('');
  } else {
    return '';
  }
};

op.codepointfromname = function(name) {
  let codePoint;

  if ((codePoint = ucd.nameToCodePoint(name)) !== undefined) {
    return codePoint;
  } else if ((codePoint = ucd.aliasToCodePoint(name)) !== undefined) {
    return codePoint;
  } else {
    return -1;
  }
};

function formatCodePoint(codePoint) {
  const string = codePoint.toString(16).toUpperCase();
  return '0'.repeat(Math.max(0, 4 - string.length)) + string;
}

op.getuniname = function(codePoint) {
  if (codePoint <= 0x1F || (0x7F <= codePoint && codePoint <= 0x9F)) {
    return '<control-' + formatCodePoint(codePoint) + '>';
  } else if ( (0xFDD0 <= codePoint && codePoint <= 0xFDEF) || (0xFFFE & codePoint) == 0xFFFE) {
    return '<noncharacter-' + formatCodePoint(codePoint) + '>';
  } else if (0xE000 <= codePoint && codePoint <= 0xF8FF
            || 0xF0000 <= codePoint && codePoint <= 0xFFFFD
            || 0x100000 <= codePoint && codePoint <= 0x10FFFD) {
    return '<private-use-' + formatCodePoint(codePoint) + '>';
  } else if (0xD800 <= codePoint && codePoint <= 0xDBFF
            || 0xDC00 <= codePoint && codePoint <= 0xDFFF) {
    return '<surrogate-' + formatCodePoint(codePoint) + '>';
  } else {
    return ucd.codePointToName(codePoint) || 'missing';
  }
};

const forms = ['NONE', 'NFC', 'NFD', 'NFKC', 'NFKD'];
op.normalizecodes = function(input, form, output) {
  const stringified = input.array.map(codePoint => String.fromCodePoint(codePoint)).join('');
  const normalized = form == 0 ? stringified : stringified.normalize(forms[form]);

  for (const c of normalized) {
    output.array.push(c.codePointAt(0));
  }

  return output;
};

op.strfromcodes = function(codes) {
  return codes.array.map(codePoint => String.fromCodePoint(codePoint)).join('');
};

op.strtocodes = function(str, form, codes) {
  const normalized = form == 0 ? str : str.normalize(forms[form]);

  for (const c of normalized) {
    codes.array.push(c.codePointAt(0));
  }
  return codes;
};

op.codes = function(str) {
  let count = 0;
  for (const c of str.normalize('NFC')) { // eslint-disable-line no-unused-vars
    count++;
  }
  return count;
};

op.islist = function(list) {
  return (list.$$STable && list.$$STable.REPR instanceof reprs.VMArray) ? 1 : 0;
};

op.split = function(currentHLL, separator, string) {
  // TODO think if performance wise we can avoid this wrapping
  return hll.slurpyArray(currentHLL, (string !== ''
    ? (separator === '' ? graphemes.break(string) : string.split(graphemes.regexForLiteral(separator)))
    : []).map(str => strToObj(currentHLL, str)));
};

op.setextype = function(exception, category) {
  exception.$$category = category;
  return category;
};

op.getextype = function(exception) {
  if (exception.$$category === undefined) {
    return 0;
  } else {
    return exception.$$category;
  }
};

op.pow_n = function(base, exponent) {
  if (base === 1) return 1;
  return Math.pow(base, exponent);
};

op.getlockcondvar = function(lock, type) {
  // STUB
  return type.$$STable.REPR.allocate(type.$$STable);
};

op.condwait = function(cv) {
  // STUB
  console.log('condwait NYI');
  process.exit();
  return cv;
};

op.condsignalall = function(cv) {
  // STUB
  return cv;
};

op.condsignalone = function(cv) {
  // STUB
  return cv;
};

op.semtryacquire = function(semaphore) {
  console.log('sematrycquire NYI');
  // STUB
  return 1;
};

op.semacquire = function(semaphore) {
  // STUB
  console.log('semacquire NYI');
  return semaphore;
};

op.semrelease = function(semaphore) {
  // STUB
  console.log('semrelease NYI');
  return semaphore;
};


op.eqat = function(haystack, needle, offset) {
  if (haystack.substr(offset, needle.length) === needle) {
    if (graphemes.graphemeBoundary(haystack, offset + needle.length)) {
      return 1;
    } else {
      return 0;
    }
  } else {
    return 0;
  }
};

op.eqatic = function(haystack, needle, offset) {
  return foldCase(haystack.substr(offset)).startsWith(foldCase(needle)) ? 1 : 0;
};

op.eqaticim = function(haystack, needle, offset) {
  return foldCase(stripMarks(haystack.substr(offset))).startsWith(foldCase(stripMarks(needle))) ? 1 : 0;
};

op.eqatim = function(haystack, needle, offset) {
  return stripMarks(haystack.substr(offset)).startsWith(stripMarks(needle)) ? 1 : 0;
};

// STUB
op.captureinnerlex = function(codeRef) {
  return codeRef;
};

op.cpucores = function() {
  return os.cpus().length;
};

op.freemem = function() {
  return os.freemem();
};

op.totalmem = function() {
  return os.totalmem();
};

op.atomicinc_i = function(ctx, ref) {
  const value = ref.$$getInt();
  ref.$$assign_i(ctx, value+1);
  return value;
};

op.unicmp_s = function(a, b, collationMode, language, code) {
  if (language != 0 || code != 0) {
    throw new NQPException('collation with a set language NYI');
  }

  return unicodeCollationAlgorithm.compare(a, b, collationMode);
};

op.cleardispatcher = function(ctx) {
  if (nqp.currentDispatcherFor === ctx.codeRef() || nqp.currentDispatcherFor === undefined) {
    nqp.currentDispatcher = undefined;
  }
};

const getrusage = null; //require('qrusage');
op.getrusage = function() {
  throw 'getrusage is currently broken';
  const usage = getrusage();
  const stable = BOOT.IntArray.$$STable;
  const utime_sec = Math.floor(usage.utime);
  const utime_usec = (usage.utime - Math.floor(usage.utime)) * 1000000;

  const stime_sec = Math.floor(usage.stime);
  const stime_usec = (usage.stime - Math.floor(usage.stime)) * 1000000;

  return stable.REPR.allocateFromArray(stable, [
    utime_sec,
    utime_usec,
    stime_sec,
    stime_usec,
    usage.maxrss,
    usage.ixrss,
    usage.idrss,
    usage.isrss,
    usage.minflt,
    usage.majflt,
    usage.nswap,
    usage.inblock,
    usage.oublock,
    usage.msgsnd,
    usage.msgrcv,
    usage.nsignals,
    usage.nvcsw,
    usage.nivcsw,
  ]);
};


op.flip = function(str) {
  return graphemes.break(str).reverse().join('');
};

op.charsnfg = function(str) {
  let count = 0;
  graphemeRegexp.lastIndex = 0;
  while (graphemeRegexp.test(str)) {
    count++;
  }
  return count;
};

op.substr3nfg = function(str, start, length) {
  let startGraphemes = start;

  graphemeRegexp.lastIndex = 0;
  while (startGraphemes--) {
    if (!graphemeRegexp.test(str)) return '';
  }

  const startChars = graphemeRegexp.lastIndex;

  let substringEnd = startChars;
  let lengthGraphemes = length;
  while (lengthGraphemes--) {
    if (graphemeRegexp.test(str)) {
      substringEnd = graphemeRegexp.lastIndex;
    } else {
      break;
    }
  }

  return str.substring(startChars, substringEnd);
};

op.substr2nfg = function(str, start) {
  let startGraphemes = start;

  graphemeRegexp.lastIndex = 0;
  while (startGraphemes--) {
    if (!graphemeRegexp.test(str)) return '';
  }
  const startChars = graphemeRegexp.lastIndex;

  return str.substr(startChars);
};

op.iseq_snfg = function(a, b) {
  return (a.normalize('NFC') === b.normalize('NFC')) ? 1 : 0;
};

op.isne_snfg = function(a, b) {
  return (a.normalize('NFC') === b.normalize('NFC')) ? 0 : 1;
};

op.setjsattr = /*async*/ function(ctx, obj, attr, value) {
  return obj.$$jsObject[attr] = /*await*/ toJSWithCtx(ctx, value);
};

op.getjsattr = function(ctx, obj, attr) {
  return fromJSToObject(ctx, obj.$$jsObject[attr]);
};

op.decodelocaltime = function(sinceEpoch) {
  let date = new Date(sinceEpoch * 1000);

  return BOOT.createIntArray([
    date.getSeconds(),
    date.getMinutes(),
    date.getHours(),
    date.getDate(),
    date.getMonth()+1,
    date.getFullYear()
  ]);
};

// generate a random positive integer
exports.fakePid = function() {
  return (exports.randomInt()[0] << 1 >>> 1);
};
