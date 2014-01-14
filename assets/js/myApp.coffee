# Declare app level module which depends on filters, and services
angular
  .module("myApp", [
    "myServices",
    "myFilters",
    "myDirectives",
    "ngTouch",
    "ngAnimate",
    "ngRoute"
  ])
    .value('$anchorScroll', angular.noop)
  .config ["$locationProvider", "$routeProvider",
    ($locationProvider, $routeProvider) ->
      $locationProvider.html5Mode true

      $routeProvider.when "/",
        templateUrl: "angular/index/biography"

      $routeProvider.when "/contact",
        templateUrl: "angular/index/contact"

      $routeProvider.when "/mehndi",
        templateUrl: "angular/index/mehndi"

      $routeProvider.when "/hotel",
        templateUrl: "angular/index/hotel"

      $routeProvider.when "/wedding",
        templateUrl: "angular/index/wedding"

      $routeProvider.when "/biography",
        templateUrl: "angular/index/biography"

      $routeProvider.otherwise redirectTo: "/"
  ]
