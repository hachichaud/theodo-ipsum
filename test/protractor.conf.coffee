# We have access to protractor API : https://github.com/angular/protractor/blob/master/docs/api.md
# $ to select the first matching element
# $$ to select multiple elements

global.chai = require 'chai'
global.assert = chai.assert

host = process.env.HOST || 'http://127.0.0.1'

global.go = (url) ->
  browser.get(host + url)

global.xpath = (string) ->
  element By.xpath string

module.exports.config =
  specs: [
    'features/*.feature'
  ]

  capabilities:
    browserName: process.env.BROWSER || 'firefox'

  framework: 'cucumber'

  # 'http://127.0.0.1:4444/wd/hub'
  seleniumAddress: process.env.SELENIUM || null
