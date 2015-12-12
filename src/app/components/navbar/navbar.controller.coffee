angular.module("orderInterchangeStyleGuide").controller "NavbarCtrl", ($scope) ->
  vm = @

  vm.toggleSidebar = () ->
    angular.element(document.querySelector('#wrapper')).toggleClass 'toggled'
    false

  vm.isLeftChevronEnabled = () ->
    result = not angular.element(document.querySelector('#wrapper')).hasClass 'toggled'
    result

  vm.isRightChevronEnabled = () ->
    result = angular.element(document.querySelector('#wrapper')).hasClass 'toggled'
    result

  vm