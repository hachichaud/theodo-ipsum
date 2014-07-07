module.exports = ->
  @Given /^I am not on angular$/, (callback) ->
    browser.ignoreSynchronization = true
    callback()

  @Given /^I am on angular$/, (callback) ->
    browser.ignoreSynchronization = false
    callback()

  @Given /^I am on the homepage$/, (callback) ->
    go('/').then callback

  @Given /^I am on "(.*)"$/, (path, callback) ->
    go(path).then callback

  @When /^I click on "(.*)"$/, (text, callback) ->
    search = """//*[contains(text(), "#{text}")]"""
    xpath(search).click().then callback

  @When /^I click on "(.*)" "(.*)"$/, (element, text, callback) ->
    search = """//#{element}[contains(text(), "#{text}")]"""
    xpath(search).click().then callback

  @When /^I fill "(.*)" with "(.*)"$/, (element, value, callback) ->
    search = """//input[@id|@name|@data-ng-model|@placeholder="#{element}"]"""
    selection = xpath(search)
    selection.clear().then ->
      selection.sendKeys(value).then callback

  @When /^I fill "(.*)" with property "(.*)"$/, (element, property, callback) ->
    search = """//input[@id|@name|@data-ng-model|@placeholder="#{element}"]"""
    selection = xpath(search)
    selection.clear().then ->
      selection.sendKeys(process.env[property.toUpperCase()]).then callback

  @Then /^I should see "(.*)"$/, (text, callback) ->
    $('html').getText().then (source) ->
      regex = new RegExp text, 'i'
      assert.match source, regex
      callback()

  @Then /^I should be redirected on "(.*)"$/, (path, callback) ->
    browser.getCurrentUrl().then (url) ->
      assert.include url, path
      callback()

  @Then /^field "(.*)" should equal "(.*)"$/, (element, value, callback) ->
    selector = """*[name="#{element}"],##{element}"""
    $(selector).getAttribute('value').then (res) ->
      assert.equal res, value
      callback()

  @Then /^I wait (\d+) second[s]?$/, (time, callback) ->
    setTimeout callback, time*1000
