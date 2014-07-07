'use strict'

angular.module 'boilerplate', [
  'ng'
  'pascalprecht.translate'
  'boilerplate.templates'
  'boilerplate.error'
]

.config ($locationProvider) ->
  $locationProvider.html5Mode true
  $locationProvider.hashPrefix '!'

.config ($translateProvider) ->
  $translateProvider.fallbackLanguage 'en'
  $translateProvider.determinePreferredLanguage()
