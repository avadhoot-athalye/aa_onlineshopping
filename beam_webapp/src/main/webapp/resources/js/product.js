var angularModule = angular.module("productList", []);
angularModule.controller('productDetails', [ '$scope', '$http',
		function($scope, $http) {
			$http.get('/beam_webapp/data/product/list').then(
				function(response){
					$scope.products = response.data;
				},
				function(error){
					console.log(error);
				}
			)
		} ]);

var product = angular.module("product", []);
product.controller('singleProduct', [ '$scope', ])