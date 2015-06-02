gulp = require 'gulp'
concat = require 'gulp-concat'
filter = require 'gulp-filter'
mainBowerFiles = require 'main-bower-files'
plumber = require 'gulp-plumber'
less = require 'gulp-less'
wiredep = require 'wiredep'

parameters = require '../parameters.coffee'

gulp.task 'vendor', ->
  # Scripts
  files = wiredep
      devDependencies: parameters.env is not 'production'
    .js
  gulp.src files
  .pipe filter '**/*.js'
  .pipe concat parameters.files.vendors.scripts
  .pipe gulp.dest parameters.paths.www.scripts

  # Fonts
  gulp.src mainBowerFiles()
  .pipe filter [
      '**/*.woff'
      '**/*.svg'
      '**/*.eot'
      '**/*.ttf'
      '**/*.otf'
    ]
  .pipe gulp.dest "#{parameters.paths.www.main}/fonts"

  # Css
  gulp.src mainBowerFiles()
  .pipe filter ['**/*.less', '**/*.css']
  .pipe less()
  .pipe concat parameters.files.vendors.styles
  .pipe gulp.dest "#{parameters.paths.www.styles}"
