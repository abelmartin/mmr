myApp = angular.module('myApp', [])

myApp.factory 'Avengers', ->
  Avengers = {}
  Avengers.cast = [
    {
      "name": "Isabelle Creighton",
      "character": "Qualserve"
    },
    {
      "name": "Nevaeh Young",
      "character": "Westgate"
    },
    {
      "name": "Zoe Carter",
      "character": "Thermotomic"
    },
    {
      "name": "Alexa Thomson",
      "character": "Teratopia"
    },
    {
      "name": "Sophie Adamson",
      "character": "Rapigrafix"
    },
    {
      "name": "Gianna WifKinson",
      "character": "Thermotomic"
    },
    {
      "name": "Gabrielle Campbell",
      "character": "US Omnigraphik"
    },
    {
      "name": "Paige Gardner",
      "character": "Entcast"
    },
    {
      "name": "Jessica Hodges",
      "character": "Conotomics"
    },
    {
      "name": "Elizabeth White",
      "character": "Textiqua"
    },
    {
      "name": "Ariana Vance",
      "character": "Transtouch"
    },
    {
      "name": "Natalie Gate",
      "character": "Idmax"
    },
    {
      "name": "Andrea Hardman",
      "character": "Rapigrafix"
    },
    {
      "name": "Madison WifKinson",
      "character": "Openserve"
    }
  ]

  return Avengers

myApp.factory 'Data', ->
  message: "I'm data from a service"

myApp.filter 'reverse', (Data) ->
  (text) ->
    text.split(" ").reverse().join(" ") + Data.message

myApp.controller 'FirstCtrl',  ($scope, Data) ->
  $scope.data = Data

myApp.controller 'SecondCtrl',  ($scope, Data) ->
  $scope.data = Data
  $scope.reversedMessage = (msg) ->
    msg.split(" ").reverse().join(" ")

myApp.controller 'AvengersFullCtrl', ($scope, Avengers) ->
  $scope.avengers = Avengers

myApp.controller 'AvengersPartialCtrl', ($scope, Avengers) ->
  $scope.avengers = Avengers
