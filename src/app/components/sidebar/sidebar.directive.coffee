'use strict'

angular.module('orderInterchangeStyleGuide').directive 'sideBar', ->
  controller = ($rootScope, $scope, $state, $stateParams, $log) ->


  {
    restrict: 'E'
    templateUrl: 'app/components/sidebar/sidebar.html'
    controller: controller
    controllerAs: 'vm'
#    bindToController: true
  }
