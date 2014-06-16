'use strict';

exports.warnOn = "Gruntfile.coffee";

exports.description = "Create a barebones Gruntfile.coffee for use by grunt-release";

exports.template = function(grunt, init, done) {

  init.copyAndProcess(init.filesToCopy());

  done();
};
