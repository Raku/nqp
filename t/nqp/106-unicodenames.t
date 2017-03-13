plan(3);
is(nqp::getstrfromname('FULL STOP'), '.', 'getstrfromname works');
is(nqp::codepointfromname('FULL STOP'), nqp::ord('.'), 'codepointfromname works');
is(nqp::getstrfromname('super fake not real name'), '', 'getstrfromname returns empty string for nonexistant codepoint names');
