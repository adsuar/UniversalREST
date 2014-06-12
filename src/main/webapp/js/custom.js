var app = angular.module('universalrest', []);

app.controller('controller', function($scope,$http) {
	$scope.classified = "none";
	
	$scope.hello = function() {
		$http.get('UniversalDX/urinterface/test').success(function(data) {
			$scope.mola = data;
		}).error(function(data) {
			alert("ERROR");
			console.log('Error: ' + data);
		});
	};

	$scope.classify = function () {
		$http.get('UniversalDX/urinterface/classify/' + $scope.clas).success(function(data) {
			$scope.classified = data.classification;
		}).error(function(data) {
			alert("ERROR");
			console.log('Error: ' + data);
		});
	};
});