app = angular.module('behaviorApp', [])

app.directive 'enter', ->
  (scope, element) ->
    element.bind 'mouseenter', ->
      console.log "I'm in side of you"

app.directive 'leave', ->
  (scope, element) ->
    element.bind 'mouseleave', ->
      console.log "I left ya!"
