
var app = angular.module('appSimularPeriodo', []);
app.controller('SimularPeriodoController', function ($scope, $http, $timeout) {

    $scope.enableSuccessDialog = false;
    $scope.enableErrorDialog = false;
    $scope.sMessage = "";

    $scope.baseUrl = window.location.href;

    $scope.gridMateriaData = {};

    $scope.ListarResultadoSimulacao = function () {
        $http.post($scope.baseUrl + "/ListarResultadoSimulacao").then(function (response) {
            $scope.gridMateriaData = response.data;
        }, function (response) {
        });
    }

    $scope.SimularPeriodo = function () {

        console.log($scope.inParameter);

        $http.post($scope.baseUrl + "/SimularPeriodo", $scope.inParameter).then(function (response) {

            // This function handles success

            //console.log(response)

            switch (parseInt(response.data.retorno)) {
                case 100:
                    $scope.enableSuccessDialog = true;
                    $scope.enableErrorDialog = false;
                    $scope.sMessage = "Período Simulado com Sucesso!";

                    $scope.ListarResultadoSimulacao();
                    break;
                default:
                    $scope.enableSuccessDialog = false;
                    $scope.enableErrorDialog = true;
                    $scope.sMessage = response.data.retornO_MESSAGE;
            }

            $timeout(function () {
                $scope.enableSuccessDialog = false;
                $scope.enableErrorDialog = false;
                $scope.sMessage = "";
            }, 10000);
        }, function (response) {

            // this function handles error

        });
    }

    $scope.Init = function () {
    }
    $scope.Init();

});

