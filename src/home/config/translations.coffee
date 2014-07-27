angular.module 'boilerplate.home'
.config ($translateProvider) ->
  $translateProvider.translations 'en',
    HOME_TITLE: 'Welcome'
    HOME_TEXT: 'This is the beginning of an extraodinary app...'

  $translateProvider.translations 'fr',
    HOME_TITLE: 'Bienvenue'
    HOME_TEXT: 'Ceci est le commencement d\'une appli extraordinaire...'
