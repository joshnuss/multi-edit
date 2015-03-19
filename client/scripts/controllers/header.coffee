angular
  .module('MultiEdit')
  .controller 'HeaderController', ($scope, Site) ->
    $scope.$watch (-> Site.layout), ->
      $scope.layout = Site.layout
