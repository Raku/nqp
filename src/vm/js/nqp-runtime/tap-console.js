const Parser = require('tap-parser');
const NQPObject = require('./nqp-object.js');

const core = require('./core.js');

class TapConsole extends NQPObject {
    constructor() {
      super();
    }

    start() {
      this.results = [];

      this.parser = new Parser();
      this.parser.on('complete', result => {
      });

      this.parser.on('comment', result => {
        //TODO skipping
      });

      this.parser.on('plan', result => {
      });

      this.parser.on('assert', assert => {
        window.__rakudo__.resultCount++;
        const result = {
          description: assert.name,
          id: assert.id,
          success: assert.ok || assert.todo != undefined,
          pending: assert.todo,
          log: [JSON.stringify(assert.diag || assert, null, 2)],
          suite: [window.__rakudo__.suit || '?suit?'],
          time: new Date().getTime() - window.__rakudo__.startTime,
        };

        window.__rakudo__.results.push(result);

        if (assert.todo) {
          result.log.push(assert.todo);
        }
      });
    }

    end() {
      this.parser.end();
    }

    $$writefh(buf) {
      const buffer = core.toRawBuffer(buf);
      this.$$write(buffer.toString());
    }

    $$write(str) {
        //console.log('GOT TAP:', str);
        this.parser.write(str);
    }

    $$isttyfh() {
      return 0;
    }

    $$setbuffersizefh(size) {
      return this;
    }

    $$can(name) {
      return 0;
    }
}

module.exports = TapConsole;
