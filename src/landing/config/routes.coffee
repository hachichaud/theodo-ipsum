angular.module 'boilerplate.landing'
.config ($stateProvider) ->
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
