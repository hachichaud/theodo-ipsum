angular.module 'boilerplate.error'
.config ($translateProvider) ->
  $translateProvider.translations 'fr',
    ERROR_TITLE: 'Erreur'
    ERROR_TEXT: 'Une erreur s\'est produite :\'('
    NOT_FOUND_TEXT: 'Rien ici ; passez votre chemin.'

  $translateProvider.translations 'en',
    ERROR_TITLE: 'Error'
    ERROR_TEXT: 'An error occured :\'('
    NOT_FOUND_TEXT: 'There\'s nothing here. Keep surfing.'
