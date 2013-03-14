@LocationCtrl = ($scope) ->
  $scope.locations = [
    {address: '2919 24th Ave, New York, NY'}
    {address: '3533 36th St, New York, NY'}
    {address: '4020 Broadway, Long Island City, NY'}
  ]

  $scope.addLocation = ->
    $scope.newestLocation = $scope.newLocation
    $scope.locations.push($scope.newLocation)
    $scope.newLocation = {}
