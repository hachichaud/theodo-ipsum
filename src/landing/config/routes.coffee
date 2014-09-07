angular.module 'boilerplate.home'
.config ($stateProvider) ->
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
