gulp = require 'gulp'
rename = require 'gulp-rename'

gulp.task 'assets', ->
  gulp.src 'src/**/assets/**'
  .pipe rename (path) ->
    path.dirname = ''
  .pipe gulp.dest 'www/'
