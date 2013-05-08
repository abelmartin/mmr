app = angular.module('superhero', [])

# Creates a custom element
app.directive 'superman', ->
  restrict: 'E'
  template: "<div>Here I come to SAVE the day</div>"

# Creates a custom attribute
app.directive 'flash', ->
  restrict: 'A'
  link: ->
    alert "I'm working"

app.directive 'batman', ->
  restrict: 'C'
  link: ->
    console.log "I'm Batman"
