(function() {

  'use strict';

  angular
    .module('app')
    .controller('UiController', UiController);

  UiController.$inject = ['$scope'];

  function UiController($scope) {
    var vm = this;

    vm.sides = {
      all: [],
      current: 0
    };

    // vm.sides.all = ['img/Fallout4.png'];

    for (var i = 0; i < 5; i++) {
      if(i == 0) {
         vm.sides.all.push({
        image: 'Fallout4.png',
        });
      }
       if(i == 1) {
         vm.sides.all.push({
        image: './img/AssasinCreed3.jpg',
        });
      }
       if(i == 2) {
         vm.sides.all.push({
        image: './img/GodOfWar3.jpg',
        });
      }
       if(i == 3) {
         vm.sides.all.push({
        image: './img/gta5.jpg',
        });
      }
       if(i == 4) {
         vm.sides.all.push({
        image: './img/prey.jpg',
        });
      }
    }

    
  }

})();
