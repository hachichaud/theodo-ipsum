angular.module '%module%.common'
.config ($translateProvider) ->
  $translateProvider.fallbackLanguage 'en'
  $translateProvider.determinePreferredLanguage()
