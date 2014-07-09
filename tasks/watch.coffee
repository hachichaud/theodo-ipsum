gulp = require 'gulp'
webserver = require 'gulp-webserver'

gulp.task 'webserver', ['build'], ->
  gulp.src 'www'
  .pipe webserver
    livereload: true
    fallback: 'index.html'

gulp.task 'watch', ['webserver'], ->
  gulp.watch 'src/**', ['build']
