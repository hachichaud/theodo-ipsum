angular.module 'boilerplate.utils'
.config ($translateProvider) ->
  $translateProvider.fallbackLanguage 'en'
  $translateProvider.determinePreferredLanguage()
