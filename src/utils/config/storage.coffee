angular.module 'boilerplate.utils'
.value 'storage', {}

.run ($rootScope, storage) ->
  $rootScope.storage = storage
