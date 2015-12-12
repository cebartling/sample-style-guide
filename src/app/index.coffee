app = angular.module 'orderInterchangeStyleGuide', [
  'ngAnimate'
  'ngCookies'
  'ngTouch'
  'ngSanitize'
  'ngResource'
  'ui.router'
  'hSweetAlert'
  'ui.bootstrap'
  'restangular',
  'toastr',
  'ng-form-group',
  'angular-cache'
]

app.config ($stateProvider, $urlRouterProvider) ->
  # Core styles
  $stateProvider.state("home", url: "/", templateUrl: "app/main/main.html", controller: "MainCtrl")
  $stateProvider.state("listings", url: "/listings", templateUrl: "app/core/listings/listings.html", controller: "ListingsCtrl")
  $stateProvider.state("forms", url: "/forms", templateUrl: "app/core/forms/forms.html", controller: "FormsCtrl")
  $urlRouterProvider.otherwise '/'

app.config ($logProvider) ->
  $logProvider.debugEnabled true

app.config (toastrConfig) ->
  angular.extend toastrConfig, {
    progressBar: true
    tapToDismiss: true
    positionClass: 'toast-bottom-left'
    timeOut: 5000
  }
