describe 'Login Controller', ->
  $scope = undefined

  beforeEach ->
    module 'boilerplate'
    inject ($rootScope) ->
      $scope = $rootScope.$new()

  it 'should create the module', ->
    loginController.should.exist
