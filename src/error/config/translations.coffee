angular.module 'boilerplate.error'
.config ($translateProvider) ->
  $translateProvider.translations 'fr',
    ERROR: 'Erreur'

  $translateProvider.translations 'en',
    ERROR: 'Error'
