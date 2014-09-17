gulp = require 'gulp'
dgeni = require 'dgeni'
path = require 'path'
rimraf = require 'gulp-rimraf'

gulp.task 'docs', ['app', 'clean-docs'], (done) ->
  new dgeni [
    require path.join __dirname, '../../..', 'docs/config.coffee'
  ]
  .generate()

gulp.task 'clean-docs', ->
  gulp.src 'docs/build'
  .pipe rimraf()
