dgeni = require 'dgeni'
path = require 'path'

module.exports = new dgeni.Package 'dgeni-docs', [
  require 'dgeni-packages/jsdoc'
  require 'dgeni-packages/nunjucks'
  require 'dgeni-packages/ngdoc'
]
.config (log, readFilesProcessor, templateFinder, writeFilesProcessor) ->
  log.level = 'debug'
  readFilesProcessor.basePath = path.join __dirname, '..'
  readFilesProcessor.sourceFiles = [
    include: 'www/js/boilerplate-app.js'
  ]
  writeFilesProcessor.outputFolder = 'docs/build'
