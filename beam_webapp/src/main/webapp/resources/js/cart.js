(function() {


var app = angular.module("cart", []);
app.controller('cal', [
		'$http',
		'$scope',
		'$q',
		function($http, $scope, $q) {
			$scope.quantity = 1;
			$scope.cartItems = [];
			$scope.grandTotal =  
			$scope.isEmpty = false;

			$scope.update = function(quantity) {
				
				console.log(quantity);
				
			}
				
			$scope.fetchCartItems = function() {
				fetchCartItemsRest().then(
					function(cartItems) {
						console.log('Fetched successfully...');
						$scope.cartItems = cartItems; 
						if($scope.cartItems.length == 0) {
							$scope.isEmpty = true;
						}
						$scope.grandTotal = $scope.cartItems[0].cart.grandTotal;
					},function(errResponse) {
						console.log('Failure');
					}	
				
				)
				
			}
			
			function fetchCartItemsRest() {
				console.log('Now fetching...');
				var deferred = $q.defer();
				
				$http.get('/beam_webapp/data/product/cartItems/list').then(
						function(response) {
							deferred.resolve(response.data);
						/*	$scope.grandTotal = getGrandTotal();*/
						}, function(errResponse) {
							deferred.reject(errResponse);
						}
					);
					return deferred.promise;
			}
					
			function getGrandTotal() {
				var tmp = 0;
				for (var i = 0; i < $scope.cartItems.length; i++) {
					tmp += $scope.cartItems[i].totalPrice;
				}
				return tmp;
			}
					
			

		} 
			
		
]);

})();

/*
 * app.service('cartItems', [ '$http', function($http) {
 * 
 * }]);
 */