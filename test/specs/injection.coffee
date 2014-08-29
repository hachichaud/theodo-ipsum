describe 'Error Controller', ->
  $scope = undefined
  errorController = undefined

  beforeEach ->
    module 'boilerplate.error'
    inject ($rootScope, $controller) ->
      $scope = $rootScope.$new()
      errorController = $controller 'errorController',
        $scope: $scope

  it 'should create the controller', ->
    errorController.should.exist
