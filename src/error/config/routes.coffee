angular.module 'boilerplate.error'
.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider
  .state 'error',
    url: '/error'
    templateUrl: 'error/views/error.html'
  .state 'error.not-found',
    url: '/not-found'
    templateUrl: 'error/views/not-found.html'

  $urlRouterProvider.otherwise '/error/not-found'
