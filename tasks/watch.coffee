gulp = require 'gulp'
connect = require 'gulp-connect'
historyApiFallback = require 'connect-history-api-fallback'

gulp.task 'connect', ['build'], ->
  connect.server
    root: 'www/'
    livereload: true
    port: 8000
    middleware: (connect, opt) ->
      [
        historyApiFallback ## fallback to index.html if no static file found
      ]

gulp.task 'watch', ['connect'], ->
  gulp.watch 'www/**', -> connect.reload
