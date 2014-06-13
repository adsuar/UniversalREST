var app = angular
		.module(
				'universalrest',
				[],
				function($httpProvider) {
					// Make AngularJS $http service behave like jQuery.ajax()

					// Use x-www-form-urlencoded Content-Type
					$httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';

					/**
					 * The workhorse; converts an object to
					 * x-www-form-urlencoded serialization.
					 * 
					 * @param {Object}
					 *            obj
					 * @return {String}
					 */
					var param = function(obj) {
						var query = '', name, value, fullSubName, subName, subValue, innerObj, i;

						for (name in obj) {
							value = obj[name];

							if (value instanceof Array) {
								for (i = 0; i < value.length; ++i) {
									subValue = value[i];
									fullSubName = name + '[' + i + ']';
									innerObj = {};
									innerObj[fullSubName] = subValue;
									query += param(innerObj) + '&';
								}
							} else if (value instanceof Object) {
								for (subName in value) {
									subValue = value[subName];
									fullSubName = name + '[' + subName + ']';
									innerObj = {};
									innerObj[fullSubName] = subValue;
									query += param(innerObj) + '&';
								}
							} else if (value !== undefined && value !== null)
								query += encodeURIComponent(name) + '='
										+ encodeURIComponent(value) + '&';
						}

						return query.length ? query.substr(0, query.length - 1)
								: query;
					};

					// Override $http service's default transformRequest
					$httpProvider.defaults.transformRequest = [ function(data) {
						return angular.isObject(data)
								&& String(data) !== '[object File]' ? param(data)
								: data;
					} ];
				});

app
		.controller(
				'controller',
				function($scope, $http) {
					$scope.classified = "none";
					$scope.createdclassified = "none";

					$scope.keys = [ {} ];

					$scope.hello = function() {
						$http.get('UniversalDX/urinterface/test').success(
								function(data) {
									$scope.welcome = data;
								}).error(function(data) {
							alert("ERROR");
							console.log('Error: ' + data);
						});
					};

					$scope.classify = function() {
						$http
								.get(
										'UniversalDX/urinterface/classify/'
												+ $scope.clas)
								.success(
										function(data) {
											if (data == null
													|| data.keyClass == null
													|| data.keyClass.classification == null) {
												// Since the key hasn't been
												// classified yet, we return
												// an error.
												$scope.classified = "Key '"
														+ $scope.clas
														+ "' not classified yet";
											} else {
												$scope.classified = data.keyClass.classification;
											}
										}).error(function(data) {
									alert("ERROR");
									console.log('Error: ' + data);
								});
					};

					$scope.create = function() {
						$http
								.post('UniversalDX/urinterface/create/', {
									object : $scope.object
								})
								.success(
										function(data) {
											if (data == null
													|| data.keyClass == null
													|| data.keyClass.classification == null) {
												// Since the key hasn't been
												// classified yet, we return
												// an error.
												alert("ERROR");
												console.log('Error: ' + data);
											} else {
												$scope.createdkey = data.key;
												$scope.createdclassified = data.keyClass.classification;
											}

											if ($scope.keys == null) {
												$scope.keys.push(data);
											} else {
												var found = false;

												// for existing contact, find
												// this
												// contact using id
												// and update it.
												for (i in $scope.keys) {
													if ($scope.keys[i].key == $scope.object) {
														$scope.keys[i] = data;
														found = true;
													}
												}

												if (!found) {
													$scope.keys
															.push(data);
												}
											}
										}).error(function(data) {
									alert("ERROR");
									console.log('Error: ' + data);
								});
					};
				});