module.exports = (config) ->
  config.set
    basePath: '../'

    files: [
      'www/js/boilerplate-vendor.js'
      'www/js/boilerplate-templates.js'
      'bower_components/angular-mocks/angular-mocks.js'
      'src/app.coffee'
      'src/**/module.coffee'
      'src/**/*.coffee'
      'test/specs/**/*.coffee'
    ]

    frameworks: [
      'mocha'
      'sinon-chai'
    ]

    preprocessors:
      'test/specs/**/*.coffee': 'coffee'
      'src/**/*.coffee': 'coffee'
#      'app/**/*.coffee':  'coverage'

    reporters: [
      'dots'
      'coverage'
    ]

    coverageReporter:
      type: 'lcov'
      dir: 'coverage/'

    browsers: [
      'Firefox'
    ]

    logLevel:       config.LOG_WARN
    autoWatch:      true
