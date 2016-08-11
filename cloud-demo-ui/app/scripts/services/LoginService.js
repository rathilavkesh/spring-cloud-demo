'use strict';

(function() {

	angular.module('springCloudApp')
    	.service('loginService', ['$http', function ($http) {

	        var urlBase = 'login';

	        this.authenticateUser = function (loginForm) {
	        	return $http.post(urlBase+'/authenticate', loginForm);
	        };
    }]);

})();