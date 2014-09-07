angular.module 'boilerplate.utils'
.config ($locationProvider) ->
  $locationProvider.html5Mode true
  $locationProvider.hashPrefix '!'
