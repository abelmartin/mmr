// Generated by CoffeeScript 1.3.3
(function() {
  var myApp;

  myApp = angular.module('myApp', []);

  myApp.factory('Avengers', function() {
    var Avengers;
    Avengers = {};
    Avengers.cast = [
      {
        "name": "Isabelle Creighton",
        "character": "Qualserve"
      }, {
        "name": "Nevaeh Young",
        "character": "Westgate"
      }, {
        "name": "Zoe Carter",
        "character": "Thermotomic"
      }, {
        "name": "Alexa Thomson",
        "character": "Teratopia"
      }, {
        "name": "Sophie Adamson",
        "character": "Rapigrafix"
      }, {
        "name": "Gianna WifKinson",
        "character": "Thermotomic"
      }, {
        "name": "Gabrielle Campbell",
        "character": "US Omnigraphik"
      }, {
        "name": "Paige Gardner",
        "character": "Entcast"
      }, {
        "name": "Jessica Hodges",
        "character": "Conotomics"
      }, {
        "name": "Elizabeth White",
        "character": "Textiqua"
      }, {
        "name": "Ariana Vance",
        "character": "Transtouch"
      }, {
        "name": "Natalie Gate",
        "character": "Idmax"
      }, {
        "name": "Andrea Hardman",
        "character": "Rapigrafix"
      }, {
        "name": "Madison WifKinson",
        "character": "Openserve"
      }
    ];
    return Avengers;
  });

  myApp.factory('Data', function() {
    return {
      message: "I'm data from a service"
    };
  });

  myApp.filter('reverse', function(Data) {
    return function(text) {
      return text.split(" ").reverse().join(" ") + Data.message;
    };
  });

  this.FirstCtrl = function($scope, Data) {
    return $scope.data = Data;
  };

  this.SecondCtrl = function($scope, Data) {
    $scope.data = Data;
    return $scope.reversedMessage = function(msg) {
      return msg.split(" ").reverse().join(" ");
    };
  };

  this.AvengersCtrl = function($scope, Avengers) {
    return $scope.avengers = Avengers;
  };

}).call(this);
