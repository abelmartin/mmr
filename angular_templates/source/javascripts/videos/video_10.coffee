app = angular.module('superhero', [])

# Creates a custom element
app.directive 'superman', ->
  restrict: 'E'
  template: "<div>Here I come to SAVE the day</div>"
