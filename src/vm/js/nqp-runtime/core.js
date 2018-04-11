'use strict';

const op = {};
exports.op = op;

const os = require('os');

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

const exceptionsStack = require('./exceptions-stack.js');

const repossession = require('./repossession.js');

const sixmodel = require('./sixmodel.js');

const Capture = require('./capture.js');

const shortid = require('shortid');

const stripMarks = require('./strip-marks.js');

const codecs = require('./codecs.js');

const graphemeRegexp = require('./graphemes').regexp;

const foldCase = require('fold-case');

const xregexp = require('xregexp');

const graphemes = require('./graphemes.js');

const unicodeCollationAlgorithm = require('unicode-collation-algorithm');

const unicodeData = require('nqp-unicode-data');

const resolveSourceMap = require('./resolve-sourcemap.js');

const path = require('path');

const nullStr = require('./null_s.js');

exports.CodeRef = CodeRef;

op.isinvokable = function(obj) {
  return (obj instanceof CodeRef || (obj._STable && obj._STable.invocationSpec) ? 1 : 0);
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
  const minus = flags & 0x02 ? '(?:-?|\\+?)' : '';
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


  if (flags & 0x01) number = '-' + number;
  if (flags & 0x04) number = number.replace(/0+$/, '');

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
  type._STable.debugName = debugName;
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

const intToObj = exports.intToObj = function(currentHLL, i) {
  const type = currentHLL.get('int_box');
  if (!type) {
    return new NQPInt(i);
  } else {
    const repr = type._STable.REPR;
    const obj = repr.allocate(type._STable);
    obj.$$setInt(i);
    return obj;
  }
};

const numToObj = exports.numToObj = function(currentHLL, n) {
  const type = currentHLL.get('num_box');
  if (!type) {
    return new NQPNum(n);
  } else {
    const repr = type._STable.REPR;
    const obj = repr.allocate(type._STable);
    obj.$$setNum(n);
    return obj;
  }
};

const strToObj = exports.strToObj = function(currentHLL, s) {
  const type = currentHLL.get('str_box');
  if (!type) {
    return new NQPStr(s);
  } else {
    const repr = type._STable.REPR;
    const obj = repr.allocate(type._STable);
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
  return obj instanceof Hash || (obj._STable && obj._STable.REPR instanceof reprs.VMHash) ? 1 : 0;
};

op.create = function(obj) {
  return obj._STable.REPR.allocate(obj._STable);
};

op.bootarray = function() {
  return BOOT.Array;
};

op.defined = function(obj) {
  // TODO - handle more things that aren't defined
  if (obj === Null || obj.typeObject_) {
    return 0;
  }
  return 1;
};


op.setinvokespec = function(obj, classHandle, attrName, invocationHandler) {
  obj._STable.setinvokespec(classHandle, attrName, invocationHandler);
  return obj;
};

// Stub
op.setboolspec = function(obj, mode, method) {
  obj._STable.setboolspec(mode, method);
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
  obj._STable.typeCheckCache = cache.array;
  if (obj._STable._SC !== undefined) obj._STable.scwb();
  return obj;
};

op.settypecheckmode = function(obj, mode) {
  const TYPE_CHECK_CACHE_FLAG_MASK = 3;
  obj._STable.modeFlags = mode | (obj.STable.modeFlags & TYPE_CHECK_CACHE_FLAG_MASK);
  return obj;
};

op.setmethcache = function(obj, cache) {
  if (!cache instanceof Hash) {
    console.log('we expect a hash here');
  }
  obj._STable.setMethodCache(cache.content);
  if (obj._STable._SC !== undefined) obj._STable.scwb();
  return obj;
};

op.setmethcacheauth = function(obj, isAuth) {
  if (isAuth) {
    obj._STable.modeFlags |= constants.METHOD_CACHE_AUTHORITATIVE;
  } else {
    obj._STable.modeFlags &= ~constants.METHOD_CACHE_AUTHORITATIVE;
  }
  if (obj._STable._SC !== undefined) obj._STable.scwb();
  return obj;
};

op.reprname = function(obj) {
  if (obj._STable) {
    return obj._STable.REPR.name;
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

op.newtype = function(how, repr) {
  if (!reprs[repr]) {
    throw 'Unknown REPR: ' + repr;
  }
  const REPR = new reprs[repr]();
  REPR.name = repr;
  return REPR.typeObjectFor(how);
};

op.findmethod = function(ctx, obj, name) {
  const method = sixmodel.findMethod(ctx, obj, name);
  if (method === Null) {
    throw new NQPException(`Cannot find method '${name}' on object of type '${obj._STable.debugName}'`);
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
  obj._STable.REPR.changeType(obj, newType);
  if (obj._SC !== undefined) obj.$$scwb();
  return obj;
};

op.composetype = function(obj, reprinfo) {
  obj._STable.REPR.compose(obj._STable, reprinfo);
};

let whereCounter = 0;
op.where = function(obj) {
  if (obj._STable || obj instanceof CodeRef || obj === Null || obj instanceof NQPInt) { // HACK
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
    type._STable.containerSpec = new containerSpecs[specType](type._STable);
    type._STable.containerSpec.configure(conf);
  } else {
    throw 'NYI cont spec: ' + specType;
  }
};

op.iscont = function(cont) {
  return cont.$$iscont ? cont.$$iscont() : 0;
};

op.iscont_i = function(cont) {
  if (cont.typeObject_) return 0;
  if (cont.$$iscont_i) return cont.$$iscont_i();
  return 0;
};

op.iscont_n = function(cont) {
  if (cont.typeObject_) return 0;
  if (cont.$$iscont_n) return cont.$$iscont_n();
  return 0;
};

op.iscont_s = function(cont) {
  if (cont.typeObject_) return 0;
  if (cont.$$iscont_s) {
    return cont.$$iscont_s();
  }
  return 0;
};

op.isrwcont = function(cont) {
  return cont.$$isrwcont ? cont.$$isrwcont() : 0;
};

op.box_n = function(n, type) {
  const repr = type._STable.REPR;
  const obj = repr.allocate(type._STable);
  obj.$$setNum(n);
  return obj;
};

op.unbox_n = function(obj) {
  return obj.$$getNum();
};

op.box_s = function(value, type) {
  const repr = type._STable.REPR;
  const obj = repr.allocate(type._STable);
  obj.$$setStr(value);
  return obj;
};

op.unbox_s = function(obj) {
  return obj.$$getStr();
};


op.box_i = function(i, type) {
  const repr = type._STable.REPR;
  const obj = repr.allocate(type._STable);
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
  repossession.compilingSCs.push(sc);
  return sc;
};

op.popcompsc = function(sc) {
  return repossession.compilingSCs.pop();
};

op.scwbenable = function() {
  return --repossession.scwbDisableDepth;
};

op.scwbdisable = function() {
  return ++repossession.scwbDisableDepth;
};

const compilerRegistry = new Map();

op.bindcomp = function(language, compiler) {
  compilerRegistry.set(language, compiler);
  return compiler;
};

class WrappedFunction extends NQPObject {
  constructor(func) {
    super();
    this.func = func;
  }

  $$apply(args) {
    const converted = [];
    for (let i = 2; i < args.length; i++) {
      converted.push(toJS(args[i]));
    }
    return fromJS(this.func.apply(null, converted));
  }

  $$call(args) {
    return this.$$apply(arguments);
  }
};

function fromJS(obj) {
  if (typeof obj === 'function') {
    return new WrappedFunction(obj);
  } else if (obj === undefined || obj === null) {
    return Null;
  } else if (typeof obj === 'number') {
    return new NQPNum(obj);
  } else if (typeof obj === 'string') {
    return new NQPStr(obj);
  } else {
    return obj;
  }
}

function toJS(obj) {
  if (obj instanceof NativeIntArg || obj instanceof NativeUIntArg) {
    return obj.value;
  } else if (obj instanceof NativeNumArg) {
    return obj.value;
  } else if (obj instanceof NativeStrArg) {
    return obj.value;
  } else if (obj instanceof NQPInt) {
    return obj.value;
  } else if (obj instanceof CodeRef) {
    return function() {
      const converted = [null, {}];
      for (let i = 0; i < arguments.length; i++) {
        converted.push(fromJS(arguments[i]));
      }
      return toJS(obj.$$apply(converted));
    };
  } else {
    return obj;
  }
}

const nqp = require('nqp-runtime');

const Script = require('vm').Script;

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
          file: directives[i].file
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
    line: nqp.toInt(directive.array[1], ctx)
  }));
}

function createSourceMap(js, p6, mapping, jsFile, p6File, lineDirectives) {
  const generator = new SourceMapGenerator({file: jsFile});

  const jsProps = charProps(js);
  const p6Props = charProps(p6);


  let stack = [];
  let lastGenerated = -1;

  for (let i = 0; i < mapping.length; i += 2) {
    let originalOffset = mapping[i];
    let generatedOffset = mapping[i+1];

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
  $$call(ctx, NAMED, js, p6, mapping, jsFile, p6File, compLineDirectives, sourcemapFile) {
    js = nqp.arg_s(ctx, js);
    p6 = nqp.arg_s(ctx, p6);
    jsFile = nqp.arg_s(ctx, jsFile);
    mapping = mapping.array;
    p6File = nqp.arg_s(ctx, p6File)
    compLineDirectives = processCompLineDirectives(ctx, compLineDirectives);
    sourcemapFile = nqp.arg_s(ctx, sourcemapFile);

    const ret = new Hash();
    ret.content.set('content', new NQPStr(createSourceMap(js, p6, mapping, path.relative(path.dirname(sourcemapFile), jsFile), p6File, compLineDirectives)));
    ret.content.set('url', new NQPStr(path.relative(path.dirname(jsFile), sourcemapFile)));
    return ret;
  }
}

exports.createSourceMap = createSourceMap;
exports.buildSourceMap = new BuildSourceMap();


class JavaScriptCompiler extends NQPObject {
  eval(ctx, _NAMED, self, code) {
    if (!(_NAMED !== null && _NAMED.hasOwnProperty('mapping'))) {
      return fromJS(eval(nqp.arg_s(ctx, code)));
    }

    const fakeFilename = 'nqpEval' + shortid.generate();

    const codeStr = nqp.toStr(code, ctx);

    // TODO - think about the LOAD_BYTECODE_FROM_MODULE HACK
    const preamble = 'var nqp = global.nqp; var module = global.nqpModule;var require = global.nqpRequire;';

    global.nqp = nqp;

    if (_NAMED !== null && _NAMED.hasOwnProperty('mapping')) {
      sourceMaps[fakeFilename] = new SourceMapConsumer(
        createSourceMap(
          codeStr,
          nqp.toStr(_NAMED['p6-source'], ctx),
          _NAMED.mapping.array,
          fakeFilename,
          nqp.toStr(_NAMED.file, ctx),
          processCompLineDirectives(ctx, _NAMED.comp_line_directives)));

      const node = SourceNode.fromStringWithSourceMap(codeStr, sourceMaps[fakeFilename]);

      // HACK
      sourceMaps[fakeFilename] = new SourceMapConsumer(node.toStringWithSourceMap({file: fakeFilename}).map.toString());
    }

    if ('p6-source' in _NAMED) {
      evaledP6Sources[fakeFilename] = nqp.toStr(_NAMED['p6-source'], ctx);
      evaledP6Filenames[fakeFilename] = nqp.toStr(_NAMED.file, ctx);
    }

    const script = new Script(preamble + codeStr, {filename: fakeFilename});

    global.nqpModule = module;

    global.__filename = fakeFilename;

    const oldNqpRequire = global.nqpRequire;
    global.nqpRequire = function(path) {
      return require(path);
    };


    const ret = fromJS(script.runInThisContext());
    global.nqpRequire = oldNqpRequire;

    return ret;
  }

  compile(ctx, _NAMED, self, code) {
    const script = new Script(code);

    const codeRef = new CodeRef();
    codeRef.$$call = function(ctx, _NAMED) {
      return fromJS(script.runInThisContext());
    };
    return codeRef;
  }
};

compilerRegistry.set('JavaScript', new JavaScriptCompiler());

class JSBackendStub extends NQPObject {
  name(ctx, named) {
    return new NQPStr('js');
  }
};

class NQPStub extends NQPObject {
  constructor() {
    super();
    this.backend_ = new JSBackendStub();
  }
  backend(ctx, named) {
    return this.backend_;
  }
};

compilerRegistry.set('nqp', new NQPStub());

op.getcomp = function(language) {
  return compilerRegistry.has(language) ? compilerRegistry.get(language) : Null;
};

const child_process = require('child_process');

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

  # using a JSON module would be much better but we don't want a dependency
  print "{" . (join ',', map {'"nativecall.' . $_ . '": "' . $nativecall{$_} . '"'} keys %nativecall) . "}\n";
  `;


  return JSON.parse(child_process.spawnSync('perl', ['-e', perlScript], {stdio: ['inherit', 'pipe', 'inherit']}).output[1].toString());
}

op.backendconfig = function() {
  const config = new Hash();
  config.content.set('intvalsize', new NQPInt(4));
  config.content.set('osname', new NQPStr(os.platform()));
  const nativecallConfig = getConfigFromPerl();
  for (const key of Object.keys(nativecallConfig)) {
    config.content.set(key, new NQPStr(nativecallConfig[key]));
  }
  return config;
};

// FIXME - we take a index in code units not in codepoints
op.ordbaseat = function(str, index) {
  if (index < 0 || index > str.length) return -1;
  return str.substr(index, 1).normalize('NFD').codePointAt(0);
};

op.getpid = function() {
  return process.pid;
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
  return (value instanceof NQPNum || (value._STable && value._STable.REPR instanceof reprs.P6int)) ? 1 : 0;
};

op.isint = function(value) {
  return (value instanceof NQPInt || (value._STable && value._STable.REPR instanceof reprs.P6int)) ? 1 : 0;
};

op.isstr = function(value) {
  return (value instanceof NQPStr || (value._STable && value._STable.REPR instanceof reprs.P6int)) ? 1 : 0;
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
  const bits = buf._STable.REPR.type._STable.REPR.bits;

  if (bits % 8) {
    throw 'only buffer sizes that are a multiple of 8 are supported';
  }

  return bits / 8;
}

exports.byteSize = byteSize;

function writeBuffer(highLevel, lowLevel) {
  const elementSize = byteSize(highLevel);
  const isUnsigned = highLevel._STable.REPR.type._STable.REPR.isUnsigned;

  let offset = 0;
  for (let i = 0; i < lowLevel.length / elementSize; i++) {
    highLevel.array[i] = isUnsigned ? lowLevel.readUIntLE(offset, elementSize) : lowLevel.readIntLE(offset, elementSize);
    offset += elementSize;
  }
}

op.encodeconf = function(str, encoding_, output, permissive) {
  if (output.array.length) {
    throw new NQPException('encode requires an empty array');
  }

  const encoding = renameEncoding(encoding_);

  let buffer;

  if (encoding in codecs) {
    buffer = codecs[encoding].encode(str, permissive);
  } else {
    buffer = new Buffer(str, encoding);
  }

  writeBuffer(output, buffer);


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

  writeBuffer(output, buffer);

  return output;
};

op.encoderep = function(str, encoding, replacement, output) {
  return op.encoderepconf(str, encoding, replacement, output, 1);
};

function toRawBuffer(buf) {
  const elementSize = byteSize(buf);
  const isUnsigned = buf._STable.REPR.type._STable.REPR.isUnsigned;
  const array = buf.array;

  const buffer = new Buffer(array.length * elementSize);

  let offset = 0;
  for (let i = 0; i < array.length; i++) {
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

function bufferDifference(a, b) {
  for (let i=0; i < a.length; i++) {
    if (a[i] != b[i]) {
      return i;
    }
  }

  return a.length;
}

op.decodeconf = function(buf, encoding, permissive) {
  let rawBuffer = toRawBuffer(buf);
  if (encoding === 'windows-1251' || encoding === 'windows-1252' || encoding === 'utf8-c8') {
    return codecs[encoding].decode(rawBuffer, permissive);
  } else if (encoding === 'utf8') {
    const decoded = rawBuffer.toString(renameEncoding(encoding));
    const reencoded = Buffer.from(decoded, renameEncoding(encoding));
    if (rawBuffer.equals(reencoded)) {
      return decoded;
    } else {
      const correctPart = rawBuffer.slice(0, bufferDifference(reencoded, rawBuffer));
      const lines = correctPart.toString('utf8').split(/\r\n|[\n\r\u0085\u2029\f\u000b\u2028]/);
      throw new NQPException('Malformed UTF-8 at line '
        + (lines.length) + ' col ' + (lines[lines.length - 1].length + 1)
        + '(or malformed termination)'
);
    }
  } else if (encoding === 'utf16') {
    if (rawBuffer[0] === 0xff && rawBuffer[1] === 0xfe) { // LE BOM
      rawBuffer = rawBuffer.slice(2);
    } else if (rawBuffer[0] === 0xfe && rawBuffer[1] === 0xff) { // BE BOM
      throw new NQPException('Big-endian UTF16 is NYI');
    }

    const decoded = rawBuffer.toString('utf16le');
    const reencoded = Buffer.from(decoded, 'utf16le');
    if (rawBuffer.equals(reencoded)) {
      return decoded;
    } else {
      const correctPart = rawBuffer.slice(0, bufferDifference(reencoded, rawBuffer));
      const lines = correctPart.toString('utf16le').split(/\r\n|[\n\r\u0085\u2029\f\u000b\u2028]/);
      throw new NQPException('Malformed UTF-16 at line '
        + (lines.length) + ' col ' + (lines[lines.length - 1].length + 1)
        + '(or malformed termination)'
);
    }
  } else {
    return rawBuffer.toString(renameEncoding(encoding));
  }
};

op.decode = function(buf, encoding) {
  return op.decodeconf(buf, encoding, 1);
};

op.decoderepconf = function(buf, encoding, replacement, permissive) {
  if (encoding === 'windows-1252' || encoding === 'windows-1251' ) {
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
    } else {
      return (obj._STable && obj._STable.REPR.boxedPrimitive ? obj._STable.REPR.boxedPrimitive : 0);
    }
  } else if (obj instanceof NQPStr) {
    return 3;
  } else {
    throw new NQPException(`objprimspec can't handle things of type: ${typeof obj}`);
  }
};

op.objprimbits = function(type) {
  return type._STable.REPR.bits;
};

op.objprimunsigned = function(type) {
  return type._STable.REPR.isUnsigned ? 1 : 0;
};

/* Parametricity operations. */
op.setparameterizer = function(ctx, type, parameterizer) {
  const st = type._STable;
  /* Ensure that the type is not already parametric or parameterized. */
  if (st.parameterizer) {
    ctx.die('This type is already parametric');
    return Null;
  } else if (st.parametricType) {
    ctx.die('Cannot make a parameterized type also be parametric');
    return Null;
  }

  /* Set up the type as parameterized. */
  st.parameterizer = parameterizer;
  st.parameterizerCache = [];

  st.modeFlags |= constants.PARAMETRIC_TYPE;

  return type;
};

op.parameterizetype = function(ctx, type, params) {
  /* Ensure we have a parametric type. */
  const st = type._STable;
  if (!st.parameterizer) {
    ctx.die('This type is not parametric');
  }

  const unpackedParams = params.array;

  const found = st.lookupParametric(unpackedParams);
  if (found !== undefined) {
    return found;
  }

  const result = st.parameterizer.$$call(ctx, {}, st.WHAT, params);

  const newSTable = result._STable;
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
  const st = type._STable;
  if (!st.parametricType) {
    ctx.die('This type is not parameterized');
  }

  return st.parameters;
}

op.typeparameters = typeparameters;

op.typeparameterat = function(ctx, type, idx) {
  return typeparameters(ctx, type).$$atpos(idx);
};

op.typeparameterized = function(type) {
  const st = type._STable;
  return st.parametricType ? st.parametricType : Null;
};

const fibers = require('fibers');

function runTagged(currentHLL, tag, fiber, val, ctx) {
  let arg = val;
  while (1) {
    const control = fiber.run(arg);
    if (control.tag == tag || control.tag === Null) {
      if (control.value) {
        return control.value;
      } else {
        const cont = new Cont(tag, fiber);
        const value = nqp.retval(currentHLL, control.closure.$$call(ctx, null, cont));
        return value;
      }
    } else {
      arg = fibers.yield(control);
    }
  }
}

class Cont {
  constructor(tag, fiber) {
    this.tag = tag;
    this.fiber = fiber;
  }

  $$decont(ctx) {
    return this;
  }

  $$toBool(ctx) {
    return 1;
  }
};

op.continuationreset = function(ctx, currentHLL, tag, block) {
  if (block instanceof Cont) {
    return runTagged(currentHLL, tag, block.fiber, Null, ctx);
  } else {
    const fiber = fibers(function() {
      return {value: nqp.retval(currentHLL, block.$$call(ctx, null)), tag: tag};
    });
    fiber.tag = tag;
    return runTagged(currentHLL, tag, fiber, Null, ctx);
  }
};


op.continuationcontrol = function(ctx, currentHLL, protect, tag, closure) {
  return nqp.retval(currentHLL, fibers.yield({closure: closure, tag: tag}));
};

op.continuationinvoke = function(ctx, currentHLL, cont, inject) {
  const val = nqp.retval(currentHLL, inject.$$call(ctx, null));
  return runTagged(currentHLL, cont.tag, cont.fiber, val, ctx);
};

let generator = Math;
op.rand_n = function(limit) {
  return generator.random() * limit;
};


op.srand = function(seed) {
  const XorShift = require('xorshift').constructor;
  generator = new XorShift([seed, 0, 0, 0]);
  return seed;
};

op.getlexrel = function(pad, name) {
  return pad.lookup(name);
};


op.bitand_s = function(a, b) {
  let ret = '';
  let i = 0;
  while (true) {
    const codepointA = a.codePointAt(i);
    const codepointB = b.codePointAt(i);
    if (codepointA === undefined || codepointB == undefined) {
      return ret;
    }
    ret += String.fromCodePoint(codepointA & codepointB);
    i++;
  }
};

op.bitor_s = function(a, b) {
  let ret = '';
  let i = 0;
  while (true) {
    let codepointA = a.codePointAt(i);
    let codepointB = b.codePointAt(i);
    if (codepointA === undefined && codepointB == undefined) {
      return ret;
    }
    if (codepointA === undefined) codepointA = 0;
    if (codepointB === undefined) codepointB = 0;
    ret += String.fromCodePoint(codepointA | codepointB);
    i++;
  }
};

op.bitxor_s = function(a, b) {
  let ret = '';
  let i = 0;
  while (true) {
    let codepointA = a.codePointAt(i);
    let codepointB = b.codePointAt(i);
    if (codepointA === undefined && codepointB == undefined) {
      return ret;
    }
    if (codepointA === undefined) codepointA = 0;
    if (codepointB === undefined) codepointB = 0;
    ret += String.fromCodePoint(codepointA ^ codepointB);
    i++;
  }
};

op.replace = function(str, offset, count, repl) {
  return str.substr(0, offset) + repl + str.substr(offset + count);
};

const fs = require('fs');
const sourceMapResolve = require('source-map-resolve');

op.getcodelocation = function(code) {
  let sourcePath;
  let source;

  if (code.staticCode.filename in evaledP6Sources) {
    sourcePath = evaledP6Filenames[code.staticCode.filename];
    source = evaledP6Sources[code.staticCode.filename];
  } else {
    const result = sourceMapResolve.resolveSourceMapSync(fs.readFileSync(code.staticCode.filename).toString('utf8'), code.staticCode.filename,  fs.readFileSync);
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
  return exType._STable.REPR.allocate(exType._STable);
};

op.throwextype = function(ctx, category) {
  const exType = BOOT.Exception;
  const ex = exType._STable.REPR.allocate(exType._STable);
  ex.$$category = category;
  ctx.throw(ex);
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

function backtrace(exception) {
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
              file = stack[stackIndex].getFileName();
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
                if (file) {
                  const resolved = resolveSourceMap(file);
                  if (resolved !== null) {
                    const original = resolved.originalPositionFor({line: line, column: column});
                    if (original.source) {
                      file = original.source;
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

op.backtrace = function(currentHLL, exception) {
  return hll.list(currentHLL, backtrace(exception));
};

op.backtracestrings = function(currentHLL, exception) {
  const lines = [];
  let first = true;
  for (const row of backtrace(exception)) {
    const annotations = row.$$atkey('annotations');
    const sub = row.$$atkey('sub');
    lines.push((first ? '  at ' : ' from ') + annotations.$$atkey('file').value + ':'+ annotations.$$atkey('line').value + ' (cuid ' + sub.cuid + ')');
    first = false;
  }
  return hll.list(currentHLL, lines);
};

op.hintfor = function(classHandle, attrName) {
  if (!classHandle._STable.REPR.hintfor) return -1;
  return classHandle._STable.REPR.hintfor(classHandle, attrName);
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
  while (outer && outer.codeRef().staticCode.isThunk) {
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
  } else if (capture.pos[idx].typeObject_) {
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
  const titled = unicharadata.title(c);
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

op.getstrfromname = function(name) {
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
  return (list._STable && list._STable.REPR instanceof reprs.VMArray) ? 1 : 0;
};

op.split = function(currentHLL, separator, string) {
  // TODO think if performance wise we can avoid this wrapping
  return hll.slurpyArray(currentHLL, (string !== ''
    ? (separator === '' ? graphemes.break(string) : string.split(graphemes.regexForLiteral(separator)))
    : []).map(str => strToObj(currentHLL, str)));
};

op.exception = function() {
  const stack = exceptionsStack();
  return stack[stack.length - 1];
};

op.lastexpayload = function() {
  const stack = exceptionsStack();
  return stack[stack.length - 1].$$payload;
};

op.setextype = function(exception, category) {
  exception.$$category = category;
  return exception;
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
  return type._STable.REPR.allocate(type._STable);
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
  return 1;
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

const getrusage = require('qrusage');
op.getrusage = function() {
  const usage = getrusage();
  const stable = BOOT.IntArray._STable;
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
