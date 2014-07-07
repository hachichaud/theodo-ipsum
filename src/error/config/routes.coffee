angular.module 'boilerplate.error'
.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider
  .state 'error',
    url: '/error'
    templateUrl: 'error/views/view.html'

  $urlRouterProvider.otherwise '/error'
