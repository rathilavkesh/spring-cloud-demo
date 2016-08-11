'use strict';

(function() {

	angular.module('springCloudApp')
		.controller('LoginCtrl', ['$scope', '$log',  '$mdDialog', 'loginService',
		                             function($scope, $log, $mdDialog, loginService) {

		     var vm = this;
		     vm.loginForm = {username : '', password : ''};
		     vm.errorMessage = null;


             vm.validateForm = function(ev, loginForm){             	
             	if(! loginForm.$invalid){
             		vm.errorMessage = null;
		     		vm.success = null;
             		loginService.authenticateUser(vm.loginForm)
             			.then(function successCallback(response){
             				if(response && response.data && response.data.status){
             					var message  = vm.loginForm.username+' is authenticate successfully.';
	             				vm.showAlert(ev, message);
             				}else{
             					vm.errorMessage = 'Username or password is wrong';
             				}	             			
	             		}, function errorCallback(errorResponse){
	             			vm.errorMessage = 'Username or password is wrong';
	             		});
             	}
             };

             vm.showAlert = function(ev, message) {				
			    $mdDialog.show(
			      $mdDialog.alert()		
			        .clickOutsideToClose(true)
			        .title('Alert')
			        .textContent(message)
			        .ok('OK')
			        .targetEvent(ev)
			    );
			 };

	}]);	

})();