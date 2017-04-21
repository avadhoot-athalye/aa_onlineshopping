var app = angular.module("cart", []);
app.controller('cal', [
		'$http',
		'$scope',
		function($http, $scope) {
			$scope.quantity = 1;
			$scope.cartItems = [];
			$scope.grandTotal =  

			$http.get('/beam_webapp/data/product/cartItems/list').then(
					function(response) {
						$scope.cartItems = response.data;
						$scope.grandTotal = getGrandTotal();
					}, function(error) {
						console.log(error);
					});
					
			function getGrandTotal() {
				var tmp = 0;
				for (var i = 0; i < $scope.cartItems.length; i++) {
					tmp += $scope.cartItems[i].totalPrice;
				}
				
				
				return tmp;
			}
					
				
					

		} ]);

/*
 * app.service('cartItems', [ '$http', function($http) {
 * 
 * }]);
 */