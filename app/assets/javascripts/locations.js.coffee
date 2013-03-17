app = angular.module("MMRApp",['ngResource'])

@LocationCtrl = ($scope, $resource) ->
  Location = $resource('/locations/:id', { id: '@id' }, {update: {method: 'PUT'}})
  $scope.locations = Location.query()

  $scope.addLocation = ->
    location = Location.save($scope.newLocation)
    $scope.newestLocation = location
    $scope.locations.push(location)
    $scope.newLocation = {}

  $scope.deleteLocation = ->
    loc_index = $scope.locations.indexOf( @location )
    $scope.locations.splice( loc_index, 1 )
    @location.$remove()

  $scope.editLocation = ->
    alert 'edits comming soon'
