gulp = require 'gulp'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'app', ->
  gulp.src 'src/**/*.coffee'
  .pipe sourcemaps.init()
  .pipe coffee
    bare: true
  .pipe concat 'boilerplate-app.js'
  .pipe sourcemaps.write()
  .pipe gulp.dest 'www/js/'
