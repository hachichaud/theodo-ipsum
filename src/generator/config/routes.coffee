angular.module '%module%.generator'
.config ($stateProvider) ->
  $stateProvider
  .state 'generate',
    url: '/generate'
    controller: 'generatorCtrl'
    templateUrl: 'generator/views/view.html'
