myApp = angular.module('myApp', [])
myApp.factory 'Data', ->
  message: "I'm data from a service"

@FirstCtrl = ($scope, Data) ->
  $scope.data = Data

@SecondCtrl = ($scope, Data) ->
  $scope.data = Data
  #$scope.reversedMessage = ->
    #$scope.data.message.split(" ").reverse().join(" ")
  $scope.reversedMessage = (msg) ->
    msg.split(" ").reverse().join(" ")
