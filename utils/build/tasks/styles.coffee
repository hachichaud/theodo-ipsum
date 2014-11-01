gulp = require 'gulp'
concat = require 'gulp-concat'
plumber = require 'gulp-plumber'
replace = require 'gulp-replace'
sourcemaps = require 'gulp-sourcemaps'
stylus = require 'gulp-stylus'

parameters = require '../parameters.coffee'

gulp.task 'styles', ->
  gulp.src "#{parameters.paths.src.main}/**/*.styl"
  .pipe plumber()
  .pipe parameters.angular.module.replacer replace
  .pipe parameters.folders.scripts.replacer replace
  .pipe sourcemaps.init()
  .pipe stylus
    'include css': true
  .pipe concat parameters.files.styles
  .pipe sourcemaps.write()
  .pipe gulp.dest parameters.paths.www.styles
