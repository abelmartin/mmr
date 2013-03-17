app = angular.module("LocationManager",['ngResource'])

@LocationCtrl = ($scope, $resource) ->
  Location = $resource('/locations/:id', { id: '@id' }, {update: {method: 'PUT'}})
  $scope.locations = Location.query()

  $scope.addLocation = ->
    location = Location.save($scope.newLocation)
    $scope.newestLocation = location
    $scope.locations.push(location)
    $scope.newLocation = {}
