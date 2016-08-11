'use strict';

/**
 * @ngdoc overview
 * @name lesingSourceApp
 * @description
 * # lesingSourceApp
 *
 * Main module of the application.
 */
(function() {
    'use strict';
    var springCloudApp = angular.module('springCloudApp', ['ngAnimate', 'ngCookies', 'ngResource', 'ngRoute', 'ngSanitize', 
            'ngTouch', 'ngMaterial']);


    springCloudApp.config(function($routeProvider, $httpProvider) {
          delete $httpProvider.defaults.headers.common['X-Requested-With'];
          
          $routeProvider
            .when('/', {
              templateUrl: 'partial/views/login/login.html'
            })
            .otherwise({
              redirectTo: '/'
            });
    });

})();







