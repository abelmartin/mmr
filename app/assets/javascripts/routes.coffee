app = angular.module("MMRApp",['ngResource'])

###
Always use the CSRF token with requests
###
#app.config ['$httpProvider', (provider) ->
  #provider.defaults.header.common['X-CSRF-Token'] =
    #$('meta[name=csrf-token]').attr('content') ]

#`app.config(["$httpProvider", function(provider) {
  #return provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
#}])`

app.directive 'routeLocations', ($compile) ->
  templateURL: 'angular_templates/widgets/select_locations.html'

@RouteCtrl = ($scope, $resource) ->
  Route = $resource('/routes/:id', { id: '@id' }, {update: {method: 'PUT'}})
  Location = $resource('/locations/:id', { id: '@id' })
  $scope.routes = Route.query()
  $scope.locations = Location.query()
