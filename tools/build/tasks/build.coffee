gulp = require 'gulp'
gulp.task 'build', [
  'assets'
  'vendor'
  'index'
  'app'
  'templates'
]
