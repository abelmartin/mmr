app = angular.module("MMRApp", ['ngResource'])

###
Always use the CSRF token with requests
###
app.config(['$httpProvider', (provider) ->
  provider.defaults.header.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content')
])

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
    $scope.tempLocation = {}
    $scope.tempLocation.address = @location.address
    $scope.activeEdit = @location

  $scope.cancelEdit = ($event) ->
    $event.preventDefault()
    $scope.activeEdit = null

  $scope.updateLocation = ->
    @location.address = $scope.tempLocation.address
    @location.$update()
    $scope.activeEdit = null
