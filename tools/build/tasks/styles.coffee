gulp = require 'gulp'
plumber = require 'gulp-plumber'
less = require 'gulp-less'
concat = require 'gulp-concat'
sourcemaps = require 'gulp-sourcemaps'

parameters = require '../parameters.coffee'

gulp.task 'styles', ->
  gulp.src [
    "#{parameters.paths.src.main}/main.less"
    "#{parameters.paths.src.main}/**/*.less"
  ]
  .pipe plumber()
  .pipe sourcemaps.init()
  .pipe less()
  .pipe concat parameters.files.styles
  .pipe sourcemaps.write()
  .pipe gulp.dest parameters.paths.www.styles
