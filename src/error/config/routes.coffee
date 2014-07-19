angular.module 'boilerplate.error'
.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider
  .state 'error',
    url: '/error'
    templateUrl: 'error/views/view.html'
    controller: 'errorController'

  $urlRouterProvider.otherwise '/error'
