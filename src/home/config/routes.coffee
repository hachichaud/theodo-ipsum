angular.module 'boilerplate.home'
.config ($stateProvider) ->
  $stateProvider
  .state 'home',
    url: '/'
    templateUrl: 'home/views/home.html'
