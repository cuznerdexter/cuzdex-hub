module.exports = function(config) {
  config.set({
    basePath: '.',
    frameworks: ['jasmine'],
    browsers: ['Chrome'],
    colors: true,
    reporters: ['dots', 'progress'],
    files: [{pattern: './*.spec.js'}],
    singleRun: true
  });
};