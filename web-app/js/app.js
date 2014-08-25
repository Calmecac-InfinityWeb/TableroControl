var tableroControl = angular.module('tableroControl', ['ngRoute','ui.bootstrap','ngResource']);//'angular-loading-bar' La barra de carga que uso en control vehicular

tableroControl.config(['$routeProvider', function ($routeProvider) {
        $routeProvider        
        .when('/auth',{
            controller:'AuthController',
            controllerAs:'authController',
            templateUrl:'./views/login/auth.gsp'
        })
        .otherwise({
            redirectTo: '/'
        });
}]);
tableroControl.directive('finishedRepeat', function() {
    return function(scope, element, attrs) {
        if (scope.$last){
            $(".sidebar .treeview").tree();
        }
    };
});
tableroControl.factory('addAlert',function($rootScope){
    return function(type,msg,clean){
        var icon = ''
        if(!type||!msg){
            $rootScope.alerts=[]
            return
        }
        if(clean)$rootScope.alerts=[]
        switch (type){
            case 'success':
                icon='check';
                break;
            case 'warning':
                icon=type;
                break;
            case 'danger':
                icon='ban';
                break;
        }
        $rootScope.alerts.push({icon:icon,type:type,msg:msg})
    }
})

flujoFondos.config(['$httpProvider',
    function($httpProvider){
        $httpProvider.interceptors.push(['$q','$log','addAlert','$location',
            function($q,$log,addAlert,$location){
                return {
                    request: function (request) {
                        $log.info('request:' + request.url);
                        if(!request.headers["X-Requested-With"])
                            request.headers["X-Requested-With"]="XMLHttpRequest"
                        return request || $q.when(request);
                    },
                    responseError: function (response) {
                        if (response.status === 401) {
                            $log.error("ACCESS DENIED")
                            $log.error(response)
                            addAlert("danger","No estas loggeado o tu sesion ha caducado.",true);
                            $location.path('auth');
                        }
                        if (response.status === 403) {
                            $log.error("ACCESS DENIED")
                            $log.error(response)
                            addAlert("danger","Acceso denegado, perfil insuficiente.",true);
                            $location.path('auth');
                        }
                        return $q.reject(response);
                    }
                }
            }
        ])
    }
])